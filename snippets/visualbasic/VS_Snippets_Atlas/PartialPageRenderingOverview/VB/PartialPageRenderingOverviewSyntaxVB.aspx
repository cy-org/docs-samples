<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Partial-Page Rendering Server-Side Syntax</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <asp:ScriptManager ID="ScriptManager1" runat="server" />
      <!-- <Snippet1> -->
      <asp:UpdatePanel ID="UpdatePanel1" runat="server">
          <ContentTemplate>
              <!-- Place updatable markup and controls here. -->
          </ContentTemplate>
      </asp:UpdatePanel>
      <!-- </Snippet1> -->
    </div>
    </form>
</body>
</html>
