//<Snippet2>
// Example of the TimeSpan Addition and Subtraction operators.
using System;

class TimeSpanAddSubOpsDemo
{
    const string dataFmt = "{0,-18}{1,24}" ;

    // Pad the end of a TimeSpan string with spaces if it does not 
    // contain milliseconds.
    static string Align( TimeSpan interval )
    {
        string  intervalStr = interval.ToString( );
        int     pointIndex = intervalStr.IndexOf( ':' );

        pointIndex = intervalStr.IndexOf( '.', pointIndex );
        if( pointIndex < 0 ) intervalStr += "        ";
        return intervalStr;
    } 

    // Display TimeSpan parameters and their sum and difference.
    static void ShowTimeSpanSumDiff( TimeSpan Left, TimeSpan Right )
    {
        Console.WriteLine( );
        Console.WriteLine( dataFmt, "TimeSpan Left", Align( Left ) );
        Console.WriteLine( dataFmt, "TimeSpan Right", Align( Right ) );
        Console.WriteLine( dataFmt, "Left + Right", 
            Align( Left + Right ) );
        Console.WriteLine( dataFmt, "Left - Right", 
            Align( Left - Right ) );
    }

    static void Main( )
    {
        Console.WriteLine( "This example of the TimeSpan " +
            "Addition and Subtraction \noperators generates the " +
            "following output by creating \nseveral pairs of " +
            "TimeSpan objects and calculating and \ndisplaying " +
            "the sum and difference of each." );


        // Create pairs of TimeSpan objects.
        ShowTimeSpanSumDiff( 
            new TimeSpan( 1, 20, 0 ), 
            new TimeSpan( 0, 45, 10 ) );
        ShowTimeSpanSumDiff( 
            new TimeSpan( 1, 10, 20, 30, 40 ), 
            new TimeSpan( -1, 2, 3, 4, 5 ) );
        ShowTimeSpanSumDiff( 
            new TimeSpan( 182, 12, 30, 30, 505 ), 
            new TimeSpan( 182, 11, 29, 29, 495 ) );
        ShowTimeSpanSumDiff( 
            new TimeSpan( 888888888888888 ), 
            new TimeSpan( 999999999999999 ) );
    } 
} 

/*
This example of the TimeSpan Addition and Subtraction
operators generates the following output by creating
several pairs of TimeSpan objects and calculating and
displaying the sum and difference of each.

TimeSpan Left             01:20:00
TimeSpan Right            00:45:10
Left + Right              02:05:10
Left - Right              00:34:50

TimeSpan Left           1.10:20:30.0400000
TimeSpan Right           -21:56:55.9950000
Left + Right              12:23:34.0450000
Left - Right            2.08:17:26.0350000

TimeSpan Left         182.12:30:30.5050000
TimeSpan Right        182.11:29:29.4950000
Left + Right          365.00:00:00
Left - Right              01:01:01.0100000

TimeSpan Left        1028.19:21:28.8888888
TimeSpan Right       1157.09:46:39.9999999
Left + Right         2186.05:08:08.8888887
Left - Right         -128.14:25:11.1111111
*/ 
//</Snippet2>
