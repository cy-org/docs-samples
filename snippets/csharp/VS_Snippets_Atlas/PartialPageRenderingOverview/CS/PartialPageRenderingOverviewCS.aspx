<!-- <Snippet2> -->
<%@ Page Language="C#" %>

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
      <asp:UpdatePanel ID="UpdatePanel1" runat="server">
      <ContentTemplate>
        <fieldset>
        <legend>UpdatePanel</legend>
        Content to update incrementally without a full
        page refresh. 
        <br />
        Last update:  <%=DateTime.Now.ToString() %>
        <br />
        <asp:Calendar ID="Calendar" runat="server"/>
        </fieldset>
      </ContentTemplate>
      </asp:UpdatePanel>
      <!-- <Snippet3> -->
      <script type="text/javascript" language="javascript">
      var prm = Sys.WebForms.PageRequestManager.getInstance();
      prm.add_pageLoaded(PageLoadedEventHandler);
      function PageLoadedEventHandler() {
         // custom script
      }
      </script>
      <!-- </Snippet3> -->
    </div>
    </form>
</body>
</html>
<!-- </Snippet2> -->
