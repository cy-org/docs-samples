<!-- <Snippet1> -->

<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    ' <Snippet3>
    Protected Sub Category1Button_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        SqlDataSource1.SelectParameters(0).DefaultValue = "1"
    End Sub

    Protected Sub Category2Button_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        SqlDataSource1.SelectParameters(0).DefaultValue = "2"
    End Sub
    ' </Snippet3>
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Products Display</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="False" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:Button ID="Category1Button" runat="server" Text="Category 1" OnClick="Category1Button_Click" />
                    <asp:Button ID="Category2Button" runat="server" OnClick="Category2Button_Click" Text="Category 2" />
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="ProductID" DataSourceID="SqlDataSource1"
                        Width="231px">
                        <ItemTemplate>
                            ProductName:
                            <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>'>
                            </asp:Label><br />
                            ProductID:
                            <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label><br />
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                    <!-- <Snippet2> -->
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
                        SelectCommand="SELECT [ProductName], [ProductID] FROM [Alphabetical list of products] WHERE ([CategoryID] = @CategoryID)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="1" Name="CategoryID" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <!-- </Snippet2> -->
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Category1Button" />
                    <asp:AsyncPostBackTrigger ControlID="Category2Button" />
                </Triggers>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
<!-- </Snippet1> -->
