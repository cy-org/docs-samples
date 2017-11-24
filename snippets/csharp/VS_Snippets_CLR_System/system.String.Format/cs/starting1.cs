using System;
using System.Text;

public class Example
{
   public static void Main()
   {
      // <Snippet30>
      decimal temp = 20.4m;
      string s = String.Format("The temperature is {0}°C.", temp);
      Console.WriteLine(s);
      // Displays 'The temperature is 20.4°C.'
      // </Snippet30>
      
      Snippet31();
      Snippet32();
      Snippet33();
      Snippet34();
   }

   private static void Snippet31()
   {
      // <Snippet31>
      string s = String.Format("At {0}, the temperature is {1}°C.",
                               DateTime.Now, 20.4);
      // Output similar to: 'At 4/10/2015 9:29:41 AM, the temperature is 20.4°C.'
      // </Snippet31>
      Console.WriteLine(s);
   }
      
   private static void Snippet32()
   {
      // <Snippet32>
      string s = String.Format("It is now {0:d} at {0:t}", DateTime.Now);
      // Output similar to: 'It is now 4/10/2015 at 10:04 AM'
      // </Snippet32>
      Console.WriteLine(s);
   }

   private static void Snippet33()
   {
       // <Snippet33>
       int[] years = { 2013, 2014, 2015 };
       int[] population = { 1025632, 1105967, 1148203 };
       StringBuilder myStringBuilder = new StringBuilder();
       myStringBuilder.Append(String.Format("{0,6} {1,15}\n\n", "Year", "Population"));
       for (int index = 0; index < years.Length; index++)
          myStringBuilder.Append(String.Format("{0,6} {1,15:N0}\n", years[index], population[index]));
       // Result:
       //      Year      Population
       //
       //      2013       1,025,632
       //      2014       1,105,967
       //      2015       1,148,203
       // </Snippet33>
       Console.WriteLine(myStringBuilder);
   }

   private static void Snippet34()
   {
       // <Snippet34>
       int[] years = { 2013, 2014, 2015 };
       int[] population = { 1025632, 1105967, 1148203 };
       String s = String.Format("{0,-10} {1,-10}\n\n", "Year", "Population");
       for(int index = 0; index < years.Length; index++)
          s += String.Format("{0,-10} {1,-10:N0}\n",
                             years[index], population[index]);
       // Result:
       //    Year       Population
       //
       //    2013       1,025,632
       //    2014       1,105,967
       //    2015       1,148,203
       // </Snippet34>
       Console.WriteLine("\n{0}", s);
   }
}
