﻿<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
<%--<Snippet71>--%>
<asp:Label ID="Label1" AssociatedControlID="txtFirstName" 
    TabIndex="1"
    AccessKey="f" runat="server">
    <u>F</u>irst Name
</asp:Label>
<asp:TextBox ID="txtFirstName" runat="server" />
<br />
<asp:Label ID="Label2" AssociatedControlID="txtLastName" 
    TabIndex="2"
    AccessKey="l" runat="server">
    <u>L</u>ast Name
</asp:Label>
<asp:TextBox ID="txtLastName" runat="server" />
<%--</Snippet71>--%>
    </div>
    </form>
</body>
</html>
