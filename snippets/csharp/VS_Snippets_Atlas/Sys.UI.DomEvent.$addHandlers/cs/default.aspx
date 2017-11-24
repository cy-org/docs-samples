<!-- <Snippet1> -->
<%@ Page Language="C#" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
    <title>$addHandlers Example</title>
</head>
<body>
    <h1>$addHandlers Example</h1>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"/>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="False" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:Panel ID="Panel1" runat="server" GroupingText="Update Panel">
                   <asp:Label ID="Label1" runat="server" Text="Move cursor over button and click to see event types."></asp:Label>
		           <br />
                   <asp:Button ID="Button1" runat="server" Text="Button" AccessKey="b"  />
		           <br />
                   <asp:Label ID="Label2" runat="server"></asp:Label>
                </asp:Panel>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>

<script type="text/javascript">
    $addHandlers($get("Button1"), {click:processEventInfo,mouseover:processEventInfo,mouseout:processEventInfo});

    // Event handler displays types for multiple events
    function processEventInfo(eventElement) {
        var result = '';
        result += eventElement.type;
        $get('Label2').innerHTML = result;
    }
 </script>
<!-- </Snippet1> -->