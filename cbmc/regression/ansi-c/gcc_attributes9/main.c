#ifdef __GNUC__

int foo();
char foo __attribute__((section("other")));
long more_foo __attribute__((section("other2"))) asm("foo");

const char* __attribute__((section("s"))) bar1();
const char* __attribute__((section("s"),weak)) bar2();
const char* __attribute__((section("s"))) __attribute__((weak)) bar();

volatile int __attribute__((__section__(".init.data1"))) txt_heap_base1;
volatile int __attribute__((__section__(".init.data3"))) txt_heap_base, __attribute__((__section__(".init.data4"))) txt_heap_size;

#endif

int main()
{
#ifdef __GNUC__
  static int __attribute__((section(".data.unlikely"))) __warned;
  __warned=1;
  return __warned;
#endif
}
