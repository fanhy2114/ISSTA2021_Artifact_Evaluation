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
struct spi_master;
typedef unsigned char __u8;
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
typedef u64 dma_addr_t;
typedef unsigned int gfp_t;
typedef unsigned int oom_flags_t;
typedef u64 phys_addr_t;
typedef phys_addr_t resource_size_t;
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
struct paravirt_callee_save {
   void *func ;
};
struct pv_irq_ops {
   struct paravirt_callee_save save_fl ;
   struct paravirt_callee_save restore_fl ;
   struct paravirt_callee_save irq_disable ;
   struct paravirt_callee_save irq_enable ;
   void (*safe_halt)(void) ;
   void (*halt)(void) ;
   void (*adjust_exception_frame)(void) ;
};
typedef void (*ctor_fn_t)(void);
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned int flags : 8 ;
};
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
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
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
struct vm_area_struct;
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
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct __anonstruct_nodemask_t_40 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_40 nodemask_t;
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
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct __anonstruct_mm_context_t_105 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_105 mm_context_t;
struct device_node;
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct dma_map_ops;
struct dev_archdata {
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct pdev_archdata {
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
struct of_device_id;
struct acpi_device_id;
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
typedef unsigned long kernel_ulong_t;
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
struct platform_device_id {
   char name[20U] ;
   kernel_ulong_t driver_data ;
};
struct mfd_cell;
struct platform_device {
   char const *name ;
   int id ;
   bool id_auto ;
   struct device dev ;
   u32 num_resources ;
   struct resource *resource ;
   struct platform_device_id const *id_entry ;
   struct mfd_cell *mfd_cell ;
   struct pdev_archdata archdata ;
};
struct platform_driver {
   int (*probe)(struct platform_device * ) ;
   int (*remove)(struct platform_device * ) ;
   void (*shutdown)(struct platform_device * ) ;
   int (*suspend)(struct platform_device * , pm_message_t ) ;
   int (*resume)(struct platform_device * ) ;
   struct device_driver driver ;
   struct platform_device_id const *id_table ;
   bool prevent_deferred_probe ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct proc_dir_entry;
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
struct clk;
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
struct __anonstruct____missing_field_name_140 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_141 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_139 {
   struct __anonstruct____missing_field_name_140 __annonCompField35 ;
   struct __anonstruct____missing_field_name_141 __annonCompField36 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_139 __annonCompField37 ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   struct return_instance *return_instances ;
   unsigned int depth ;
};
struct xol_area;
struct uprobes_state {
   struct xol_area *xol_area ;
};
struct address_space;
union __anonunion____missing_field_name_142 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_144 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_148 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_147 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_148 __annonCompField40 ;
   int units ;
};
struct __anonstruct____missing_field_name_146 {
   union __anonunion____missing_field_name_147 __annonCompField41 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_145 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_146 __annonCompField42 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_143 {
   union __anonunion____missing_field_name_144 __annonCompField39 ;
   union __anonunion____missing_field_name_145 __annonCompField43 ;
};
struct __anonstruct____missing_field_name_150 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion____missing_field_name_149 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_150 __annonCompField45 ;
   struct list_head list ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_151 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_142 __annonCompField38 ;
   struct __anonstruct____missing_field_name_143 __annonCompField44 ;
   union __anonunion____missing_field_name_149 __annonCompField46 ;
   union __anonunion____missing_field_name_151 __annonCompField47 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_153 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_152 {
   struct __anonstruct_linear_153 linear ;
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
   union __anonunion_shared_152 shared ;
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
struct user_struct;
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
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
};
typedef s32 dma_cookie_t;
enum dma_status {
    DMA_COMPLETE = 0,
    DMA_IN_PROGRESS = 1,
    DMA_PAUSED = 2,
    DMA_ERROR = 3
} ;
enum dma_transfer_direction {
    DMA_MEM_TO_MEM = 0,
    DMA_MEM_TO_DEV = 1,
    DMA_DEV_TO_MEM = 2,
    DMA_DEV_TO_DEV = 3,
    DMA_TRANS_NONE = 4
} ;
struct data_chunk {
   size_t size ;
   size_t icg ;
};
struct dma_interleaved_template {
   dma_addr_t src_start ;
   dma_addr_t dst_start ;
   enum dma_transfer_direction dir ;
   bool src_inc ;
   bool dst_inc ;
   bool src_sgl ;
   bool dst_sgl ;
   size_t numf ;
   size_t frame_size ;
   struct data_chunk sgl[0U] ;
};
enum dma_ctrl_flags {
    DMA_PREP_INTERRUPT = 1,
    DMA_CTRL_ACK = 2,
    DMA_PREP_PQ_DISABLE_P = 4,
    DMA_PREP_PQ_DISABLE_Q = 8,
    DMA_PREP_CONTINUE = 16,
    DMA_PREP_FENCE = 32
} ;
enum dma_ctrl_cmd {
    DMA_TERMINATE_ALL = 0,
    DMA_PAUSE = 1,
    DMA_RESUME = 2,
    DMA_SLAVE_CONFIG = 3,
    FSLDMA_EXTERNAL_START = 4
} ;
enum sum_check_flags {
    SUM_CHECK_P_RESULT = 1,
    SUM_CHECK_Q_RESULT = 2
} ;
struct __anonstruct_dma_cap_mask_t_154 {
   unsigned long bits[1U] ;
};
typedef struct __anonstruct_dma_cap_mask_t_154 dma_cap_mask_t;
struct dma_chan_percpu {
   unsigned long memcpy_count ;
   unsigned long bytes_transferred ;
};
struct dma_device;
struct dma_chan_dev;
struct dma_chan {
   struct dma_device *device ;
   dma_cookie_t cookie ;
   dma_cookie_t completed_cookie ;
   int chan_id ;
   struct dma_chan_dev *dev ;
   struct list_head device_node ;
   struct dma_chan_percpu *local ;
   int client_count ;
   int table_count ;
   void *private ;
};
struct dma_chan_dev {
   struct dma_chan *chan ;
   struct device device ;
   int dev_id ;
   atomic_t *idr_ref ;
};
enum dma_slave_buswidth {
    DMA_SLAVE_BUSWIDTH_UNDEFINED = 0,
    DMA_SLAVE_BUSWIDTH_1_BYTE = 1,
    DMA_SLAVE_BUSWIDTH_2_BYTES = 2,
    DMA_SLAVE_BUSWIDTH_4_BYTES = 4,
    DMA_SLAVE_BUSWIDTH_8_BYTES = 8
} ;
struct dma_slave_config {
   enum dma_transfer_direction direction ;
   dma_addr_t src_addr ;
   dma_addr_t dst_addr ;
   enum dma_slave_buswidth src_addr_width ;
   enum dma_slave_buswidth dst_addr_width ;
   u32 src_maxburst ;
   u32 dst_maxburst ;
   bool device_fc ;
   unsigned int slave_id ;
};
enum dma_residue_granularity {
    DMA_RESIDUE_GRANULARITY_DESCRIPTOR = 0,
    DMA_RESIDUE_GRANULARITY_SEGMENT = 1,
    DMA_RESIDUE_GRANULARITY_BURST = 2
} ;
struct dma_slave_caps {
   u32 src_addr_widths ;
   u32 dstn_addr_widths ;
   u32 directions ;
   bool cmd_pause ;
   bool cmd_terminate ;
   enum dma_residue_granularity residue_granularity ;
};
struct dmaengine_unmap_data {
   u8 to_cnt ;
   u8 from_cnt ;
   u8 bidi_cnt ;
   struct device *dev ;
   struct kref kref ;
   size_t len ;
   dma_addr_t addr[0U] ;
};
struct dma_async_tx_descriptor {
   dma_cookie_t cookie ;
   enum dma_ctrl_flags flags ;
   dma_addr_t phys ;
   struct dma_chan *chan ;
   dma_cookie_t (*tx_submit)(struct dma_async_tx_descriptor * ) ;
   void (*callback)(void * ) ;
   void *callback_param ;
   struct dmaengine_unmap_data *unmap ;
};
struct dma_tx_state {
   dma_cookie_t last ;
   dma_cookie_t used ;
   u32 residue ;
};
struct dma_device {
   unsigned int chancnt ;
   unsigned int privatecnt ;
   struct list_head channels ;
   struct list_head global_node ;
   dma_cap_mask_t cap_mask ;
   unsigned short max_xor ;
   unsigned short max_pq ;
   u8 copy_align ;
   u8 xor_align ;
   u8 pq_align ;
   u8 fill_align ;
   int dev_id ;
   struct device *dev ;
   int (*device_alloc_chan_resources)(struct dma_chan * ) ;
   void (*device_free_chan_resources)(struct dma_chan * ) ;
   struct dma_async_tx_descriptor *(*device_prep_dma_memcpy)(struct dma_chan * , dma_addr_t ,
                                                             dma_addr_t , size_t ,
                                                             unsigned long ) ;
   struct dma_async_tx_descriptor *(*device_prep_dma_xor)(struct dma_chan * , dma_addr_t ,
                                                          dma_addr_t * , unsigned int ,
                                                          size_t , unsigned long ) ;
   struct dma_async_tx_descriptor *(*device_prep_dma_xor_val)(struct dma_chan * ,
                                                              dma_addr_t * , unsigned int ,
                                                              size_t , enum sum_check_flags * ,
                                                              unsigned long ) ;
   struct dma_async_tx_descriptor *(*device_prep_dma_pq)(struct dma_chan * , dma_addr_t * ,
                                                         dma_addr_t * , unsigned int ,
                                                         unsigned char const * ,
                                                         size_t , unsigned long ) ;
   struct dma_async_tx_descriptor *(*device_prep_dma_pq_val)(struct dma_chan * , dma_addr_t * ,
                                                             dma_addr_t * , unsigned int ,
                                                             unsigned char const * ,
                                                             size_t , enum sum_check_flags * ,
                                                             unsigned long ) ;
   struct dma_async_tx_descriptor *(*device_prep_dma_interrupt)(struct dma_chan * ,
                                                                unsigned long ) ;
   struct dma_async_tx_descriptor *(*device_prep_dma_sg)(struct dma_chan * , struct scatterlist * ,
                                                         unsigned int , struct scatterlist * ,
                                                         unsigned int , unsigned long ) ;
   struct dma_async_tx_descriptor *(*device_prep_slave_sg)(struct dma_chan * , struct scatterlist * ,
                                                           unsigned int , enum dma_transfer_direction ,
                                                           unsigned long , void * ) ;
   struct dma_async_tx_descriptor *(*device_prep_dma_cyclic)(struct dma_chan * , dma_addr_t ,
                                                             size_t , size_t , enum dma_transfer_direction ,
                                                             unsigned long , void * ) ;
   struct dma_async_tx_descriptor *(*device_prep_interleaved_dma)(struct dma_chan * ,
                                                                  struct dma_interleaved_template * ,
                                                                  unsigned long ) ;
   int (*device_control)(struct dma_chan * , enum dma_ctrl_cmd , unsigned long ) ;
   enum dma_status (*device_tx_status)(struct dma_chan * , dma_cookie_t , struct dma_tx_state * ) ;
   void (*device_issue_pending)(struct dma_chan * ) ;
   int (*device_slave_caps)(struct dma_chan * , struct dma_slave_caps * ) ;
};
struct dma_attrs {
   unsigned long flags[1U] ;
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
struct dma_map_ops {
   void *(*alloc)(struct device * , size_t , dma_addr_t * , gfp_t , struct dma_attrs * ) ;
   void (*free)(struct device * , size_t , void * , dma_addr_t , struct dma_attrs * ) ;
   int (*mmap)(struct device * , struct vm_area_struct * , void * , dma_addr_t ,
               size_t , struct dma_attrs * ) ;
   int (*get_sgtable)(struct device * , struct sg_table * , void * , dma_addr_t ,
                      size_t , struct dma_attrs * ) ;
   dma_addr_t (*map_page)(struct device * , struct page * , unsigned long , size_t ,
                          enum dma_data_direction , struct dma_attrs * ) ;
   void (*unmap_page)(struct device * , dma_addr_t , size_t , enum dma_data_direction ,
                      struct dma_attrs * ) ;
   int (*map_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                 struct dma_attrs * ) ;
   void (*unmap_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                    struct dma_attrs * ) ;
   void (*sync_single_for_cpu)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_single_for_device)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_sg_for_cpu)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   void (*sync_sg_for_device)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   int (*mapping_error)(struct device * , dma_addr_t ) ;
   int (*dma_supported)(struct device * , u64 ) ;
   int (*set_dma_mask)(struct device * , u64 ) ;
   int is_phys ;
};
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sigset_t_156 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_156 sigset_t;
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
struct __anonstruct__kill_158 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_159 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_160 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_161 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_162 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_163 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_164 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_157 {
   int _pad[28U] ;
   struct __anonstruct__kill_158 _kill ;
   struct __anonstruct__timer_159 _timer ;
   struct __anonstruct__rt_160 _rt ;
   struct __anonstruct__sigchld_161 _sigchld ;
   struct __anonstruct__sigfault_162 _sigfault ;
   struct __anonstruct__sigpoll_163 _sigpoll ;
   struct __anonstruct__sigsys_164 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_157 _sifields ;
};
typedef struct siginfo siginfo_t;
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
struct cred;
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion____missing_field_name_169 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_170 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_172 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_171 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_172 __annonCompField52 ;
};
union __anonunion_type_data_173 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_175 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_174 {
   union __anonunion_payload_175 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_169 __annonCompField50 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_170 __annonCompField51 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_171 __annonCompField53 ;
   union __anonunion_type_data_173 type_data ;
   union __anonunion____missing_field_name_174 __annonCompField54 ;
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
struct backing_dev_info;
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
struct io_context;
struct pipe_inode_info;
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
struct files_struct;
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
union __anonunion____missing_field_name_181 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_181 __annonCompField56 ;
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
typedef u32 phandle;
struct property {
   char *name ;
   int length ;
   void *value ;
   struct property *next ;
   unsigned long _flags ;
   unsigned int unique_id ;
};
struct device_node {
   char const *name ;
   char const *type ;
   phandle phandle ;
   char const *full_name ;
   struct property *properties ;
   struct property *deadprops ;
   struct device_node *parent ;
   struct device_node *child ;
   struct device_node *sibling ;
   struct device_node *next ;
   struct device_node *allnext ;
   struct proc_dir_entry *pde ;
   struct kref kref ;
   unsigned long _flags ;
   void *data ;
};
struct reset_control;
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
struct __anonstruct____missing_field_name_183 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct____missing_field_name_184 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion____missing_field_name_182 {
   struct __anonstruct____missing_field_name_183 __annonCompField57 ;
   struct __anonstruct____missing_field_name_184 __annonCompField58 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion____missing_field_name_182 __annonCompField59 ;
};
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
struct tegra_slink_chip_data {
   bool cs_hold_time ;
};
struct tegra_slink_data {
   struct device *dev ;
   struct spi_master *master ;
   struct tegra_slink_chip_data const *chip_data ;
   spinlock_t lock ;
   struct clk *clk ;
   struct reset_control *rst ;
   void *base ;
   phys_addr_t phys ;
   unsigned int irq ;
   u32 spi_max_frequency ;
   u32 cur_speed ;
   struct spi_device *cur_spi ;
   unsigned int cur_pos ;
   unsigned int cur_len ;
   unsigned int words_per_32bit ;
   unsigned int bytes_per_word ;
   unsigned int curr_dma_words ;
   unsigned int cur_direction ;
   unsigned int cur_rx_pos ;
   unsigned int cur_tx_pos ;
   unsigned int dma_buf_size ;
   unsigned int max_buf_size ;
   bool is_curr_dma_xfer ;
   struct completion rx_dma_complete ;
   struct completion tx_dma_complete ;
   u32 tx_status ;
   u32 rx_status ;
   u32 status_reg ;
   bool is_packed ;
   u32 packed_size ;
   u32 command_reg ;
   u32 command2_reg ;
   u32 dma_control_reg ;
   u32 def_command_reg ;
   u32 def_command2_reg ;
   struct completion xfer_completion ;
   struct spi_transfer *curr_xfer ;
   struct dma_chan *rx_dma_chan ;
   u32 *rx_dma_buf ;
   dma_addr_t rx_dma_phys ;
   struct dma_async_tx_descriptor *rx_dma_desc ;
   struct dma_chan *tx_dma_chan ;
   u32 *tx_dma_buf ;
   dma_addr_t tx_dma_phys ;
   struct dma_async_tx_descriptor *tx_dma_desc ;
};
struct ldv_struct_free_irq_7 {
   int arg0 ;
   int signal_pending ;
};
struct ldv_struct_interrupt_scenario_2 {
   int arg0 ;
   irqreturn_t (*arg1)(int , void * ) ;
   irqreturn_t (*arg2)(int , void * ) ;
   void *arg3 ;
   int signal_pending ;
};
struct ldv_struct_platform_instance_3 {
   struct platform_driver *arg0 ;
   int signal_pending ;
};
struct device_private {
   void *driver_data ;
};
enum hrtimer_restart;
long ldv__builtin_expect(long exp , long c ) ;
void *ldv_dev_get_drvdata(struct device const *dev ) ;
int ldv_dev_set_drvdata(struct device *dev , void *data ) ;
struct spi_master *ldv_spi_alloc_master(struct device *host , unsigned int size ) ;
long ldv_is_err(void const *ptr ) ;
long ldv_ptr_err(void const *ptr ) ;
extern struct module __this_module ;
extern struct pv_irq_ops pv_irq_ops ;
extern int __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                             , ...) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void warn_slowpath_null(char const * , int const ) ;
__inline static unsigned long arch_local_save_flags(void)
{
  unsigned long __ret = 0 ;
  unsigned long __edi = 0 ;
  unsigned long __esi = 0 ;
  unsigned long __edx = 0 ;
  unsigned long __ecx = 0 ;
  unsigned long __eax = 0 ;
  long tmp ;
  {
  {
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.save_fl.func == (unsigned long )((void *)0),
                         0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/alpha/git/klever2/klever/native-scheduler-work-dir/scheduler/jobs/d5cd53f56669d61faa91054857893dbd/klever-core-work-dir/lkbce/arch/x86/include/asm/paravirt.h"),
                         "i" (804), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (44UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.save_fl.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  __ret = __eax;
  return (__ret);
}
}
__inline static long PTR_ERR(void const *ptr ) ;
__inline static long IS_ERR(void const *ptr ) ;
__inline static int arch_irqs_disabled_flags(unsigned long flags )
{
  {
  return ((flags & 512UL) == 0UL);
}
}
extern void __ldv_spin_lock(spinlock_t * ) ;
static void ldv___ldv_spin_lock_44(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_46(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_48(spinlock_t *ldv_func_arg1 ) ;
void ldv_spin_lock_lock_of_tegra_slink_data(void) ;
void ldv_spin_unlock_lock_of_tegra_slink_data(void) ;
void ldv_initialize(void) ;
int ldv_post_init(int init_ret_val ) ;
extern void ldv_pre_probe(void) ;
int ldv_post_probe(int probe_ret_val ) ;
void ldv_check_final_state(void) ;
extern void ldv_switch_to_interrupt_context(void) ;
extern void ldv_switch_to_process_context(void) ;
extern void __VERIFIER_assume(int ) ;
int ldv_undef_int(void) ;
int ldv_undef_int_negative(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
extern void *external_allocated_data(void) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField19.rlock);
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField19.rlock, flags);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_45(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_45(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_45(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_45(spinlock_t *lock , unsigned long flags ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
__inline static void init_completion(struct completion *x )
{
  struct lock_class_key __key ;
  {
  {
  x->done = 0U;
  __init_waitqueue_head(& x->wait, "&x->wait", & __key);
  }
  return;
}
}
__inline static void reinit_completion(struct completion *x )
{
  {
  x->done = 0U;
  return;
}
}
extern unsigned long wait_for_completion_timeout(struct completion * , unsigned long ) ;
extern long wait_for_completion_interruptible_timeout(struct completion * , unsigned long ) ;
extern void complete(struct completion * ) ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
__inline static unsigned int readl(void const volatile *addr )
{
  unsigned int ret ;
  {
  __asm__ volatile ("movl %1,%0": "=r" (ret): "m" (*((unsigned int volatile *)addr)): "memory");
  return (ret);
}
}
__inline static void writel(unsigned int val , void volatile *addr )
{
  {
  __asm__ volatile ("movl %0,%1": : "r" (val), "m" (*((unsigned int volatile *)addr)): "memory");
  return;
}
}
extern void *devm_ioremap_resource(struct device * , struct resource * ) ;
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
static void *ldv_dev_get_drvdata_30(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_42(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_55(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_56(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_57(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_58(struct device const *dev ) ;
static int ldv_dev_set_drvdata_31(struct device *dev , void *data ) ;
extern void put_device(struct device * ) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern struct resource *platform_get_resource(struct platform_device * , unsigned int ,
                                              unsigned int ) ;
extern int platform_get_irq(struct platform_device * , unsigned int ) ;
static int ldv___platform_driver_register_59(struct platform_driver *ldv_func_arg1 ,
                                             struct module *ldv_func_arg2 ) ;
static void ldv_platform_driver_unregister_60(struct platform_driver *ldv_func_arg1 ) ;
__inline static void *platform_get_drvdata(struct platform_device const *pdev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_30(& pdev->dev);
  }
  return (tmp);
}
}
__inline static void platform_set_drvdata(struct platform_device *pdev , void *data )
{
  {
  {
  ldv_dev_set_drvdata_31(& pdev->dev, data);
  }
  return;
}
}
static int ldv_request_threaded_irq_52(unsigned int ldv_func_arg1 , irqreturn_t (*ldv_func_arg2)(int ,
                                                                                                 void * ) ,
                                       irqreturn_t (*ldv_func_arg3)(int , void * ) ,
                                       unsigned long ldv_func_arg4 , char const *ldv_func_arg5 ,
                                       void *ldv_func_arg6 ) ;
static void ldv_free_irq_53(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
static void ldv_free_irq_54(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
void ldv_assert(char const *desc , int expr ) ;
extern int clk_prepare(struct clk * ) ;
extern void clk_unprepare(struct clk * ) ;
extern struct clk *devm_clk_get(struct device * , char const * ) ;
extern int clk_enable(struct clk * ) ;
extern void clk_disable(struct clk * ) ;
extern int clk_set_rate(struct clk * , unsigned long ) ;
__inline static int clk_prepare_enable(struct clk *clk )
{
  int ret ;
  {
  {
  ret = clk_prepare(clk);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  {
  ret = clk_enable(clk);
  }
  if (ret != 0) {
    {
    clk_unprepare(clk);
    }
  } else {
  }
  return (ret);
}
}
__inline static void clk_disable_unprepare(struct clk *clk )
{
  {
  {
  clk_disable(clk);
  clk_unprepare(clk);
  }
  return;
}
}
extern void __const_udelay(unsigned long ) ;
extern void sg_init_table(struct scatterlist * , unsigned int ) ;
__inline static int dmaengine_device_control(struct dma_chan *chan , enum dma_ctrl_cmd cmd ,
                                             unsigned long arg )
{
  int tmp ;
  {
  if ((unsigned long )(chan->device)->device_control != (unsigned long )((int (*)(struct dma_chan * ,
                                                                                  enum dma_ctrl_cmd ,
                                                                                  unsigned long ))0)) {
    {
    tmp = (*((chan->device)->device_control))(chan, cmd, arg);
    }
    return (tmp);
  } else {
  }
  return (-38);
}
}
__inline static int dmaengine_slave_config(struct dma_chan *chan , struct dma_slave_config *config )
{
  int tmp ;
  {
  {
  tmp = dmaengine_device_control(chan, 3, (unsigned long )config);
  }
  return (tmp);
}
}
__inline static struct dma_async_tx_descriptor *dmaengine_prep_slave_single(struct dma_chan *chan ,
                                                                            dma_addr_t buf ,
                                                                            size_t len ,
                                                                            enum dma_transfer_direction dir ,
                                                                            unsigned long flags )
{
  struct scatterlist sg ;
  struct dma_async_tx_descriptor *tmp ;
  {
  {
  sg_init_table(& sg, 1U);
  sg.dma_address = buf;
  sg.dma_length = (unsigned int )len;
  tmp = (*((chan->device)->device_prep_slave_sg))(chan, & sg, 1U, dir, flags, (void *)0);
  }
  return (tmp);
}
}
__inline static int dmaengine_terminate_all(struct dma_chan *chan )
{
  int tmp ;
  {
  {
  tmp = dmaengine_device_control(chan, 0, 0UL);
  }
  return (tmp);
}
}
__inline static dma_cookie_t dmaengine_submit(struct dma_async_tx_descriptor *desc )
{
  dma_cookie_t tmp ;
  {
  {
  tmp = (*(desc->tx_submit))(desc);
  }
  return (tmp);
}
}
__inline static void dma_async_issue_pending(struct dma_chan *chan )
{
  {
  {
  (*((chan->device)->device_issue_pending))(chan);
  }
  return;
}
}
extern struct dma_chan *dma_request_slave_channel_reason(struct device * , char const * ) ;
extern void dma_release_channel(struct dma_chan * ) ;
__inline static int valid_dma_direction(int dma_direction )
{
  {
  return ((unsigned int )dma_direction <= 2U);
}
}
__inline static int is_device_dma_capable(struct device *dev )
{
  {
  return ((unsigned long )dev->dma_mask != (unsigned long )((u64 *)0ULL) && *(dev->dma_mask) != 0ULL);
}
}
extern void debug_dma_alloc_coherent(struct device * , size_t , dma_addr_t , void * ) ;
extern void debug_dma_free_coherent(struct device * , size_t , void * , dma_addr_t ) ;
extern void debug_dma_sync_single_for_cpu(struct device * , dma_addr_t , size_t ,
                                          int ) ;
extern void debug_dma_sync_single_for_device(struct device * , dma_addr_t , size_t ,
                                             int ) ;
extern struct device x86_dma_fallback_dev ;
extern struct dma_map_ops *dma_ops ;
__inline static struct dma_map_ops *get_dma_ops(struct device *dev )
{
  long tmp ;
  {
  {
  tmp = ldv__builtin_expect((unsigned long )dev == (unsigned long )((struct device *)0),
                         0L);
  }
  if (tmp != 0L || (unsigned long )dev->archdata.dma_ops == (unsigned long )((struct dma_map_ops *)0)) {
    return (dma_ops);
  } else {
    return (dev->archdata.dma_ops);
  }
}
}
__inline static void dma_sync_single_for_cpu(struct device *dev , dma_addr_t addr ,
                                             size_t size , enum dma_data_direction dir )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (103), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((unsigned long )ops->sync_single_for_cpu != (unsigned long )((void (*)(struct device * ,
                                                                             dma_addr_t ,
                                                                             size_t ,
                                                                             enum dma_data_direction ))0)) {
    {
    (*(ops->sync_single_for_cpu))(dev, addr, size, dir);
    }
  } else {
  }
  {
  debug_dma_sync_single_for_cpu(dev, addr, size, (int )dir);
  }
  return;
}
}
__inline static void dma_sync_single_for_device(struct device *dev , dma_addr_t addr ,
                                                size_t size , enum dma_data_direction dir )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (115), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((unsigned long )ops->sync_single_for_device != (unsigned long )((void (*)(struct device * ,
                                                                                dma_addr_t ,
                                                                                size_t ,
                                                                                enum dma_data_direction ))0)) {
    {
    (*(ops->sync_single_for_device))(dev, addr, size, dir);
    }
  } else {
  }
  {
  debug_dma_sync_single_for_device(dev, addr, size, (int )dir);
  }
  return;
}
}
__inline static unsigned long dma_alloc_coherent_mask(struct device *dev , gfp_t gfp )
{
  unsigned long dma_mask ;
  {
  dma_mask = 0UL;
  dma_mask = (unsigned long )dev->coherent_dma_mask;
  if (dma_mask == 0UL) {
    dma_mask = (int )gfp & 1 ? 16777215UL : 4294967295UL;
  } else {
  }
  return (dma_mask);
}
}
__inline static gfp_t dma_alloc_coherent_gfp_flags(struct device *dev , gfp_t gfp )
{
  unsigned long dma_mask ;
  unsigned long tmp ;
  {
  {
  tmp = dma_alloc_coherent_mask(dev, gfp);
  dma_mask = tmp;
  }
  if ((unsigned long long )dma_mask <= 16777215ULL) {
    gfp = gfp | 1U;
  } else {
  }
  if ((unsigned long long )dma_mask <= 4294967295ULL && (gfp & 1U) == 0U) {
    gfp = gfp | 4U;
  } else {
  }
  return (gfp);
}
}
__inline static void *dma_alloc_attrs(struct device *dev , size_t size , dma_addr_t *dma_handle ,
                                      gfp_t gfp , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  void *memory ;
  int tmp___0 ;
  gfp_t tmp___1 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  gfp = gfp & 4294967288U;
  }
  if ((unsigned long )dev == (unsigned long )((struct device *)0)) {
    dev = & x86_dma_fallback_dev;
  } else {
  }
  {
  tmp___0 = is_device_dma_capable(dev);
  }
  if (tmp___0 == 0) {
    return ((void *)0);
  } else {
  }
  if ((unsigned long )ops->alloc == (unsigned long )((void *(*)(struct device * ,
                                                                size_t , dma_addr_t * ,
                                                                gfp_t , struct dma_attrs * ))0)) {
    return ((void *)0);
  } else {
  }
  {
  tmp___1 = dma_alloc_coherent_gfp_flags(dev, gfp);
  memory = (*(ops->alloc))(dev, size, dma_handle, tmp___1, attrs);
  debug_dma_alloc_coherent(dev, size, *dma_handle, memory);
  }
  return (memory);
}
}
__inline static void dma_free_attrs(struct device *dev , size_t size , void *vaddr ,
                                    dma_addr_t bus , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int __ret_warn_on ;
  unsigned long _flags ;
  int tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  _flags = arch_local_save_flags();
  tmp___0 = arch_irqs_disabled_flags(_flags);
  __ret_warn_on = tmp___0 != 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    warn_slowpath_null("/home/alpha/git/klever2/klever/native-scheduler-work-dir/scheduler/jobs/d5cd53f56669d61faa91054857893dbd/klever-core-work-dir/lkbce/arch/x86/include/asm/dma-mapping.h",
                       166);
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  debug_dma_free_coherent(dev, size, vaddr, bus);
  }
  if ((unsigned long )ops->free != (unsigned long )((void (*)(struct device * , size_t ,
                                                              void * , dma_addr_t ,
                                                              struct dma_attrs * ))0)) {
    {
    (*(ops->free))(dev, size, vaddr, bus, attrs);
    }
  } else {
  }
  return;
}
}
extern int __pm_runtime_idle(struct device * , int ) ;
extern int __pm_runtime_resume(struct device * , int ) ;
extern void pm_runtime_enable(struct device * ) ;
extern void __pm_runtime_disable(struct device * , bool ) ;
__inline static bool pm_runtime_status_suspended(struct device *dev )
{
  {
  return ((unsigned int )dev->power.runtime_status == 2U);
}
}
__inline static bool pm_runtime_enabled(struct device *dev )
{
  {
  return ((unsigned int )*((unsigned char *)dev + 1040UL) == 0U);
}
}
__inline static int pm_runtime_get_sync(struct device *dev )
{
  int tmp ;
  {
  {
  tmp = __pm_runtime_resume(dev, 4);
  }
  return (tmp);
}
}
__inline static int pm_runtime_put(struct device *dev )
{
  int tmp ;
  {
  {
  tmp = __pm_runtime_idle(dev, 5);
  }
  return (tmp);
}
}
__inline static void pm_runtime_disable(struct device *dev )
{
  {
  {
  __pm_runtime_disable(dev, 1);
  }
  return;
}
}
__inline static int of_property_read_u32_array(struct device_node const *np , char const *propname ,
                                               u32 *out_values , size_t sz )
{
  {
  return (-38);
}
}
__inline static int of_property_read_u32(struct device_node const *np , char const *propname ,
                                         u32 *out_value )
{
  int tmp ;
  {
  {
  tmp = of_property_read_u32_array(np, propname, out_value, 1UL);
  }
  return (tmp);
}
}
extern void *__VERIFIER_nondet_pointer(void);
__inline static struct of_device_id const *__of_match_device(struct of_device_id const *matches ,
                                                               struct device const *dev )
{
  {
  return ((struct of_device_id const *)__VERIFIER_nondet_pointer());
}
}
extern int reset_control_assert(struct reset_control * ) ;
extern int reset_control_deassert(struct reset_control * ) ;
extern struct reset_control *devm_reset_control_get(struct device * , char const * ) ;
__inline static void *spi_master_get_devdata(struct spi_master *master )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_42((struct device const *)(& master->dev));
  }
  return (tmp);
}
}
__inline static void spi_master_put(struct spi_master *master )
{
  {
  if ((unsigned long )master != (unsigned long )((struct spi_master *)0)) {
    {
    put_device(& master->dev);
    }
  } else {
  }
  return;
}
}
extern int spi_master_suspend(struct spi_master * ) ;
extern int spi_master_resume(struct spi_master * ) ;
static struct spi_master *ldv_spi_alloc_master_51(struct device *host , unsigned int size ) ;
extern int devm_spi_register_master(struct device * , struct spi_master * ) ;
static int tegra_slink_runtime_suspend(struct device *dev ) ;
static int tegra_slink_runtime_resume(struct device *dev ) ;
__inline static u32 tegra_slink_readl(struct tegra_slink_data *tspi , unsigned long reg )
{
  unsigned int tmp ;
  {
  {
  tmp = readl((void const volatile *)(tspi->base + reg));
  }
  return (tmp);
}
}
__inline static void tegra_slink_writel(struct tegra_slink_data *tspi , u32 val ,
                                        unsigned long reg )
{
  {
  {
  writel(val, (void volatile *)(tspi->base + reg));
  }
  if (reg != 256UL) {
    {
    readl((void const volatile *)(tspi->base + 16U));
    }
  } else {
  }
  return;
}
}
static void tegra_slink_clear_status(struct tegra_slink_data *tspi )
{
  u32 val_write ;
  {
  {
  tegra_slink_readl(tspi, 8UL);
  val_write = 1124859904U;
  tegra_slink_writel(tspi, val_write, 8UL);
  }
  return;
}
}
static u32 tegra_slink_get_packed_size(struct tegra_slink_data *tspi , struct spi_transfer *t )
{
  {
  {
  if (tspi->bytes_per_word == 0U) {
    goto case_0;
  } else {
  }
  if (tspi->bytes_per_word == 1U) {
    goto case_1;
  } else {
  }
  if (tspi->bytes_per_word == 2U) {
    goto case_2;
  } else {
  }
  if (tspi->bytes_per_word == 4U) {
    goto case_4;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (0U);
  case_1: ;
  return (2097152U);
  case_2: ;
  return (4194304U);
  case_4: ;
  return (6291456U);
  switch_default: ;
  return (0U);
  switch_break: ;
  }
}
}
static unsigned int tegra_slink_calculate_curr_xfer_param(struct spi_device *spi ,
                                                          struct tegra_slink_data *tspi ,
                                                          struct spi_transfer *t )
{
  unsigned int remain_len ;
  unsigned int max_word ;
  unsigned int bits_per_word ;
  unsigned int max_len ;
  unsigned int total_fifo_words ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  unsigned int _min1___0 ;
  unsigned int _min2___0 ;
  {
  remain_len = t->len - tspi->cur_pos;
  bits_per_word = (unsigned int )t->bits_per_word;
  tspi->bytes_per_word = (bits_per_word + 7U) / 8U;
  if (bits_per_word == 8U || bits_per_word == 16U) {
    tspi->is_packed = 1;
    tspi->words_per_32bit = 32U / bits_per_word;
  } else {
    tspi->is_packed = 0;
    tspi->words_per_32bit = 1U;
  }
  {
  tspi->packed_size = tegra_slink_get_packed_size(tspi, t);
  }
  if ((int )tspi->is_packed) {
    _min1 = remain_len;
    _min2 = tspi->max_buf_size;
    max_len = _min1 < _min2 ? _min1 : _min2;
    tspi->curr_dma_words = max_len / tspi->bytes_per_word;
    total_fifo_words = max_len / 4U;
  } else {
    max_word = (remain_len - 1U) / tspi->bytes_per_word + 1U;
    _min1___0 = max_word;
    _min2___0 = tspi->max_buf_size / 4U;
    max_word = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
    tspi->curr_dma_words = max_word;
    total_fifo_words = max_word;
  }
  return (total_fifo_words);
}
}
static unsigned int tegra_slink_fill_tx_fifo_from_client_txbuf(struct tegra_slink_data *tspi ,
                                                               struct spi_transfer *t )
{
  unsigned int nbytes ;
  unsigned int tx_empty_count ;
  u32 fifo_status ;
  unsigned int max_n_32bit ;
  unsigned int i ;
  unsigned int count ;
  unsigned int written_words ;
  unsigned int fifo_words_left ;
  u8 *tx_buf ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  u32 x ;
  u8 *tmp ;
  unsigned int _min1___0 ;
  unsigned int _min2___0 ;
  u32 x___0 ;
  u8 *tmp___0 ;
  {
  {
  tx_buf = (u8 *)(t->tx_buf + (unsigned long )tspi->cur_tx_pos);
  fifo_status = tegra_slink_readl(tspi, 28UL);
  tx_empty_count = fifo_status & 63U;
  }
  if ((int )tspi->is_packed) {
    fifo_words_left = tx_empty_count * tspi->words_per_32bit;
    _min1 = fifo_words_left;
    _min2 = tspi->curr_dma_words;
    written_words = _min1 < _min2 ? _min1 : _min2;
    nbytes = written_words * tspi->bytes_per_word;
    max_n_32bit = (nbytes + 3U) / 4U;
    count = 0U;
    goto ldv_27919;
    ldv_27918:
    x = 0U;
    i = 0U;
    goto ldv_27916;
    ldv_27915:
    tmp = tx_buf;
    tx_buf = tx_buf + 1;
    x = x | ((unsigned int )*tmp << (int )(i * 8U));
    i = i + 1U;
    nbytes = nbytes - 1U;
    ldv_27916: ;
    if (i <= 3U && nbytes != 0U) {
      goto ldv_27915;
    } else {
    }
    {
    tegra_slink_writel(tspi, x, 256UL);
    count = count + 1U;
    }
    ldv_27919: ;
    if (count < max_n_32bit) {
      goto ldv_27918;
    } else {
    }
  } else {
    _min1___0 = tspi->curr_dma_words;
    _min2___0 = tx_empty_count;
    max_n_32bit = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
    written_words = max_n_32bit;
    nbytes = written_words * tspi->bytes_per_word;
    count = 0U;
    goto ldv_27929;
    ldv_27928:
    x___0 = 0U;
    i = 0U;
    goto ldv_27926;
    ldv_27925:
    tmp___0 = tx_buf;
    tx_buf = tx_buf + 1;
    x___0 = x___0 | ((unsigned int )*tmp___0 << (int )(i * 8U));
    i = i + 1U;
    nbytes = nbytes - 1U;
    ldv_27926: ;
    if (nbytes != 0U && i < tspi->bytes_per_word) {
      goto ldv_27925;
    } else {
    }
    {
    tegra_slink_writel(tspi, x___0, 256UL);
    count = count + 1U;
    }
    ldv_27929: ;
    if (count < max_n_32bit) {
      goto ldv_27928;
    } else {
    }
  }
  tspi->cur_tx_pos = tspi->cur_tx_pos + written_words * tspi->bytes_per_word;
  return (written_words);
}
}
static unsigned int tegra_slink_read_rx_fifo_to_client_rxbuf(struct tegra_slink_data *tspi ,
                                                             struct spi_transfer *t )
{
  unsigned int rx_full_count ;
  u32 fifo_status ;
  unsigned int i ;
  unsigned int count ;
  unsigned int read_words ;
  unsigned int len ;
  u8 *rx_buf ;
  u32 x ;
  u32 tmp ;
  u8 *tmp___0 ;
  u32 x___0 ;
  u32 tmp___1 ;
  u8 *tmp___2 ;
  {
  {
  read_words = 0U;
  rx_buf = (u8 *)(t->rx_buf + (unsigned long )tspi->cur_rx_pos);
  fifo_status = tegra_slink_readl(tspi, 28UL);
  rx_full_count = (fifo_status & 4128768U) >> 16;
  }
  if ((int )tspi->is_packed) {
    len = tspi->curr_dma_words * tspi->bytes_per_word;
    count = 0U;
    goto ldv_27947;
    ldv_27946:
    {
    tmp = tegra_slink_readl(tspi, 384UL);
    x = tmp;
    i = 0U;
    }
    goto ldv_27944;
    ldv_27943:
    tmp___0 = rx_buf;
    rx_buf = rx_buf + 1;
    *tmp___0 = (u8 )(x >> (int )(i * 8U));
    i = i + 1U;
    len = len - 1U;
    ldv_27944: ;
    if (len != 0U && i <= 3U) {
      goto ldv_27943;
    } else {
    }
    count = count + 1U;
    ldv_27947: ;
    if (count < rx_full_count) {
      goto ldv_27946;
    } else {
    }
    tspi->cur_rx_pos = tspi->cur_rx_pos + tspi->curr_dma_words * tspi->bytes_per_word;
    read_words = read_words + tspi->curr_dma_words;
  } else {
    count = 0U;
    goto ldv_27954;
    ldv_27953:
    {
    tmp___1 = tegra_slink_readl(tspi, 384UL);
    x___0 = tmp___1;
    i = 0U;
    }
    goto ldv_27951;
    ldv_27950:
    tmp___2 = rx_buf;
    rx_buf = rx_buf + 1;
    *tmp___2 = (u8 )(x___0 >> (int )(i * 8U));
    i = i + 1U;
    ldv_27951: ;
    if (i < tspi->bytes_per_word) {
      goto ldv_27950;
    } else {
    }
    count = count + 1U;
    ldv_27954: ;
    if (count < rx_full_count) {
      goto ldv_27953;
    } else {
    }
    tspi->cur_rx_pos = tspi->cur_rx_pos + rx_full_count * tspi->bytes_per_word;
    read_words = read_words + rx_full_count;
  }
  return (read_words);
}
}
static void tegra_slink_copy_client_txbuf_to_spi_txbuf(struct tegra_slink_data *tspi ,
                                                       struct spi_transfer *t )
{
  unsigned int len ;
  unsigned int i ;
  unsigned int count ;
  u8 *tx_buf ;
  unsigned int consume ;
  u32 x ;
  u8 *tmp ;
  {
  {
  dma_sync_single_for_cpu(tspi->dev, tspi->tx_dma_phys, (size_t )tspi->dma_buf_size,
                          1);
  }
  if ((int )tspi->is_packed) {
    {
    len = tspi->curr_dma_words * tspi->bytes_per_word;
    memcpy((void *)tspi->tx_dma_buf, t->tx_buf + (unsigned long )tspi->cur_pos, (size_t )len);
    }
  } else {
    tx_buf = (u8 *)(t->tx_buf + (unsigned long )tspi->cur_tx_pos);
    consume = tspi->curr_dma_words * tspi->bytes_per_word;
    count = 0U;
    goto ldv_27970;
    ldv_27969:
    x = 0U;
    i = 0U;
    goto ldv_27967;
    ldv_27966:
    tmp = tx_buf;
    tx_buf = tx_buf + 1;
    x = x | ((unsigned int )*tmp << (int )(i * 8U));
    i = i + 1U;
    consume = consume - 1U;
    ldv_27967: ;
    if (consume != 0U && i < tspi->bytes_per_word) {
      goto ldv_27966;
    } else {
    }
    *(tspi->tx_dma_buf + (unsigned long )count) = x;
    count = count + 1U;
    ldv_27970: ;
    if (count < tspi->curr_dma_words) {
      goto ldv_27969;
    } else {
    }
  }
  {
  tspi->cur_tx_pos = tspi->cur_tx_pos + tspi->curr_dma_words * tspi->bytes_per_word;
  dma_sync_single_for_device(tspi->dev, tspi->tx_dma_phys, (size_t )tspi->dma_buf_size,
                             1);
  }
  return;
}
}
static void tegra_slink_copy_spi_rxbuf_to_client_rxbuf(struct tegra_slink_data *tspi ,
                                                       struct spi_transfer *t )
{
  unsigned int len ;
  unsigned int i ;
  unsigned int count ;
  unsigned char *rx_buf ;
  u32 rx_mask ;
  u32 x ;
  unsigned char *tmp ;
  {
  {
  dma_sync_single_for_cpu(tspi->dev, tspi->rx_dma_phys, (size_t )tspi->dma_buf_size,
                          2);
  }
  if ((int )tspi->is_packed) {
    {
    len = tspi->curr_dma_words * tspi->bytes_per_word;
    memcpy(t->rx_buf + (unsigned long )tspi->cur_rx_pos, (void const *)tspi->rx_dma_buf,
           (size_t )len);
    }
  } else {
    rx_buf = (unsigned char *)(t->rx_buf + (unsigned long )tspi->cur_rx_pos);
    rx_mask = (1U << (int )t->bits_per_word) - 1U;
    count = 0U;
    goto ldv_27986;
    ldv_27985:
    x = *(tspi->rx_dma_buf + (unsigned long )count) & rx_mask;
    i = 0U;
    goto ldv_27983;
    ldv_27982:
    tmp = rx_buf;
    rx_buf = rx_buf + 1;
    *tmp = (unsigned char )(x >> (int )(i * 8U));
    i = i + 1U;
    ldv_27983: ;
    if (i < tspi->bytes_per_word) {
      goto ldv_27982;
    } else {
    }
    count = count + 1U;
    ldv_27986: ;
    if (count < tspi->curr_dma_words) {
      goto ldv_27985;
    } else {
    }
  }
  {
  tspi->cur_rx_pos = tspi->cur_rx_pos + tspi->curr_dma_words * tspi->bytes_per_word;
  dma_sync_single_for_device(tspi->dev, tspi->rx_dma_phys, (size_t )tspi->dma_buf_size,
                             2);
  }
  return;
}
}
static void tegra_slink_dma_complete(void *args )
{
  struct completion *dma_complete ;
  {
  {
  dma_complete = (struct completion *)args;
  complete(dma_complete);
  }
  return;
}
}
static int tegra_slink_start_tx_dma(struct tegra_slink_data *tspi , int len )
{
  {
  {
  reinit_completion(& tspi->tx_dma_complete);
  tspi->tx_dma_desc = dmaengine_prep_slave_single(tspi->tx_dma_chan, tspi->tx_dma_phys,
                                                  (size_t )len, 1, 3UL);
  }
  if ((unsigned long )tspi->tx_dma_desc == (unsigned long )((struct dma_async_tx_descriptor *)0)) {
    {
    dev_err((struct device const *)tspi->dev, "Not able to get desc for Tx\n");
    }
    return (-5);
  } else {
  }
  {
  (tspi->tx_dma_desc)->callback = & tegra_slink_dma_complete;
  (tspi->tx_dma_desc)->callback_param = (void *)(& tspi->tx_dma_complete);
  dmaengine_submit(tspi->tx_dma_desc);
  dma_async_issue_pending(tspi->tx_dma_chan);
  }
  return (0);
}
}
static int tegra_slink_start_rx_dma(struct tegra_slink_data *tspi , int len )
{
  {
  {
  reinit_completion(& tspi->rx_dma_complete);
  tspi->rx_dma_desc = dmaengine_prep_slave_single(tspi->rx_dma_chan, tspi->rx_dma_phys,
                                                  (size_t )len, 2, 3UL);
  }
  if ((unsigned long )tspi->rx_dma_desc == (unsigned long )((struct dma_async_tx_descriptor *)0)) {
    {
    dev_err((struct device const *)tspi->dev, "Not able to get desc for Rx\n");
    }
    return (-5);
  } else {
  }
  {
  (tspi->rx_dma_desc)->callback = & tegra_slink_dma_complete;
  (tspi->rx_dma_desc)->callback_param = (void *)(& tspi->rx_dma_complete);
  dmaengine_submit(tspi->rx_dma_desc);
  dma_async_issue_pending(tspi->rx_dma_chan);
  }
  return (0);
}
}
static int tegra_slink_start_dma_based_transfer(struct tegra_slink_data *tspi , struct spi_transfer *t )
{
  u32 val ;
  unsigned int len ;
  int ret ;
  u32 status ;
  {
  {
  ret = 0;
  status = tegra_slink_readl(tspi, 8UL);
  }
  if ((status & 10485760U) != 10485760U) {
    {
    dev_err((struct device const *)tspi->dev, "Rx/Tx fifo are not empty status 0x%08x\n",
            status);
    }
    return (-5);
  } else {
  }
  val = (tspi->curr_dma_words - 1U) & 65535U;
  val = val | tspi->packed_size;
  if ((int )tspi->is_packed) {
    len = ((tspi->curr_dma_words * tspi->bytes_per_word + 3U) / 4U) * 4U;
  } else {
    len = tspi->curr_dma_words * 4U;
  }
  if ((len & 15U) != 0U) {
  } else
  if ((len & 16U) != 0U) {
    val = val | 327680U;
  } else {
    val = val | 655360U;
  }
  if ((int )tspi->cur_direction & 1) {
    val = val | 67108864U;
  } else {
  }
  if ((tspi->cur_direction & 2U) != 0U) {
    val = val | 134217728U;
  } else {
  }
  {
  tegra_slink_writel(tspi, val, 24UL);
  tspi->dma_control_reg = val;
  }
  if ((int )tspi->cur_direction & 1) {
    {
    tegra_slink_copy_client_txbuf_to_spi_txbuf(tspi, t);
    __asm__ volatile ("sfence": : : "memory");
    ret = tegra_slink_start_tx_dma(tspi, (int )len);
    }
    if (ret < 0) {
      {
      dev_err((struct device const *)tspi->dev, "Starting tx dma failed, err %d\n",
              ret);
      }
      return (ret);
    } else {
    }
    {
    status = tegra_slink_readl(tspi, 8UL);
    }
    goto ldv_28009;
    ldv_28008:
    {
    status = tegra_slink_readl(tspi, 8UL);
    }
    ldv_28009: ;
    if ((status & 1048576U) == 0U) {
      goto ldv_28008;
    } else {
    }
  } else {
  }
  if ((tspi->cur_direction & 2U) != 0U) {
    {
    dma_sync_single_for_device(tspi->dev, tspi->rx_dma_phys, (size_t )tspi->dma_buf_size,
                               2);
    ret = tegra_slink_start_rx_dma(tspi, (int )len);
    }
    if (ret < 0) {
      {
      dev_err((struct device const *)tspi->dev, "Starting rx dma failed, err %d\n",
              ret);
      }
      if ((int )tspi->cur_direction & 1) {
        {
        dmaengine_terminate_all(tspi->tx_dma_chan);
        }
      } else {
      }
      return (ret);
    } else {
    }
  } else {
  }
  tspi->is_curr_dma_xfer = 1;
  if ((int )tspi->is_packed) {
    {
    val = val | 1048576U;
    tegra_slink_writel(tspi, val, 24UL);
    __const_udelay(4295UL);
    }
  } else {
  }
  {
  tspi->dma_control_reg = val;
  val = val | 2147483648U;
  tegra_slink_writel(tspi, val, 24UL);
  }
  return (ret);
}
}
static int tegra_slink_start_cpu_based_transfer(struct tegra_slink_data *tspi , struct spi_transfer *t )
{
  u32 val ;
  unsigned int cur_words ;
  {
  val = tspi->packed_size;
  if ((int )tspi->cur_direction & 1) {
    val = val | 67108864U;
  } else {
  }
  if ((tspi->cur_direction & 2U) != 0U) {
    val = val | 134217728U;
  } else {
  }
  {
  tegra_slink_writel(tspi, val, 24UL);
  tspi->dma_control_reg = val;
  }
  if ((int )tspi->cur_direction & 1) {
    {
    cur_words = tegra_slink_fill_tx_fifo_from_client_txbuf(tspi, t);
    }
  } else {
    cur_words = tspi->curr_dma_words;
  }
  {
  val = val | ((cur_words - 1U) & 65535U);
  tegra_slink_writel(tspi, val, 24UL);
  tspi->dma_control_reg = val;
  tspi->is_curr_dma_xfer = 0;
  }
  if ((int )tspi->is_packed) {
    {
    val = val | 1048576U;
    tegra_slink_writel(tspi, val, 24UL);
    __const_udelay(4295UL);
    __asm__ volatile ("sfence": : : "memory");
    }
  } else {
  }
  {
  tspi->dma_control_reg = val;
  val = val | 2147483648U;
  tegra_slink_writel(tspi, val, 24UL);
  }
  return (0);
}
}
static int tegra_slink_init_dma_param(struct tegra_slink_data *tspi , bool dma_to_memory )
{
  struct dma_chan *dma_chan ;
  u32 *dma_buf ;
  dma_addr_t dma_phys ;
  int ret ;
  struct dma_slave_config dma_sconfig ;
  long tmp ;
  long tmp___0 ;
  void *tmp___1 ;
  {
  {
  dma_chan = dma_request_slave_channel_reason(tspi->dev, (int )dma_to_memory ? "rx" : "tx");
  tmp___0 = IS_ERR((void const *)dma_chan);
  }
  if (tmp___0 != 0L) {
    {
    tmp = PTR_ERR((void const *)dma_chan);
    ret = (int )tmp;
    }
    if (ret != -517) {
      {
      dev_err((struct device const *)tspi->dev, "Dma channel is not available: %d\n",
              ret);
      }
    } else {
    }
    return (ret);
  } else {
  }
  {
  tmp___1 = dma_alloc_attrs(tspi->dev, (size_t )tspi->dma_buf_size, & dma_phys, 208U,
                            (struct dma_attrs *)0);
  dma_buf = (u32 *)tmp___1;
  }
  if ((unsigned long )dma_buf == (unsigned long )((u32 *)0U)) {
    {
    dev_err((struct device const *)tspi->dev, " Not able to allocate the dma buffer\n");
    dma_release_channel(dma_chan);
    }
    return (-12);
  } else {
  }
  if ((int )dma_to_memory) {
    dma_sconfig.src_addr = tspi->phys + 384ULL;
    dma_sconfig.src_addr_width = 4;
    dma_sconfig.src_maxburst = 0U;
  } else {
    dma_sconfig.dst_addr = tspi->phys + 256ULL;
    dma_sconfig.dst_addr_width = 4;
    dma_sconfig.dst_maxburst = 0U;
  }
  {
  ret = dmaengine_slave_config(dma_chan, & dma_sconfig);
  }
  if (ret != 0) {
    goto scrub;
  } else {
  }
  if ((int )dma_to_memory) {
    tspi->rx_dma_chan = dma_chan;
    tspi->rx_dma_buf = dma_buf;
    tspi->rx_dma_phys = dma_phys;
  } else {
    tspi->tx_dma_chan = dma_chan;
    tspi->tx_dma_buf = dma_buf;
    tspi->tx_dma_phys = dma_phys;
  }
  return (0);
  scrub:
  {
  dma_free_attrs(tspi->dev, (size_t )tspi->dma_buf_size, (void *)dma_buf, dma_phys,
                 (struct dma_attrs *)0);
  dma_release_channel(dma_chan);
  }
  return (ret);
}
}
static void tegra_slink_deinit_dma_param(struct tegra_slink_data *tspi , bool dma_to_memory )
{
  u32 *dma_buf ;
  dma_addr_t dma_phys ;
  struct dma_chan *dma_chan ;
  {
  if ((int )dma_to_memory) {
    dma_buf = tspi->rx_dma_buf;
    dma_chan = tspi->rx_dma_chan;
    dma_phys = tspi->rx_dma_phys;
    tspi->rx_dma_chan = (struct dma_chan *)0;
    tspi->rx_dma_buf = (u32 *)0U;
  } else {
    dma_buf = tspi->tx_dma_buf;
    dma_chan = tspi->tx_dma_chan;
    dma_phys = tspi->tx_dma_phys;
    tspi->tx_dma_buf = (u32 *)0U;
    tspi->tx_dma_chan = (struct dma_chan *)0;
  }
  if ((unsigned long )dma_chan == (unsigned long )((struct dma_chan *)0)) {
    return;
  } else {
  }
  {
  dma_free_attrs(tspi->dev, (size_t )tspi->dma_buf_size, (void *)dma_buf, dma_phys,
                 (struct dma_attrs *)0);
  dma_release_channel(dma_chan);
  }
  return;
}
}
static int tegra_slink_start_transfer_one(struct spi_device *spi , struct spi_transfer *t )
{
  struct tegra_slink_data *tspi ;
  void *tmp ;
  u32 speed ;
  u8 bits_per_word ;
  unsigned int total_fifo_words ;
  int ret ;
  u32 command ;
  u32 command2 ;
  {
  {
  tmp = spi_master_get_devdata(spi->master);
  tspi = (struct tegra_slink_data *)tmp;
  bits_per_word = t->bits_per_word;
  speed = t->speed_hz;
  }
  if (speed != tspi->cur_speed) {
    {
    clk_set_rate(tspi->clk, (unsigned long )(speed * 4U));
    tspi->cur_speed = speed;
    }
  } else {
  }
  {
  tspi->cur_spi = spi;
  tspi->cur_pos = 0U;
  tspi->cur_rx_pos = 0U;
  tspi->cur_tx_pos = 0U;
  tspi->curr_xfer = t;
  total_fifo_words = tegra_slink_calculate_curr_xfer_param(spi, tspi, t);
  command = tspi->command_reg;
  command = command & 4294967264U;
  command = command | ((u32 )((int )bits_per_word + -1) & 31U);
  command2 = tspi->command2_reg;
  command2 = command2 & 1073741823U;
  tegra_slink_writel(tspi, command, 0UL);
  tspi->command_reg = command;
  tspi->cur_direction = 0U;
  }
  if ((unsigned long )t->rx_buf != (unsigned long )((void *)0)) {
    command2 = command2 | 2147483648U;
    tspi->cur_direction = tspi->cur_direction | 2U;
  } else {
  }
  if ((unsigned long )t->tx_buf != (unsigned long )((void const *)0)) {
    command2 = command2 | 1073741824U;
    tspi->cur_direction = tspi->cur_direction | 1U;
  } else {
  }
  {
  tegra_slink_writel(tspi, command2, 4UL);
  tspi->command2_reg = command2;
  }
  if (total_fifo_words > 32U) {
    {
    ret = tegra_slink_start_dma_based_transfer(tspi, t);
    }
  } else {
    {
    ret = tegra_slink_start_cpu_based_transfer(tspi, t);
    }
  }
  return (ret);
}
}
static int tegra_slink_setup(struct spi_device *spi )
{
  u32 cs_pol_bit[4U] ;
  struct tegra_slink_data *tspi ;
  void *tmp ;
  u32 val ;
  unsigned long flags = 0 ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  long tmp___1 ;
  {
  {
  cs_pol_bit[0] = 8192U;
  cs_pol_bit[1] = 1048576U;
  cs_pol_bit[2] = 4194304U;
  cs_pol_bit[3] = 8388608U;
  tmp = spi_master_get_devdata(spi->master);
  tspi = (struct tegra_slink_data *)tmp;
  descriptor.modname = "spi_tegra20_slink";
  descriptor.function = "tegra_slink_setup";
  descriptor.filename = "drivers/spi/spi-tegra20-slink.c";
  descriptor.format = "setup %d bpw, %scpol, %scpha, %dHz\n";
  descriptor.lineno = 762U;
  descriptor.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& spi->dev), "setup %d bpw, %scpol, %scpha, %dHz\n",
                      (int )spi->bits_per_word, ((int )spi->mode & 2) != 0 ? (char *)"" : (char *)"~",
                      (int )spi->mode & 1 ? (char *)"" : (char *)"~", spi->max_speed_hz);
    }
  } else {
  }
  {
  tmp___1 = ldv__builtin_expect((unsigned int )spi->chip_select > 3U, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/spi/spi-tegra20-slink.c"),
                         "i" (764), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  spi->max_speed_hz = spi->max_speed_hz != 0U ? spi->max_speed_hz != 0U : tspi->spi_max_frequency;
  ret = pm_runtime_get_sync(tspi->dev);
  }
  if (ret < 0) {
    {
    dev_err((struct device const *)tspi->dev, "pm runtime failed, e = %d\n", ret);
    }
    return (ret);
  } else {
  }
  {
  ldv___ldv_spin_lock_44(& tspi->lock);
  val = tspi->def_command_reg;
  }
  if (((int )spi->mode & 4) != 0) {
    val = val | cs_pol_bit[(int )spi->chip_select];
  } else {
    val = val & ~ cs_pol_bit[(int )spi->chip_select];
  }
  {
  tspi->def_command_reg = val;
  tegra_slink_writel(tspi, tspi->def_command_reg, 0UL);
  ldv_spin_unlock_irqrestore_45(& tspi->lock, flags);
  pm_runtime_put(tspi->dev);
  }
  return (0);
}
}
static int tegra_slink_prepare_message(struct spi_master *master , struct spi_message *msg )
{
  struct tegra_slink_data *tspi ;
  void *tmp ;
  struct spi_device *spi ;
  {
  {
  tmp = spi_master_get_devdata(master);
  tspi = (struct tegra_slink_data *)tmp;
  spi = msg->spi;
  tegra_slink_clear_status(tspi);
  tspi->command_reg = tspi->def_command_reg;
  tspi->command_reg = tspi->command_reg | 6144U;
  tspi->command2_reg = tspi->def_command2_reg;
  tspi->command2_reg = tspi->command2_reg | (u32 )(((int )spi->chip_select & 3) << 18);
  tspi->command_reg = tspi->command_reg & 4242538495U;
  }
  if ((int )spi->mode & 1) {
    tspi->command_reg = tspi->command_reg | 2097152U;
  } else {
  }
  if (((int )spi->mode & 2) != 0) {
    tspi->command_reg = tspi->command_reg | 16777216U;
  } else {
    tspi->command_reg = tspi->command_reg;
  }
  return (0);
}
}
static int tegra_slink_transfer_one(struct spi_master *master , struct spi_device *spi ,
                                    struct spi_transfer *xfer )
{
  struct tegra_slink_data *tspi ;
  void *tmp ;
  int ret ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  int __ret_warn_on ;
  long tmp___2 ;
  long tmp___3 ;
  {
  {
  tmp = spi_master_get_devdata(master);
  tspi = (struct tegra_slink_data *)tmp;
  reinit_completion(& tspi->xfer_completion);
  ret = tegra_slink_start_transfer_one(spi, xfer);
  }
  if (ret < 0) {
    {
    dev_err((struct device const *)tspi->dev, "spi can not start transfer, err %d\n",
            ret);
    }
    return (ret);
  } else {
  }
  {
  tmp___0 = msecs_to_jiffies(1000U);
  tmp___1 = wait_for_completion_timeout(& tspi->xfer_completion, tmp___0);
  ret = (int )tmp___1;
  __ret_warn_on = ret == 0;
  tmp___2 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___2 != 0L) {
    {
    warn_slowpath_null("drivers/spi/spi-tegra20-slink.c", 831);
    }
  } else {
  }
  {
  tmp___3 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___3 != 0L) {
    {
    dev_err((struct device const *)tspi->dev, "spi trasfer timeout, err %d\n", ret);
    }
    return (-5);
  } else {
  }
  if (tspi->tx_status != 0U) {
    return ((int )tspi->tx_status);
  } else {
  }
  if (tspi->rx_status != 0U) {
    return ((int )tspi->rx_status);
  } else {
  }
  return (0);
}
}
static int tegra_slink_unprepare_message(struct spi_master *master , struct spi_message *msg )
{
  struct tegra_slink_data *tspi ;
  void *tmp ;
  {
  {
  tmp = spi_master_get_devdata(master);
  tspi = (struct tegra_slink_data *)tmp;
  tegra_slink_writel(tspi, tspi->def_command_reg, 0UL);
  tegra_slink_writel(tspi, tspi->def_command2_reg, 4UL);
  }
  return (0);
}
}
static irqreturn_t handle_cpu_based_xfer(struct tegra_slink_data *tspi )
{
  struct spi_transfer *t ;
  unsigned long flags = 0 ;
  struct reset_control *tmp;
  {
  {
  t = tspi->curr_xfer;
  ldv___ldv_spin_lock_46(& tspi->lock);
  }
  if (*((unsigned long *)tspi + 49UL) != 0UL || (int )tspi->status_reg < 0) {
    {
    dev_err((struct device const *)tspi->dev, "CpuXfer ERROR bit set 0x%x\n", tspi->status_reg);
    dev_err((struct device const *)tspi->dev, "CpuXfer 0x%08x:0x%08x:0x%08x\n",
            tspi->command_reg, tspi->command2_reg, tspi->dma_control_reg);
    tmp = tspi->rst;
    ldv_assert("", tmp == tspi->rst);
    reset_control_assert(tspi->rst);
    __const_udelay(8590UL);
    reset_control_deassert(tspi->rst);
    complete(& tspi->xfer_completion);
    }
    goto exit;
  } else {
  }
  if ((tspi->cur_direction & 2U) != 0U) {
    {
    tegra_slink_read_rx_fifo_to_client_rxbuf(tspi, t);
    }
  } else {
  }
  if ((int )tspi->cur_direction & 1) {
    tspi->cur_pos = tspi->cur_tx_pos;
  } else {
    tspi->cur_pos = tspi->cur_rx_pos;
  }
  if (tspi->cur_pos == t->len) {
    {
    complete(& tspi->xfer_completion);
    }
    goto exit;
  } else {
  }
  {
  tegra_slink_calculate_curr_xfer_param(tspi->cur_spi, tspi, t);
  tegra_slink_start_cpu_based_transfer(tspi, t);
  }
  exit:
  {
  ldv_spin_unlock_irqrestore_45(& tspi->lock, flags);
  }
  return (1);
}
}
static irqreturn_t handle_dma_based_xfer(struct tegra_slink_data *tspi )
{
  struct spi_transfer *t ;
  long wait_status ;
  int err ;
  unsigned int total_fifo_words ;
  unsigned long flags = 0 ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  t = tspi->curr_xfer;
  err = 0;
  if ((int )tspi->cur_direction & 1) {
    if (tspi->tx_status != 0U) {
      {
      dmaengine_terminate_all(tspi->tx_dma_chan);
      err = err + 1;
      }
    } else {
      {
      tmp = msecs_to_jiffies(1000U);
      wait_status = wait_for_completion_interruptible_timeout(& tspi->tx_dma_complete,
                                                              tmp);
      }
      if (wait_status <= 0L) {
        {
        dmaengine_terminate_all(tspi->tx_dma_chan);
        dev_err((struct device const *)tspi->dev, "TxDma Xfer failed\n");
        err = err + 1;
        }
      } else {
      }
    }
  } else {
  }
  if ((tspi->cur_direction & 2U) != 0U) {
    if (tspi->rx_status != 0U) {
      {
      dmaengine_terminate_all(tspi->rx_dma_chan);
      err = err + 2;
      }
    } else {
      {
      tmp___0 = msecs_to_jiffies(1000U);
      wait_status = wait_for_completion_interruptible_timeout(& tspi->rx_dma_complete,
                                                              tmp___0);
      }
      if (wait_status <= 0L) {
        {
        dmaengine_terminate_all(tspi->rx_dma_chan);
        dev_err((struct device const *)tspi->dev, "RxDma Xfer failed\n");
        err = err + 2;
        }
      } else {
      }
    }
  } else {
  }
  {
  ldv___ldv_spin_lock_48(& tspi->lock);
  }
  if (err != 0) {
    {
    dev_err((struct device const *)tspi->dev, "DmaXfer: ERROR bit set 0x%x\n", tspi->status_reg);
    dev_err((struct device const *)tspi->dev, "DmaXfer 0x%08x:0x%08x:0x%08x\n",
            tspi->command_reg, tspi->command2_reg, tspi->dma_control_reg);
    reset_control_assert(tspi->rst);
    __const_udelay(8590UL);
    reset_control_assert(tspi->rst);
    complete(& tspi->xfer_completion);
    ldv_spin_unlock_irqrestore_45(& tspi->lock, flags);
    }
    return (1);
  } else {
  }
  if ((tspi->cur_direction & 2U) != 0U) {
    {
    tegra_slink_copy_spi_rxbuf_to_client_rxbuf(tspi, t);
    }
  } else {
  }
  if ((int )tspi->cur_direction & 1) {
    tspi->cur_pos = tspi->cur_tx_pos;
  } else {
    tspi->cur_pos = tspi->cur_rx_pos;
  }
  if (tspi->cur_pos == t->len) {
    {
    complete(& tspi->xfer_completion);
    }
    goto exit;
  } else {
  }
  {
  total_fifo_words = tegra_slink_calculate_curr_xfer_param(tspi->cur_spi, tspi, t);
  }
  if (total_fifo_words > 32U) {
    {
    err = tegra_slink_start_dma_based_transfer(tspi, t);
    }
  } else {
    {
    err = tegra_slink_start_cpu_based_transfer(tspi, t);
    }
  }
  exit:
  {
  ldv_spin_unlock_irqrestore_45(& tspi->lock, flags);
  }
  return (1);
}
}
static irqreturn_t tegra_slink_isr_thread(int irq , void *context_data )
{
  struct tegra_slink_data *tspi ;
  irqreturn_t tmp ;
  irqreturn_t tmp___0 ;
  {
  tspi = (struct tegra_slink_data *)context_data;
  if (! tspi->is_curr_dma_xfer) {
    {
    tmp = handle_cpu_based_xfer(tspi);
    }
    return (tmp);
  } else {
  }
  {
  tmp___0 = handle_dma_based_xfer(tspi);
  }
  return (tmp___0);
}
}
static irqreturn_t tegra_slink_isr(int irq , void *context_data )
{
  struct tegra_slink_data *tspi ;
  {
  {
  tspi = (struct tegra_slink_data *)context_data;
  tspi->status_reg = tegra_slink_readl(tspi, 8UL);
  }
  if ((int )tspi->cur_direction & 1) {
    tspi->tx_status = tspi->status_reg & 17301504U;
  } else {
  }
  if ((tspi->cur_direction & 2U) != 0U) {
    tspi->rx_status = tspi->status_reg & 33816576U;
  } else {
  }
  {
  tegra_slink_clear_status(tspi);
  }
  return (2);
}
}
static void tegra_slink_parse_dt(struct tegra_slink_data *tspi )
{
  struct device_node *np ;
  int tmp ;
  {
  {
  np = (tspi->dev)->of_node;
  tmp = of_property_read_u32((struct device_node const *)np, "spi-max-frequency",
                             & tspi->spi_max_frequency);
  }
  if (tmp != 0) {
    tspi->spi_max_frequency = 25000000U;
  } else {
  }
  return;
}
}
static struct tegra_slink_chip_data const tegra30_spi_cdata = {1};
static struct tegra_slink_chip_data const tegra20_spi_cdata = {0};
static struct of_device_id tegra_slink_of_match[3U] = { {{(char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0}, {(char)0, (char)0, (char)0, (char)0,
                                                      (char)0, (char)0, (char)0, (char)0,
                                                      (char)0, (char)0, (char)0, (char)0,
                                                      (char)0, (char)0, (char)0, (char)0,
                                                      (char)0, (char)0, (char)0, (char)0,
                                                      (char)0, (char)0, (char)0, (char)0,
                                                      (char)0, (char)0, (char)0, (char)0,
                                                      (char)0, (char)0, (char)0, (char)0},
      {'n', 'v', 'i', 'd', 'i', 'a', ',', 't', 'e', 'g', 'r', 'a', '3', '0', '-',
       's', 'l', 'i', 'n', 'k', '\000'}, (void const *)(& tegra30_spi_cdata)},
        {{(char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0}, {(char)0, (char)0, (char)0, (char)0,
                                                      (char)0, (char)0, (char)0, (char)0,
                                                      (char)0, (char)0, (char)0, (char)0,
                                                      (char)0, (char)0, (char)0, (char)0,
                                                      (char)0, (char)0, (char)0, (char)0,
                                                      (char)0, (char)0, (char)0, (char)0,
                                                      (char)0, (char)0, (char)0, (char)0,
                                                      (char)0, (char)0, (char)0, (char)0},
      {'n', 'v', 'i', 'd', 'i', 'a', ',', 't', 'e', 'g', 'r', 'a', '2', '0', '-',
       's', 'l', 'i', 'n', 'k', '\000'}, (void const *)(& tegra20_spi_cdata)}};
struct of_device_id const __mod_of_device_table ;
static int tegra_slink_probe(struct platform_device *pdev )
{
  struct spi_master *master ;
  struct tegra_slink_data *tspi ;
  struct resource *r ;
  int ret ;
  int spi_irq ;
  struct tegra_slink_chip_data const *cdata ;
  struct of_device_id const *match ;
  void *tmp ;
  struct lock_class_key __key ;
  long tmp___0 ;
  long tmp___1 ;
  char const *tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  bool tmp___7 ;
  int tmp___8 ;
  bool tmp___9 ;
  int tmp___10 ;
  {
  {
  cdata = (struct tegra_slink_chip_data const *)0;
  match = __of_match_device((struct of_device_id const *)0, (struct device const *)(& pdev->dev));
  }
  if ((unsigned long )match == (unsigned long )((struct of_device_id const *)0)) {
    {
    dev_err((struct device const *)(& pdev->dev), "Error: No device match found\n");
    }
    return (-19);
  } else {
  }
  {
  cdata = (struct tegra_slink_chip_data const *)match->data;
  master = ldv_spi_alloc_master_51(& pdev->dev, 600U);
  }
  if ((unsigned long )master == (unsigned long )((struct spi_master *)0)) {
    {
    dev_err((struct device const *)(& pdev->dev), "master allocation failed\n");
    }
    return (-12);
  } else {
  }
  {
  master->mode_bits = 7U;
  master->setup = & tegra_slink_setup;
  master->prepare_message = & tegra_slink_prepare_message;
  master->transfer_one = & tegra_slink_transfer_one;
  master->unprepare_message = & tegra_slink_unprepare_message;
  master->auto_runtime_pm = 1;
  master->num_chipselect = 4U;
  master->bus_num = -1;
  platform_set_drvdata(pdev, (void *)master);
  tmp = spi_master_get_devdata(master);
  tspi = (struct tegra_slink_data *)tmp;
  tspi->master = master;
  tspi->dev = & pdev->dev;
  tspi->chip_data = cdata;
  spinlock_check(& tspi->lock);
  __raw_spin_lock_init(& tspi->lock.__annonCompField19.rlock, "&(&tspi->lock)->rlock",
                       & __key);
  tegra_slink_parse_dt(tspi);
  r = platform_get_resource(pdev, 512U, 0U);
  }
  if ((unsigned long )r == (unsigned long )((struct resource *)0)) {
    {
    dev_err((struct device const *)(& pdev->dev), "No IO memory resource\n");
    ret = -19;
    }
    goto exit_free_master;
  } else {
  }
  {
  tspi->phys = r->start;
  tspi->base = devm_ioremap_resource(& pdev->dev, r);
  tmp___1 = IS_ERR((void const *)tspi->base);
  }
  if (tmp___1 != 0L) {
    {
    tmp___0 = PTR_ERR((void const *)tspi->base);
    ret = (int )tmp___0;
    }
    goto exit_free_master;
  } else {
  }
  {
  spi_irq = platform_get_irq(pdev, 0U);
  tspi->irq = (unsigned int )spi_irq;
  tmp___2 = dev_name((struct device const *)(& pdev->dev));
  ret = ldv_request_threaded_irq_52(tspi->irq, & tegra_slink_isr, & tegra_slink_isr_thread,
                                    8192UL, tmp___2, (void *)tspi);
  }
  if (ret < 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "Failed to register ISR for IRQ %d\n",
            tspi->irq);
    }
    goto exit_free_master;
  } else {
  }
  {
  tspi->clk = devm_clk_get(& pdev->dev, (char const *)0);
  tmp___4 = IS_ERR((void const *)tspi->clk);
  }
  if (tmp___4 != 0L) {
    {
    dev_err((struct device const *)(& pdev->dev), "can not get clock\n");
    tmp___3 = PTR_ERR((void const *)tspi->clk);
    ret = (int )tmp___3;
    }
    goto exit_free_irq;
  } else {
  }
  {
  tspi->rst = devm_reset_control_get(& pdev->dev, "spi");
  tmp___6 = IS_ERR((void const *)tspi->rst);
  }
  if (tmp___6 != 0L) {
    {
    dev_err((struct device const *)(& pdev->dev), "can not get reset\n");
    tmp___5 = PTR_ERR((void const *)tspi->rst);
    ret = (int )tmp___5;
    }
    goto exit_free_irq;
  } else {
  }
  {
  tspi->max_buf_size = 128U;
  tspi->dma_buf_size = 16384U;
  ret = tegra_slink_init_dma_param(tspi, 1);
  }
  if (ret < 0) {
    goto exit_free_irq;
  } else {
  }
  {
  ret = tegra_slink_init_dma_param(tspi, 0);
  }
  if (ret < 0) {
    goto exit_rx_dma_free;
  } else {
  }
  {
  tspi->max_buf_size = tspi->dma_buf_size;
  init_completion(& tspi->tx_dma_complete);
  init_completion(& tspi->rx_dma_complete);
  init_completion(& tspi->xfer_completion);
  pm_runtime_enable(& pdev->dev);
  tmp___7 = pm_runtime_enabled(& pdev->dev);
  }
  if (tmp___7) {
    tmp___8 = 0;
  } else {
    tmp___8 = 1;
  }
  if (tmp___8) {
    {
    ret = tegra_slink_runtime_resume(& pdev->dev);
    }
    if (ret != 0) {
      goto exit_pm_disable;
    } else {
    }
  } else {
  }
  {
  ret = pm_runtime_get_sync(& pdev->dev);
  }
  if (ret < 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "pm runtime get failed, e = %d\n",
            ret);
    }
    goto exit_pm_disable;
  } else {
  }
  {
  tspi->def_command_reg = 268435456U;
  tspi->def_command2_reg = 131072U;
  tegra_slink_writel(tspi, tspi->def_command_reg, 0UL);
  tegra_slink_writel(tspi, tspi->def_command2_reg, 4UL);
  pm_runtime_put(& pdev->dev);
  master->dev.of_node = pdev->dev.of_node;
  ret = devm_spi_register_master(& pdev->dev, master);
  }
  if (ret < 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "can not register to master err %d\n",
            ret);
    }
    goto exit_pm_disable;
  } else {
  }
  return (ret);
  exit_pm_disable:
  {
  pm_runtime_disable(& pdev->dev);
  tmp___9 = pm_runtime_status_suspended(& pdev->dev);
  }
  if (tmp___9) {
    tmp___10 = 0;
  } else {
    tmp___10 = 1;
  }
  if (tmp___10) {
    {
    tegra_slink_runtime_suspend(& pdev->dev);
    }
  } else {
  }
  {
  tegra_slink_deinit_dma_param(tspi, 0);
  }
  exit_rx_dma_free:
  {
  tegra_slink_deinit_dma_param(tspi, 1);
  }
  exit_free_irq:
  {
  ldv_free_irq_53((unsigned int )spi_irq, (void *)tspi);
  }
  exit_free_master:
  {
  spi_master_put(master);
  }
  return (ret);
}
}
static int tegra_slink_remove(struct platform_device *pdev )
{
  struct spi_master *master ;
  void *tmp ;
  struct tegra_slink_data *tspi ;
  void *tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = platform_get_drvdata((struct platform_device const *)pdev);
  master = (struct spi_master *)tmp;
  tmp___0 = spi_master_get_devdata(master);
  tspi = (struct tegra_slink_data *)tmp___0;
  ldv_free_irq_54(tspi->irq, (void *)tspi);
  }
  if ((unsigned long )tspi->tx_dma_chan != (unsigned long )((struct dma_chan *)0)) {
    {
    tegra_slink_deinit_dma_param(tspi, 0);
    }
  } else {
  }
  if ((unsigned long )tspi->rx_dma_chan != (unsigned long )((struct dma_chan *)0)) {
    {
    tegra_slink_deinit_dma_param(tspi, 1);
    }
  } else {
  }
  {
  pm_runtime_disable(& pdev->dev);
  tmp___1 = pm_runtime_status_suspended(& pdev->dev);
  }
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    {
    tegra_slink_runtime_suspend(& pdev->dev);
    }
  } else {
  }
  return (0);
}
}
static int tegra_slink_suspend(struct device *dev )
{
  struct spi_master *master ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = ldv_dev_get_drvdata_55((struct device const *)dev);
  master = (struct spi_master *)tmp;
  tmp___0 = spi_master_suspend(master);
  }
  return (tmp___0);
}
}
static int tegra_slink_resume(struct device *dev )
{
  struct spi_master *master ;
  void *tmp ;
  struct tegra_slink_data *tspi ;
  void *tmp___0 ;
  int ret ;
  int tmp___1 ;
  {
  {
  tmp = ldv_dev_get_drvdata_56((struct device const *)dev);
  master = (struct spi_master *)tmp;
  tmp___0 = spi_master_get_devdata(master);
  tspi = (struct tegra_slink_data *)tmp___0;
  ret = pm_runtime_get_sync(dev);
  }
  if (ret < 0) {
    {
    dev_err((struct device const *)dev, "pm runtime failed, e = %d\n", ret);
    }
    return (ret);
  } else {
  }
  {
  tegra_slink_writel(tspi, tspi->command_reg, 0UL);
  tegra_slink_writel(tspi, tspi->command2_reg, 4UL);
  pm_runtime_put(dev);
  tmp___1 = spi_master_resume(master);
  }
  return (tmp___1);
}
}
static int tegra_slink_runtime_suspend(struct device *dev )
{
  struct spi_master *master ;
  void *tmp ;
  struct tegra_slink_data *tspi ;
  void *tmp___0 ;
  {
  {
  tmp = ldv_dev_get_drvdata_57((struct device const *)dev);
  master = (struct spi_master *)tmp;
  tmp___0 = spi_master_get_devdata(master);
  tspi = (struct tegra_slink_data *)tmp___0;
  tegra_slink_readl(tspi, 16UL);
  clk_disable_unprepare(tspi->clk);
  }
  return (0);
}
}
static int tegra_slink_runtime_resume(struct device *dev )
{
  struct spi_master *master ;
  void *tmp ;
  struct tegra_slink_data *tspi ;
  void *tmp___0 ;
  int ret ;
  {
  {
  tmp = ldv_dev_get_drvdata_58((struct device const *)dev);
  master = (struct spi_master *)tmp;
  tmp___0 = spi_master_get_devdata(master);
  tspi = (struct tegra_slink_data *)tmp___0;
  ret = clk_prepare_enable(tspi->clk);
  }
  if (ret < 0) {
    {
    dev_err((struct device const *)tspi->dev, "clk_prepare failed: %d\n", ret);
    }
    return (ret);
  } else {
  }
  return (0);
}
}
static struct dev_pm_ops const slink_pm_ops =
     {0, 0, & tegra_slink_suspend, & tegra_slink_resume, & tegra_slink_suspend, & tegra_slink_resume,
    & tegra_slink_suspend, & tegra_slink_resume, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, & tegra_slink_runtime_suspend, & tegra_slink_runtime_resume, (int (*)(struct device * ))0};
static struct platform_driver tegra_slink_driver =
     {& tegra_slink_probe, & tegra_slink_remove, 0, 0, 0, {"spi-tegra-slink", 0, & __this_module,
                                                         0, (_Bool)0, (struct of_device_id const *)(& tegra_slink_of_match),
                                                         0, 0, 0, 0, 0, 0, 0, & slink_pm_ops,
                                                         0}, 0, (_Bool)0};
static int tegra_slink_driver_init(void)
{
  int tmp ;
  {
  {
  tmp = ldv___platform_driver_register_59(& tegra_slink_driver, & __this_module);
  }
  return (tmp);
}
}
static void tegra_slink_driver_exit(void)
{
  {
  {
  ldv_platform_driver_unregister_60(& tegra_slink_driver);
  }
  return;
}
}
void ldv_dispatch_deregister_8_1(struct platform_driver *arg0 ) ;
void ldv_dispatch_insmod_deregister_10_2(void) ;
void ldv_dispatch_insmod_register_10_3(void) ;
void ldv_dispatch_irq_deregister_7_1(int arg0 ) ;
void ldv_dispatch_irq_register_9_3(int arg0 , irqreturn_t (*arg1)(int , void * ) ,
                                   irqreturn_t (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_dispatch_pm_deregister_3_5(void) ;
void ldv_dispatch_pm_register_3_6(void) ;
void ldv_dispatch_register_6_3(struct platform_driver *arg0 ) ;
int ldv_emg___platform_driver_register(struct platform_driver *arg0 , struct module *arg1 ) ;
void ldv_emg_free_irq(int arg0 , void *arg1 ) ;
void ldv_emg_platform_driver_unregister(struct platform_driver *arg0 ) ;
int ldv_emg_request_threaded_irq(unsigned int arg0 , irqreturn_t (*arg1)(int , void * ) ,
                                 irqreturn_t (*arg2)(int , void * ) , unsigned long arg3 ,
                                 char *arg4 , void *arg5 ) ;
void *ldv_insmod_5(void *arg0 ) ;
void ldv_insmod_tegra_slink_driver_exit_5_2(void (*arg0)(void) ) ;
int ldv_insmod_tegra_slink_driver_init_5_6(int (*arg0)(void) ) ;
void *ldv_interrupt_scenario_2(void *arg0 ) ;
enum irqreturn ldv_interrupt_scenario_handler_2_5(irqreturn_t (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
void ldv_interrupt_scenario_thread_2_3(irqreturn_t (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void *ldv_main_10(void *arg0 ) ;
void *ldv_platform_instance_3(void *arg0 ) ;
int ldv_platform_instance_probe_3_14(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 ) ;
void ldv_platform_instance_release_3_3(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 ) ;
void *ldv_pm_ops_scenario_4(void *arg0 ) ;
void ldv_pm_ops_scenario_freeze_4_15(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_scenario_poweroff_4_9(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_scenario_restore_4_4(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_scenario_resume_4_16(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_scenario_runtime_resume_4_24(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_scenario_runtime_suspend_4_25(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_scenario_suspend_4_21(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_scenario_thaw_4_10(int (*arg0)(struct device * ) , struct device *arg1 ) ;
int main(void) ;
pthread_t ldv_thread_2 ;
pthread_t ldv_thread_3 ;
pthread_t ldv_thread_4 ;
pthread_t ldv_thread_5 ;
void ldv_dispatch_deregister_8_1(struct platform_driver *arg0 )
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
void ldv_dispatch_insmod_deregister_10_2(void)
{
  int ret ;
  {
  {
  ret = pthread_join(ldv_thread_5, (void **)0);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_dispatch_insmod_register_10_3(void)
{
  int ret ;
  struct ldv_struct_platform_instance_3 *cf_arg_5 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_5 = (struct ldv_struct_platform_instance_3 *)tmp;
  ret = pthread_create(& ldv_thread_5, (pthread_attr_t const *)0, & ldv_insmod_5,
                       (void *)cf_arg_5);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_dispatch_irq_deregister_7_1(int arg0 )
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
void ldv_dispatch_irq_register_9_3(int arg0 , irqreturn_t (*arg1)(int , void * ) ,
                                   irqreturn_t (*arg2)(int , void * ) , void *arg3 )
{
  int ret ;
  struct ldv_struct_interrupt_scenario_2 *cf_arg_2 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(40UL);
  cf_arg_2 = (struct ldv_struct_interrupt_scenario_2 *)tmp;
  cf_arg_2->arg0 = arg0;
  cf_arg_2->arg1 = arg1;
  cf_arg_2->arg2 = arg2;
  cf_arg_2->arg3 = arg3;
  ret = pthread_create(& ldv_thread_2, (pthread_attr_t const *)0, & ldv_interrupt_scenario_2,
                       (void *)cf_arg_2);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_dispatch_pm_deregister_3_5(void)
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
void ldv_dispatch_pm_register_3_6(void)
{
  int ret ;
  struct ldv_struct_platform_instance_3 *cf_arg_4 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_4 = (struct ldv_struct_platform_instance_3 *)tmp;
  ret = pthread_create(& ldv_thread_4, (pthread_attr_t const *)0, & ldv_pm_ops_scenario_4,
                       (void *)cf_arg_4);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
void ldv_dispatch_register_6_3(struct platform_driver *arg0 )
{
  int ret ;
  struct ldv_struct_platform_instance_3 *cf_arg_3 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_3 = (struct ldv_struct_platform_instance_3 *)tmp;
  cf_arg_3->arg0 = arg0;
  ret = pthread_create(& ldv_thread_3, (pthread_attr_t const *)0, & ldv_platform_instance_3,
                       (void *)cf_arg_3);
  __VERIFIER_assume(ret == 0);
  }
  return;
}
}
int ldv_emg___platform_driver_register(struct platform_driver *arg0 , struct module *arg1 )
{
  struct platform_driver *ldv_6_platform_driver_platform_driver ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = external_allocated_data();
  ldv_6_platform_driver_platform_driver = (struct platform_driver *)tmp;
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    ldv_6_platform_driver_platform_driver = arg0;
    ldv_dispatch_register_6_3(ldv_6_platform_driver_platform_driver);
    }
    return (0);
  } else {
    {
    tmp___0 = ldv_undef_int_negative();
    }
    return (tmp___0);
  }
}
}
void ldv_emg_free_irq(int arg0 , void *arg1 )
{
  int ldv_7_line_line ;
  {
  {
  ldv_7_line_line = arg0;
  ldv_dispatch_irq_deregister_7_1(ldv_7_line_line);
  }
  return;
  return;
}
}
void ldv_emg_platform_driver_unregister(struct platform_driver *arg0 )
{
  struct platform_driver *ldv_8_platform_driver_platform_driver ;
  void *tmp ;
  {
  {
  tmp = external_allocated_data();
  ldv_8_platform_driver_platform_driver = (struct platform_driver *)tmp;
  ldv_8_platform_driver_platform_driver = arg0;
  ldv_dispatch_deregister_8_1(ldv_8_platform_driver_platform_driver);
  }
  return;
  return;
}
}
int ldv_emg_request_threaded_irq(unsigned int arg0 , irqreturn_t (*arg1)(int , void * ) ,
                                 irqreturn_t (*arg2)(int , void * ) , unsigned long arg3 ,
                                 char *arg4 , void *arg5 )
{
  irqreturn_t (*ldv_9_callback_handler)(int , void * ) ;
  void *ldv_9_data_data ;
  int ldv_9_line_line ;
  irqreturn_t (*ldv_9_thread_thread)(int , void * ) ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = external_allocated_data();
  ldv_9_callback_handler = (irqreturn_t (*)(int , void * ))tmp;
  ldv_9_data_data = external_allocated_data();
  tmp___0 = external_allocated_data();
  ldv_9_thread_thread = (irqreturn_t (*)(int , void * ))tmp___0;
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    ldv_9_line_line = (int )arg0;
    ldv_9_callback_handler = arg1;
    ldv_9_thread_thread = arg2;
    ldv_9_data_data = arg5;
    ldv_dispatch_irq_register_9_3(ldv_9_line_line, ldv_9_callback_handler, ldv_9_thread_thread,
                                  ldv_9_data_data);
    }
    return (0);
  } else {
    {
    tmp___1 = ldv_undef_int_negative();
    }
    return (tmp___1);
  }
}
}
void *ldv_insmod_5(void *arg0 )
{
  int ldv_5_ret_default ;
  void (*ldv_5_tegra_slink_driver_exit_default)(void) ;
  int (*ldv_5_tegra_slink_driver_init_default)(void) ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = external_allocated_data();
  ldv_5_tegra_slink_driver_exit_default = (void (*)(void))tmp;
  tmp___0 = external_allocated_data();
  ldv_5_tegra_slink_driver_init_default = (int (*)(void))tmp___0;
  ldv_free(arg0);
  ldv_5_ret_default = ldv_insmod_tegra_slink_driver_init_5_6(ldv_5_tegra_slink_driver_init_default);
  ldv_5_ret_default = ldv_post_init(ldv_5_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    __VERIFIER_assume(ldv_5_ret_default != 0);
    }
    return ((void *)0);
  } else {
    {
    __VERIFIER_assume(ldv_5_ret_default == 0);
    ldv_insmod_tegra_slink_driver_exit_5_2(ldv_5_tegra_slink_driver_exit_default);
    }
    return ((void *)0);
  }
  return ((void *)0);
}
}
void ldv_insmod_tegra_slink_driver_exit_5_2(void (*arg0)(void) )
{
  {
  {
  tegra_slink_driver_exit();
  }
  return;
}
}
int ldv_insmod_tegra_slink_driver_init_5_6(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = tegra_slink_driver_init();
  }
  return (tmp);
}
}
void *ldv_interrupt_scenario_2(void *arg0 )
{
  irqreturn_t (*ldv_2_callback_handler)(int , void * ) ;
  void *ldv_2_data_data ;
  int ldv_2_line_line = ldv_undef_int() ;
  enum irqreturn ldv_2_ret_val_default ;
  irqreturn_t (*ldv_2_thread_thread)(int , void * ) ;
  struct ldv_struct_interrupt_scenario_2 *data ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  {
  data = (struct ldv_struct_interrupt_scenario_2 *)arg0;
  tmp = external_allocated_data();
  ldv_2_callback_handler = (irqreturn_t (*)(int , void * ))tmp;
  ldv_2_data_data = external_allocated_data();
  tmp___0 = external_allocated_data();
  ldv_2_thread_thread = (irqreturn_t (*)(int , void * ))tmp___0;
  }
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_interrupt_scenario_2 *)0)) {
    {
    ldv_2_line_line = data->arg0;
    ldv_2_callback_handler = data->arg1;
    ldv_2_thread_thread = data->arg2;
    ldv_2_data_data = data->arg3;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  ldv_switch_to_interrupt_context();
  ldv_2_ret_val_default = ldv_interrupt_scenario_handler_2_5(ldv_2_callback_handler,
                                                             ldv_2_line_line, ldv_2_data_data);
  ldv_switch_to_process_context();
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    __VERIFIER_assume((unsigned int )ldv_2_ret_val_default == 2U);
    ldv_interrupt_scenario_thread_2_3(ldv_2_thread_thread, ldv_2_line_line, ldv_2_data_data);
    }
  } else {
    {
    __VERIFIER_assume((unsigned int )ldv_2_ret_val_default != 2U);
    }
  }
  return ((void *)0);
  return ((void *)0);
}
}
enum irqreturn ldv_interrupt_scenario_handler_2_5(irqreturn_t (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 )
{
  irqreturn_t tmp ;
  {
  {
  tmp = tegra_slink_isr(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_interrupt_scenario_thread_2_3(irqreturn_t (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 )
{
  {
  {
  tegra_slink_isr_thread(arg1, arg2);
  }
  return;
}
}
void *ldv_main_10(void *arg0 )
{
  {
  {
  ldv_initialize();
  ldv_dispatch_insmod_register_10_3();
  ldv_dispatch_insmod_deregister_10_2();
  ldv_check_final_state();
  __VERIFIER_assume(0);
  }
  return ((void *)0);
  return ((void *)0);
}
}
void *ldv_platform_instance_3(void *arg0 )
{
  struct platform_driver *ldv_3_container_platform_driver ;
  int ldv_3_probed_default ;
  struct platform_device *ldv_3_resource_platform_device ;
  struct ldv_struct_platform_instance_3 *data ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  {
  data = (struct ldv_struct_platform_instance_3 *)arg0;
  tmp = external_allocated_data();
  ldv_3_container_platform_driver = (struct platform_driver *)tmp;
  ldv_3_probed_default = ldv_undef_int();
  tmp___0 = external_allocated_data();
  ldv_3_resource_platform_device = (struct platform_device *)tmp___0;
  }
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_platform_instance_3 *)0)) {
    {
    ldv_3_container_platform_driver = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp___1 = ldv_xmalloc(1432UL);
  ldv_3_resource_platform_device = (struct platform_device *)tmp___1;
  }
  goto ldv_main_3;
  return ((void *)0);
  ldv_main_3:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_pre_probe();
    ldv_3_probed_default = ldv_platform_instance_probe_3_14(ldv_3_container_platform_driver->probe,
                                                            ldv_3_resource_platform_device);
    ldv_3_probed_default = ldv_post_probe(ldv_3_probed_default);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      __VERIFIER_assume(ldv_3_probed_default == 0);
      }
      goto ldv_call_3;
    } else {
      {
      __VERIFIER_assume(ldv_3_probed_default != 0);
      }
      goto ldv_main_3;
    }
  } else {
    {
    ldv_free((void *)ldv_3_resource_platform_device);
    }
    return ((void *)0);
  }
  return ((void *)0);
  ldv_call_3:
  {
  tmp___4 = ldv_undef_int();
  }
  {
  if (tmp___4 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___4 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___4 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_call_3;
  case_2:
  {
  ldv_dispatch_pm_register_3_6();
  ldv_dispatch_pm_deregister_3_5();
  }
  goto ldv_call_3;
  case_3:
  {
  ldv_platform_instance_release_3_3(ldv_3_container_platform_driver->remove, ldv_3_resource_platform_device);
  ldv_3_probed_default = 1;
  }
  goto ldv_main_3;
  switch_default:
  {
  __VERIFIER_assume(0);
  }
  switch_break: ;
  }
  return ((void *)0);
}
}
int ldv_platform_instance_probe_3_14(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 )
{
  int tmp ;
  {
  {
  tmp = tegra_slink_probe(arg1);
  }
  return (tmp);
}
}
void ldv_platform_instance_release_3_3(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 )
{
  {
  {
  tegra_slink_remove(arg1);
  }
  return;
}
}
void *ldv_pm_ops_scenario_4(void *arg0 )
{
  struct device *ldv_4_device_device ;
  struct dev_pm_ops *ldv_4_pm_ops_dev_pm_ops ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  {
  tmp = external_allocated_data();
  ldv_4_device_device = (struct device *)tmp;
  tmp___0 = external_allocated_data();
  ldv_4_pm_ops_dev_pm_ops = (struct dev_pm_ops *)tmp___0;
  ldv_free(arg0);
  }
  goto ldv_do_4;
  return ((void *)0);
  ldv_do_4:
  {
  tmp___1 = ldv_undef_int();
  }
  {
  if (tmp___1 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___1 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___1 == 3) {
    goto case_3;
  } else {
  }
  if (tmp___1 == 4) {
    goto case_4;
  } else {
  }
  goto switch_default___0;
  case_1: ;
  goto ldv_do_4;
  case_2:
  {
  ldv_pm_ops_scenario_runtime_suspend_4_25(ldv_4_pm_ops_dev_pm_ops->runtime_suspend,
                                           ldv_4_device_device);
  ldv_pm_ops_scenario_runtime_resume_4_24(ldv_4_pm_ops_dev_pm_ops->runtime_resume,
                                          ldv_4_device_device);
  }
  goto ldv_do_4;
  case_3:
  {
  tmp___2 = ldv_undef_int();
  }
  {
  if (tmp___2 == 1) {
    goto case_1___0;
  } else {
  }
  if (tmp___2 == 2) {
    goto case_2___0;
  } else {
  }
  if (tmp___2 == 3) {
    goto case_3___0;
  } else {
  }
  goto switch_default;
  case_1___0:
  {
  ldv_pm_ops_scenario_suspend_4_21(ldv_4_pm_ops_dev_pm_ops->suspend, ldv_4_device_device);
  tmp___3 = ldv_undef_int();
  ldv_pm_ops_scenario_resume_4_16(ldv_4_pm_ops_dev_pm_ops->resume, ldv_4_device_device);
  }
  goto ldv_28455;
  case_2___0:
  {
  ldv_pm_ops_scenario_freeze_4_15(ldv_4_pm_ops_dev_pm_ops->freeze, ldv_4_device_device);
  tmp___4 = ldv_undef_int();
  ldv_pm_ops_scenario_thaw_4_10(ldv_4_pm_ops_dev_pm_ops->thaw, ldv_4_device_device);
  }
  goto ldv_28455;
  case_3___0:
  {
  ldv_pm_ops_scenario_poweroff_4_9(ldv_4_pm_ops_dev_pm_ops->poweroff, ldv_4_device_device);
  tmp___5 = ldv_undef_int();
  ldv_pm_ops_scenario_restore_4_4(ldv_4_pm_ops_dev_pm_ops->restore, ldv_4_device_device);
  }
  goto ldv_28455;
  switch_default:
  {
  __VERIFIER_assume(0);
  }
  switch_break___0: ;
  }
  ldv_28455: ;
  goto ldv_do_4;
  case_4: ;
  return ((void *)0);
  switch_default___0:
  {
  __VERIFIER_assume(0);
  }
  switch_break: ;
  }
  return ((void *)0);
}
}
void ldv_pm_ops_scenario_freeze_4_15(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  tegra_slink_suspend(arg1);
  }
  return;
}
}
void ldv_pm_ops_scenario_poweroff_4_9(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  tegra_slink_suspend(arg1);
  }
  return;
}
}
void ldv_pm_ops_scenario_restore_4_4(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  tegra_slink_resume(arg1);
  }
  return;
}
}
void ldv_pm_ops_scenario_resume_4_16(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  tegra_slink_resume(arg1);
  }
  return;
}
}
void ldv_pm_ops_scenario_runtime_resume_4_24(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  tegra_slink_runtime_resume(arg1);
  }
  return;
}
}
void ldv_pm_ops_scenario_runtime_suspend_4_25(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  tegra_slink_runtime_suspend(arg1);
  }
  return;
}
}
void ldv_pm_ops_scenario_suspend_4_21(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  tegra_slink_suspend(arg1);
  }
  return;
}
}
void ldv_pm_ops_scenario_thaw_4_10(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  tegra_slink_resume(arg1);
  }
  return;
}
}
int main(void)
{
  {
  {
  ldv_main_10((void *)0);
  }
  return (0);
}
}
__inline static long PTR_ERR(void const *ptr )
{
  long tmp ;
  {
  {
  tmp = ldv_ptr_err(ptr);
  }
  return (tmp);
}
}
__inline static long IS_ERR(void const *ptr )
{
  long tmp ;
  {
  {
  tmp = ldv_is_err(ptr);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_30(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv_dev_set_drvdata_31(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_42(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void ldv___ldv_spin_lock_44(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_tegra_slink_data();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_45(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_spin_unlock_lock_of_tegra_slink_data();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_spin_lock_46(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_tegra_slink_data();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_48(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_lock_of_tegra_slink_data();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static struct spi_master *ldv_spi_alloc_master_51(struct device *host , unsigned int size )
{
  struct spi_master *tmp ;
  {
  {
  tmp = ldv_spi_alloc_master(host, size);
  }
  return (tmp);
}
}
static int ldv_request_threaded_irq_52(unsigned int ldv_func_arg1 , irqreturn_t (*ldv_func_arg2)(int ,
                                                                                                 void * ) ,
                                       irqreturn_t (*ldv_func_arg3)(int , void * ) ,
                                       unsigned long ldv_func_arg4 , char const *ldv_func_arg5 ,
                                       void *ldv_func_arg6 )
{
  int tmp ;
  {
  {
  tmp = ldv_emg_request_threaded_irq(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3,
                                     ldv_func_arg4, (char *)ldv_func_arg5, ldv_func_arg6);
  }
  return (tmp);
}
}
static void ldv_free_irq_53(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  ldv_emg_free_irq((int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static void ldv_free_irq_54(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  ldv_emg_free_irq((int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static void *ldv_dev_get_drvdata_55(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_56(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_57(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_58(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv___platform_driver_register_59(struct platform_driver *ldv_func_arg1 ,
                                             struct module *ldv_func_arg2 )
{
  int tmp ;
  {
  {
  tmp = ldv_emg___platform_driver_register(ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp);
}
}
static void ldv_platform_driver_unregister_60(struct platform_driver *ldv_func_arg1 )
{
  {
  {
  ldv_emg_platform_driver_unregister(ldv_func_arg1);
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
int ldv_filter_err_code(int ret_val ) ;
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
void *ldv_xmalloc_unknown_size(size_t size ) ;
extern void *malloc(size_t ) ;
extern void *calloc(size_t , size_t ) ;
extern void free(void * ) ;
extern void *memset(void * , int , size_t ) ;
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
pthread_mutex_t smutex_lock_of_tegra_slink_data ;
void ldv_spin_lock_lock_of_tegra_slink_data(void)
{
  {
  {
  pthread_mutex_lock(& smutex_lock_of_tegra_slink_data);
  }
  return;
}
}
void ldv_spin_unlock_lock_of_tegra_slink_data(void)
{
  {
  {
  pthread_mutex_unlock(& smutex_lock_of_tegra_slink_data);
  }
  return;
}
}
int ldv_spin_trylock_lock_of_tegra_slink_data(void)
{
  int tmp ;
  {
  {
  tmp = pthread_mutex_trylock(& smutex_lock_of_tegra_slink_data);
  }
  return (tmp);
}
}
void ldv_spin_unlock_wait_lock_of_tegra_slink_data(void)
{
  {
  return;
}
}
int ldv_spin_is_locked_lock_of_tegra_slink_data(void)
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
int ldv_spin_can_lock_lock_of_tegra_slink_data(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock_of_tegra_slink_data();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock_of_tegra_slink_data(void)
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
int ldv_atomic_dec_and_lock_lock_of_tegra_slink_data(void)
{
  int atomic_value_after_dec ;
  {
  {
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    {
    ldv_spin_lock_lock_of_tegra_slink_data();
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
void debug_dma_sync_single_for_device(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3){
  return;
}
void debug_dma_alloc_coherent(struct device *arg0, size_t arg1, dma_addr_t arg2, void *arg3){
  return;
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2){
  return;
}
void __const_udelay(unsigned long arg0){
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1){
  return;
}
int __VERIFIER_nondet_int(void);
int reset_control_assert(struct reset_control *arg0){
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int platform_get_irq(struct platform_device *arg0, unsigned int arg1){
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int devm_spi_register_master(struct device *arg0, struct spi_master *arg1){
  return __VERIFIER_nondet_int();
}
void ldv_after_alloc(void *arg0){
  return;
}
void debug_dma_sync_single_for_cpu(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3){
  return;
}
int __VERIFIER_nondet_int(void);
int clk_enable(struct clk *arg0){
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
long int wait_for_completion_interruptible_timeout(struct completion *arg0, unsigned long arg1){
  return __VERIFIER_nondet_long();
}
void *external_alloc(void);
struct dma_chan *dma_request_slave_channel_reason(struct device *arg0, const char *arg1){
  return (struct dma_chan *)external_alloc();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int wait_for_completion_timeout(struct completion *arg0, unsigned long arg1){
  return __VERIFIER_nondet_ulong();
}
void ldv_switch_to_interrupt_context(){
  return;
}
void __pm_runtime_disable(struct device *arg0, bool arg1){
  return;
}
int __VERIFIER_nondet_int(void);
int reset_control_deassert(struct reset_control *arg0){
  return __VERIFIER_nondet_int();
}
void ldv_check_alloc_flags(gfp_t arg0){
  return;
}
void *external_alloc(void);
struct resource *platform_get_resource(struct platform_device *arg0, unsigned int arg1, unsigned int arg2){
  return (struct resource *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int clk_set_rate(struct clk *arg0, unsigned long arg1){
  return __VERIFIER_nondet_int();
}
void sg_init_table(struct scatterlist *arg0, unsigned int arg1){
  return;
}
int __VERIFIER_nondet_int(void);
int __pm_runtime_resume(struct device *arg0, int arg1){
  return __VERIFIER_nondet_int();
}
void __ldv_spin_lock(spinlock_t *arg0){
  return;
}
void ldv_switch_to_process_context(){
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1){
  return;
}
void ldv_pre_probe(){
  return;
}
void put_device(struct device *arg0){
  return;
}
void *external_alloc(void);
struct reset_control *devm_reset_control_get(struct device *arg0, const char *arg1){
  return (struct reset_control *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...){
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msecs_to_jiffies(const unsigned int arg0){
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...){
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int spi_master_resume(struct spi_master *arg0){
  return __VERIFIER_nondet_int();
}
void pm_runtime_enable(struct device *arg0){
  return;
}
void *external_alloc(void);
void *external_allocated_data(){
  return (void *)external_alloc();
}
void *external_alloc(void);
void *devm_ioremap_resource(struct device *arg0, struct resource *arg1){
  return (void *)external_alloc();
}
void *external_alloc(void);
struct clk *devm_clk_get(struct device *arg0, const char *arg1){
  return (struct clk *)external_alloc();
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2){
  return;
}
int __VERIFIER_nondet_int(void);
int __pm_runtime_idle(struct device *arg0, int arg1){
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int spi_master_suspend(struct spi_master *arg0){
  return __VERIFIER_nondet_int();
}
void debug_dma_free_coherent(struct device *arg0, size_t arg1, void *arg2, dma_addr_t arg3){
  return;
}
void clk_unprepare(struct clk *arg0){
  return;
}
void *external_alloc(void);
void *memcpy(void *arg0, const void *arg1, size_t arg2){
  return (void *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int clk_prepare(struct clk *arg0){
  return __VERIFIER_nondet_int();
}
void dma_release_channel(struct dma_chan *arg0){
  return;
}
void complete(struct completion *arg0){
  return;
}
void clk_disable(struct clk *arg0){
  return;
}
