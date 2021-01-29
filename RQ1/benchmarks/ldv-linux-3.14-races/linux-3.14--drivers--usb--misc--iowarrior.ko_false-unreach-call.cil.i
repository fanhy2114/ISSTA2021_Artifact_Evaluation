typedef unsigned long int pthread_t;
typedef union
{
  char __size[56];
  long int __align;
} pthread_attr_t;
typedef struct __pthread_internal_list
{
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;
typedef union
{
  struct __pthread_mutex_s
  {
    int __lock;
    unsigned int __count;
    int __owner;
    unsigned int __nusers;
    int __kind;
    int __spins;
    __pthread_list_t __list;
  } __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;
typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;
extern int pthread_create (pthread_t *__restrict __newthread,
      __const pthread_attr_t *__restrict __attr,
      void *(*__start_routine) (void *),
      void *__restrict __arg) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 3)));
extern void pthread_exit (void *__retval) __attribute__ ((__noreturn__));
extern int pthread_join (pthread_t __th, void **__thread_return);
extern int pthread_mutex_init (pthread_mutex_t *__mutex,
          __const pthread_mutexattr_t *__mutexattr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_mutex_destroy (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_mutex_trylock (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_mutex_lock (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_mutex_unlock (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
struct device;
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef int s32;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef int __kernel_pid_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u16 __le16;
typedef __u32 __le32;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __kernel_pid_t pid_t;
typedef __kernel_clockid_t clockid_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
typedef unsigned int size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef __s32 int32_t;
typedef __u32 uint32_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef u64 dma_addr_t;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
typedef unsigned int oom_flags_t;
struct __anonstruct_atomic_t_6 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_6 atomic_t;
struct __anonstruct_atomic64_t_7 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_7 atomic64_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct hlist_node;
struct hlist_head {
   struct hlist_node *first ;
};
struct hlist_node {
   struct hlist_node *next ;
   struct hlist_node **pprev ;
};
struct callback_head {
   struct callback_head *next ;
   void (*func)(struct callback_head * ) ;
};
struct mutex;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion____missing_field_name_8 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_8 __annonCompField4 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct____missing_field_name_10 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_9 {
   s64 lock ;
   struct __anonstruct____missing_field_name_10 __annonCompField5 ;
};
typedef union __anonunion_arch_rwlock_t_9 arch_rwlock_t;
struct task_struct;
struct lockdep_map;
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module;
struct pt_regs {
   unsigned long r15 ;
   unsigned long r14 ;
   unsigned long r13 ;
   unsigned long r12 ;
   unsigned long bp ;
   unsigned long bx ;
   unsigned long r11 ;
   unsigned long r10 ;
   unsigned long r9 ;
   unsigned long r8 ;
   unsigned long ax ;
   unsigned long cx ;
   unsigned long dx ;
   unsigned long si ;
   unsigned long di ;
   unsigned long orig_ax ;
   unsigned long ip ;
   unsigned long cs ;
   unsigned long flags ;
   unsigned long sp ;
   unsigned long ss ;
};
struct __anonstruct____missing_field_name_12 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_13 {
   u16 limit0 ;
   u16 base0 ;
   unsigned int base1 : 8 ;
   unsigned int type : 4 ;
   unsigned int s : 1 ;
   unsigned int dpl : 2 ;
   unsigned int p : 1 ;
   unsigned int limit : 4 ;
   unsigned int avl : 1 ;
   unsigned int l : 1 ;
   unsigned int d : 1 ;
   unsigned int g : 1 ;
   unsigned int base2 : 8 ;
};
union __anonunion____missing_field_name_11 {
   struct __anonstruct____missing_field_name_12 __annonCompField6 ;
   struct __anonstruct____missing_field_name_13 __annonCompField7 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_11 __annonCompField8 ;
};
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_15 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_15 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct mm_struct;
struct cpumask;
typedef void (*ctor_fn_t)(void);
struct file_operations;
struct completion;
struct pid;
struct kernel_vm86_regs {
   struct pt_regs pt ;
   unsigned short es ;
   unsigned short __esh ;
   unsigned short ds ;
   unsigned short __dsh ;
   unsigned short fs ;
   unsigned short __fsh ;
   unsigned short gs ;
   unsigned short __gsh ;
};
union __anonunion____missing_field_name_18 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_18 __annonCompField9 ;
};
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct cpumask {
   unsigned long bits[128U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct static_key;
struct seq_operations;
struct i387_fsave_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u32 status ;
};
struct __anonstruct____missing_field_name_23 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_24 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_22 {
   struct __anonstruct____missing_field_name_23 __annonCompField13 ;
   struct __anonstruct____missing_field_name_24 __annonCompField14 ;
};
union __anonunion____missing_field_name_25 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_22 __annonCompField15 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_25 __annonCompField16 ;
};
struct i387_soft_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u8 ftop ;
   u8 changed ;
   u8 lookahead ;
   u8 no_update ;
   u8 rm ;
   u8 alimit ;
   struct math_emu_info *info ;
   u32 entry_eip ;
};
struct ymmh_struct {
   u32 ymmh_space[64U] ;
};
struct lwp_struct {
   u8 reserved[128U] ;
};
struct bndregs_struct {
   u64 bndregs[8U] ;
};
struct bndcsr_struct {
   u64 cfg_reg_u ;
   u64 status_reg ;
};
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 reserved1[2U] ;
   u64 reserved2[5U] ;
};
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
   struct lwp_struct lwp ;
   struct bndregs_struct bndregs ;
   struct bndcsr_struct bndcsr ;
};
union thread_xstate {
   struct i387_fsave_struct fsave ;
   struct i387_fxsave_struct fxsave ;
   struct i387_soft_struct soft ;
   struct xsave_struct xsave ;
};
struct fpu {
   unsigned int last_cpu ;
   unsigned int has_fpu ;
   union thread_xstate *state ;
};
struct kmem_cache;
struct perf_event;
struct thread_struct {
   struct desc_struct tls_array[3U] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned long usersp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct perf_event *ptrace_bps[4U] ;
   unsigned long debugreg6 ;
   unsigned long ptrace_dr7 ;
   unsigned long cr2 ;
   unsigned long trap_nr ;
   unsigned long error_code ;
   struct fpu fpu ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
   unsigned char fpu_counter ;
};
typedef atomic64_t atomic_long_t;
struct stack_trace {
   unsigned int nr_entries ;
   unsigned int max_entries ;
   unsigned long *entries ;
   int skip ;
};
struct lockdep_subclass_key {
   char __one_byte ;
};
struct lock_class_key {
   struct lockdep_subclass_key subkeys[8U] ;
};
struct lock_class {
   struct list_head hash_entry ;
   struct list_head lock_entry ;
   struct lockdep_subclass_key *key ;
   unsigned int subclass ;
   unsigned int dep_gen_id ;
   unsigned long usage_mask ;
   struct stack_trace usage_traces[13U] ;
   struct list_head locks_after ;
   struct list_head locks_before ;
   unsigned int version ;
   unsigned long ops ;
   char const *name ;
   int name_version ;
   unsigned long contention_point[4U] ;
   unsigned long contending_point[4U] ;
};
struct lockdep_map {
   struct lock_class_key *key ;
   struct lock_class *class_cache[2U] ;
   char const *name ;
   int cpu ;
   unsigned long ip ;
};
struct held_lock {
   u64 prev_chain_key ;
   unsigned long acquire_ip ;
   struct lockdep_map *instance ;
   struct lockdep_map *nest_lock ;
   u64 waittime_stamp ;
   u64 holdtime_stamp ;
   unsigned int class_idx : 13 ;
   unsigned int irq_context : 2 ;
   unsigned int trylock : 1 ;
   unsigned int read : 2 ;
   unsigned int check : 2 ;
   unsigned int hardirqs_off : 1 ;
   unsigned int references : 11 ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct____missing_field_name_29 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_28 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_29 __annonCompField18 ;
};
struct spinlock {
   union __anonunion____missing_field_name_28 __annonCompField19 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_30 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_30 rwlock_t;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct timespec;
struct jump_entry;
struct static_key_mod;
struct static_key {
   atomic_t enabled ;
   struct jump_entry *entries ;
   struct static_key_mod *next ;
};
typedef u64 jump_label_t;
struct jump_entry {
   jump_label_t code ;
   jump_label_t target ;
   jump_label_t key ;
};
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
};
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct idr_layer {
   int prefix ;
   unsigned long bitmap[4U] ;
   struct idr_layer *ary[256U] ;
   int count ;
   int layer ;
   struct callback_head callback_head ;
};
struct idr {
   struct idr_layer *hint ;
   struct idr_layer *top ;
   struct idr_layer *id_free ;
   int layers ;
   int id_free_cnt ;
   int cur ;
   spinlock_t lock ;
};
struct ida_bitmap {
   long nr_busy ;
   unsigned long bitmap[15U] ;
};
struct ida {
   struct idr idr ;
   struct ida_bitmap *free_bitmap ;
};
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct dentry;
struct iattr;
struct vm_area_struct;
struct super_block;
struct file_system_type;
struct kernfs_open_node;
struct kernfs_iattrs;
struct kernfs_root;
struct kernfs_elem_dir {
   unsigned long subdirs ;
   struct rb_root children ;
   struct kernfs_root *root ;
};
struct kernfs_node;
struct kernfs_elem_symlink {
   struct kernfs_node *target_kn ;
};
struct kernfs_ops;
struct kernfs_elem_attr {
   struct kernfs_ops const *ops ;
   struct kernfs_open_node *open ;
   loff_t size ;
};
union __anonunion_u_36 {
   struct completion *completion ;
   struct kernfs_node *removed_list ;
};
union __anonunion____missing_field_name_37 {
   struct kernfs_elem_dir dir ;
   struct kernfs_elem_symlink symlink ;
   struct kernfs_elem_attr attr ;
};
struct kernfs_node {
   atomic_t count ;
   atomic_t active ;
   struct lockdep_map dep_map ;
   struct kernfs_node *parent ;
   char const *name ;
   struct rb_node rb ;
   union __anonunion_u_36 u ;
   void const *ns ;
   unsigned int hash ;
   union __anonunion____missing_field_name_37 __annonCompField21 ;
   void *priv ;
   unsigned short flags ;
   umode_t mode ;
   unsigned int ino ;
   struct kernfs_iattrs *iattr ;
};
struct kernfs_dir_ops {
   int (*mkdir)(struct kernfs_node * , char const * , umode_t ) ;
   int (*rmdir)(struct kernfs_node * ) ;
   int (*rename)(struct kernfs_node * , struct kernfs_node * , char const * ) ;
};
struct kernfs_root {
   struct kernfs_node *kn ;
   struct ida ino_ida ;
   struct kernfs_dir_ops *dir_ops ;
};
struct vm_operations_struct;
struct kernfs_open_file {
   struct kernfs_node *kn ;
   struct file *file ;
   struct mutex mutex ;
   int event ;
   struct list_head list ;
   bool mmapped ;
   struct vm_operations_struct const *vm_ops ;
};
struct kernfs_ops {
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   ssize_t (*read)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   ssize_t (*write)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   int (*mmap)(struct kernfs_open_file * , struct vm_area_struct * ) ;
   struct lock_class_key lockdep_key ;
};
struct sock;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   bool (*current_may_mount)(void) ;
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct user_namespace;
struct __anonstruct_kuid_t_38 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_38 kuid_t;
struct __anonstruct_kgid_t_39 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_39 kgid_t;
struct kstat {
   u64 ino ;
   dev_t dev ;
   umode_t mode ;
   unsigned int nlink ;
   kuid_t uid ;
   kgid_t gid ;
   dev_t rdev ;
   loff_t size ;
   struct timespec atime ;
   struct timespec mtime ;
   struct timespec ctime ;
   unsigned long blksize ;
   unsigned long long blocks ;
};
struct bin_attribute;
struct attribute {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep : 1 ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
   struct bin_attribute **bin_attrs ;
};
struct bin_attribute {
   struct attribute attr ;
   size_t size ;
   void *private ;
   ssize_t (*read)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                   loff_t , size_t ) ;
   ssize_t (*write)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                    loff_t , size_t ) ;
   int (*mmap)(struct file * , struct kobject * , struct bin_attribute * , struct vm_area_struct * ) ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char const * , size_t ) ;
};
struct kref {
   atomic_t refcount ;
};
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct tvec_base;
struct timer_list {
   struct list_head entry ;
   unsigned long expires ;
   struct tvec_base *base ;
   void (*function)(unsigned long ) ;
   unsigned long data ;
   int slack ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
   struct lockdep_map lockdep_map ;
};
struct hrtimer;
enum hrtimer_restart;
struct workqueue_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct * ) ;
   struct lockdep_map lockdep_map ;
};
struct delayed_work {
   struct work_struct work ;
   struct timer_list timer ;
   struct workqueue_struct *wq ;
   int cpu ;
};
struct kset;
struct kobj_type;
struct kobject {
   char const *name ;
   struct list_head entry ;
   struct kobject *parent ;
   struct kset *kset ;
   struct kobj_type *ktype ;
   struct kernfs_node *sd ;
   struct kref kref ;
   struct delayed_work release ;
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject * ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject * ) ;
   void const *(*namespace)(struct kobject * ) ;
};
struct kobj_uevent_env {
   char *envp[32U] ;
   int envp_idx ;
   char buf[2048U] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const filter)(struct kset * , struct kobject * ) ;
   char const *(* const name)(struct kset * , struct kobject * ) ;
   int (* const uevent)(struct kset * , struct kobject * , struct kobj_uevent_env * ) ;
};
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct inode;
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct backing_dev_info;
typedef unsigned long kernel_ulong_t;
struct usb_device_id {
   __u16 match_flags ;
   __u16 idVendor ;
   __u16 idProduct ;
   __u16 bcdDevice_lo ;
   __u16 bcdDevice_hi ;
   __u8 bDeviceClass ;
   __u8 bDeviceSubClass ;
   __u8 bDeviceProtocol ;
   __u8 bInterfaceClass ;
   __u8 bInterfaceSubClass ;
   __u8 bInterfaceProtocol ;
   __u8 bInterfaceNumber ;
   kernel_ulong_t driver_info ;
};
struct acpi_device_id {
   __u8 id[9U] ;
   kernel_ulong_t driver_data ;
};
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void const *data ;
};
struct usb_device_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 bcdUSB ;
   __u8 bDeviceClass ;
   __u8 bDeviceSubClass ;
   __u8 bDeviceProtocol ;
   __u8 bMaxPacketSize0 ;
   __le16 idVendor ;
   __le16 idProduct ;
   __le16 bcdDevice ;
   __u8 iManufacturer ;
   __u8 iProduct ;
   __u8 iSerialNumber ;
   __u8 bNumConfigurations ;
};
struct usb_config_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 wTotalLength ;
   __u8 bNumInterfaces ;
   __u8 bConfigurationValue ;
   __u8 iConfiguration ;
   __u8 bmAttributes ;
   __u8 bMaxPower ;
};
struct usb_interface_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bInterfaceNumber ;
   __u8 bAlternateSetting ;
   __u8 bNumEndpoints ;
   __u8 bInterfaceClass ;
   __u8 bInterfaceSubClass ;
   __u8 bInterfaceProtocol ;
   __u8 iInterface ;
};
struct usb_endpoint_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bEndpointAddress ;
   __u8 bmAttributes ;
   __le16 wMaxPacketSize ;
   __u8 bInterval ;
   __u8 bRefresh ;
   __u8 bSynchAddress ;
};
struct usb_ss_ep_comp_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bMaxBurst ;
   __u8 bmAttributes ;
   __le16 wBytesPerInterval ;
};
struct usb_interface_assoc_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bFirstInterface ;
   __u8 bInterfaceCount ;
   __u8 bFunctionClass ;
   __u8 bFunctionSubClass ;
   __u8 bFunctionProtocol ;
   __u8 iFunction ;
};
struct usb_bos_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 wTotalLength ;
   __u8 bNumDeviceCaps ;
};
struct usb_ext_cap_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __le32 bmAttributes ;
};
struct usb_ss_cap_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __u8 bmAttributes ;
   __le16 wSpeedSupported ;
   __u8 bFunctionalitySupport ;
   __u8 bU1devExitLat ;
   __le16 bU2DevExitLat ;
};
struct usb_ss_container_id_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __u8 bReserved ;
   __u8 ContainerID[16U] ;
};
enum usb_device_speed {
    USB_SPEED_UNKNOWN = 0,
    USB_SPEED_LOW = 1,
    USB_SPEED_FULL = 2,
    USB_SPEED_HIGH = 3,
    USB_SPEED_WIRELESS = 4,
    USB_SPEED_SUPER = 5
} ;
enum usb_device_state {
    USB_STATE_NOTATTACHED = 0,
    USB_STATE_ATTACHED = 1,
    USB_STATE_POWERED = 2,
    USB_STATE_RECONNECTING = 3,
    USB_STATE_UNAUTHENTICATED = 4,
    USB_STATE_DEFAULT = 5,
    USB_STATE_ADDRESS = 6,
    USB_STATE_CONFIGURED = 7,
    USB_STATE_SUSPENDED = 8
} ;
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct pm_message {
   int event ;
};
typedef struct pm_message pm_message_t;
struct dev_pm_ops {
   int (*prepare)(struct device * ) ;
   void (*complete)(struct device * ) ;
   int (*suspend)(struct device * ) ;
   int (*resume)(struct device * ) ;
   int (*freeze)(struct device * ) ;
   int (*thaw)(struct device * ) ;
   int (*poweroff)(struct device * ) ;
   int (*restore)(struct device * ) ;
   int (*suspend_late)(struct device * ) ;
   int (*resume_early)(struct device * ) ;
   int (*freeze_late)(struct device * ) ;
   int (*thaw_early)(struct device * ) ;
   int (*poweroff_late)(struct device * ) ;
   int (*restore_early)(struct device * ) ;
   int (*suspend_noirq)(struct device * ) ;
   int (*resume_noirq)(struct device * ) ;
   int (*freeze_noirq)(struct device * ) ;
   int (*thaw_noirq)(struct device * ) ;
   int (*poweroff_noirq)(struct device * ) ;
   int (*restore_noirq)(struct device * ) ;
   int (*runtime_suspend)(struct device * ) ;
   int (*runtime_resume)(struct device * ) ;
   int (*runtime_idle)(struct device * ) ;
};
enum rpm_status {
    RPM_ACTIVE = 0,
    RPM_RESUMING = 1,
    RPM_SUSPENDED = 2,
    RPM_SUSPENDING = 3
} ;
enum rpm_request {
    RPM_REQ_NONE = 0,
    RPM_REQ_IDLE = 1,
    RPM_REQ_SUSPEND = 2,
    RPM_REQ_AUTOSUSPEND = 3,
    RPM_REQ_RESUME = 4
} ;
struct wakeup_source;
struct pm_subsys_data {
   spinlock_t lock ;
   unsigned int refcount ;
   struct list_head clock_list ;
};
struct dev_pm_qos;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned int can_wakeup : 1 ;
   unsigned int async_suspend : 1 ;
   bool is_prepared : 1 ;
   bool is_suspended : 1 ;
   bool ignore_children : 1 ;
   bool early_init : 1 ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path : 1 ;
   bool syscore : 1 ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned int disable_depth : 3 ;
   unsigned int idle_notification : 1 ;
   unsigned int request_pending : 1 ;
   unsigned int deferred_resume : 1 ;
   unsigned int run_wake : 1 ;
   unsigned int runtime_auto : 1 ;
   unsigned int no_callbacks : 1 ;
   unsigned int irq_safe : 1 ;
   unsigned int use_autosuspend : 1 ;
   unsigned int timer_autosuspends : 1 ;
   unsigned int memalloc_noio : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   struct pm_subsys_data *subsys_data ;
   struct dev_pm_qos *qos ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct __anonstruct_nodemask_t_108 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_108 nodemask_t;
struct __anonstruct_mm_context_t_109 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_109 mm_context_t;
struct device_node;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct timerqueue_node {
   struct rb_node node ;
   ktime_t expires ;
};
struct timerqueue_head {
   struct rb_root head ;
   struct timerqueue_node *next ;
};
struct hrtimer_clock_base;
struct hrtimer_cpu_base;
enum hrtimer_restart {
    HRTIMER_NORESTART = 0,
    HRTIMER_RESTART = 1
} ;
struct hrtimer {
   struct timerqueue_node node ;
   ktime_t _softexpires ;
   enum hrtimer_restart (*function)(struct hrtimer * ) ;
   struct hrtimer_clock_base *base ;
   unsigned long state ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
};
struct hrtimer_clock_base {
   struct hrtimer_cpu_base *cpu_base ;
   int index ;
   clockid_t clockid ;
   struct timerqueue_head active ;
   ktime_t resolution ;
   ktime_t (*get_time)(void) ;
   ktime_t softirq_time ;
   ktime_t offset ;
};
struct hrtimer_cpu_base {
   raw_spinlock_t lock ;
   unsigned int active_bases ;
   unsigned int clock_was_set ;
   ktime_t expires_next ;
   int hres_active ;
   int hang_detected ;
   unsigned long nr_events ;
   unsigned long nr_retries ;
   unsigned long nr_hangs ;
   ktime_t max_hang_time ;
   struct hrtimer_clock_base clock_base[4U] ;
};
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct path;
struct seq_file {
   char *buf ;
   size_t size ;
   size_t from ;
   size_t count ;
   size_t pad_until ;
   loff_t index ;
   loff_t read_pos ;
   u64 version ;
   struct mutex lock ;
   struct seq_operations const *op ;
   int poll_event ;
   struct user_namespace *user_ns ;
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file * , loff_t * ) ;
   void (*stop)(struct seq_file * , void * ) ;
   void *(*next)(struct seq_file * , void * , loff_t * ) ;
   int (*show)(struct seq_file * , void * ) ;
};
struct pinctrl;
struct pinctrl_state;
struct dev_pin_info {
   struct pinctrl *p ;
   struct pinctrl_state *default_state ;
   struct pinctrl_state *sleep_state ;
   struct pinctrl_state *idle_state ;
};
struct dma_map_ops;
struct dev_archdata {
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct device_private;
struct device_driver;
struct driver_private;
struct class;
struct subsys_private;
struct bus_type;
struct iommu_ops;
struct iommu_group;
struct device_attribute;
struct bus_type {
   char const *name ;
   char const *dev_name ;
   struct device *dev_root ;
   struct device_attribute *dev_attrs ;
   struct attribute_group const **bus_groups ;
   struct attribute_group const **dev_groups ;
   struct attribute_group const **drv_groups ;
   int (*match)(struct device * , struct device_driver * ) ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*online)(struct device * ) ;
   int (*offline)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
   struct lock_class_key lock_key ;
};
struct device_type;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   struct of_device_id const *of_match_table ;
   struct acpi_device_id const *acpi_match_table ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct attribute_group const **dev_groups ;
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * ) ;
   void (*class_release)(struct class * ) ;
   void (*dev_release)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct subsys_private *p ;
};
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class * , struct class_attribute * , char * ) ;
   ssize_t (*store)(struct class * , struct class_attribute * , char const * , size_t ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * , kuid_t * , kgid_t * ) ;
   void (*release)(struct device * ) ;
   struct dev_pm_ops const *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device * , struct device_attribute * , char * ) ;
   ssize_t (*store)(struct device * , struct device_attribute * , char const * ,
                    size_t ) ;
};
struct device_dma_parameters {
   unsigned int max_segment_size ;
   unsigned long segment_boundary_mask ;
};
struct acpi_device;
struct acpi_dev_node {
   struct acpi_device *companion ;
};
struct dma_coherent_mem;
struct device {
   struct device *parent ;
   struct device_private *p ;
   struct kobject kobj ;
   char const *init_name ;
   struct device_type const *type ;
   struct mutex mutex ;
   struct bus_type *bus ;
   struct device_driver *driver ;
   void *platform_data ;
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   struct dev_pin_info *pins ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct dev_archdata archdata ;
   struct device_node *of_node ;
   struct acpi_dev_node acpi_node ;
   dev_t devt ;
   u32 id ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device * ) ;
   struct iommu_group *iommu_group ;
   bool offline_disabled : 1 ;
   bool offline : 1 ;
};
struct wakeup_source {
   char const *name ;
   struct list_head entry ;
   spinlock_t lock ;
   struct timer_list timer ;
   unsigned long timer_expires ;
   ktime_t total_time ;
   ktime_t max_time ;
   ktime_t last_time ;
   ktime_t start_prevent_time ;
   ktime_t prevent_sleep_time ;
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long expire_count ;
   unsigned long wakeup_count ;
   bool active : 1 ;
   bool autosleep_enabled : 1 ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_139 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion____missing_field_name_138 {
   struct __anonstruct____missing_field_name_139 __annonCompField34 ;
};
struct lockref {
   union __anonunion____missing_field_name_138 __annonCompField35 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct____missing_field_name_141 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_140 {
   struct __anonstruct____missing_field_name_141 __annonCompField36 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_140 __annonCompField37 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_142 {
   struct list_head d_child ;
   struct callback_head d_rcu ;
};
struct dentry {
   unsigned int d_flags ;
   seqcount_t d_seq ;
   struct hlist_bl_node d_hash ;
   struct dentry *d_parent ;
   struct qstr d_name ;
   struct inode *d_inode ;
   unsigned char d_iname[32U] ;
   struct lockref d_lockref ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_142 d_u ;
   struct list_head d_subdirs ;
   struct hlist_node d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_weak_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_hash)(struct dentry const * , struct qstr * ) ;
   int (*d_compare)(struct dentry const * , struct dentry const * , unsigned int ,
                    char const * , struct qstr const * ) ;
   int (*d_delete)(struct dentry const * ) ;
   void (*d_release)(struct dentry * ) ;
   void (*d_prune)(struct dentry * ) ;
   void (*d_iput)(struct dentry * , struct inode * ) ;
   char *(*d_dname)(struct dentry * , char * , int ) ;
   struct vfsmount *(*d_automount)(struct path * ) ;
   int (*d_manage)(struct dentry * , bool ) ;
};
struct path {
   struct vfsmount *mnt ;
   struct dentry *dentry ;
};
struct list_lru_node {
   spinlock_t lock ;
   struct list_head list ;
   long nr_items ;
};
struct list_lru {
   struct list_lru_node *node ;
   nodemask_t active_nodes ;
};
struct radix_tree_node;
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
enum pid_type {
    PIDTYPE_PID = 0,
    PIDTYPE_PGID = 1,
    PIDTYPE_SID = 2,
    PIDTYPE_MAX = 3
} ;
struct pid_namespace;
struct upid {
   int nr ;
   struct pid_namespace *ns ;
   struct hlist_node pid_chain ;
};
struct pid {
   atomic_t count ;
   unsigned int level ;
   struct hlist_head tasks[3U] ;
   struct callback_head rcu ;
   struct upid numbers[1U] ;
};
struct pid_link {
   struct hlist_node node ;
   struct pid *pid ;
};
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2U] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3U] ;
};
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
   nodemask_t nodes_to_scan ;
   int nid ;
};
struct shrinker {
   unsigned long (*count_objects)(struct shrinker * , struct shrink_control * ) ;
   unsigned long (*scan_objects)(struct shrinker * , struct shrink_control * ) ;
   int seeks ;
   long batch ;
   unsigned long flags ;
   struct list_head list ;
   atomic_long_t *nr_deferred ;
};
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct block_device;
struct io_context;
struct export_operations;
struct iovec;
struct kiocb;
struct pipe_inode_info;
struct poll_table_struct;
struct kstatfs;
struct cred;
struct swap_info_struct;
struct iattr {
   unsigned int ia_valid ;
   umode_t ia_mode ;
   kuid_t ia_uid ;
   kgid_t ia_gid ;
   loff_t ia_size ;
   struct timespec ia_atime ;
   struct timespec ia_mtime ;
   struct timespec ia_ctime ;
   struct file *ia_file ;
};
struct percpu_counter {
   raw_spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
};
struct fs_disk_quota {
   __s8 d_version ;
   __s8 d_flags ;
   __u16 d_fieldmask ;
   __u32 d_id ;
   __u64 d_blk_hardlimit ;
   __u64 d_blk_softlimit ;
   __u64 d_ino_hardlimit ;
   __u64 d_ino_softlimit ;
   __u64 d_bcount ;
   __u64 d_icount ;
   __s32 d_itimer ;
   __s32 d_btimer ;
   __u16 d_iwarns ;
   __u16 d_bwarns ;
   __s32 d_padding2 ;
   __u64 d_rtb_hardlimit ;
   __u64 d_rtb_softlimit ;
   __u64 d_rtbcount ;
   __s32 d_rtbtimer ;
   __u16 d_rtbwarns ;
   __s16 d_padding3 ;
   char d_padding4[8U] ;
};
struct fs_qfilestat {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
};
typedef struct fs_qfilestat fs_qfilestat_t;
struct fs_quota_stat {
   __s8 qs_version ;
   __u16 qs_flags ;
   __s8 qs_pad ;
   fs_qfilestat_t qs_uquota ;
   fs_qfilestat_t qs_gquota ;
   __u32 qs_incoredqs ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
};
struct fs_qfilestatv {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
   __u32 qfs_pad ;
};
struct fs_quota_statv {
   __s8 qs_version ;
   __u8 qs_pad1 ;
   __u16 qs_flags ;
   __u32 qs_incoredqs ;
   struct fs_qfilestatv qs_uquota ;
   struct fs_qfilestatv qs_gquota ;
   struct fs_qfilestatv qs_pquota ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
   __u64 qs_pad2[8U] ;
};
struct dquot;
typedef __kernel_uid32_t projid_t;
struct __anonstruct_kprojid_t_144 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_144 kprojid_t;
struct if_dqinfo {
   __u64 dqi_bgrace ;
   __u64 dqi_igrace ;
   __u32 dqi_flags ;
   __u32 dqi_valid ;
};
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_145 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_145 __annonCompField38 ;
   enum quota_type type ;
};
struct mem_dqblk {
   qsize_t dqb_bhardlimit ;
   qsize_t dqb_bsoftlimit ;
   qsize_t dqb_curspace ;
   qsize_t dqb_rsvspace ;
   qsize_t dqb_ihardlimit ;
   qsize_t dqb_isoftlimit ;
   qsize_t dqb_curinodes ;
   time_t dqb_btime ;
   time_t dqb_itime ;
};
struct quota_format_type;
struct mem_dqinfo {
   struct quota_format_type *dqi_format ;
   int dqi_fmt_id ;
   struct list_head dqi_dirty_list ;
   unsigned long dqi_flags ;
   unsigned int dqi_bgrace ;
   unsigned int dqi_igrace ;
   qsize_t dqi_maxblimit ;
   qsize_t dqi_maxilimit ;
   void *dqi_priv ;
};
struct dquot {
   struct hlist_node dq_hash ;
   struct list_head dq_inuse ;
   struct list_head dq_free ;
   struct list_head dq_dirty ;
   struct mutex dq_lock ;
   atomic_t dq_count ;
   wait_queue_head_t dq_wait_unused ;
   struct super_block *dq_sb ;
   struct kqid dq_id ;
   loff_t dq_off ;
   unsigned long dq_flags ;
   struct mem_dqblk dq_dqb ;
};
struct quota_format_ops {
   int (*check_quota_file)(struct super_block * , int ) ;
   int (*read_file_info)(struct super_block * , int ) ;
   int (*write_file_info)(struct super_block * , int ) ;
   int (*free_file_info)(struct super_block * , int ) ;
   int (*read_dqblk)(struct dquot * ) ;
   int (*commit_dqblk)(struct dquot * ) ;
   int (*release_dqblk)(struct dquot * ) ;
};
struct dquot_operations {
   int (*write_dquot)(struct dquot * ) ;
   struct dquot *(*alloc_dquot)(struct super_block * , int ) ;
   void (*destroy_dquot)(struct dquot * ) ;
   int (*acquire_dquot)(struct dquot * ) ;
   int (*release_dquot)(struct dquot * ) ;
   int (*mark_dirty)(struct dquot * ) ;
   int (*write_info)(struct super_block * , int ) ;
   qsize_t *(*get_reserved_space)(struct inode * ) ;
};
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_on_meta)(struct super_block * , int , int ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_sync)(struct super_block * , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
   int (*set_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
   int (*get_xstate)(struct super_block * , struct fs_quota_stat * ) ;
   int (*set_xstate)(struct super_block * , unsigned int , int ) ;
   int (*get_xstatev)(struct super_block * , struct fs_quota_statv * ) ;
};
struct quota_format_type {
   int qf_fmt_id ;
   struct quota_format_ops const *qf_ops ;
   struct module *qf_owner ;
   struct quota_format_type *qf_next ;
};
struct quota_info {
   unsigned int flags ;
   struct mutex dqio_mutex ;
   struct mutex dqonoff_mutex ;
   struct rw_semaphore dqptr_sem ;
   struct inode *files[2U] ;
   struct mem_dqinfo info[2U] ;
   struct quota_format_ops const *ops[2U] ;
};
struct address_space;
struct writeback_control;
union __anonunion_arg_147 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_146 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_147 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_146 read_descriptor_t;
struct address_space_operations {
   int (*writepage)(struct page * , struct writeback_control * ) ;
   int (*readpage)(struct file * , struct page * ) ;
   int (*writepages)(struct address_space * , struct writeback_control * ) ;
   int (*set_page_dirty)(struct page * ) ;
   int (*readpages)(struct file * , struct address_space * , struct list_head * ,
                    unsigned int ) ;
   int (*write_begin)(struct file * , struct address_space * , loff_t , unsigned int ,
                      unsigned int , struct page ** , void ** ) ;
   int (*write_end)(struct file * , struct address_space * , loff_t , unsigned int ,
                    unsigned int , struct page * , void * ) ;
   sector_t (*bmap)(struct address_space * , sector_t ) ;
   void (*invalidatepage)(struct page * , unsigned int , unsigned int ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(int , struct kiocb * , struct iovec const * , loff_t ,
                        unsigned long ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , read_descriptor_t * , unsigned long ) ;
   void (*is_dirty_writeback)(struct page * , bool * , bool * ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
   int (*swap_activate)(struct swap_info_struct * , struct file * , sector_t * ) ;
   void (*swap_deactivate)(struct file * ) ;
};
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   unsigned int i_mmap_writable ;
   struct rb_root i_mmap ;
   struct list_head i_mmap_nonlinear ;
   struct mutex i_mmap_mutex ;
   unsigned long nrpages ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   struct backing_dev_info *backing_dev_info ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   void *private_data ;
};
struct request_queue;
struct hd_struct;
struct gendisk;
struct block_device {
   dev_t bd_dev ;
   int bd_openers ;
   struct inode *bd_inode ;
   struct super_block *bd_super ;
   struct mutex bd_mutex ;
   struct list_head bd_inodes ;
   void *bd_claiming ;
   void *bd_holder ;
   int bd_holders ;
   bool bd_write_holder ;
   struct list_head bd_holder_disks ;
   struct block_device *bd_contains ;
   unsigned int bd_block_size ;
   struct hd_struct *bd_part ;
   unsigned int bd_part_count ;
   int bd_invalidated ;
   struct gendisk *bd_disk ;
   struct request_queue *bd_queue ;
   struct list_head bd_list ;
   unsigned long bd_private ;
   int bd_fsfreeze_count ;
   struct mutex bd_fsfreeze_mutex ;
};
struct posix_acl;
struct inode_operations;
union __anonunion____missing_field_name_148 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_149 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
union __anonunion____missing_field_name_150 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
};
struct inode {
   umode_t i_mode ;
   unsigned short i_opflags ;
   kuid_t i_uid ;
   kgid_t i_gid ;
   unsigned int i_flags ;
   struct posix_acl *i_acl ;
   struct posix_acl *i_default_acl ;
   struct inode_operations const *i_op ;
   struct super_block *i_sb ;
   struct address_space *i_mapping ;
   void *i_security ;
   unsigned long i_ino ;
   union __anonunion____missing_field_name_148 __annonCompField39 ;
   dev_t i_rdev ;
   loff_t i_size ;
   struct timespec i_atime ;
   struct timespec i_mtime ;
   struct timespec i_ctime ;
   spinlock_t i_lock ;
   unsigned short i_bytes ;
   unsigned int i_blkbits ;
   blkcnt_t i_blocks ;
   unsigned long i_state ;
   struct mutex i_mutex ;
   unsigned long dirtied_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion____missing_field_name_149 __annonCompField40 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_150 __annonCompField41 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
   atomic_t i_readcount ;
   void *i_private ;
};
struct fown_struct {
   rwlock_t lock ;
   struct pid *pid ;
   enum pid_type pid_type ;
   kuid_t uid ;
   kuid_t euid ;
   int signum ;
};
struct file_ra_state {
   unsigned long start ;
   unsigned int size ;
   unsigned int async_size ;
   unsigned int ra_pages ;
   unsigned int mmap_miss ;
   loff_t prev_pos ;
};
union __anonunion_f_u_151 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_151 f_u ;
   struct path f_path ;
   struct inode *f_inode ;
   struct file_operations const *f_op ;
   spinlock_t f_lock ;
   atomic_long_t f_count ;
   unsigned int f_flags ;
   fmode_t f_mode ;
   struct mutex f_pos_lock ;
   loff_t f_pos ;
   struct fown_struct f_owner ;
   struct cred const *f_cred ;
   struct file_ra_state f_ra ;
   u64 f_version ;
   void *f_security ;
   void *private_data ;
   struct list_head f_ep_links ;
   struct list_head f_tfile_llink ;
   struct address_space *f_mapping ;
   unsigned long f_mnt_write_state ;
};
struct files_struct;
typedef struct files_struct *fl_owner_t;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   unsigned long (*lm_owner_key)(struct file_lock * ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , struct file_lock * , int ) ;
   void (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock ** , int ) ;
};
struct nlm_lockowner;
struct nfs_lock_info {
   u32 state ;
   struct nlm_lockowner *owner ;
   struct list_head list ;
};
struct nfs4_lock_state;
struct nfs4_lock_info {
   struct nfs4_lock_state *owner ;
};
struct fasync_struct;
struct __anonstruct_afs_153 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_152 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_153 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct hlist_node fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned int fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
   int fl_link_cpu ;
   struct pid *fl_nspid ;
   wait_queue_head_t fl_wait ;
   struct file *fl_file ;
   loff_t fl_start ;
   loff_t fl_end ;
   struct fasync_struct *fl_fasync ;
   unsigned long fl_break_time ;
   unsigned long fl_downgrade_time ;
   struct file_lock_operations const *fl_ops ;
   struct lock_manager_operations const *fl_lmops ;
   union __anonunion_fl_u_152 fl_u ;
};
struct fasync_struct {
   spinlock_t fa_lock ;
   int magic ;
   int fa_fd ;
   struct fasync_struct *fa_next ;
   struct file *fa_file ;
   struct callback_head fa_rcu ;
};
struct sb_writers {
   struct percpu_counter counter[3U] ;
   wait_queue_head_t wait ;
   int frozen ;
   wait_queue_head_t wait_unfrozen ;
   struct lockdep_map lock_map[3U] ;
};
struct super_operations;
struct xattr_handler;
struct mtd_info;
struct super_block {
   struct list_head s_list ;
   dev_t s_dev ;
   unsigned char s_blocksize_bits ;
   unsigned long s_blocksize ;
   loff_t s_maxbytes ;
   struct file_system_type *s_type ;
   struct super_operations const *s_op ;
   struct dquot_operations const *dq_op ;
   struct quotactl_ops const *s_qcop ;
   struct export_operations const *s_export_op ;
   unsigned long s_flags ;
   unsigned long s_magic ;
   struct dentry *s_root ;
   struct rw_semaphore s_umount ;
   int s_count ;
   atomic_t s_active ;
   void *s_security ;
   struct xattr_handler const **s_xattr ;
   struct list_head s_inodes ;
   struct hlist_bl_head s_anon ;
   struct list_head s_mounts ;
   struct block_device *s_bdev ;
   struct backing_dev_info *s_bdi ;
   struct mtd_info *s_mtd ;
   struct hlist_node s_instances ;
   struct quota_info s_dquot ;
   struct sb_writers s_writers ;
   char s_id[32U] ;
   u8 s_uuid[16U] ;
   void *s_fs_info ;
   unsigned int s_max_links ;
   fmode_t s_mode ;
   u32 s_time_gran ;
   struct mutex s_vfs_rename_mutex ;
   char *s_subtype ;
   char *s_options ;
   struct dentry_operations const *s_d_op ;
   int cleancache_poolid ;
   struct shrinker s_shrink ;
   atomic_long_t s_remove_count ;
   int s_readonly_remount ;
   struct workqueue_struct *s_dio_done_wq ;
   struct list_lru s_dentry_lru ;
   struct list_lru s_inode_lru ;
   struct callback_head rcu ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct dir_context {
   int (*actor)(void * , char const * , int , loff_t , u64 , unsigned int ) ;
   loff_t pos ;
};
struct file_operations {
   struct module *owner ;
   loff_t (*llseek)(struct file * , loff_t , int ) ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   ssize_t (*aio_read)(struct kiocb * , struct iovec const * , unsigned long ,
                       loff_t ) ;
   ssize_t (*aio_write)(struct kiocb * , struct iovec const * , unsigned long ,
                        loff_t ) ;
   int (*iterate)(struct file * , struct dir_context * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct inode * , struct file * ) ;
   int (*flush)(struct file * , fl_owner_t ) ;
   int (*release)(struct inode * , struct file * ) ;
   int (*fsync)(struct file * , loff_t , loff_t , int ) ;
   int (*aio_fsync)(struct kiocb * , int ) ;
   int (*fasync)(int , struct file * , int ) ;
   int (*lock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*sendpage)(struct file * , struct page * , int , size_t , loff_t * ,
                       int ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*check_flags)(int ) ;
   int (*flock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*splice_write)(struct pipe_inode_info * , struct file * , loff_t * , size_t ,
                           unsigned int ) ;
   ssize_t (*splice_read)(struct file * , loff_t * , struct pipe_inode_info * , size_t ,
                          unsigned int ) ;
   int (*setlease)(struct file * , long , struct file_lock ** ) ;
   long (*fallocate)(struct file * , int , loff_t , loff_t ) ;
   int (*show_fdinfo)(struct seq_file * , struct file * ) ;
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , unsigned int ) ;
   void *(*follow_link)(struct dentry * , struct nameidata * ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct dentry * , struct nameidata * , void * ) ;
   int (*create)(struct inode * , struct dentry * , umode_t , bool ) ;
   int (*link)(struct dentry * , struct inode * , struct dentry * ) ;
   int (*unlink)(struct inode * , struct dentry * ) ;
   int (*symlink)(struct inode * , struct dentry * , char const * ) ;
   int (*mkdir)(struct inode * , struct dentry * , umode_t ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , umode_t , dev_t ) ;
   int (*rename)(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
   int (*setattr)(struct dentry * , struct iattr * ) ;
   int (*getattr)(struct vfsmount * , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char const * , void const * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char const * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char const * ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 , u64 ) ;
   int (*update_time)(struct inode * , struct timespec * , int ) ;
   int (*atomic_open)(struct inode * , struct dentry * , struct file * , unsigned int ,
                      umode_t , int * ) ;
   int (*tmpfile)(struct inode * , struct dentry * , umode_t ) ;
   int (*set_acl)(struct inode * , struct posix_acl * , int ) ;
};
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block * ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * , int ) ;
   int (*write_inode)(struct inode * , struct writeback_control * ) ;
   int (*drop_inode)(struct inode * ) ;
   void (*evict_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
   int (*sync_fs)(struct super_block * , int ) ;
   int (*freeze_fs)(struct super_block * ) ;
   int (*unfreeze_fs)(struct super_block * ) ;
   int (*statfs)(struct dentry * , struct kstatfs * ) ;
   int (*remount_fs)(struct super_block * , int * , char * ) ;
   void (*umount_begin)(struct super_block * ) ;
   int (*show_options)(struct seq_file * , struct dentry * ) ;
   int (*show_devname)(struct seq_file * , struct dentry * ) ;
   int (*show_path)(struct seq_file * , struct dentry * ) ;
   int (*show_stats)(struct seq_file * , struct dentry * ) ;
   ssize_t (*quota_read)(struct super_block * , int , char * , size_t , loff_t ) ;
   ssize_t (*quota_write)(struct super_block * , int , char const * , size_t ,
                          loff_t ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   long (*nr_cached_objects)(struct super_block * , int ) ;
   long (*free_cached_objects)(struct super_block * , long , int ) ;
};
struct file_system_type {
   char const *name ;
   int fs_flags ;
   struct dentry *(*mount)(struct file_system_type * , int , char const * , void * ) ;
   void (*kill_sb)(struct super_block * ) ;
   struct module *owner ;
   struct file_system_type *next ;
   struct hlist_head fs_supers ;
   struct lock_class_key s_lock_key ;
   struct lock_class_key s_umount_key ;
   struct lock_class_key s_vfs_rename_key ;
   struct lock_class_key s_writers_key[3U] ;
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
struct arch_uprobe_task {
   unsigned long saved_scratch_register ;
   unsigned int saved_trap_nr ;
   unsigned int saved_tf ;
};
enum uprobe_task_state {
    UTASK_RUNNING = 0,
    UTASK_SSTEP = 1,
    UTASK_SSTEP_ACK = 2,
    UTASK_SSTEP_TRAPPED = 3
} ;
struct __anonstruct____missing_field_name_156 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_157 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_155 {
   struct __anonstruct____missing_field_name_156 __annonCompField43 ;
   struct __anonstruct____missing_field_name_157 __annonCompField44 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_155 __annonCompField45 ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   struct return_instance *return_instances ;
   unsigned int depth ;
};
struct xol_area;
struct uprobes_state {
   struct xol_area *xol_area ;
};
union __anonunion____missing_field_name_158 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_160 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_164 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_163 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_164 __annonCompField48 ;
   int units ;
};
struct __anonstruct____missing_field_name_162 {
   union __anonunion____missing_field_name_163 __annonCompField49 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_161 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_162 __annonCompField50 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_159 {
   union __anonunion____missing_field_name_160 __annonCompField47 ;
   union __anonunion____missing_field_name_161 __annonCompField51 ;
};
struct __anonstruct____missing_field_name_166 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion____missing_field_name_165 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_166 __annonCompField53 ;
   struct list_head list ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_167 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_158 __annonCompField46 ;
   struct __anonstruct____missing_field_name_159 __annonCompField52 ;
   union __anonunion____missing_field_name_165 __annonCompField54 ;
   union __anonunion____missing_field_name_167 __annonCompField55 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_169 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_168 {
   struct __anonstruct_linear_169 linear ;
   struct list_head nonlinear ;
};
struct anon_vma;
struct mempolicy;
struct vm_area_struct {
   unsigned long vm_start ;
   unsigned long vm_end ;
   struct vm_area_struct *vm_next ;
   struct vm_area_struct *vm_prev ;
   struct rb_node vm_rb ;
   unsigned long rb_subtree_gap ;
   struct mm_struct *vm_mm ;
   pgprot_t vm_page_prot ;
   unsigned long vm_flags ;
   union __anonunion_shared_168 shared ;
   struct list_head anon_vma_chain ;
   struct anon_vma *anon_vma ;
   struct vm_operations_struct const *vm_ops ;
   unsigned long vm_pgoff ;
   struct file *vm_file ;
   void *vm_private_data ;
   struct mempolicy *vm_policy ;
};
struct core_thread {
   struct task_struct *task ;
   struct core_thread *next ;
};
struct core_state {
   atomic_t nr_threads ;
   struct core_thread dumper ;
   struct completion startup ;
};
struct task_rss_stat {
   int events ;
   int count[3U] ;
};
struct mm_rss_stat {
   atomic_long_t count[3U] ;
};
struct kioctx_table;
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   struct vm_area_struct *mmap_cache ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   unsigned long mmap_base ;
   unsigned long mmap_legacy_base ;
   unsigned long task_size ;
   unsigned long highest_vm_end ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
   atomic_long_t nr_ptes ;
   int map_count ;
   spinlock_t page_table_lock ;
   struct rw_semaphore mmap_sem ;
   struct list_head mmlist ;
   unsigned long hiwater_rss ;
   unsigned long hiwater_vm ;
   unsigned long total_vm ;
   unsigned long locked_vm ;
   unsigned long pinned_vm ;
   unsigned long shared_vm ;
   unsigned long exec_vm ;
   unsigned long stack_vm ;
   unsigned long def_flags ;
   unsigned long start_code ;
   unsigned long end_code ;
   unsigned long start_data ;
   unsigned long end_data ;
   unsigned long start_brk ;
   unsigned long brk ;
   unsigned long start_stack ;
   unsigned long arg_start ;
   unsigned long arg_end ;
   unsigned long env_start ;
   unsigned long env_end ;
   unsigned long saved_auxv[46U] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_var_t cpu_vm_mask_var ;
   mm_context_t context ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct kioctx_table *ioctx_table ;
   struct task_struct *owner ;
   struct file *exe_file ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   struct cpumask cpumask_allocation ;
   unsigned long numa_next_scan ;
   unsigned long numa_scan_offset ;
   int numa_scan_seq ;
   bool tlb_flush_pending ;
   struct uprobes_state uprobes_state ;
};
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sigset_t_170 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_170 sigset_t;
struct siginfo;
typedef void __signalfn_t(int );
typedef __signalfn_t *__sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t *__sigrestore_t;
union sigval {
   int sival_int ;
   void *sival_ptr ;
};
typedef union sigval sigval_t;
struct __anonstruct__kill_172 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_173 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_174 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_175 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_176 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_177 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_178 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_171 {
   int _pad[28U] ;
   struct __anonstruct__kill_172 _kill ;
   struct __anonstruct__timer_173 _timer ;
   struct __anonstruct__rt_174 _rt ;
   struct __anonstruct__sigchld_175 _sigchld ;
   struct __anonstruct__sigfault_176 _sigfault ;
   struct __anonstruct__sigpoll_177 _sigpoll ;
   struct __anonstruct__sigsys_178 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_171 _sifields ;
};
typedef struct siginfo siginfo_t;
struct user_struct;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct sigaction {
   __sighandler_t sa_handler ;
   unsigned long sa_flags ;
   __sigrestore_t sa_restorer ;
   sigset_t sa_mask ;
};
struct k_sigaction {
   struct sigaction sa ;
};
struct seccomp_filter;
struct seccomp {
   int mode ;
   struct seccomp_filter *filter ;
};
struct rt_mutex_waiter;
struct rlimit {
   __kernel_ulong_t rlim_cur ;
   __kernel_ulong_t rlim_max ;
};
struct task_io_accounting {
   u64 rchar ;
   u64 wchar ;
   u64 syscr ;
   u64 syscw ;
   u64 read_bytes ;
   u64 write_bytes ;
   u64 cancelled_write_bytes ;
};
struct latency_record {
   unsigned long backtrace[12U] ;
   unsigned int count ;
   unsigned long time ;
   unsigned long max ;
};
struct nsproxy;
struct assoc_array_ptr;
struct assoc_array {
   struct assoc_array_ptr *root ;
   unsigned long nr_leaves_on_tree ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion____missing_field_name_183 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_184 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_186 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_185 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_186 __annonCompField60 ;
};
union __anonunion_type_data_187 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_189 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_188 {
   union __anonunion_payload_189 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_183 __annonCompField58 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_184 __annonCompField59 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_185 __annonCompField61 ;
   union __anonunion_type_data_187 type_data ;
   union __anonunion____missing_field_name_188 __annonCompField62 ;
};
struct audit_context;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   kgid_t small_block[32U] ;
   kgid_t *blocks[0U] ;
};
struct cred {
   atomic_t usage ;
   atomic_t subscribers ;
   void *put_addr ;
   unsigned int magic ;
   kuid_t uid ;
   kgid_t gid ;
   kuid_t suid ;
   kgid_t sgid ;
   kuid_t euid ;
   kgid_t egid ;
   kuid_t fsuid ;
   kgid_t fsgid ;
   unsigned int securebits ;
   kernel_cap_t cap_inheritable ;
   kernel_cap_t cap_permitted ;
   kernel_cap_t cap_effective ;
   kernel_cap_t cap_bset ;
   unsigned char jit_keyring ;
   struct key *session_keyring ;
   struct key *process_keyring ;
   struct key *thread_keyring ;
   struct key *request_key_auth ;
   void *security ;
   struct user_struct *user ;
   struct user_namespace *user_ns ;
   struct group_info *group_info ;
   struct callback_head rcu ;
};
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
struct cfs_rq;
struct task_group;
struct sighand_struct {
   atomic_t count ;
   struct k_sigaction action[64U] ;
   spinlock_t siglock ;
   wait_queue_head_t signalfd_wqh ;
};
struct pacct_struct {
   int ac_flag ;
   long ac_exitcode ;
   unsigned long ac_mem ;
   cputime_t ac_utime ;
   cputime_t ac_stime ;
   unsigned long ac_minflt ;
   unsigned long ac_majflt ;
};
struct cpu_itimer {
   cputime_t expires ;
   cputime_t incr ;
   u32 error ;
   u32 incr_error ;
};
struct cputime {
   cputime_t utime ;
   cputime_t stime ;
};
struct task_cputime {
   cputime_t utime ;
   cputime_t stime ;
   unsigned long long sum_exec_runtime ;
};
struct thread_group_cputimer {
   struct task_cputime cputime ;
   int running ;
   raw_spinlock_t lock ;
};
struct autogroup;
struct tty_struct;
struct taskstats;
struct tty_audit_buf;
struct signal_struct {
   atomic_t sigcnt ;
   atomic_t live ;
   int nr_threads ;
   struct list_head thread_head ;
   wait_queue_head_t wait_chldexit ;
   struct task_struct *curr_target ;
   struct sigpending shared_pending ;
   int group_exit_code ;
   int notify_count ;
   struct task_struct *group_exit_task ;
   int group_stop_count ;
   unsigned int flags ;
   unsigned int is_child_subreaper : 1 ;
   unsigned int has_child_subreaper : 1 ;
   int posix_timer_id ;
   struct list_head posix_timers ;
   struct hrtimer real_timer ;
   struct pid *leader_pid ;
   ktime_t it_real_incr ;
   struct cpu_itimer it[2U] ;
   struct thread_group_cputimer cputimer ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct pid *tty_old_pgrp ;
   int leader ;
   struct tty_struct *tty ;
   struct autogroup *autogroup ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t cutime ;
   cputime_t cstime ;
   cputime_t gtime ;
   cputime_t cgtime ;
   struct cputime prev_cputime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   unsigned long cnvcsw ;
   unsigned long cnivcsw ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   unsigned long cmin_flt ;
   unsigned long cmaj_flt ;
   unsigned long inblock ;
   unsigned long oublock ;
   unsigned long cinblock ;
   unsigned long coublock ;
   unsigned long maxrss ;
   unsigned long cmaxrss ;
   struct task_io_accounting ioac ;
   unsigned long long sum_sched_runtime ;
   struct rlimit rlim[16U] ;
   struct pacct_struct pacct ;
   struct taskstats *stats ;
   unsigned int audit_tty ;
   unsigned int audit_tty_log_passwd ;
   struct tty_audit_buf *tty_audit_buf ;
   struct rw_semaphore group_rwsem ;
   oom_flags_t oom_flags ;
   short oom_score_adj ;
   short oom_score_adj_min ;
   struct mutex cred_guard_mutex ;
};
struct user_struct {
   atomic_t __count ;
   atomic_t processes ;
   atomic_t files ;
   atomic_t sigpending ;
   atomic_t inotify_watches ;
   atomic_t inotify_devs ;
   atomic_t fanotify_listeners ;
   atomic_long_t epoll_watches ;
   unsigned long mq_bytes ;
   unsigned long locked_shm ;
   struct key *uid_keyring ;
   struct key *session_keyring ;
   struct hlist_node uidhash_node ;
   kuid_t uid ;
   atomic_long_t locked_vm ;
};
struct reclaim_state;
struct sched_info {
   unsigned long pcount ;
   unsigned long long run_delay ;
   unsigned long long last_arrival ;
   unsigned long long last_queued ;
};
struct task_delay_info {
   spinlock_t lock ;
   unsigned int flags ;
   struct timespec blkio_start ;
   struct timespec blkio_end ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   struct timespec freepages_start ;
   struct timespec freepages_end ;
   u64 freepages_delay ;
   u32 freepages_count ;
};
struct load_weight {
   unsigned long weight ;
   u32 inv_weight ;
};
struct sched_avg {
   u32 runnable_avg_sum ;
   u32 runnable_avg_period ;
   u64 last_runnable_update ;
   s64 decay_count ;
   unsigned long load_avg_contrib ;
};
struct sched_statistics {
   u64 wait_start ;
   u64 wait_max ;
   u64 wait_count ;
   u64 wait_sum ;
   u64 iowait_count ;
   u64 iowait_sum ;
   u64 sleep_start ;
   u64 sleep_max ;
   s64 sum_sleep_runtime ;
   u64 block_start ;
   u64 block_max ;
   u64 exec_max ;
   u64 slice_max ;
   u64 nr_migrations_cold ;
   u64 nr_failed_migrations_affine ;
   u64 nr_failed_migrations_running ;
   u64 nr_failed_migrations_hot ;
   u64 nr_forced_migrations ;
   u64 nr_wakeups ;
   u64 nr_wakeups_sync ;
   u64 nr_wakeups_migrate ;
   u64 nr_wakeups_local ;
   u64 nr_wakeups_remote ;
   u64 nr_wakeups_affine ;
   u64 nr_wakeups_affine_attempts ;
   u64 nr_wakeups_passive ;
   u64 nr_wakeups_idle ;
};
struct sched_entity {
   struct load_weight load ;
   struct rb_node run_node ;
   struct list_head group_node ;
   unsigned int on_rq ;
   u64 exec_start ;
   u64 sum_exec_runtime ;
   u64 vruntime ;
   u64 prev_sum_exec_runtime ;
   u64 nr_migrations ;
   struct sched_statistics statistics ;
   struct sched_entity *parent ;
   struct cfs_rq *cfs_rq ;
   struct cfs_rq *my_q ;
   struct sched_avg avg ;
};
struct rt_rq;
struct sched_rt_entity {
   struct list_head run_list ;
   unsigned long timeout ;
   unsigned long watchdog_stamp ;
   unsigned int time_slice ;
   struct sched_rt_entity *back ;
   struct sched_rt_entity *parent ;
   struct rt_rq *rt_rq ;
   struct rt_rq *my_q ;
};
struct sched_dl_entity {
   struct rb_node rb_node ;
   u64 dl_runtime ;
   u64 dl_deadline ;
   u64 dl_period ;
   u64 dl_bw ;
   s64 runtime ;
   u64 deadline ;
   unsigned int flags ;
   int dl_throttled ;
   int dl_new ;
   int dl_boosted ;
   struct hrtimer dl_timer ;
};
struct mem_cgroup;
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct memcg_oom_info {
   struct mem_cgroup *memcg ;
   gfp_t gfp_mask ;
   int order ;
   unsigned int may_oom : 1 ;
};
struct sched_class;
struct css_set;
struct compat_robust_list_head;
struct numa_group;
struct ftrace_ret_stack;
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   struct llist_node wake_entry ;
   int on_cpu ;
   struct task_struct *last_wakee ;
   unsigned long wakee_flips ;
   unsigned long wakee_flip_decay_ts ;
   int wake_cpu ;
   int on_rq ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct task_group *sched_task_group ;
   struct sched_dl_entity dl ;
   struct hlist_head preempt_notifiers ;
   unsigned int btrace_seq ;
   unsigned int policy ;
   int nr_cpus_allowed ;
   cpumask_t cpus_allowed ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct rb_node pushable_dl_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned int brk_randomized : 1 ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned int in_execve : 1 ;
   unsigned int in_iowait : 1 ;
   unsigned int no_new_privs : 1 ;
   unsigned int sched_reset_on_fork : 1 ;
   unsigned int sched_contributes_to_load : 1 ;
   pid_t pid ;
   pid_t tgid ;
   struct task_struct *real_parent ;
   struct task_struct *parent ;
   struct list_head children ;
   struct list_head sibling ;
   struct task_struct *group_leader ;
   struct list_head ptraced ;
   struct list_head ptrace_entry ;
   struct pid_link pids[3U] ;
   struct list_head thread_group ;
   struct list_head thread_node ;
   struct completion *vfork_done ;
   int *set_child_tid ;
   int *clear_child_tid ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t utimescaled ;
   cputime_t stimescaled ;
   cputime_t gtime ;
   struct cputime prev_cputime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   struct timespec start_time ;
   struct timespec real_start_time ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct cred const *real_cred ;
   struct cred const *cred ;
   char comm[16U] ;
   int link_count ;
   int total_link_count ;
   struct sysv_sem sysvsem ;
   unsigned long last_switch_count ;
   struct thread_struct thread ;
   struct fs_struct *fs ;
   struct files_struct *files ;
   struct nsproxy *nsproxy ;
   struct signal_struct *signal ;
   struct sighand_struct *sighand ;
   sigset_t blocked ;
   sigset_t real_blocked ;
   sigset_t saved_sigmask ;
   struct sigpending pending ;
   unsigned long sas_ss_sp ;
   size_t sas_ss_size ;
   int (*notifier)(void * ) ;
   void *notifier_data ;
   sigset_t *notifier_mask ;
   struct callback_head *task_works ;
   struct audit_context *audit_context ;
   kuid_t loginuid ;
   unsigned int sessionid ;
   struct seccomp seccomp ;
   u32 parent_exec_id ;
   u32 self_exec_id ;
   spinlock_t alloc_lock ;
   raw_spinlock_t pi_lock ;
   struct rb_root pi_waiters ;
   struct rb_node *pi_waiters_leftmost ;
   struct rt_mutex_waiter *pi_blocked_on ;
   struct task_struct *pi_top_task ;
   struct mutex_waiter *blocked_on ;
   unsigned int irq_events ;
   unsigned long hardirq_enable_ip ;
   unsigned long hardirq_disable_ip ;
   unsigned int hardirq_enable_event ;
   unsigned int hardirq_disable_event ;
   int hardirqs_enabled ;
   int hardirq_context ;
   unsigned long softirq_disable_ip ;
   unsigned long softirq_enable_ip ;
   unsigned int softirq_disable_event ;
   unsigned int softirq_enable_event ;
   int softirqs_enabled ;
   int softirq_context ;
   u64 curr_chain_key ;
   int lockdep_depth ;
   unsigned int lockdep_recursion ;
   struct held_lock held_locks[48U] ;
   gfp_t lockdep_reclaim_gfp ;
   void *journal_info ;
   struct bio_list *bio_list ;
   struct blk_plug *plug ;
   struct reclaim_state *reclaim_state ;
   struct backing_dev_info *backing_dev_info ;
   struct io_context *io_context ;
   unsigned long ptrace_message ;
   siginfo_t *last_siginfo ;
   struct task_io_accounting ioac ;
   u64 acct_rss_mem1 ;
   u64 acct_vm_mem1 ;
   cputime_t acct_timexpd ;
   nodemask_t mems_allowed ;
   seqcount_t mems_allowed_seq ;
   int cpuset_mem_spread_rotor ;
   int cpuset_slab_spread_rotor ;
   struct css_set *cgroups ;
   struct list_head cg_list ;
   struct robust_list_head *robust_list ;
   struct compat_robust_list_head *compat_robust_list ;
   struct list_head pi_state_list ;
   struct futex_pi_state *pi_state_cache ;
   struct perf_event_context *perf_event_ctxp[2U] ;
   struct mutex perf_event_mutex ;
   struct list_head perf_event_list ;
   struct mempolicy *mempolicy ;
   short il_next ;
   short pref_node_fork ;
   int numa_scan_seq ;
   unsigned int numa_scan_period ;
   unsigned int numa_scan_period_max ;
   int numa_preferred_nid ;
   int numa_migrate_deferred ;
   unsigned long numa_migrate_retry ;
   u64 node_stamp ;
   struct callback_head numa_work ;
   struct list_head numa_entry ;
   struct numa_group *numa_group ;
   unsigned long *numa_faults ;
   unsigned long total_numa_faults ;
   unsigned long *numa_faults_buffer ;
   unsigned long numa_faults_locality[2U] ;
   unsigned long numa_pages_migrated ;
   struct callback_head rcu ;
   struct pipe_inode_info *splice_pipe ;
   struct page_frag task_frag ;
   struct task_delay_info *delays ;
   int make_it_fail ;
   int nr_dirtied ;
   int nr_dirtied_pause ;
   unsigned long dirty_paused_when ;
   int latency_record_count ;
   struct latency_record latency_record[32U] ;
   unsigned long timer_slack_ns ;
   unsigned long default_timer_slack_ns ;
   int curr_ret_stack ;
   struct ftrace_ret_stack *ret_stack ;
   unsigned long long ftrace_timestamp ;
   atomic_t trace_overrun ;
   atomic_t tracing_graph_pause ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   unsigned int memcg_kmem_skip_account ;
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
};
struct usb_device;
struct usb_driver;
struct wusb_dev;
struct ep_device;
struct usb_host_endpoint {
   struct usb_endpoint_descriptor desc ;
   struct usb_ss_ep_comp_descriptor ss_ep_comp ;
   struct list_head urb_list ;
   void *hcpriv ;
   struct ep_device *ep_dev ;
   unsigned char *extra ;
   int extralen ;
   int enabled ;
};
struct usb_host_interface {
   struct usb_interface_descriptor desc ;
   int extralen ;
   unsigned char *extra ;
   struct usb_host_endpoint *endpoint ;
   char *string ;
};
enum usb_interface_condition {
    USB_INTERFACE_UNBOUND = 0,
    USB_INTERFACE_BINDING = 1,
    USB_INTERFACE_BOUND = 2,
    USB_INTERFACE_UNBINDING = 3
} ;
struct usb_interface {
   struct usb_host_interface *altsetting ;
   struct usb_host_interface *cur_altsetting ;
   unsigned int num_altsetting ;
   struct usb_interface_assoc_descriptor *intf_assoc ;
   int minor ;
   enum usb_interface_condition condition ;
   unsigned int sysfs_files_created : 1 ;
   unsigned int ep_devs_created : 1 ;
   unsigned int unregistering : 1 ;
   unsigned int needs_remote_wakeup : 1 ;
   unsigned int needs_altsetting0 : 1 ;
   unsigned int needs_binding : 1 ;
   unsigned int reset_running : 1 ;
   unsigned int resetting_device : 1 ;
   struct device dev ;
   struct device *usb_dev ;
   atomic_t pm_usage_cnt ;
   struct work_struct reset_ws ;
};
struct usb_interface_cache {
   unsigned int num_altsetting ;
   struct kref ref ;
   struct usb_host_interface altsetting[0U] ;
};
struct usb_host_config {
   struct usb_config_descriptor desc ;
   char *string ;
   struct usb_interface_assoc_descriptor *intf_assoc[16U] ;
   struct usb_interface *interface[32U] ;
   struct usb_interface_cache *intf_cache[32U] ;
   unsigned char *extra ;
   int extralen ;
};
struct usb_host_bos {
   struct usb_bos_descriptor *desc ;
   struct usb_ext_cap_descriptor *ext_cap ;
   struct usb_ss_cap_descriptor *ss_cap ;
   struct usb_ss_container_id_descriptor *ss_id ;
};
struct usb_devmap {
   unsigned long devicemap[2U] ;
};
struct mon_bus;
struct usb_bus {
   struct device *controller ;
   int busnum ;
   char const *bus_name ;
   u8 uses_dma ;
   u8 uses_pio_for_control ;
   u8 otg_port ;
   unsigned int is_b_host : 1 ;
   unsigned int b_hnp_enable : 1 ;
   unsigned int no_stop_on_short : 1 ;
   unsigned int no_sg_constraint : 1 ;
   unsigned int sg_tablesize ;
   int devnum_next ;
   struct usb_devmap devmap ;
   struct usb_device *root_hub ;
   struct usb_bus *hs_companion ;
   struct list_head bus_list ;
   int bandwidth_allocated ;
   int bandwidth_int_reqs ;
   int bandwidth_isoc_reqs ;
   unsigned int resuming_ports ;
   struct mon_bus *mon_bus ;
   int monitored ;
};
struct usb_tt;
enum usb_device_removable {
    USB_DEVICE_REMOVABLE_UNKNOWN = 0,
    USB_DEVICE_REMOVABLE = 1,
    USB_DEVICE_FIXED = 2
} ;
struct usb2_lpm_parameters {
   unsigned int besl ;
   int timeout ;
};
struct usb3_lpm_parameters {
   unsigned int mel ;
   unsigned int pel ;
   unsigned int sel ;
   int timeout ;
};
struct usb_device {
   int devnum ;
   char devpath[16U] ;
   u32 route ;
   enum usb_device_state state ;
   enum usb_device_speed speed ;
   struct usb_tt *tt ;
   int ttport ;
   unsigned int toggle[2U] ;
   struct usb_device *parent ;
   struct usb_bus *bus ;
   struct usb_host_endpoint ep0 ;
   struct device dev ;
   struct usb_device_descriptor descriptor ;
   struct usb_host_bos *bos ;
   struct usb_host_config *config ;
   struct usb_host_config *actconfig ;
   struct usb_host_endpoint *ep_in[16U] ;
   struct usb_host_endpoint *ep_out[16U] ;
   char **rawdescriptors ;
   unsigned short bus_mA ;
   u8 portnum ;
   u8 level ;
   unsigned int can_submit : 1 ;
   unsigned int persist_enabled : 1 ;
   unsigned int have_langid : 1 ;
   unsigned int authorized : 1 ;
   unsigned int authenticated : 1 ;
   unsigned int wusb : 1 ;
   unsigned int lpm_capable : 1 ;
   unsigned int usb2_hw_lpm_capable : 1 ;
   unsigned int usb2_hw_lpm_besl_capable : 1 ;
   unsigned int usb2_hw_lpm_enabled : 1 ;
   unsigned int usb2_hw_lpm_allowed : 1 ;
   unsigned int usb3_lpm_enabled : 1 ;
   int string_langid ;
   char *product ;
   char *manufacturer ;
   char *serial ;
   struct list_head filelist ;
   int maxchild ;
   u32 quirks ;
   atomic_t urbnum ;
   unsigned long active_duration ;
   unsigned long connect_time ;
   unsigned int do_remote_wakeup : 1 ;
   unsigned int reset_resume : 1 ;
   unsigned int port_is_suspended : 1 ;
   struct wusb_dev *wusb_dev ;
   int slot_id ;
   enum usb_device_removable removable ;
   struct usb2_lpm_parameters l1_params ;
   struct usb3_lpm_parameters u1_params ;
   struct usb3_lpm_parameters u2_params ;
   unsigned int lpm_disable_count ;
};
struct usb_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
struct usbdrv_wrap {
   struct device_driver driver ;
   int for_devices ;
};
struct usb_driver {
   char const *name ;
   int (*probe)(struct usb_interface * , struct usb_device_id const * ) ;
   void (*disconnect)(struct usb_interface * ) ;
   int (*unlocked_ioctl)(struct usb_interface * , unsigned int , void * ) ;
   int (*suspend)(struct usb_interface * , pm_message_t ) ;
   int (*resume)(struct usb_interface * ) ;
   int (*reset_resume)(struct usb_interface * ) ;
   int (*pre_reset)(struct usb_interface * ) ;
   int (*post_reset)(struct usb_interface * ) ;
   struct usb_device_id const *id_table ;
   struct usb_dynids dynids ;
   struct usbdrv_wrap drvwrap ;
   unsigned int no_dynamic_id : 1 ;
   unsigned int supports_autosuspend : 1 ;
   unsigned int disable_hub_initiated_lpm : 1 ;
   unsigned int soft_unbind : 1 ;
};
struct usb_class_driver {
   char *name ;
   char *(*devnode)(struct device * , umode_t * ) ;
   struct file_operations const *fops ;
   int minor_base ;
};
struct usb_iso_packet_descriptor {
   unsigned int offset ;
   unsigned int length ;
   unsigned int actual_length ;
   int status ;
};
struct urb;
struct usb_anchor {
   struct list_head urb_list ;
   wait_queue_head_t wait ;
   spinlock_t lock ;
   atomic_t suspend_wakeups ;
   unsigned int poisoned : 1 ;
};
struct scatterlist;
struct urb {
   struct kref kref ;
   void *hcpriv ;
   atomic_t use_count ;
   atomic_t reject ;
   int unlinked ;
   struct list_head urb_list ;
   struct list_head anchor_list ;
   struct usb_anchor *anchor ;
   struct usb_device *dev ;
   struct usb_host_endpoint *ep ;
   unsigned int pipe ;
   unsigned int stream_id ;
   int status ;
   unsigned int transfer_flags ;
   void *transfer_buffer ;
   dma_addr_t transfer_dma ;
   struct scatterlist *sg ;
   int num_mapped_sgs ;
   int num_sgs ;
   u32 transfer_buffer_length ;
   u32 actual_length ;
   unsigned char *setup_packet ;
   dma_addr_t setup_dma ;
   int start_frame ;
   int number_of_packets ;
   int interval ;
   int error_count ;
   void *context ;
   void (*complete)(struct urb * ) ;
   struct usb_iso_packet_descriptor iso_frame_desc[0U] ;
};
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *page ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct * ) ;
   void (*close)(struct vm_area_struct * ) ;
   int (*fault)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*page_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   int (*migrate)(struct vm_area_struct * , nodemask_t const * , nodemask_t const * ,
                  unsigned long ) ;
   int (*remap_pages)(struct vm_area_struct * , unsigned long , unsigned long ,
                      unsigned long ) ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
typedef struct poll_table_struct poll_table;
typedef __u64 Elf64_Addr;
typedef __u16 Elf64_Half;
typedef __u32 Elf64_Word;
typedef __u64 Elf64_Xword;
struct elf64_sym {
   Elf64_Word st_name ;
   unsigned char st_info ;
   unsigned char st_other ;
   Elf64_Half st_shndx ;
   Elf64_Addr st_value ;
   Elf64_Xword st_size ;
};
typedef struct elf64_sym Elf64_Sym;
struct kernel_param;
struct kernel_param_ops {
   unsigned int flags ;
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_196 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_196 __annonCompField64 ;
};
struct kparam_string {
   unsigned int maxlen ;
   char *string ;
};
struct kparam_array {
   unsigned int max ;
   unsigned int elemsize ;
   unsigned int *num ;
   struct kernel_param_ops const *ops ;
   void *elem ;
};
struct tracepoint;
struct tracepoint_func {
   void *func ;
   void *data ;
};
struct tracepoint {
   char const *name ;
   struct static_key key ;
   void (*regfunc)(void) ;
   void (*unregfunc)(void) ;
   struct tracepoint_func *funcs ;
};
struct mod_arch_specific {
};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
   struct completion *kobj_completion ;
};
struct module_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct module_attribute * , struct module_kobject * , char * ) ;
   ssize_t (*store)(struct module_attribute * , struct module_kobject * , char const * ,
                    size_t ) ;
   void (*setup)(struct module * , char const * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2,
    MODULE_STATE_UNFORMED = 3
} ;
struct module_ref {
   unsigned long incs ;
   unsigned long decs ;
};
struct module_sect_attrs;
struct module_notes_attrs;
struct ftrace_event_call;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[56U] ;
   struct module_kobject mkobj ;
   struct module_attribute *modinfo_attrs ;
   char const *version ;
   char const *srcversion ;
   struct kobject *holders_dir ;
   struct kernel_symbol const *syms ;
   unsigned long const *crcs ;
   unsigned int num_syms ;
   struct kernel_param *kp ;
   unsigned int num_kp ;
   unsigned int num_gpl_syms ;
   struct kernel_symbol const *gpl_syms ;
   unsigned long const *gpl_crcs ;
   struct kernel_symbol const *unused_syms ;
   unsigned long const *unused_crcs ;
   unsigned int num_unused_syms ;
   unsigned int num_unused_gpl_syms ;
   struct kernel_symbol const *unused_gpl_syms ;
   unsigned long const *unused_gpl_crcs ;
   bool sig_ok ;
   struct kernel_symbol const *gpl_future_syms ;
   unsigned long const *gpl_future_crcs ;
   unsigned int num_gpl_future_syms ;
   unsigned int num_exentries ;
   struct exception_table_entry *extable ;
   int (*init)(void) ;
   void *module_init ;
   void *module_core ;
   unsigned int init_size ;
   unsigned int core_size ;
   unsigned int init_text_size ;
   unsigned int core_text_size ;
   unsigned int init_ro_size ;
   unsigned int core_ro_size ;
   struct mod_arch_specific arch ;
   unsigned int taints ;
   unsigned int num_bugs ;
   struct list_head bug_list ;
   struct bug_entry *bug_table ;
   Elf64_Sym *symtab ;
   Elf64_Sym *core_symtab ;
   unsigned int num_symtab ;
   unsigned int core_num_syms ;
   char *strtab ;
   char *core_strtab ;
   struct module_sect_attrs *sect_attrs ;
   struct module_notes_attrs *notes_attrs ;
   char *args ;
   void *percpu ;
   unsigned int percpu_size ;
   unsigned int num_tracepoints ;
   struct tracepoint * const *tracepoints_ptrs ;
   struct jump_entry *jump_entries ;
   unsigned int num_jump_entries ;
   unsigned int num_trace_bprintk_fmt ;
   char const **trace_bprintk_fmt_start ;
   struct ftrace_event_call **trace_events ;
   unsigned int num_trace_events ;
   unsigned int num_ftrace_callsites ;
   unsigned long *ftrace_callsites ;
   struct list_head source_list ;
   struct list_head target_list ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   unsigned int stat[26U] ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
struct memcg_cache_params;
struct kmem_cache_node;
struct kmem_cache {
   struct kmem_cache_cpu *cpu_slab ;
   unsigned long flags ;
   unsigned long min_partial ;
   int size ;
   int object_size ;
   int offset ;
   int cpu_partial ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(void * ) ;
   int inuse ;
   int align ;
   int reserved ;
   char const *name ;
   struct list_head list ;
   struct kobject kobj ;
   struct memcg_cache_params *memcg_params ;
   int max_attr_size ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct __anonstruct____missing_field_name_198 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct____missing_field_name_199 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion____missing_field_name_197 {
   struct __anonstruct____missing_field_name_198 __annonCompField65 ;
   struct __anonstruct____missing_field_name_199 __annonCompField66 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion____missing_field_name_197 __annonCompField67 ;
};
struct iowarrior_info {
   __u32 vendor ;
   __u32 product ;
   __u8 serial[9U] ;
   __u32 revision ;
   __u32 speed ;
   __u32 power ;
   __u32 if_num ;
   __u32 report_size ;
};
struct iowarrior {
   struct mutex mutex ;
   struct usb_device *udev ;
   struct usb_interface *interface ;
   unsigned char minor ;
   struct usb_endpoint_descriptor *int_out_endpoint ;
   struct usb_endpoint_descriptor *int_in_endpoint ;
   struct urb *int_in_urb ;
   unsigned char *int_in_buffer ;
   unsigned char serial_number ;
   unsigned char *read_queue ;
   wait_queue_head_t read_wait ;
   wait_queue_head_t write_wait ;
   atomic_t write_busy ;
   atomic_t read_idx ;
   atomic_t intr_idx ;
   spinlock_t intr_idx_lock ;
   atomic_t overflow_flag ;
   int present ;
   int opened ;
   char chip_serial[9U] ;
   int report_size ;
   u16 product_id ;
};
struct ldv_struct_insmod_4 {
   int signal_pending ;
};
struct ldv_struct_usb_scenario_3 {
   struct usb_driver *arg0 ;
   int signal_pending ;
};
struct device_private {
   void *driver_data ;
};
enum hrtimer_restart;
struct kthread_work;
struct kthread_worker {
   spinlock_t lock ;
   struct list_head work_list ;
   struct task_struct *task ;
   struct kthread_work *current_work ;
};
struct kthread_work {
   struct list_head node ;
   void (*func)(struct kthread_work * ) ;
   wait_queue_head_t done ;
   struct kthread_worker *worker ;
};
struct spi_master;
struct spi_device {
   struct device dev ;
   struct spi_master *master ;
   u32 max_speed_hz ;
   u8 chip_select ;
   u8 bits_per_word ;
   u16 mode ;
   int irq ;
   void *controller_state ;
   void *controller_data ;
   char modalias[32U] ;
   int cs_gpio ;
};
struct spi_message;
struct spi_transfer;
struct spi_master {
   struct device dev ;
   struct list_head list ;
   s16 bus_num ;
   u16 num_chipselect ;
   u16 dma_alignment ;
   u16 mode_bits ;
   u32 bits_per_word_mask ;
   u32 min_speed_hz ;
   u32 max_speed_hz ;
   u16 flags ;
   spinlock_t bus_lock_spinlock ;
   struct mutex bus_lock_mutex ;
   bool bus_lock_flag ;
   int (*setup)(struct spi_device * ) ;
   int (*transfer)(struct spi_device * , struct spi_message * ) ;
   void (*cleanup)(struct spi_device * ) ;
   bool queued ;
   struct kthread_worker kworker ;
   struct task_struct *kworker_task ;
   struct kthread_work pump_messages ;
   spinlock_t queue_lock ;
   struct list_head queue ;
   struct spi_message *cur_msg ;
   bool busy ;
   bool running ;
   bool rt ;
   bool auto_runtime_pm ;
   bool cur_msg_prepared ;
   struct completion xfer_completion ;
   int (*prepare_transfer_hardware)(struct spi_master * ) ;
   int (*transfer_one_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_transfer_hardware)(struct spi_master * ) ;
   int (*prepare_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_message)(struct spi_master * , struct spi_message * ) ;
   void (*set_cs)(struct spi_device * , bool ) ;
   int (*transfer_one)(struct spi_master * , struct spi_device * , struct spi_transfer * ) ;
   int *cs_gpios ;
};
struct spi_transfer {
   void const *tx_buf ;
   void *rx_buf ;
   unsigned int len ;
   dma_addr_t tx_dma ;
   dma_addr_t rx_dma ;
   unsigned int cs_change : 1 ;
   unsigned int tx_nbits : 3 ;
   unsigned int rx_nbits : 3 ;
   u8 bits_per_word ;
   u16 delay_usecs ;
   u32 speed_hz ;
   struct list_head transfer_list ;
};
struct spi_message {
   struct list_head transfers ;
   struct spi_device *spi ;
   unsigned int is_dma_mapped : 1 ;
   void (*complete)(void * ) ;
   void *context ;
   unsigned int frame_length ;
   unsigned int actual_length ;
   int status ;
   struct list_head queue ;
   void *state ;
};
long ldv__builtin_expect(long exp , long c ) ;
void *ldv_dev_get_drvdata(struct device const *dev ) ;
int ldv_dev_set_drvdata(struct device *dev , void *data ) ;
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
static void ldv_mutex_lock_52(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_54(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_55(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_58(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_60(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_63(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_67(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_71(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_72(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_iowarrior_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_iowarrior_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_iowarrior_open_disc_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_iowarrior_open_disc_lock(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of_iowarrior(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_iowarrior(struct mutex *lock ) ;
extern struct module __this_module ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern int printk(char const * , ...) ;
extern void might_fault(void) ;
extern char *kasprintf(gfp_t , char const * , ...) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern int memcmp(void const * , void const * , size_t ) ;
extern size_t strlen(char const * ) ;
__inline static int atomic_read(atomic_t const *v )
{
  {
  return ((int )*((int volatile *)(& v->counter)));
}
}
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
__inline static void atomic_inc(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; incl %0": "+m" (v->counter));
  return;
}
}
__inline static void atomic_dec(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; decl %0": "+m" (v->counter));
  return;
}
}
void ldv_spin_lock_intr_idx_lock_of_iowarrior(void) ;
void ldv_spin_unlock_intr_idx_lock_of_iowarrior(void) ;
void ldv_initialize(void) ;
int ldv_post_init(int init_ret_val ) ;
extern void ldv_pre_probe(void) ;
int ldv_post_probe(int probe_ret_val ) ;
int ldv_filter_err_code(int ret_val ) ;
extern int ldv_failed_usb_register_driver(void) ;
void ldv_check_final_state(void) ;
extern void __VERIFIER_assume(int ) ;
int ldv_undef_int(void) ;
int ldv_undef_int_negative(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
extern void *external_allocated_data(void) ;
void *ldv_xmalloc_unknown_size(size_t size ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
static void ldv_mutex_unlock_53(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_56(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_57(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_59(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_61(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_62(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_64(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_65(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_66(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_68(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_69(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_70(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_73(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_74(struct mutex *ldv_func_arg1 ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField19.rlock);
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  {
  _raw_spin_lock(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void ldv_spin_lock_49(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_50(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_50(spinlock_t *lock ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
__inline static int usb_endpoint_dir_in(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )((signed char )epd->bEndpointAddress) < 0);
}
}
__inline static int usb_endpoint_dir_out(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )((signed char )epd->bEndpointAddress) >= 0);
}
}
__inline static int usb_endpoint_xfer_int(struct usb_endpoint_descriptor const *epd )
{
  {
  return (((int )epd->bmAttributes & 3) == 3);
}
}
__inline static int usb_endpoint_is_int_in(struct usb_endpoint_descriptor const *epd )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = usb_endpoint_xfer_int(epd);
  }
  if (tmp != 0) {
    {
    tmp___0 = usb_endpoint_dir_in(epd);
    }
    if (tmp___0 != 0) {
      tmp___1 = 1;
    } else {
      tmp___1 = 0;
    }
  } else {
    tmp___1 = 0;
  }
  return (tmp___1);
}
}
__inline static int usb_endpoint_is_int_out(struct usb_endpoint_descriptor const *epd )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = usb_endpoint_xfer_int(epd);
  }
  if (tmp != 0) {
    {
    tmp___0 = usb_endpoint_dir_out(epd);
    }
    if (tmp___0 != 0) {
      tmp___1 = 1;
    } else {
      tmp___1 = 0;
    }
  } else {
    tmp___1 = 0;
  }
  return (tmp___1);
}
}
__inline static int usb_endpoint_maxp(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )epd->wMaxPacketSize);
}
}
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
extern void __copy_from_user_overflow(void) ;
extern void __copy_to_user_overflow(void) ;
__inline static unsigned long copy_from_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  long tmp ;
  long tmp___0 ;
  {
  {
  sz = -1;
  might_fault();
  tmp = ldv__builtin_expect(sz < 0, 1L);
  }
  if (tmp != 0L) {
    {
    n = _copy_from_user(to, from, (unsigned int )n);
    }
  } else {
    {
    tmp___0 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    }
    if (tmp___0 != 0L) {
      {
      n = _copy_from_user(to, from, (unsigned int )n);
      }
    } else {
      {
      __copy_from_user_overflow();
      }
    }
  }
  return (n);
}
}
__inline static unsigned long copy_to_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  long tmp ;
  long tmp___0 ;
  {
  {
  sz = -1;
  might_fault();
  tmp = ldv__builtin_expect(sz < 0, 1L);
  }
  if (tmp != 0L) {
    {
    n = _copy_to_user(to, from, (unsigned int )n);
    }
  } else {
    {
    tmp___0 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    }
    if (tmp___0 != 0L) {
      {
      n = _copy_to_user(to, from, (unsigned int )n);
      }
    } else {
      {
      __copy_to_user_overflow();
      }
    }
  }
  return (n);
}
}
__inline static char const *dev_name(struct device const *dev )
{
  char const *tmp ;
  {
  if ((unsigned long )dev->init_name != (unsigned long )((char const * )0)) {
    return ((char const *)dev->init_name);
  } else {
  }
  {
  tmp = kobject_name(& dev->kobj);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_45(struct device const *dev ) ;
static int ldv_dev_set_drvdata_46(struct device *dev , void *data ) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern int _dev_info(struct device const * , char const * , ...) ;
__inline static unsigned int iminor(struct inode const *inode )
{
  {
  return ((unsigned int )inode->i_rdev & 1048575U);
}
}
extern loff_t noop_llseek(struct file * , loff_t , int ) ;
extern void schedule(void) ;
__inline static void *usb_get_intfdata(struct usb_interface *intf )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_45((struct device const *)(& intf->dev));
  }
  return (tmp);
}
}
__inline static void usb_set_intfdata(struct usb_interface *intf , void *data )
{
  {
  {
  ldv_dev_set_drvdata_46(& intf->dev, data);
  }
  return;
}
}
__inline static struct usb_device *interface_to_usbdev(struct usb_interface *intf )
{
  struct device const *__mptr ;
  {
  __mptr = (struct device const *)intf->dev.parent;
  return ((struct usb_device *)(__mptr + 0xffffffffffffff78UL));
}
}
extern struct usb_interface *usb_find_interface(struct usb_driver * , int ) ;
static int ldv_usb_register_driver_75(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                      char const *ldv_func_arg3 ) ;
static void ldv_usb_deregister_76(struct usb_driver *ldv_func_arg1 ) ;
extern int usb_register_dev(struct usb_interface * , struct usb_class_driver * ) ;
extern void usb_deregister_dev(struct usb_interface * , struct usb_class_driver * ) ;
__inline static void usb_fill_int_urb(struct urb *urb , struct usb_device *dev , unsigned int pipe ,
                                      void *transfer_buffer , int buffer_length ,
                                      void (*complete_fn)(struct urb * ) , void *context ,
                                      int interval )
{
  int __val ;
  int __min ;
  int __max ;
  {
  urb->dev = dev;
  urb->pipe = pipe;
  urb->transfer_buffer = transfer_buffer;
  urb->transfer_buffer_length = (u32 )buffer_length;
  urb->complete = complete_fn;
  urb->context = context;
  if ((unsigned int )dev->speed == 3U || (unsigned int )dev->speed == 5U) {
    __val = interval;
    __min = 1;
    __max = 16;
    __val = __min > __val ? __min : __val;
    interval = __max < __val ? __max : __val;
    urb->interval = 1 << (interval + -1);
  } else {
    urb->interval = interval;
  }
  urb->start_frame = -1;
  return;
}
}
extern struct urb *usb_alloc_urb(int , gfp_t ) ;
extern void usb_free_urb(struct urb * ) ;
extern int usb_submit_urb(struct urb * , gfp_t ) ;
extern void usb_kill_urb(struct urb * ) ;
extern void *usb_alloc_coherent(struct usb_device * , size_t , gfp_t , dma_addr_t * ) ;
extern void usb_free_coherent(struct usb_device * , size_t , void * , dma_addr_t ) ;
extern int usb_control_msg(struct usb_device * , unsigned int , __u8 , __u8 , __u16 ,
                           __u16 , void * , __u16 , int ) ;
extern int usb_string(struct usb_device * , int , char * , size_t ) ;
void ldv_assert(char const *desc , int expr ) ;
__inline static unsigned int __create_pipe(struct usb_device *dev , unsigned int endpoint )
{
  {
  return ((unsigned int )(dev->devnum << 8) | (endpoint << 15));
}
}
__inline static void poll_wait(struct file *filp , wait_queue_head_t *wait_address ,
                               poll_table *p )
{
  {
  if ((unsigned long )p != (unsigned long )((poll_table *)0) && ((unsigned long )p->_qproc != (unsigned long )((void (*)(struct file * ,
                                                                                                                         wait_queue_head_t * ,
                                                                                                                         struct poll_table_struct * ))0) && (unsigned long )wait_address != (unsigned long )((wait_queue_head_t *)0))) {
    {
    (*(p->_qproc))(filp, wait_address, p);
    }
  } else {
  }
  return;
}
}
extern void kfree(void const * ) ;
extern void *ldv_malloc(size_t);
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  void *tmp___2 ;
  {
  {
  tmp___2 = __kmalloc(size, flags);
  }
  return (tmp___2);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
static struct mutex iowarrior_mutex = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "iowarrior_mutex.wait_lock",
                                                           0, 0UL}}}}, {& iowarrior_mutex.wait_list,
                                                                        & iowarrior_mutex.wait_list},
    0, 0, (void *)(& iowarrior_mutex), {0, {0, 0}, "iowarrior_mutex", 0, 0UL}};
static bool debug = 0;
static struct usb_driver iowarrior_driver ;
static struct mutex iowarrior_open_disc_lock = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "iowarrior_open_disc_lock.wait_lock",
                                                           0, 0UL}}}}, {& iowarrior_open_disc_lock.wait_list,
                                                                        & iowarrior_open_disc_lock.wait_list},
    0, 0, (void *)(& iowarrior_open_disc_lock), {0, {0, 0}, "iowarrior_open_disc_lock",
                                                 0, 0UL}};
static int usb_get_report(struct usb_device *dev , struct usb_host_interface *inter ,
                          unsigned char type , unsigned char id , void *buf , int size )
{
  unsigned int tmp ;
  int tmp___0 ;
  {
  {
  tmp = __create_pipe(dev, 0U);
  tmp___0 = usb_control_msg(dev, tmp | 2147483776U, 1, 161, ((int )((__u16 )type) << 8U) + (int )((__u16 )id),
                            (int )inter->desc.bInterfaceNumber, buf, (int )((__u16 )size),
                            1250);
  }
  return (tmp___0);
}
}
static int usb_set_report(struct usb_interface *intf , unsigned char type , unsigned char id ,
                          void *buf , int size )
{
  struct usb_device *tmp ;
  unsigned int tmp___0 ;
  struct usb_device *tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = interface_to_usbdev(intf);
  tmp___0 = __create_pipe(tmp, 0U);
  tmp___1 = interface_to_usbdev(intf);
  tmp___2 = usb_control_msg(tmp___1, tmp___0 | 2147483648U, 9, 33, ((int )((__u16 )type) << 8U) + (int )((__u16 )id),
                            (int )(intf->cur_altsetting)->desc.bInterfaceNumber, buf,
                            (int )((__u16 )size), 250);
  }
  return (tmp___2);
}
}
static struct usb_device_id const iowarrior_ids[6U] = { {3U, 1984U, 5376U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 1984U, 5377U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 1984U, 5393U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 1984U, 5394U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 1984U, 5379U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL}};
struct usb_device_id const __mod_usb_device_table ;
static void iowarrior_callback(struct urb *urb )
{
  struct iowarrior *dev ;
  int intr_idx ;
  int read_idx ;
  int aux_idx ;
  int offset ;
  int status ;
  int retval ;
  int tmp ;
  unsigned char tmp___0 ;
  {
  dev = (struct iowarrior *)urb->context;
  status = urb->status;
  {
  if (status == 0) {
    goto case_0;
  } else {
  }
  if (status == -104) {
    goto case_neg_104;
  } else {
  }
  if (status == -2) {
    goto case_neg_2;
  } else {
  }
  if (status == -108) {
    goto case_neg_108;
  } else {
  }
  goto switch_default;
  case_0: ;
  goto ldv_30568;
  case_neg_104: ;
  case_neg_2: ;
  case_neg_108: ;
  return;
  switch_default: ;
  goto exit;
  switch_break: ;
  }
  ldv_30568:
  {
  ldv_spin_lock_49(& dev->intr_idx_lock);
  intr_idx = atomic_read((atomic_t const *)(& dev->intr_idx));
  aux_idx = intr_idx != 0 ? intr_idx + -1 : 15;
  read_idx = atomic_read((atomic_t const *)(& dev->read_idx));
  }
  if (intr_idx != read_idx && (unsigned int )((dev->interface)->cur_altsetting)->desc.bInterfaceNumber == 0U) {
    {
    offset = aux_idx * (dev->report_size + 1);
    tmp = memcmp((void const *)(dev->read_queue + (unsigned long )offset), (void const *)urb->transfer_buffer,
                 (size_t )dev->report_size);
    }
    if (tmp == 0) {
      {
      ldv_spin_unlock_50(& dev->intr_idx_lock);
      }
      goto exit;
    } else {
    }
  } else {
  }
  aux_idx = intr_idx != 15 ? intr_idx + 1 : 0;
  if (read_idx == aux_idx) {
    {
    read_idx = read_idx + 1;
    read_idx = read_idx != 16 ? read_idx : 0;
    atomic_set(& dev->read_idx, read_idx);
    atomic_set(& dev->overflow_flag, 1);
    }
  } else {
  }
  {
  offset = intr_idx * (dev->report_size + 1);
  memcpy((void *)(dev->read_queue + (unsigned long )offset), (void const *)urb->transfer_buffer,
         (size_t )dev->report_size);
  tmp___0 = dev->serial_number;
  dev->serial_number = (unsigned char )((int )dev->serial_number + 1);
  *(dev->read_queue + ((unsigned long )offset + (unsigned long )dev->report_size)) = tmp___0;
  atomic_set(& dev->intr_idx, aux_idx);
  ldv_spin_unlock_50(& dev->intr_idx_lock);
  __wake_up(& dev->read_wait, 1U, 1, (void *)0);
  }
  exit:
  {
  retval = usb_submit_urb(urb, 32U);
  }
  if (retval != 0) {
    {
    dev_err((struct device const *)(& (dev->interface)->dev), "%s - usb_submit_urb failed with result %d\n",
            "iowarrior_callback", retval);
    }
  } else {
  }
  return;
}
}
static void iowarrior_write_callback(struct urb *urb )
{
  struct iowarrior *dev ;
  int status ;
  {
  status = urb->status;
  dev = (struct iowarrior *)urb->context;
  if (status != 0 && ((status != -2 && status != -104) && status != -108)) {
    if ((int )debug) {
      {
      printk("\017drivers/usb/misc/iowarrior.c: %s - nonzero write bulk status received: %d\n",
             "iowarrior_write_callback", status);
      }
    } else {
    }
  } else {
  }
  {
  usb_free_coherent(urb->dev, (size_t )urb->transfer_buffer_length, urb->transfer_buffer,
                    urb->transfer_dma);
  atomic_dec(& dev->write_busy);
  __wake_up(& dev->write_wait, 1U, 1, (void *)0);
  }
  return;
}
}
__inline static void iowarrior_delete(struct iowarrior *dev )
{
  {
  if ((int )debug) {
    {
    printk("\017drivers/usb/misc/iowarrior.c: %s - minor %d\n", "iowarrior_delete",
           (int )dev->minor);
    }
  } else {
  }
  {
  kfree((void const *)dev->int_in_buffer);
  usb_free_urb(dev->int_in_urb);
  kfree((void const *)dev->read_queue);
  kfree((void const *)dev);
  }
  return;
}
}
static int read_index(struct iowarrior *dev )
{
  int intr_idx ;
  int read_idx ;
  {
  {
  read_idx = atomic_read((atomic_t const *)(& dev->read_idx));
  intr_idx = atomic_read((atomic_t const *)(& dev->intr_idx));
  }
  return (read_idx != intr_idx ? read_idx : -1);
}
}
static ssize_t iowarrior_read(struct file *file , char *buffer , size_t count , loff_t *ppos )
{
  struct iowarrior *dev ;
  int read_idx ;
  int offset ;
  int r ;
  int __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  {
  dev = (struct iowarrior *)file->private_data;
  if ((unsigned long )dev == (unsigned long )((struct iowarrior *)0) || dev->present == 0) {
    return (-19L);
  } else {
  }
  if ((int )debug) {
    {
    printk("\017drivers/usb/misc/iowarrior.c: %s - minor %d, count = %zd\n", "iowarrior_read",
           (int )dev->minor, count);
    }
  } else {
  }
  if (count != (size_t )dev->report_size && count != (size_t )(dev->report_size + 1)) {
    return (-22L);
  } else {
  }
  ldv_30610:
  {
  atomic_set(& dev->overflow_flag, 0);
  read_idx = read_index(dev);
  }
  if (read_idx == -1) {
    if ((file->f_flags & 2048U) != 0U) {
      return (-11L);
    } else {
      __ret = 0;
      if (dev->present != 0) {
        {
        read_idx = read_index(dev);
        }
        if (read_idx == -1) {
          {
          __ret___0 = 0L;
          INIT_LIST_HEAD(& __wait.task_list);
          __wait.flags = 0U;
          }
          ldv_30607:
          {
          tmp = prepare_to_wait_event(& dev->read_wait, & __wait, 1);
          __int = tmp;
          }
          if (dev->present == 0) {
            goto ldv_30606;
          } else {
            {
            read_idx = read_index(dev);
            }
            if (read_idx != -1) {
              goto ldv_30606;
            } else {
            }
          }
          if (__int != 0L) {
            __ret___0 = __int;
            goto ldv_30606;
          } else {
          }
          {
          schedule();
          }
          goto ldv_30607;
          ldv_30606:
          {
          finish_wait(& dev->read_wait, & __wait);
          }
          __ret = (int )__ret___0;
        } else {
        }
      } else {
      }
      r = __ret;
      if (r != 0) {
        return (-85L);
      } else {
      }
      if (dev->present == 0) {
        return (-19L);
      } else {
      }
      if (read_idx == -1) {
        return (0L);
      } else {
      }
    }
  } else {
  }
  {
  offset = read_idx * (dev->report_size + 1);
  tmp___0 = copy_to_user((void *)buffer, (void const *)(dev->read_queue + (unsigned long )offset),
                         count);
  }
  if (tmp___0 != 0UL) {
    return (-14L);
  } else {
  }
  {
  tmp___1 = atomic_read((atomic_t const *)(& dev->overflow_flag));
  }
  if (tmp___1 != 0) {
    goto ldv_30610;
  } else {
  }
  {
  read_idx = read_idx + 1;
  read_idx = read_idx != 16 ? read_idx : 0;
  atomic_set(& dev->read_idx, read_idx);
  }
  return ((ssize_t )count);
}
}
static ssize_t iowarrior_write(struct file *file , char const *user_buffer , size_t count ,
                               loff_t *ppos )
{
  struct iowarrior *dev ;
  int retval ;
  char *buf ;
  struct urb *int_out_urb ;
  void *tmp ;
  unsigned long tmp___0 ;
  int __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  unsigned int tmp___6 ;
  unsigned long tmp___7 ;
  int tmp___8 ;
  {
  {
  retval = 0;
  buf = (char *)0;
  int_out_urb = (struct urb *)0;
  dev = (struct iowarrior *)file->private_data;
  ldv_mutex_lock_52(& dev->mutex);
  }
  if (dev->present == 0) {
    retval = -19;
    goto exit;
  } else {
  }
  if ((int )debug) {
    {
    printk("\017drivers/usb/misc/iowarrior.c: %s - minor %d, count = %zd\n", "iowarrior_write",
           (int )dev->minor, count);
    }
  } else {
  }
  if (count == 0UL) {
    retval = 0;
    goto exit;
  } else {
  }
  if (count != (size_t )dev->report_size) {
    retval = -22;
    goto exit;
  } else {
  }
  {
  if ((int )dev->product_id == 5377) {
    goto case_5377;
  } else {
  }
  if ((int )dev->product_id == 5393) {
    goto case_5393;
  } else {
  }
  if ((int )dev->product_id == 5394) {
    goto case_5394;
  } else {
  }
  if ((int )dev->product_id == 5376) {
    goto case_5376;
  } else {
  }
  if ((int )dev->product_id == 5379) {
    goto case_5379;
  } else {
  }
  goto switch_default;
  case_5377: ;
  case_5393: ;
  case_5394: ;
  case_5376:
  {
  tmp = kmalloc(count, 208U);
  buf = (char *)tmp;
  }
  if ((unsigned long )buf == (unsigned long )((char *)0)) {
    retval = -12;
    goto exit;
  } else {
  }
  {
  tmp___0 = copy_from_user((void *)buf, (void const *)user_buffer, count);
  }
  if (tmp___0 != 0UL) {
    {
    retval = -14;
    kfree((void const *)buf);
    }
    goto exit;
  } else {
  }
  {
  retval = usb_set_report(dev->interface, 2, 0, (void *)buf, (int )count);
  kfree((void const *)buf);
  }
  goto exit;
  case_5379:
  {
  tmp___4 = atomic_read((atomic_t const *)(& dev->write_busy));
  }
  if (tmp___4 == 4) {
    if ((file->f_flags & 2048U) != 0U) {
      retval = -11;
      goto exit;
    } else {
      __ret = 0;
      if (dev->present != 0) {
        {
        tmp___3 = atomic_read((atomic_t const *)(& dev->write_busy));
        }
        if (tmp___3 > 3) {
          {
          __ret___0 = 0L;
          INIT_LIST_HEAD(& __wait.task_list);
          __wait.flags = 0U;
          }
          ldv_30635:
          {
          tmp___1 = prepare_to_wait_event(& dev->write_wait, & __wait, 1);
          __int = tmp___1;
          }
          if (dev->present == 0) {
            goto ldv_30634;
          } else {
            {
            tmp___2 = atomic_read((atomic_t const *)(& dev->write_busy));
            }
            if (tmp___2 <= 3) {
              goto ldv_30634;
            } else {
            }
          }
          if (__int != 0L) {
            __ret___0 = __int;
            goto ldv_30634;
          } else {
          }
          {
          schedule();
          }
          goto ldv_30635;
          ldv_30634:
          {
          finish_wait(& dev->write_wait, & __wait);
          }
          __ret = (int )__ret___0;
        } else {
        }
      } else {
      }
      retval = __ret;
      if (retval != 0) {
        retval = -85;
        goto exit;
      } else {
      }
      if (dev->present == 0) {
        retval = -19;
        goto exit;
      } else {
      }
      if (dev->opened == 0) {
        retval = -19;
        goto exit;
      } else {
      }
    }
  } else {
  }
  {
  atomic_inc(& dev->write_busy);
  int_out_urb = usb_alloc_urb(0, 208U);
  }
  if ((unsigned long )int_out_urb == (unsigned long )((struct urb *)0)) {
    retval = -12;
    if ((int )debug) {
      {
      printk("\017drivers/usb/misc/iowarrior.c: %s Unable to allocate urb \n", "iowarrior_write");
      }
    } else {
    }
    goto error_no_urb;
  } else {
  }
  {
  tmp___5 = usb_alloc_coherent(dev->udev, (size_t )dev->report_size, 208U, & int_out_urb->transfer_dma);
  buf = (char *)tmp___5;
  }
  if ((unsigned long )buf == (unsigned long )((char *)0)) {
    retval = -12;
    if ((int )debug) {
      {
      printk("\017drivers/usb/misc/iowarrior.c: %s Unable to allocate buffer \n",
             "iowarrior_write");
      }
    } else {
    }
    goto error_no_buffer;
  } else {
  }
  {
  tmp___6 = __create_pipe(dev->udev, (unsigned int )(dev->int_out_endpoint)->bEndpointAddress);
  usb_fill_int_urb(int_out_urb, dev->udev, tmp___6 | 1073741824U, (void *)buf, dev->report_size,
                   & iowarrior_write_callback, (void *)dev, (int )(dev->int_out_endpoint)->bInterval);
  int_out_urb->transfer_flags = int_out_urb->transfer_flags | 4U;
  tmp___7 = copy_from_user((void *)buf, (void const *)user_buffer, count);
  }
  if (tmp___7 != 0UL) {
    retval = -14;
    goto error;
  } else {
  }
  {
  retval = usb_submit_urb(int_out_urb, 208U);
  }
  if (retval != 0) {
    if ((int )debug) {
      {
      tmp___8 = atomic_read((atomic_t const *)(& dev->write_busy));
      printk("\017drivers/usb/misc/iowarrior.c: %s submit error %d for urb nr.%d\n",
             "iowarrior_write", retval, tmp___8);
      }
    } else {
    }
    goto error;
  } else {
  }
  {
  retval = (int )count;
  usb_free_urb(int_out_urb);
  }
  goto exit;
  switch_default:
  {
  dev_err((struct device const *)(& (dev->interface)->dev), "%s - not supported for product=0x%x\n",
          "iowarrior_write", (int )dev->product_id);
  retval = -14;
  }
  goto exit;
  switch_break: ;
  }
  error:
  {
  usb_free_coherent(dev->udev, (size_t )dev->report_size, (void *)buf, int_out_urb->transfer_dma);
  }
  error_no_buffer:
  {
  usb_free_urb(int_out_urb);
  }
  error_no_urb:
  {
  atomic_dec(& dev->write_busy);
  __wake_up(& dev->write_wait, 1U, 1, (void *)0);
  }
  exit:
  {
  ldv_mutex_unlock_53(& dev->mutex);
  }
  return ((ssize_t )retval);
}
}
static long iowarrior_ioctl(struct file *file , unsigned int cmd , unsigned long arg )
{
  struct iowarrior *dev ;
  __u8 *buffer ;
  __u8 *user_buffer ;
  int retval ;
  int io_res ;
  void *tmp ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  struct iowarrior_info info ;
  struct usb_config_descriptor *cfg_descriptor ;
  unsigned long tmp___2 ;
  {
  dev = (struct iowarrior *)0;
  dev = (struct iowarrior *)file->private_data;
  if ((unsigned long )dev == (unsigned long )((struct iowarrior *)0)) {
    return (-19L);
  } else {
  }
  {
  tmp = kzalloc((size_t )dev->report_size, 208U);
  buffer = (__u8 *)tmp;
  }
  if ((unsigned long )buffer == (unsigned long )((__u8 *)0U)) {
    return (-12L);
  } else {
  }
  {
  ldv_mutex_lock_54(& iowarrior_mutex);
  ldv_mutex_lock_55(& dev->mutex);
  }
  if (dev->present == 0) {
    retval = -19;
    goto error_out;
  } else {
  }
  if ((int )debug) {
    {
    printk("\017drivers/usb/misc/iowarrior.c: %s - minor %d, cmd 0x%.4x, arg %ld\n",
           "iowarrior_ioctl", (int )dev->minor, cmd, arg);
    }
  } else {
  }
  retval = 0;
  io_res = 0;
  {
  if (cmd == 1074315265U) {
    goto case_1074315265;
  } else {
  }
  if (cmd == 1074315266U) {
    goto case_1074315266;
  } else {
  }
  if (cmd == 2150154243U) {
    goto case_2150154243;
  } else {
  }
  goto switch_default;
  case_1074315265: ;
  if ((((unsigned int )dev->product_id == 5377U || (unsigned int )dev->product_id == 5393U) || (unsigned int )dev->product_id == 5394U) || (unsigned int )dev->product_id == 5376U) {
    {
    user_buffer = (__u8 *)arg;
    tmp___0 = copy_from_user((void *)buffer, (void const *)user_buffer, (unsigned long )dev->report_size);
    io_res = (int )tmp___0;
    }
    if (io_res != 0) {
      retval = -14;
    } else {
      {
      io_res = usb_set_report(dev->interface, 2, 0, (void *)buffer, dev->report_size);
      }
      if (io_res < 0) {
        retval = io_res;
      } else {
      }
    }
  } else {
    {
    retval = -22;
    dev_err((struct device const *)(& (dev->interface)->dev), "ioctl \'IOW_WRITE\' is not supported for product=0x%x.\n",
            (int )dev->product_id);
    }
  }
  goto ldv_30655;
  case_1074315266:
  {
  user_buffer = (__u8 *)arg;
  io_res = usb_get_report(dev->udev, (dev->interface)->cur_altsetting, 1, 0, (void *)buffer,
                          dev->report_size);
  }
  if (io_res < 0) {
    retval = io_res;
  } else {
    {
    tmp___1 = copy_to_user((void *)user_buffer, (void const *)buffer, (unsigned long )dev->report_size);
    io_res = (int )tmp___1;
    }
    if (io_res != 0) {
      retval = -14;
    } else {
    }
  }
  goto ldv_30655;
  case_2150154243:
  {
  cfg_descriptor = & ((dev->udev)->actconfig)->desc;
  memset((void *)(& info), 0, 40UL);
  info.vendor = (__u32 )(dev->udev)->descriptor.idVendor;
  info.product = (__u32 )dev->product_id;
  info.revision = (__u32 )(dev->udev)->descriptor.bcdDevice;
  info.speed = (__u32 )((unsigned short )(dev->udev)->speed);
  info.if_num = (__u32 )((dev->interface)->cur_altsetting)->desc.bInterfaceNumber;
  info.report_size = (__u32 )dev->report_size;
  memcpy((void *)(& info.serial), (void const *)(& dev->chip_serial), 9UL);
  }
  if ((unsigned long )cfg_descriptor == (unsigned long )((struct usb_config_descriptor *)0)) {
    info.power = 4294967295U;
  } else {
    info.power = (__u32 )((int )cfg_descriptor->bMaxPower * 2);
  }
  {
  tmp___2 = copy_to_user((void *)arg, (void const *)(& info), 40UL);
  io_res = (int )tmp___2;
  }
  if (io_res != 0) {
    retval = -14;
  } else {
  }
  goto ldv_30655;
  switch_default:
  retval = -25;
  goto ldv_30655;
  switch_break: ;
  }
  ldv_30655: ;
  error_out:
  {
  ldv_mutex_unlock_56(& dev->mutex);
  ldv_mutex_unlock_57(& iowarrior_mutex);
  kfree((void const *)buffer);
  }
  return ((long )retval);
}
}
static int iowarrior_open(struct inode *inode , struct file *file )
{
  struct iowarrior *dev ;
  struct usb_interface *interface ;
  int subminor ;
  int retval ;
  unsigned int tmp ;
  void *tmp___0 ;
  {
  dev = (struct iowarrior *)0;
  retval = 0;
  if ((int )debug) {
    {
    printk("\017drivers/usb/misc/iowarrior.c: %s\n", "iowarrior_open");
    }
  } else {
  }
  {
  ldv_mutex_lock_58(& iowarrior_mutex);
  tmp = iminor((struct inode const *)inode);
  subminor = (int )tmp;
  interface = usb_find_interface(& iowarrior_driver, subminor);
  }
  if ((unsigned long )interface == (unsigned long )((struct usb_interface *)0)) {
    {
    ldv_mutex_unlock_59(& iowarrior_mutex);
    printk("\v%s - error, can\'t find device for minor %d\n", "iowarrior_open", subminor);
    }
    return (-19);
  } else {
  }
  {
  ldv_mutex_lock_60(& iowarrior_open_disc_lock);
  tmp___0 = usb_get_intfdata(interface);
  dev = (struct iowarrior *)tmp___0;
  }
  if ((unsigned long )dev == (unsigned long )((struct iowarrior *)0)) {
    {
    ldv_mutex_unlock_61(& iowarrior_open_disc_lock);
    ldv_mutex_unlock_62(& iowarrior_mutex);
    }
    return (-19);
  } else {
  }
  {
  ldv_mutex_lock_63(& dev->mutex);
  ldv_mutex_unlock_64(& iowarrior_open_disc_lock);
  }
  if (dev->opened != 0) {
    retval = -16;
    goto out;
  } else {
  }
  {
  retval = usb_submit_urb(dev->int_in_urb, 208U);
  }
  if (retval < 0) {
    {
    dev_err((struct device const *)(& interface->dev), "Error %d while submitting URB\n",
            retval);
    retval = -14;
    }
    goto out;
  } else {
  }
  dev->opened = dev->opened + 1;
  file->private_data = (void *)dev;
  retval = 0;
  out:
  {
  ldv_mutex_unlock_65(& dev->mutex);
  ldv_mutex_unlock_66(& iowarrior_mutex);
  }
  return (retval);
}
}
static int iowarrior_release(struct inode *inode , struct file *file )
{
  struct iowarrior *dev ;
  int retval ;
  {
  retval = 0;
  dev = (struct iowarrior *)file->private_data;
  if ((unsigned long )dev == (unsigned long )((struct iowarrior *)0)) {
    return (-19);
  } else {
  }
  if ((int )debug) {
    {
    printk("\017drivers/usb/misc/iowarrior.c: %s - minor %d\n", "iowarrior_release",
           (int )dev->minor);
    }
  } else {
  }
  {
  ldv_mutex_lock_67(& dev->mutex);
  }
  if (dev->opened <= 0) {
    {
    retval = -19;
    ldv_mutex_unlock_68(& dev->mutex);
    }
  } else {
    dev->opened = 0;
    retval = 0;
    if (dev->present != 0) {
      {
      usb_kill_urb(dev->int_in_urb);
      __wake_up(& dev->read_wait, 1U, 1, (void *)0);
      __wake_up(& dev->write_wait, 1U, 1, (void *)0);
      ldv_mutex_unlock_69(& dev->mutex);
      }
    } else {
      {
      ldv_mutex_unlock_70(& dev->mutex);
      iowarrior_delete(dev);
      }
    }
  }
  return (retval);
}
}
static unsigned int iowarrior_poll(struct file *file , poll_table *wait )
{
  struct iowarrior *dev ;
  unsigned int mask ;
  int tmp ;
  int tmp___0 ;
  {
  dev = (struct iowarrior *)file->private_data;
  mask = 0U;
  if (dev->present == 0) {
    return (24U);
  } else {
  }
  {
  poll_wait(file, & dev->read_wait, wait);
  poll_wait(file, & dev->write_wait, wait);
  }
  if (dev->present == 0) {
    return (24U);
  } else {
  }
  {
  tmp = read_index(dev);
  }
  if (tmp != -1) {
    mask = mask | 65U;
  } else {
  }
  {
  tmp___0 = atomic_read((atomic_t const *)(& dev->write_busy));
  }
  if (tmp___0 <= 3) {
    mask = mask | 260U;
  } else {
  }
  return (mask);
}
}
static struct file_operations const iowarrior_fops =
     {& __this_module, & noop_llseek, & iowarrior_read, & iowarrior_write, 0, 0, 0,
    & iowarrior_poll, & iowarrior_ioctl, 0, 0, & iowarrior_open, 0, & iowarrior_release,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static char *iowarrior_devnode(struct device *dev , umode_t *mode )
{
  char const *tmp ;
  char *tmp___0 ;
  {
  {
  tmp = dev_name((struct device const *)dev);
  tmp___0 = kasprintf(208U, "usb/%s", tmp);
  }
  return (tmp___0);
}
}
static struct usb_class_driver iowarrior_class = {(char *)"iowarrior%d", & iowarrior_devnode, & iowarrior_fops, 0};
static int iowarrior_probe(struct usb_interface *interface , struct usb_device_id const *id )
{
  struct usb_device *udev ;
  struct usb_device *tmp ;
  struct iowarrior *dev ;
  struct usb_host_interface *iface_desc ;
  struct usb_endpoint_descriptor *endpoint ;
  int i ;
  int retval ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  int tmp___1 ;
  int tmp___2 ;
  void *tmp___3 ;
  unsigned int tmp___4 ;
  void *tmp___5 ;
  size_t tmp___6 ;
  unsigned int tmp___7 ;
  {
  {
  tmp = interface_to_usbdev(interface);
  udev = tmp;
  dev = (struct iowarrior *)0;
  retval = -12;
  tmp___0 = kzalloc(536UL, 208U);
  dev = (struct iowarrior *)tmp___0;
  }
  if ((unsigned long )dev == (unsigned long )((struct iowarrior *)0)) {
    {
    dev_err((struct device const *)(& interface->dev), "Out of memory\n");
    }
    return (retval);
  } else {
  }
  {
  __mutex_init(& dev->mutex, "&dev->mutex", & __key);
  atomic_set(& dev->intr_idx, 0);
  atomic_set(& dev->read_idx, 0);
  spinlock_check(& dev->intr_idx_lock);
  __raw_spin_lock_init(& dev->intr_idx_lock.__annonCompField19.rlock, "&(&dev->intr_idx_lock)->rlock",
                       & __key___0);
  atomic_set(& dev->overflow_flag, 0);
  __init_waitqueue_head(& dev->read_wait, "&dev->read_wait", & __key___1);
  atomic_set(& dev->write_busy, 0);
  __init_waitqueue_head(& dev->write_wait, "&dev->write_wait", & __key___2);
  dev->udev = udev;
  dev->interface = interface;
  iface_desc = interface->cur_altsetting;
  dev->product_id = udev->descriptor.idProduct;
  i = 0;
  }
  goto ldv_30705;
  ldv_30704:
  {
  endpoint = & (iface_desc->endpoint + (unsigned long )i)->desc;
  tmp___1 = usb_endpoint_is_int_in((struct usb_endpoint_descriptor const *)endpoint);
  }
  if (tmp___1 != 0) {
    dev->int_in_endpoint = endpoint;
  } else {
  }
  {
  tmp___2 = usb_endpoint_is_int_out((struct usb_endpoint_descriptor const *)endpoint);
  }
  if (tmp___2 != 0) {
    dev->int_out_endpoint = endpoint;
  } else {
  }
  i = i + 1;
  ldv_30705: ;
  if (i < (int )iface_desc->desc.bNumEndpoints) {
    goto ldv_30704;
  } else {
  }
  {
  dev->report_size = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)dev->int_in_endpoint);
  }
  if ((unsigned int )((dev->interface)->cur_altsetting)->desc.bInterfaceNumber == 0U && (unsigned int )dev->product_id == 5379U) {
    dev->report_size = 7;
  } else {
  }
  {
  dev->int_in_urb = usb_alloc_urb(0, 208U);
  }
  if ((unsigned long )dev->int_in_urb == (unsigned long )((struct urb *)0)) {
    {
    dev_err((struct device const *)(& interface->dev), "Couldn\'t allocate interrupt_in_urb\n");
    }
    goto error;
  } else {
  }
  {
  tmp___3 = kmalloc((size_t )dev->report_size, 208U);
  dev->int_in_buffer = (unsigned char *)tmp___3;
  }
  if ((unsigned long )dev->int_in_buffer == (unsigned long )((unsigned char *)0U)) {
    {
    dev_err((struct device const *)(& interface->dev), "Couldn\'t allocate int_in_buffer\n");
    }
    goto error;
  } else {
  }
  {
  tmp___4 = __create_pipe(dev->udev, (unsigned int )(dev->int_in_endpoint)->bEndpointAddress);
  usb_fill_int_urb(dev->int_in_urb, dev->udev, tmp___4 | 1073741952U, (void *)dev->int_in_buffer,
                   dev->report_size, & iowarrior_callback, (void *)dev, (int )(dev->int_in_endpoint)->bInterval);
  tmp___5 = kmalloc((size_t )((dev->report_size + 1) * 16), 208U);
  dev->read_queue = (unsigned char *)tmp___5;
  }
  if ((unsigned long )dev->read_queue == (unsigned long )((unsigned char *)0U)) {
    {
    dev_err((struct device const *)(& interface->dev), "Couldn\'t allocate read_queue\n");
    }
    goto error;
  } else {
  }
  {
  memset((void *)(& dev->chip_serial), 0, 9UL);
  usb_string(udev, (int )udev->descriptor.iSerialNumber, (char *)(& dev->chip_serial),
             9UL);
  tmp___6 = strlen((char const *)(& dev->chip_serial));
  }
  if (tmp___6 != 8UL) {
    {
    memset((void *)(& dev->chip_serial), 0, 9UL);
    }
  } else {
  }
  if ((unsigned int )((dev->interface)->cur_altsetting)->desc.bInterfaceNumber == 0U) {
    {
    tmp___7 = __create_pipe(udev, 0U);
    usb_control_msg(udev, tmp___7 | 2147483648U, 10, 33, 0, 0, (void *)0, 0, 5000);
    }
  } else {
  }
  {
  dev->present = 1;
  usb_set_intfdata(interface, (void *)dev);
  retval = usb_register_dev(interface, & iowarrior_class);
  }
  if (retval != 0) {
    {
    dev_err((struct device const *)(& interface->dev), "Not able to get a minor for this device.\n");
    usb_set_intfdata(interface, (void *)0);
    }
    goto error;
  } else {
  }
  {
  dev->minor = (unsigned char )interface->minor;
  _dev_info((struct device const *)(& interface->dev), "IOWarrior product=0x%x, serial=%s interface=%d now attached to iowarrior%d\n",
            (int )dev->product_id, (char *)(& dev->chip_serial), (int )iface_desc->desc.bInterfaceNumber,
            (int )dev->minor);
  }
  return (retval);
  error:
  {
  iowarrior_delete(dev);
  }
  return (retval);
}
}
static void iowarrior_disconnect(struct usb_interface *interface )
{
  struct iowarrior *dev ;
  int minor ;
  void *tmp ;
  int old;
  {
  {
  tmp = usb_get_intfdata(interface);
  dev = (struct iowarrior *)tmp;
  ldv_mutex_lock_71(& iowarrior_open_disc_lock);
  usb_set_intfdata(interface, (void *)0);
  minor = (int )dev->minor;
  usb_deregister_dev(interface, & iowarrior_class);
  ldv_mutex_lock_72(& dev->mutex);
  dev->present = 0;
  old = dev->opened;
  ldv_mutex_unlock_73(& dev->mutex);
  ldv_mutex_unlock_74(& iowarrior_open_disc_lock);
  }
  ldv_assert("", old == dev->opened);
  if (dev->opened != 0) {
    {
    usb_kill_urb(dev->int_in_urb);
    __wake_up(& dev->read_wait, 1U, 1, (void *)0);
    __wake_up(& dev->write_wait, 1U, 1, (void *)0);
    }
  } else {
    {
    iowarrior_delete(dev);
    }
  }
  {
  _dev_info((struct device const *)(& interface->dev), "I/O-Warror #%d now disconnected\n",
            minor);
  }
  return;
}
}
static struct usb_driver iowarrior_driver =
     {"iowarrior", & iowarrior_probe, & iowarrior_disconnect, 0, 0, 0, 0, 0, 0, (struct usb_device_id const *)(& iowarrior_ids),
    {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}, {{0, 0, 0, 0, (_Bool)0,
                                                                 0, 0, 0, 0, 0, 0,
                                                                 0, 0, 0, 0}, 0},
    0U, 0U, 0U, 0U};
static int iowarrior_driver_init(void)
{
  int tmp ;
  {
  {
  tmp = ldv_usb_register_driver_75(& iowarrior_driver, & __this_module, "iowarrior");
  }
  return (tmp);
}
}
static void iowarrior_driver_exit(void)
{
  {
  {
  ldv_usb_deregister_76(& iowarrior_driver);
  }
  return;
}
}
void *ldv_character_driver_scenario_2(void *arg0 ) ;
void ldv_character_driver_scenario_callback_2_22(gfp_t (*arg0)(struct file * , poll_table * ) ,
                                                 struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_character_driver_scenario_callback_2_25(ssize_t (*arg0)(struct file * , char * ,
                                                                 size_t , loff_t * ) ,
                                                 struct file *arg1 , char *arg2 ,
                                                 unsigned long arg3 , long long *arg4 ) ;
void ldv_character_driver_scenario_callback_2_28(ssize_t (*arg0)(struct file * , gfp_t ,
                                                                 size_t ) , struct file *arg1 ,
                                                 unsigned int arg2 , unsigned long arg3 ) ;
void ldv_character_driver_scenario_callback_2_5(loff_t (*arg0)(struct file * , loff_t ,
                                                               int ) , struct file *arg1 ,
                                                long long arg2 , int arg3 ) ;
int ldv_character_driver_scenario_probe_2_13(int (*arg0)(struct inode * , struct file * ) ,
                                             struct inode *arg1 , struct file *arg2 ) ;
void ldv_character_driver_scenario_release_2_2(int (*arg0)(struct inode * , struct file * ) ,
                                               struct inode *arg1 , struct file *arg2 ) ;
void ldv_character_driver_scenario_write_2_4(ssize_t (*arg0)(struct file * , char * ,
                                                             size_t , loff_t * ) ,
                                             struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                             long long *arg4 ) ;
void ldv_dispatch_default_deregister_3_4_3(void) ;
void ldv_dispatch_default_register_3_4_4(void) ;
void ldv_dispatch_deregister_5_1(struct usb_driver *arg0 ) ;
void ldv_dispatch_insmod_deregister_7_2(void) ;
void ldv_dispatch_insmod_register_7_3(void) ;
void ldv_dispatch_register_6_3(struct usb_driver *arg0 ) ;
void ldv_emg_usb_deregister(struct usb_driver *arg0 ) ;
int ldv_emg_usb_register_driver(struct usb_driver *arg0 , struct module *arg1 , char *arg2 ) ;
void *ldv_insmod_4(void *arg0 ) ;
void ldv_insmod_iowarrior_driver_exit_4_2(void (*arg0)(void) ) ;
int ldv_insmod_iowarrior_driver_init_4_9(int (*arg0)(void) ) ;
void *ldv_main_7(void *arg0 ) ;
void *ldv_usb_scenario_3(void *arg0 ) ;
int ldv_usb_scenario_probe_3_14(int (*arg0)(struct usb_interface * , struct usb_device_id * ) ,
                                struct usb_interface *arg1 , struct usb_device_id *arg2 ) ;
void ldv_usb_scenario_release_3_5(void (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 ) ;
int main(void) ;
pthread_t ldv_thread_2 ;
pthread_t ldv_thread_3 ;
pthread_t ldv_thread_4 ;
void *ldv_character_driver_scenario_2(void *arg0 )
{
  loff_t (*ldv_2_callback_llseek)(struct file * , loff_t , int ) ;
  gfp_t (*ldv_2_callback_poll)(struct file * , poll_table * ) ;
  ssize_t (*ldv_2_callback_read)(struct file * , char * , size_t , loff_t * ) ;
  ssize_t (*ldv_2_callback_unlocked_ioctl)(struct file * , gfp_t , size_t ) ;
  struct file_operations *ldv_2_container_file_operations ;
  struct poll_table_struct *ldv_2_ldv_param_22_1_default ;
  char *ldv_2_ldv_param_25_1_default ;
  long long *ldv_2_ldv_param_25_3_default ;
  unsigned int ldv_2_ldv_param_28_1_default = 0;
  char *ldv_2_ldv_param_4_1_default ;
  long long *ldv_2_ldv_param_4_3_default ;
  long long ldv_2_ldv_param_5_1_default = 0 ;
  int ldv_2_ldv_param_5_2_default = ldv_undef_int() ;
  struct file *ldv_2_resource_file ;
  struct inode *ldv_2_resource_inode ;
  int ldv_2_ret_default ;
  size_t ldv_2_size_cnt_write_size ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  void *tmp___10 ;
  void *tmp___11 ;
  void *tmp___12 ;
  void *tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  void *tmp___18 ;
  void *tmp___19 ;
  int tmp___20 ;
  void *tmp___21 ;
  void *tmp___22 ;
  void *tmp___23 ;
  {
  {
  tmp = external_allocated_data();
  ldv_2_callback_llseek = (loff_t (*)(struct file * , loff_t , int ))tmp;
  tmp___0 = external_allocated_data();
  ldv_2_callback_poll = (gfp_t (*)(struct file * , poll_table * ))tmp___0;
  tmp___1 = external_allocated_data();
  ldv_2_callback_read = (ssize_t (*)(struct file * , char * , size_t , loff_t * ))tmp___1;
  tmp___2 = external_allocated_data();
  ldv_2_callback_unlocked_ioctl = (ssize_t (*)(struct file * , gfp_t , size_t ))tmp___2;
  tmp___3 = external_allocated_data();
  ldv_2_container_file_operations = (struct file_operations *)tmp___3;
  tmp___4 = external_allocated_data();
  ldv_2_ldv_param_22_1_default = (struct poll_table_struct *)tmp___4;
  tmp___5 = external_allocated_data();
  ldv_2_ldv_param_25_1_default = (char *)tmp___5;
  tmp___6 = external_allocated_data();
  ldv_2_ldv_param_25_3_default = (long long *)tmp___6;
  tmp___7 = external_allocated_data();
  ldv_2_ldv_param_4_1_default = (char *)tmp___7;
  tmp___8 = external_allocated_data();
  ldv_2_ldv_param_4_3_default = (long long *)tmp___8;
  tmp___9 = external_allocated_data();
  ldv_2_resource_file = (struct file *)tmp___9;
  tmp___10 = external_allocated_data();
  ldv_2_resource_inode = (struct inode *)tmp___10;
  ldv_2_ret_default = ldv_undef_int();
  ldv_free(arg0);
  tmp___11 = ldv_xmalloc_unknown_size(0UL);
  ldv_2_container_file_operations = (struct file_operations *)tmp___11;
  tmp___12 = ldv_xmalloc(520UL);
  ldv_2_resource_file = (struct file *)tmp___12;
  tmp___13 = ldv_xmalloc(1032UL);
  ldv_2_resource_inode = (struct inode *)tmp___13;
  tmp___14 = ldv_undef_int();
  ldv_2_size_cnt_write_size = (size_t )tmp___14;
  }
  goto ldv_main_2;
  return ((void *)0);
  ldv_main_2:
  {
  tmp___16 = ldv_undef_int();
  }
  if (tmp___16 != 0) {
    {
    ldv_2_ret_default = ldv_character_driver_scenario_probe_2_13(ldv_2_container_file_operations->open,
                                                                 ldv_2_resource_inode,
                                                                 ldv_2_resource_file);
    ldv_2_ret_default = ldv_filter_err_code(ldv_2_ret_default);
    tmp___15 = ldv_undef_int();
    }
    if (tmp___15 != 0) {
      {
      __VERIFIER_assume(ldv_2_ret_default == 0);
      }
      goto ldv_call_2;
    } else {
      {
      __VERIFIER_assume(ldv_2_ret_default != 0);
      }
      goto ldv_main_2;
    }
  } else {
    {
    ldv_free((void *)ldv_2_resource_file);
    ldv_free((void *)ldv_2_resource_inode);
    ldv_free((void *)ldv_2_container_file_operations);
    }
    return ((void *)0);
  }
  return ((void *)0);
  ldv_call_2:
  {
  tmp___17 = ldv_undef_int();
  }
  {
  if (tmp___17 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___17 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___17 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default___0;
  case_1:
  {
  tmp___18 = ldv_xmalloc_unknown_size(0UL);
  ldv_2_ldv_param_4_1_default = (char *)tmp___18;
  tmp___19 = ldv_xmalloc_unknown_size(0UL);
  ldv_2_ldv_param_4_3_default = (long long *)tmp___19;
  __VERIFIER_assume(ldv_2_size_cnt_write_size <= 2147479552UL);
  ldv_character_driver_scenario_write_2_4((ssize_t (*)(struct file * , char * , size_t ,
                                                       loff_t * ))ldv_2_container_file_operations->write,
                                          ldv_2_resource_file, ldv_2_ldv_param_4_1_default,
                                          ldv_2_size_cnt_write_size, ldv_2_ldv_param_4_3_default);
  ldv_free((void *)ldv_2_ldv_param_4_1_default);
  ldv_free((void *)ldv_2_ldv_param_4_3_default);
  }
  goto ldv_call_2;
  case_2:
  {
  ldv_character_driver_scenario_release_2_2(ldv_2_container_file_operations->release,
                                            ldv_2_resource_inode, ldv_2_resource_file);
  }
  goto ldv_main_2;
  case_3:
  {
  tmp___20 = ldv_undef_int();
  }
  {
  if (tmp___20 == 1) {
    goto case_1___0;
  } else {
  }
  if (tmp___20 == 2) {
    goto case_2___0;
  } else {
  }
  if (tmp___20 == 3) {
    goto case_3___0;
  } else {
  }
  if (tmp___20 == 4) {
    goto case_4;
  } else {
  }
  goto switch_default;
  case_1___0:
  {
  ldv_character_driver_scenario_callback_2_28(ldv_2_callback_unlocked_ioctl, ldv_2_resource_file,
                                              ldv_2_ldv_param_28_1_default, ldv_2_size_cnt_write_size);
  }
  goto ldv_30874;
  case_2___0:
  {
  tmp___21 = ldv_xmalloc_unknown_size(0UL);
  ldv_2_ldv_param_25_1_default = (char *)tmp___21;
  tmp___22 = ldv_xmalloc_unknown_size(0UL);
  ldv_2_ldv_param_25_3_default = (long long *)tmp___22;
  ldv_character_driver_scenario_callback_2_25(ldv_2_callback_read, ldv_2_resource_file,
                                              ldv_2_ldv_param_25_1_default, ldv_2_size_cnt_write_size,
                                              ldv_2_ldv_param_25_3_default);
  ldv_free((void *)ldv_2_ldv_param_25_1_default);
  ldv_free((void *)ldv_2_ldv_param_25_3_default);
  }
  goto ldv_30874;
  case_3___0:
  {
  tmp___23 = ldv_xmalloc_unknown_size(0UL);
  ldv_2_ldv_param_22_1_default = (struct poll_table_struct *)tmp___23;
  ldv_character_driver_scenario_callback_2_22(ldv_2_callback_poll, ldv_2_resource_file,
                                              ldv_2_ldv_param_22_1_default);
  ldv_free((void *)ldv_2_ldv_param_22_1_default);
  }
  goto ldv_30874;
  case_4:
  {
  ldv_character_driver_scenario_callback_2_5(ldv_2_callback_llseek, ldv_2_resource_file,
                                             ldv_2_ldv_param_5_1_default, ldv_2_ldv_param_5_2_default);
  }
  goto ldv_30874;
  switch_default:
  {
  __VERIFIER_assume(0);
  }
  switch_break___0: ;
  }
  ldv_30874: ;
  goto ldv_30879;
  switch_default___0:
  {
  __VERIFIER_assume(0);
  }
  switch_break: ;
  }
  ldv_30879: ;
  goto ldv_call_2;
  return ((void *)0);
}
}
void ldv_character_driver_scenario_callback_2_22(gfp_t (*arg0)(struct file * , poll_table * ) ,
                                                 struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  iowarrior_poll(arg1, arg2);
  }
  return;
}
}
void ldv_character_driver_scenario_callback_2_25(ssize_t (*arg0)(struct file * , char * ,
                                                                 size_t , loff_t * ) ,
                                                 struct file *arg1 , char *arg2 ,
                                                 unsigned long arg3 , long long *arg4 )
{
  {
  {
  iowarrior_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_character_driver_scenario_callback_2_28(ssize_t (*arg0)(struct file * , gfp_t ,
                                                                 size_t ) , struct file *arg1 ,
                                                 unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  iowarrior_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_character_driver_scenario_callback_2_5(loff_t (*arg0)(struct file * , loff_t ,
                                                               int ) , struct file *arg1 ,
                                                long long arg2 , int arg3 )
{
  {
  {
  noop_llseek(arg1, arg2, arg3);
  }
  return;
}
}
int ldv_character_driver_scenario_probe_2_13(int (*arg0)(struct inode * , struct file * ) ,
                                             struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = iowarrior_open(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_character_driver_scenario_release_2_2(int (*arg0)(struct inode * , struct file * ) ,
                                               struct inode *arg1 , struct file *arg2 )
{
  {
  {
  iowarrior_release(arg1, arg2);
  }
  return;
}
}
void ldv_character_driver_scenario_write_2_4(ssize_t (*arg0)(struct file * , char * ,
                                                             size_t , loff_t * ) ,
                                             struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                             long long *arg4 )
{
  {
  {
  iowarrior_write(arg1, (char const *)arg2, arg3, arg4);
  }
  return;
}
}
void ldv_dispatch_default_deregister_3_4_3(void)
{
  int ret ;
  {
  {
  ret = pthread_join(ldv_thread_2, (void **)0);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_dispatch_default_register_3_4_4(void)
{
  int ret ;
  struct ldv_struct_insmod_4 *cf_arg_2 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_2 = (struct ldv_struct_insmod_4 *)tmp;
  ret = pthread_create(& ldv_thread_2, (pthread_attr_t const *)0, & ldv_character_driver_scenario_2,
                       (void *)cf_arg_2);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_dispatch_deregister_5_1(struct usb_driver *arg0 )
{
  int ret ;
  {
  {
  ret = pthread_join(ldv_thread_3, (void **)0);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_dispatch_insmod_deregister_7_2(void)
{
  int ret ;
  {
  {
  ret = pthread_join(ldv_thread_4, (void **)0);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_dispatch_insmod_register_7_3(void)
{
  int ret ;
  struct ldv_struct_insmod_4 *cf_arg_4 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_4 = (struct ldv_struct_insmod_4 *)tmp;
  ret = pthread_create(& ldv_thread_4, (pthread_attr_t const *)0, & ldv_insmod_4,
                       (void *)cf_arg_4);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_dispatch_register_6_3(struct usb_driver *arg0 )
{
  int ret ;
  struct ldv_struct_usb_scenario_3 *cf_arg_3 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_3 = (struct ldv_struct_usb_scenario_3 *)tmp;
  cf_arg_3->arg0 = arg0;
  ret = pthread_create(& ldv_thread_3, (pthread_attr_t const *)0, & ldv_usb_scenario_3,
                       (void *)cf_arg_3);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_emg_usb_deregister(struct usb_driver *arg0 )
{
  struct usb_driver *ldv_5_usb_driver_usb_driver ;
  void *tmp ;
  {
  {
  tmp = external_allocated_data();
  ldv_5_usb_driver_usb_driver = (struct usb_driver *)tmp;
  ldv_5_usb_driver_usb_driver = arg0;
  ldv_dispatch_deregister_5_1(ldv_5_usb_driver_usb_driver);
  }
  return;
  return;
}
}
int ldv_emg_usb_register_driver(struct usb_driver *arg0 , struct module *arg1 , char *arg2 )
{
  int ldv_6_res_default ;
  struct usb_driver *ldv_6_usb_driver_usb_driver ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  ldv_6_res_default = ldv_undef_int();
  tmp = external_allocated_data();
  ldv_6_usb_driver_usb_driver = (struct usb_driver *)tmp;
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    ldv_6_usb_driver_usb_driver = arg0;
    ldv_dispatch_register_6_3(ldv_6_usb_driver_usb_driver);
    }
    return (0);
  } else {
    {
    ldv_failed_usb_register_driver();
    tmp___0 = ldv_undef_int_negative();
    }
    return (tmp___0);
  }
}
}
void *ldv_insmod_4(void *arg0 )
{
  void (*ldv_4_iowarrior_driver_exit_default)(void) ;
  int (*ldv_4_iowarrior_driver_init_default)(void) ;
  int ldv_4_reg_guard_3_default ;
  int ldv_4_ret_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = external_allocated_data();
  ldv_4_iowarrior_driver_exit_default = (void (*)(void))tmp;
  tmp___0 = external_allocated_data();
  ldv_4_iowarrior_driver_init_default = (int (*)(void))tmp___0;
  ldv_free(arg0);
  ldv_4_ret_default = ldv_insmod_iowarrior_driver_init_4_9(ldv_4_iowarrior_driver_init_default);
  ldv_4_ret_default = ldv_post_init(ldv_4_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    __VERIFIER_assume(ldv_4_ret_default != 0);
    }
    return ((void *)0);
  } else {
    {
    __VERIFIER_assume(ldv_4_ret_default == 0);
    ldv_4_reg_guard_3_default = ldv_undef_int();
    }
    if (ldv_4_reg_guard_3_default != 0) {
      {
      ldv_dispatch_default_register_3_4_4();
      }
    } else {
    }
    if (ldv_4_reg_guard_3_default != 0) {
      {
      ldv_dispatch_default_deregister_3_4_3();
      }
    } else {
    }
    {
    ldv_insmod_iowarrior_driver_exit_4_2(ldv_4_iowarrior_driver_exit_default);
    }
    return ((void *)0);
  }
  return ((void *)0);
}
}
void ldv_insmod_iowarrior_driver_exit_4_2(void (*arg0)(void) )
{
  {
  {
  iowarrior_driver_exit();
  }
  return;
}
}
int ldv_insmod_iowarrior_driver_init_4_9(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = iowarrior_driver_init();
  }
  return (tmp);
}
}
void *ldv_main_7(void *arg0 )
{
  {
  {
  ldv_initialize();
  ldv_dispatch_insmod_register_7_3();
  ldv_dispatch_insmod_deregister_7_2();
  ldv_check_final_state();
  __VERIFIER_assume(0);
  }
  return ((void *)0);
  return ((void *)0);
}
}
void *ldv_usb_scenario_3(void *arg0 )
{
  struct usb_driver *ldv_3_container_usb_driver ;
  struct usb_device_id *ldv_3_ldv_param_14_1_default ;
  int ldv_3_probe_retval_default ;
  _Bool ldv_3_reset_flag_default ;
  struct usb_interface *ldv_3_resource_usb_interface ;
  struct usb_device *ldv_3_usb_device_usb_device ;
  struct ldv_struct_usb_scenario_3 *data ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  int tmp___5 ;
  void *tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  {
  {
  data = (struct ldv_struct_usb_scenario_3 *)arg0;
  tmp = external_allocated_data();
  ldv_3_container_usb_driver = (struct usb_driver *)tmp;
  tmp___0 = external_allocated_data();
  ldv_3_ldv_param_14_1_default = (struct usb_device_id *)tmp___0;
  ldv_3_probe_retval_default = ldv_undef_int();
  ldv_3_reset_flag_default = 0;
  tmp___1 = external_allocated_data();
  ldv_3_resource_usb_interface = (struct usb_interface *)tmp___1;
  tmp___2 = external_allocated_data();
  ldv_3_usb_device_usb_device = (struct usb_device *)tmp___2;
  }
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_usb_scenario_3 *)0)) {
    {
    ldv_3_container_usb_driver = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp___5 = ldv_undef_int();
  }
  if (tmp___5 != 0) {
    {
    tmp___3 = ldv_xmalloc(1528UL);
    ldv_3_resource_usb_interface = (struct usb_interface *)tmp___3;
    tmp___4 = ldv_xmalloc(1992UL);
    ldv_3_usb_device_usb_device = (struct usb_device *)tmp___4;
    ldv_3_resource_usb_interface->dev.parent = & ldv_3_usb_device_usb_device->dev;
    }
    goto ldv_manage_interface_3;
  } else {
    return ((void *)0);
  }
  return ((void *)0);
  ldv_manage_interface_3:
  {
  tmp___9 = ldv_undef_int();
  }
  if (tmp___9 != 0) {
    {
    tmp___6 = ldv_xmalloc_unknown_size(0UL);
    ldv_3_ldv_param_14_1_default = (struct usb_device_id *)tmp___6;
    ldv_pre_probe();
    ldv_3_probe_retval_default = ldv_usb_scenario_probe_3_14((int (*)(struct usb_interface * ,
                                                                      struct usb_device_id * ))ldv_3_container_usb_driver->probe,
                                                             ldv_3_resource_usb_interface,
                                                             ldv_3_ldv_param_14_1_default);
    ldv_3_probe_retval_default = ldv_post_probe(ldv_3_probe_retval_default);
    ldv_free((void *)ldv_3_ldv_param_14_1_default);
    tmp___8 = ldv_undef_int();
    }
    if (tmp___8 != 0) {
      {
      __VERIFIER_assume(ldv_3_probe_retval_default != 0);
      }
      goto ldv_manage_interface_3;
    } else {
      {
      __VERIFIER_assume(ldv_3_probe_retval_default == 0);
      tmp___7 = ldv_undef_int();
      }
      {
      if (tmp___7 == 1) {
        goto case_1;
      } else {
      }
      if (tmp___7 == 2) {
        goto case_2;
      } else {
      }
      if (tmp___7 == 3) {
        goto case_3;
      } else {
      }
      if (tmp___7 == 4) {
        goto case_4;
      } else {
      }
      goto switch_default;
      case_1: ;
      goto ldv_31011;
      case_2: ;
      goto ldv_31011;
      case_3: ;
      goto ldv_31011;
      case_4: ;
      goto ldv_31011;
      switch_default:
      {
      __VERIFIER_assume(0);
      }
      switch_break: ;
      }
      ldv_31011: ;
    }
    {
    ldv_usb_scenario_release_3_5(ldv_3_container_usb_driver->disconnect, ldv_3_resource_usb_interface);
    }
    goto ldv_manage_interface_3;
  } else {
    {
    ldv_free((void *)ldv_3_resource_usb_interface);
    ldv_free((void *)ldv_3_usb_device_usb_device);
    }
    return ((void *)0);
  }
  return ((void *)0);
}
}
int ldv_usb_scenario_probe_3_14(int (*arg0)(struct usb_interface * , struct usb_device_id * ) ,
                                struct usb_interface *arg1 , struct usb_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = iowarrior_probe(arg1, (struct usb_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_usb_scenario_release_3_5(void (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 )
{
  {
  {
  iowarrior_disconnect(arg1);
  }
  return;
}
}
int main(void)
{
  {
  {
  ldv_main_7((void *)0);
  }
  return (0);
}
}
static void *ldv_dev_get_drvdata_45(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv_dev_set_drvdata_46(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  {
  tmp = ldv_kzalloc(size, flags);
  }
  return (tmp);
}
}
__inline static void ldv_spin_lock_49(spinlock_t *lock )
{
  {
  {
  ldv_spin_lock_intr_idx_lock_of_iowarrior();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_50(spinlock_t *lock )
{
  {
  {
  ldv_spin_unlock_intr_idx_lock_of_iowarrior();
  spin_unlock(lock);
  }
  return;
}
}
static void ldv_mutex_lock_52(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_mutex_of_iowarrior(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_53(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_mutex_of_iowarrior(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_54(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_iowarrior_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_55(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_mutex_of_iowarrior(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_56(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_mutex_of_iowarrior(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_57(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_iowarrior_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_58(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_iowarrior_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_59(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_iowarrior_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_60(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_iowarrior_open_disc_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_61(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_iowarrior_open_disc_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_62(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_iowarrior_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_63(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_mutex_of_iowarrior(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_64(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_iowarrior_open_disc_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_65(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_mutex_of_iowarrior(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_66(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_iowarrior_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_67(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_mutex_of_iowarrior(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_68(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_mutex_of_iowarrior(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_69(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_mutex_of_iowarrior(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_70(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_mutex_of_iowarrior(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_71(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_iowarrior_open_disc_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_72(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_mutex_of_iowarrior(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_73(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_mutex_of_iowarrior(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_74(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_iowarrior_open_disc_lock(ldv_func_arg1);
  }
  return;
}
}
static int ldv_usb_register_driver_75(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                      char const *ldv_func_arg3 )
{
  int tmp ;
  {
  {
  tmp = ldv_emg_usb_register_driver(ldv_func_arg1, ldv_func_arg2, (char *)ldv_func_arg3);
  }
  return (tmp);
}
}
static void ldv_usb_deregister_76(struct usb_driver *ldv_func_arg1 )
{
  {
  {
  ldv_emg_usb_deregister(ldv_func_arg1);
  }
  return;
}
}
void *ldv_xzalloc(size_t size ) ;
void *ldv_dev_get_drvdata(struct device const *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct device const *)0) && (unsigned long )dev->p != (unsigned long )((struct device_private * )0)) {
    return ((dev->p)->driver_data);
  } else {
  }
  return ((void *)0);
}
}
int ldv_dev_set_drvdata(struct device *dev , void *data )
{
  void *tmp ;
  {
  {
  tmp = ldv_xzalloc(8UL);
  dev->p = (struct device_private *)tmp;
  (dev->p)->driver_data = data;
  }
  return (0);
}
}
void *ldv_zalloc(size_t size ) ;
struct spi_master *ldv_spi_alloc_master(struct device *host , unsigned int size )
{
  struct spi_master *master ;
  void *tmp ;
  {
  {
  tmp = ldv_zalloc((unsigned long )size + 2200UL);
  master = (struct spi_master *)tmp;
  }
  if ((unsigned long )master == (unsigned long )((struct spi_master *)0)) {
    return ((struct spi_master *)0);
  } else {
  }
  {
  ldv_dev_set_drvdata(& master->dev, (void *)(master + 1U));
  }
  return (master);
}
}
long ldv_is_err(void const *ptr )
{
  {
  return ((unsigned long )ptr > 4294967295UL);
}
}
void *ldv_err_ptr(long error )
{
  {
  return ((void *)(4294967295L - error));
}
}
long ldv_ptr_err(void const *ptr )
{
  {
  return ((long )(4294967295UL - (unsigned long )ptr));
}
}
long ldv_is_err_or_null(void const *ptr )
{
  long tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ptr == (unsigned long )((void const *)0)) {
    tmp___0 = 1;
  } else {
    {
    tmp = ldv_is_err(ptr);
    }
    if (tmp != 0L) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  }
  return ((long )tmp___0);
}
}
static int ldv_filter_positive_int(int val )
{
  {
  {
  __VERIFIER_assume(val <= 0);
  }
  return (val);
}
}
int ldv_post_init(int init_ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(init_ret_val);
  }
  return (tmp);
}
}
int ldv_post_probe(int probe_ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(probe_ret_val);
  }
  return (tmp);
}
}
int ldv_filter_err_code(int ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(ret_val);
  }
  return (tmp);
}
}
extern void ldv_check_alloc_flags(gfp_t ) ;
extern void ldv_after_alloc(void * ) ;
void *ldv_kzalloc(size_t size , gfp_t flags )
{
  void *res ;
  {
  {
  ldv_check_alloc_flags(flags);
  res = ldv_zalloc(size);
  ldv_after_alloc(res);
  }
  return (res);
}
}
void ldv_assert(char const *desc , int expr ) ;
long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
void ldv__builtin_trap(void)
{
  {
  {
  ldv_assert("", 0);
  }
  return;
}
}
void *ldv_malloc(size_t size ) ;
void *ldv_calloc(size_t nmemb , size_t size ) ;
void *ldv_malloc_unknown_size(void) ;
void *ldv_calloc_unknown_size(void) ;
void *ldv_zalloc_unknown_size(void) ;
extern void *malloc(size_t ) ;
extern void *calloc(size_t , size_t ) ;
extern void free(void * ) ;
void *ldv_malloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = malloc(size);
    res = tmp;
    __VERIFIER_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    __VERIFIER_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_calloc(size_t nmemb , size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = calloc(nmemb, size);
    res = tmp;
    __VERIFIER_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    __VERIFIER_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_zalloc(size_t size )
{
  void *tmp ;
  {
  {
  tmp = ldv_calloc(1UL, size);
  }
  return (tmp);
}
}
void ldv_free(void *s )
{
  {
  {
  free(s);
  }
  return;
}
}
void *ldv_xmalloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = malloc(size);
  res = tmp;
  __VERIFIER_assume((unsigned long )res != (unsigned long )((void *)0));
  tmp___0 = ldv_is_err((void const *)res);
  __VERIFIER_assume(tmp___0 == 0L);
  }
  return (res);
}
}
void *ldv_xzalloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = calloc(1UL, size);
  res = tmp;
  __VERIFIER_assume((unsigned long )res != (unsigned long )((void *)0));
  tmp___0 = ldv_is_err((void const *)res);
  __VERIFIER_assume(tmp___0 == 0L);
  }
  return (res);
}
}
void *ldv_malloc_unknown_size(void)
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = external_allocated_data();
    res = tmp;
    __VERIFIER_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    __VERIFIER_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_calloc_unknown_size(void)
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = external_allocated_data();
    res = tmp;
    memset(res, 0, 8UL);
    __VERIFIER_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    __VERIFIER_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_zalloc_unknown_size(void)
{
  void *tmp ;
  {
  {
  tmp = ldv_calloc_unknown_size();
  }
  return (tmp);
}
}
void *ldv_xmalloc_unknown_size(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = external_allocated_data();
  res = tmp;
  __VERIFIER_assume((unsigned long )res != (unsigned long )((void *)0));
  tmp___0 = ldv_is_err((void const *)res);
  __VERIFIER_assume(tmp___0 == 0L);
  }
  return (res);
}
}
void *ldv_undef_ptr(void) ;
unsigned long ldv_undef_ulong(void) ;
int ldv_undef_int_nonpositive(void) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
extern void *__VERIFIER_nondet_pointer(void) ;
int ldv_undef_int(void)
{
  int tmp ;
  {
  {
  tmp = __VERIFIER_nondet_int();
  }
  return (tmp);
}
}
void *ldv_undef_ptr(void)
{
  void *tmp ;
  {
  {
  tmp = __VERIFIER_nondet_pointer();
  }
  return (tmp);
}
}
unsigned long ldv_undef_ulong(void)
{
  unsigned long tmp ;
  {
  {
  tmp = __VERIFIER_nondet_ulong();
  }
  return (tmp);
}
}
int ldv_undef_int_negative(void)
{
  int ret ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  ret = tmp;
  __VERIFIER_assume(ret < 0);
  }
  return (ret);
}
}
int ldv_undef_int_nonpositive(void)
{
  int ret ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  ret = tmp;
  __VERIFIER_assume(ret <= 0);
  }
  return (ret);
}
}
extern void __VERIFIER_error(void) ;
extern int pthread_mutex_lock(pthread_mutex_t * ) ;
extern int pthread_mutex_trylock(pthread_mutex_t * ) ;
pthread_mutex_t pmutex_i_mutex_of_inode ;
void ldv_mutex_lock_i_mutex_of_inode(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_i_mutex_of_inode);
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    pthread_mutex_lock(& pmutex_i_mutex_of_inode);
    }
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    return (1);
  } else {
    return (0);
  }
}
}
int ldv_mutex_trylock_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& pmutex_i_mutex_of_inode);
  }
  return (tmp);
}
}
int ldv_atomic_dec_and_mutex_lock_i_mutex_of_inode(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    pthread_mutex_lock(& pmutex_i_mutex_of_inode);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_i_mutex_of_inode(struct mutex *lock )
{
  {
  {
  pthread_mutex_unlock(& pmutex_i_mutex_of_inode);
  }
  return;
}
}
pthread_mutex_t pmutex_iowarrior_mutex ;
void ldv_mutex_lock_iowarrior_mutex(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_iowarrior_mutex);
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_iowarrior_mutex(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    pthread_mutex_lock(& pmutex_iowarrior_mutex);
    }
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_iowarrior_mutex(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    return (1);
  } else {
    return (0);
  }
}
}
int ldv_mutex_trylock_iowarrior_mutex(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& pmutex_iowarrior_mutex);
  }
  return (tmp);
}
}
int ldv_atomic_dec_and_mutex_lock_iowarrior_mutex(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    pthread_mutex_lock(& pmutex_iowarrior_mutex);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_iowarrior_mutex(struct mutex *lock )
{
  {
  {
  pthread_mutex_unlock(& pmutex_iowarrior_mutex);
  }
  return;
}
}
pthread_mutex_t pmutex_iowarrior_open_disc_lock ;
void ldv_mutex_lock_iowarrior_open_disc_lock(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_iowarrior_open_disc_lock);
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_iowarrior_open_disc_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    pthread_mutex_lock(& pmutex_iowarrior_open_disc_lock);
    }
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_iowarrior_open_disc_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    return (1);
  } else {
    return (0);
  }
}
}
int ldv_mutex_trylock_iowarrior_open_disc_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& pmutex_iowarrior_open_disc_lock);
  }
  return (tmp);
}
}
int ldv_atomic_dec_and_mutex_lock_iowarrior_open_disc_lock(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    pthread_mutex_lock(& pmutex_iowarrior_open_disc_lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_iowarrior_open_disc_lock(struct mutex *lock )
{
  {
  {
  pthread_mutex_unlock(& pmutex_iowarrior_open_disc_lock);
  }
  return;
}
}
pthread_mutex_t pmutex_lock ;
void ldv_mutex_lock_lock(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_lock);
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    pthread_mutex_lock(& pmutex_lock);
    }
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    return (1);
  } else {
    return (0);
  }
}
}
int ldv_mutex_trylock_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& pmutex_lock);
  }
  return (tmp);
}
}
int ldv_atomic_dec_and_mutex_lock_lock(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    pthread_mutex_lock(& pmutex_lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_lock(struct mutex *lock )
{
  {
  {
  pthread_mutex_unlock(& pmutex_lock);
  }
  return;
}
}
pthread_mutex_t pmutex_mutex_of_device ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_mutex_of_device);
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    pthread_mutex_lock(& pmutex_mutex_of_device);
    }
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    return (1);
  } else {
    return (0);
  }
}
}
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& pmutex_mutex_of_device);
  }
  return (tmp);
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of_device(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    pthread_mutex_lock(& pmutex_mutex_of_device);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock )
{
  {
  {
  pthread_mutex_unlock(& pmutex_mutex_of_device);
  }
  return;
}
}
pthread_mutex_t pmutex_mutex_of_iowarrior ;
void ldv_mutex_lock_mutex_of_iowarrior(struct mutex *lock )
{
  {
  {
  pthread_mutex_lock(& pmutex_mutex_of_iowarrior);
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_mutex_of_iowarrior(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    pthread_mutex_lock(& pmutex_mutex_of_iowarrior);
    }
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_mutex_of_iowarrior(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    return (1);
  } else {
    return (0);
  }
}
}
int ldv_mutex_trylock_mutex_of_iowarrior(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& pmutex_mutex_of_iowarrior);
  }
  return (tmp);
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of_iowarrior(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    pthread_mutex_lock(& pmutex_mutex_of_iowarrior);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_mutex_of_iowarrior(struct mutex *lock )
{
  {
  {
  pthread_mutex_unlock(& pmutex_mutex_of_iowarrior);
  }
  return;
}
}
void ldv_initialize(void)
{
  {
  return;
}
}
void ldv_check_final_state(void)
{
  {
  return;
}
}
void ldv_assert(char const *desc , int expr )
{
  {
  if (expr == 0) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern int pthread_mutex_unlock(pthread_mutex_t * ) ;
pthread_mutex_t smutex_alloc_lock_of_task_struct ;
void ldv_spin_lock_alloc_lock_of_task_struct(void)
{
  {
  {
  pthread_mutex_lock(& smutex_alloc_lock_of_task_struct);
  }
  return;
}
}
void ldv_spin_unlock_alloc_lock_of_task_struct(void)
{
  {
  {
  pthread_mutex_unlock(& smutex_alloc_lock_of_task_struct);
  }
  return;
}
}
int ldv_spin_trylock_alloc_lock_of_task_struct(void)
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& smutex_alloc_lock_of_task_struct);
  }
  return (tmp);
}
}
void ldv_spin_unlock_wait_alloc_lock_of_task_struct(void)
{
  {
  return;
}
}
int ldv_spin_is_locked_alloc_lock_of_task_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    return (1);
  } else {
    return (0);
  }
}
}
int ldv_spin_can_lock_alloc_lock_of_task_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_alloc_lock_of_task_struct();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_alloc_lock_of_task_struct(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_alloc_lock_of_task_struct(void)
{
  int atomic_value_after_dec ;
  {
  {
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    {
    ldv_spin_lock_alloc_lock_of_task_struct();
    }
    return (1);
  } else {
  }
  return (0);
}
}
pthread_mutex_t smutex_i_lock_of_inode ;
void ldv_spin_lock_i_lock_of_inode(void)
{
  {
  {
  pthread_mutex_lock(& smutex_i_lock_of_inode);
  }
  return;
}
}
void ldv_spin_unlock_i_lock_of_inode(void)
{
  {
  {
  pthread_mutex_unlock(& smutex_i_lock_of_inode);
  }
  return;
}
}
int ldv_spin_trylock_i_lock_of_inode(void)
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& smutex_i_lock_of_inode);
  }
  return (tmp);
}
}
void ldv_spin_unlock_wait_i_lock_of_inode(void)
{
  {
  return;
}
}
int ldv_spin_is_locked_i_lock_of_inode(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    return (1);
  } else {
    return (0);
  }
}
}
int ldv_spin_can_lock_i_lock_of_inode(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_i_lock_of_inode();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_i_lock_of_inode(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_i_lock_of_inode(void)
{
  int atomic_value_after_dec ;
  {
  {
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    {
    ldv_spin_lock_i_lock_of_inode();
    }
    return (1);
  } else {
  }
  return (0);
}
}
pthread_mutex_t smutex_intr_idx_lock_of_iowarrior ;
void ldv_spin_lock_intr_idx_lock_of_iowarrior(void)
{
  {
  {
  pthread_mutex_lock(& smutex_intr_idx_lock_of_iowarrior);
  }
  return;
}
}
void ldv_spin_unlock_intr_idx_lock_of_iowarrior(void)
{
  {
  {
  pthread_mutex_unlock(& smutex_intr_idx_lock_of_iowarrior);
  }
  return;
}
}
int ldv_spin_trylock_intr_idx_lock_of_iowarrior(void)
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& smutex_intr_idx_lock_of_iowarrior);
  }
  return (tmp);
}
}
void ldv_spin_unlock_wait_intr_idx_lock_of_iowarrior(void)
{
  {
  return;
}
}
int ldv_spin_is_locked_intr_idx_lock_of_iowarrior(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    return (1);
  } else {
    return (0);
  }
}
}
int ldv_spin_can_lock_intr_idx_lock_of_iowarrior(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_intr_idx_lock_of_iowarrior();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_intr_idx_lock_of_iowarrior(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_intr_idx_lock_of_iowarrior(void)
{
  int atomic_value_after_dec ;
  {
  {
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    {
    ldv_spin_lock_intr_idx_lock_of_iowarrior();
    }
    return (1);
  } else {
  }
  return (0);
}
}
pthread_mutex_t smutex_lock ;
void ldv_spin_lock_lock(void)
{
  {
  {
  pthread_mutex_lock(& smutex_lock);
  }
  return;
}
}
void ldv_spin_unlock_lock(void)
{
  {
  {
  pthread_mutex_unlock(& smutex_lock);
  }
  return;
}
}
int ldv_spin_trylock_lock(void)
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& smutex_lock);
  }
  return (tmp);
}
}
void ldv_spin_unlock_wait_lock(void)
{
  {
  return;
}
}
int ldv_spin_is_locked_lock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    return (1);
  } else {
    return (0);
  }
}
}
int ldv_spin_can_lock_lock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_lock(void)
{
  int atomic_value_after_dec ;
  {
  {
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    {
    ldv_spin_lock_lock();
    }
    return (1);
  } else {
  }
  return (0);
}
}
pthread_mutex_t smutex_lock_of_NOT_ARG_SIGN ;
void ldv_spin_lock_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  pthread_mutex_lock(& smutex_lock_of_NOT_ARG_SIGN);
  }
  return;
}
}
void ldv_spin_unlock_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  pthread_mutex_unlock(& smutex_lock_of_NOT_ARG_SIGN);
  }
  return;
}
}
int ldv_spin_trylock_lock_of_NOT_ARG_SIGN(void)
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& smutex_lock_of_NOT_ARG_SIGN);
  }
  return (tmp);
}
}
void ldv_spin_unlock_wait_lock_of_NOT_ARG_SIGN(void)
{
  {
  return;
}
}
int ldv_spin_is_locked_lock_of_NOT_ARG_SIGN(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    return (1);
  } else {
    return (0);
  }
}
}
int ldv_spin_can_lock_lock_of_NOT_ARG_SIGN(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock_of_NOT_ARG_SIGN();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_lock_of_NOT_ARG_SIGN(void)
{
  int atomic_value_after_dec ;
  {
  {
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    {
    ldv_spin_lock_lock_of_NOT_ARG_SIGN();
    }
    return (1);
  } else {
  }
  return (0);
}
}
pthread_mutex_t smutex_node_size_lock_of_pglist_data ;
void ldv_spin_lock_node_size_lock_of_pglist_data(void)
{
  {
  {
  pthread_mutex_lock(& smutex_node_size_lock_of_pglist_data);
  }
  return;
}
}
void ldv_spin_unlock_node_size_lock_of_pglist_data(void)
{
  {
  {
  pthread_mutex_unlock(& smutex_node_size_lock_of_pglist_data);
  }
  return;
}
}
int ldv_spin_trylock_node_size_lock_of_pglist_data(void)
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& smutex_node_size_lock_of_pglist_data);
  }
  return (tmp);
}
}
void ldv_spin_unlock_wait_node_size_lock_of_pglist_data(void)
{
  {
  return;
}
}
int ldv_spin_is_locked_node_size_lock_of_pglist_data(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    return (1);
  } else {
    return (0);
  }
}
}
int ldv_spin_can_lock_node_size_lock_of_pglist_data(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_node_size_lock_of_pglist_data();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_node_size_lock_of_pglist_data(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_node_size_lock_of_pglist_data(void)
{
  int atomic_value_after_dec ;
  {
  {
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    {
    ldv_spin_lock_node_size_lock_of_pglist_data();
    }
    return (1);
  } else {
  }
  return (0);
}
}
pthread_mutex_t smutex_ptl ;
void ldv_spin_lock_ptl(void)
{
  {
  {
  pthread_mutex_lock(& smutex_ptl);
  }
  return;
}
}
void ldv_spin_unlock_ptl(void)
{
  {
  {
  pthread_mutex_unlock(& smutex_ptl);
  }
  return;
}
}
int ldv_spin_trylock_ptl(void)
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& smutex_ptl);
  }
  return (tmp);
}
}
void ldv_spin_unlock_wait_ptl(void)
{
  {
  return;
}
}
int ldv_spin_is_locked_ptl(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    return (1);
  } else {
    return (0);
  }
}
}
int ldv_spin_can_lock_ptl(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_ptl();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_ptl(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_ptl(void)
{
  int atomic_value_after_dec ;
  {
  {
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    {
    ldv_spin_lock_ptl();
    }
    return (1);
  } else {
  }
  return (0);
}
}
pthread_mutex_t smutex_siglock_of_sighand_struct ;
void ldv_spin_lock_siglock_of_sighand_struct(void)
{
  {
  {
  pthread_mutex_lock(& smutex_siglock_of_sighand_struct);
  }
  return;
}
}
void ldv_spin_unlock_siglock_of_sighand_struct(void)
{
  {
  {
  pthread_mutex_unlock(& smutex_siglock_of_sighand_struct);
  }
  return;
}
}
int ldv_spin_trylock_siglock_of_sighand_struct(void)
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& smutex_siglock_of_sighand_struct);
  }
  return (tmp);
}
}
void ldv_spin_unlock_wait_siglock_of_sighand_struct(void)
{
  {
  return;
}
}
int ldv_spin_is_locked_siglock_of_sighand_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    return (1);
  } else {
    return (0);
  }
}
}
int ldv_spin_can_lock_siglock_of_sighand_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_siglock_of_sighand_struct();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_siglock_of_sighand_struct(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_siglock_of_sighand_struct(void)
{
  int atomic_value_after_dec ;
  {
  {
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    {
    ldv_spin_lock_siglock_of_sighand_struct();
    }
    return (1);
  } else {
  }
  return (0);
}
}
void *__VERIFIER_nondet_pointer(void);
void *external_alloc(void) {
  return __VERIFIER_nondet_pointer();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2){
  return;
}
int __VERIFIER_nondet_int(void);
int usb_submit_urb(struct urb *arg0, gfp_t arg1){
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int _dev_info(const struct device *arg0, const char *arg1, ...){
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlen(const char *arg0){
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int memcmp(const void *arg0, const void *arg1, size_t arg2){
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_to_user(void *arg0, const void *arg1, unsigned int arg2){
  return __VERIFIER_nondet_ulong();
}
void *external_alloc(void);
char *kasprintf(gfp_t arg0, const char *arg1, ...){
  return (char *)external_alloc();
}
void usb_free_coherent(struct usb_device *arg0, size_t arg1, void *arg2, dma_addr_t arg3){
  return;
}
void *external_alloc(void);
void *usb_alloc_coherent(struct usb_device *arg0, size_t arg1, gfp_t arg2, dma_addr_t *arg3){
  return (void *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int usb_control_msg(struct usb_device *arg0, unsigned int arg1, __u8 arg2, __u8 arg3, __u16 arg4, __u16 arg5, void *arg6, __u16 arg7, int arg8){
  return __VERIFIER_nondet_int();
}
void ldv_after_alloc(void *arg0){
  return;
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3){
  return;
}
int __VERIFIER_nondet_int(void);
int usb_register_dev(struct usb_interface *arg0, struct usb_class_driver *arg1){
  return __VERIFIER_nondet_int();
}
void usb_free_urb(struct urb *arg0){
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0){
  return;
}
void usb_kill_urb(struct urb *arg0){
  return;
}
void ldv_check_alloc_flags(gfp_t arg0){
  return;
}
long __VERIFIER_nondet_long(void);
long int prepare_to_wait_event(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2){
  return __VERIFIER_nondet_long();
}
void might_fault(){
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...){
  return __VERIFIER_nondet_int();
}
void ldv_pre_probe(){
  return;
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...){
  return __VERIFIER_nondet_int();
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2){
  return;
}
void usb_deregister_dev(struct usb_interface *arg0, struct usb_class_driver *arg1){
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_failed_usb_register_driver(){
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
loff_t noop_llseek(struct file *arg0, loff_t arg1, int arg2){
  return __VERIFIER_nondet_long();
}
void __copy_to_user_overflow(){
  return;
}
void *external_alloc(void);
void *external_allocated_data(){
  return (void *)external_alloc();
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2){
  return;
}
void __copy_from_user_overflow(){
  return;
}
void _raw_spin_lock(raw_spinlock_t *arg0){
  return;
}
int __VERIFIER_nondet_int(void);
int usb_string(struct usb_device *arg0, int arg1, char *arg2, size_t arg3){
  return __VERIFIER_nondet_int();
}
void schedule(){
  return;
}
void *external_alloc(void);
struct urb *usb_alloc_urb(int arg0, gfp_t arg1){
  return (struct urb *)external_alloc();
}
void *external_alloc(void);
void *memcpy(void *arg0, const void *arg1, size_t arg2){
  return (void *)external_alloc();
}
void *external_alloc(void);
struct usb_interface *usb_find_interface(struct usb_driver *arg0, int arg1){
  return (struct usb_interface *)external_alloc();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_from_user(void *arg0, const void *arg1, unsigned int arg2){
  return __VERIFIER_nondet_ulong();
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1){
  return;
}
