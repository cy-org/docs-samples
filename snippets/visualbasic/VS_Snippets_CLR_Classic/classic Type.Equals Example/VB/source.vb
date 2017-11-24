 ' <Snippet1>
Imports System
Imports System.Reflection

Class Example
    
    Public Shared Sub Main() 
        
        Dim a As Type = GetType(System.Object)
        Dim b As Type = GetType(System.Object)
        Console.WriteLine("{0} = {1}: {2}", a, b, a.Equals(b))
        ' The Type objects in a and b are equal,
        ' because they represent System.Object.

        a = GetType(Example)
        b = New Example().GetType()
        Console.WriteLine("{0} is equal to {1}: {2}", a, b, a.Equals(b))
        ' The Type objects in a and b are equal,
        ' because they both represent type Example.

        b = GetType([Object])
        Console.WriteLine("typeof({0}).Equals(typeof({1})): {2}", a, b, a.Equals(b))

        ' The Type objects in a and b are not equal,
        ' because variable a represents type Example
        ' and variable b represents type Object.

        'Console.ReadLine();
    
    End Sub 
End Class
'
' This code example produces the following output:
'    System.Object = System.Object: True
'    Example is equal to Example: True
'    typeof(Example).Equals(typeof(System.Type)): False
'
' </Snippet1>


