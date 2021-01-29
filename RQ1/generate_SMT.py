import argparse
import os
import time
import filecmp


def get_all_i_files(root_path='./benchmarks'):
    """
    :return: return all c files.
    """
    ans = set()
    for f in os.listdir(root_path):
        abs_path = os.path.join(root_path, f)
        if os.path.isdir(abs_path):
            ans = ans.union(get_all_i_files(abs_path))
        elif abs_path.endswith('.i'):
            ans.add(abs_path)
    return ans


def create_dir_if_not_exist(dest):
    dests = dest.split('/')
    root = ''
    for i in dests:
        root += i + '/'
        if not os.path.exists(root):
            try:
                os.mkdir(root)
            except Exception as e:
                print(e)


def same_file(a, b):
    same = filecmp.cmp(a, b)
    return same


def generate(_file, cbmc_name='cbmc'):
    """
    5min
    from bound1 to bound n .
    :param _file: i file path.
    :param z3_name:  z3's binary name. you have to put it in this dir first.
    :return:
    """
    begin_time_stamp = time.time()
    bound = 0
    src = _file

    while bound < 6 and time.time() - begin_time_stamp < 5 * 60:
        bound += 1
        dest = src.replace('benchmarks', 'smt_RQ1')
        create_dir_if_not_exist(dest)
        pre_dest = dest + '/bound%d.smt' % (bound - 1)
        dest = dest + '/bound%d.smt' % bound
        if 'driver-races' in src:
            cmd = 'timeout 180 ./%s -I %s/benchmarks//pthread-driver-races/model --32 --mm sc --unwind %d --z3 --no-unwinding-assertions %s --outfile %s' % \
                  (cbmc_name, os.getcwd(), bound, src, dest)
        else:
            cmd = 'timeout 180 ./%s --32 --mm sc -unwind %d --no-unwinding-assertions %s --boolector --outfile %s' % (cbmc_name, bound, src, dest)
        if os.path.exists(dest) == False:
            os.system(cmd)
        if bound > 1 and same_file(pre_dest, dest):
            os.remove(dest)
            break

if __name__ == '__main__':
    parse = argparse.ArgumentParser('cmd options')
    parse.add_argument('--benchmark-path', required=True, type=str)
    args = parse.parse_args()
    import threading
    import multiprocessing as mp

    begin_time_stamp = time.time()
    pool = mp.Pool(processes=4)
    files = get_all_i_files(args.benchmark_path)
    res = pool.map(func=generate, iterable=files)
    end_time_stamp = time.time()
    pool.close()
    pool.join()
    print("Congras! Convert from .i to .smt costs %d s." %(end_time_stamp - begin_time_stamp))
    print('finish')
