import os
import re
import time
import datetime
import argparse
import threading
import multiprocessing as mp

global localtime
localtime = '%d%d%d' %(datetime.datetime.now().year, datetime.datetime.now().month, datetime.datetime.now().day)

def get_bounded_num(root_path = './smt_RQ1'):
    bounded_dict = {}
    for f in os.listdir(root_path):
        abs_path = os.path.join(root_path, f)
        if os.path.isdir(abs_path):
            for temp in os.listdir(abs_path):
                if temp.endswith('.i') & os.path.isdir(os.path.join(abs_path,temp)):
                    count = 0
                    temp_path = os.path.join(abs_path, temp)
                    for k in os.listdir(temp_path):
                        if k.endswith('.smt'):
                            count = count + 1
                    bounded_dict[temp] = count
                else:
                    print("%s is not a dir" %(temp))
    return bounded_dict

def get_all_i_files(path='./benchmarks'):
    ans = set()
    for f in os.listdir(path):
        abs_path = os.path.join(path, f)
        if os.path.isdir(abs_path):
            ans = ans.union(get_all_i_files(abs_path))
        elif abs_path.endswith('.i'):
            ans.add(abs_path)
    return ans

def check(out_dir, file, bounded_dict):
    file_name = os.path.split(file)[-1]
    bound = bounded_dict.get(file_name)
    if bound is None:
        return
    
    def run_command(cmd, out_dir, file_name, i, outName):
        begin_time = time.time()
        state = os.system(cmd)
        duration = time.time()- begin_time
        out_stream = open("%s/%s_bound%d_%s.out" %(out_dir, file_name, i, outName), 'a')
        out_stream.write('State: {0} Run_time: {1}'.format('AC' if state==0 else ('TO' if state==31744 else 'RE'),duration))
        out_stream.close()
        return state

    for i in range(1, bound+1):

        print("%s : z3-ori-bound%d"  %(file, i))
        temp_file1 = file.replace('benchmarks', 'smt_RQ1')
        temp_file1 = os.path.join(temp_file1, 'bound%d.smt' %i)
        cmd = '{ time timeout 1800 ./z3 --smt2 -st %s  > %s/%s_bound%d_z3-ori.out; } 2>>  %s/%s_bound%d_z3-ori.out' %(
            temp_file1, out_dir, file_name, i, out_dir, file_name, i)
        if os.path.exists('%s/%s_bound%d_z3-ori.out' %(out_dir, file_name, i)) == False:
            state = run_command(cmd, out_dir, file_name, i, 'z3-ori')

        print("%s : z3-pre-bound%d"  %(file, i))
        temp_file = file.replace('benchmarks', 'smt_RQ1')
        temp_file = os.path.join(temp_file, 'bound%d.smt' %i)
        cmd = '{ time timeout 1800 ./z3-pre --smt2  -st %s  > %s/%s_bound%d_z3-pre.out; } 2>> %s/%s_bound%d_z3-pre.out' %(
            temp_file, out_dir, file_name, i, out_dir, file_name, i)
        if os.path.exists('%s/%s_bound%d_z3-pre.out' %(out_dir, file_name, i)) == False:
            state = run_command(cmd, out_dir, file_name, i, 'z3-pre')
    print('finished!')


def get_sat_info(file_name):
    with open(file_name, 'r') as reader:
        text = reader.read()
        if 'unsat' in text:
            return 'True'
        elif 'sat' in text:
            return 'False'
        elif 'VERIFICATION SUCCESSFUL' in text:
            return 'TRUE'
        elif 'VERIFICATION FAILED' in text:
            return 'FALSE'
        elif 'State: AC' in text:
            return 'Unknown_AC'
        elif 'State: RE' in text:
            return 'Unknown_RE'
        elif  'State TO' in text:
            return 'Unknown_TO'
        else:
            return 'Error'


def get_cost_time(file_name):
    with open(file_name, 'r') as reader:
        text = reader.read()
        num = re.findall(r'user\t\d*m\d+\.?\d*s',text)
        if len(num) == 0:
            return 0
        times = str(num).split('\\t')[1].split('m')
        miniute=times[0]
        seconds=times[1].split('s')[0]
        time = float(miniute) *60 + float(seconds)
        return time

def create_dir_if_not_exist(dest):
    dests = dest.split('/')
    root = ''
    for i in dests:
        root += i + '/'
        if not os.path.exists(root):
            os.mkdir(root)

def get_result_all(front_binaries):
    root_path = './result_RQ1_all'
    for binary in front_binaries:
        file_index = 0
        if os.path.exists('./result-%s.csv' % binary):
            continue
        result_file = open('./result-%s.csv' %binary, 'a')
        result_file.write(','+'file_index')
        result_file.write(','+'file_name')
        result_file.write(','+'Result')
        result_file.write(','+'Time')
        result_file.write('\n')

        sub_dics = []
        for s in os.listdir(root_path):
            sub_dics.append(s)
        sub_dics.sort()

        for f in sub_dics:
            file_index = 0
            abs_path = os.path.join(root_path, f)

            path_names = []
            for temp in os.listdir(abs_path):
                path_names.append(temp)
            path_names.sort()

            for temp in path_names:
                temp_path = os.path.join(abs_path, temp)
                if ('_z3-%s.out' % binary) in temp_path:
                    file_index += 1
                    sat_info = get_sat_info(temp_path)
                    cost_time = get_cost_time(temp_path)
                    if file_index == 1:
                        result_file.write(os.path.split(abs_path)[-1])
                    result_file.write(','+str(file_index)+',')
                    result_file.write(str(os.path.split(temp_path)[-1])+',')
                    result_file.write(sat_info+',')
                    result_file.write(str(cost_time)+',')
                    result_file.write('\n')
                    result_file.flush()
            result_file.write('\n\n')
            result_file.flush()
        result_file.close()

if __name__ == "__main__":
    parse = argparse.ArgumentParser('cmd options')
    parse.add_argument('--benchmark-path', required=True, type=str)
    args = parse.parse_args()

    print("Start Processing %s:" %(args.benchmark_path))
    bounded_dict = get_bounded_num()
    files = get_all_i_files(args.benchmark_path)

    src = args.benchmark_path
    out_dir = src.replace('benchmarks', 'result_RQ1_all') 
    create_dir_if_not_exist(out_dir)
    def pcheck(file):
       return check(out_dir, file, bounded_dict)
    
    pool = mp.Pool(processes=2)
    result = pool.map(func=pcheck, iterable=files)
    pool.close()
    pool.join()
    print("Congratulations! Check Procedure finished")


    front_binaries = ['ori', 'pre']
    get_result_all(front_binaries)
    print("Generate csv file Finished!")
