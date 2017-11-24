namespace ClassesAndObjects
{
    using System;
    class OutExample
    {
        static void Divide(int x, int y, out int result, out int remainder) 
        {
            result = x / y;
            remainder = x % y;
        }
        public static void OutUsage() 
        {
            Divide(10, 3, out int res, out int rem);
            Console.WriteLine("{0} {1}", res, rem);	// Outputs "3 1"
        }
    }
}
