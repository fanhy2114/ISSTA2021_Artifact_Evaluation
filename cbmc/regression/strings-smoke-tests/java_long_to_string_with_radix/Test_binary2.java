public class Test_binary2
{
    public static void main(Boolean b)
    {
        String s = Long.toString(Long.MAX_VALUE, 2);
        if (b) {
            assert(s.equals("111111111111111111111111111111111111111111111111111111111111111"));
        }
        else {
            assert(!s.equals("111111111111111111111111111111111111111111111111111111111111111"));
        }
    }
}
