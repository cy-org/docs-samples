<%@ Page Language="VB"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<head runat="server">
  <title>How to: Set Web Server Control Unit Properties</title>
</head>

<script runat="server">
    
    Public Sub Page_Load()
        
        '<Snippet3>
        ' Default is pixels.
        TextBox1.Width = New Unit(100)
        TextBox1.Width = New Unit(100, UnitType.Pixel)
        TextBox1.Width = New Unit("100px")
        ' Centimeters.
        TextBox1.Width = New Unit("2cm")
        TextBox1.Width = New Unit(10, UnitType.Percentage)
        TextBox1.Width = New Unit("10%")
        '</Snippet3>
        
    End Sub
    
</script>

<body>
    <form id="form1" runat="server">
      <asp:TextBox id="TextBox1" runat="server" ></asp:TextBox>
    </form>
</body>
</html>
