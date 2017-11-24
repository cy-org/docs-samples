using System;

public class Example
{
   public static void Main()
   {
      string value = "1640";

      if (Int32.TryParse(value, out int number))
         Console.WriteLine($"Converted '{value}' to {number}");
      else
         Console.WriteLine($"Unable to convert '{value}'");   
   }
}
// The example displays the following output:
//       Converted '1640' to 1640


