class A
{
    static String s1 = "abc";
    public static void Main(String[] args)
    {
        String s2 = "abc";
        string s3 = new string(s1.ToCharArray());
        System.Console.WriteLine(s1 == s2); // 1 строка
        System.Console.WriteLine(s1.Equals(s2)); //2 строка
        System.Console.WriteLine(s3 == s1); //3 строка
        System.Console.WriteLine(s3.Equals(s1)); //4 строка
        Console.WriteLine((object)(new String("11".ToCharArray())) == (object)(new String("11".ToCharArray()))); // 5 строка
    }
}