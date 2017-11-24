<!-- <Snippet1> -->
<%@ Register TagPrefix="aspSample" Namespace="Samples.AspNet.CS" Assembly="Samples.AspNet.CS" %>
<%@ Import namespace="Samples.AspNet.CS" %>
<%@ Page language="c#" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
private void NorthwindEmployeeDeleting(object source, ObjectDataSourceMethodEventArgs e)
{
  // The GridView passes the ID of the employee
  // to be deleted. However, the buisiness object, EmployeeLogic,
  // requires a NorthwindEmployee parameter, named "ne". Create
  // it now and add it to the parameters collection.
  IDictionary paramsFromPage = e.InputParameters;
  if (paramsFromPage["EmpID"] != null) {
    NorthwindEmployee ne
      = new NorthwindEmployee( Int32.Parse(paramsFromPage["EmpID"].ToString()));
    // Remove the old EmpID parameter.
    paramsFromPage.Clear();
    paramsFromPage.Add("ne", ne);
  }
}

private void NorthwindEmployeeDeleted(object source, ObjectDataSourceStatusEventArgs e)
{
  // Handle the Exception if it is a NorthwindDataException
  if (e.Exception != null)
  {

    // Handle the specific exception type. The ObjectDataSource wraps
    // any Exceptions in a TargetInvokationException wrapper, so
    // check the InnerException property for expected Exception types.
    if (e.Exception.InnerException is NorthwindDataException)
    {
      Label1.Text = e.Exception.InnerException.Message;
      // Because the exception is handled, there is
      // no reason to throw it.
      e.ExceptionHandled = true;
    }
  }
}

</script>
<html xmlns="http://www.w3.org/1999/xhtml" >
  <head>
    <title>ObjectDataSource - C# Example</title>
  </head>
  <body>
    <form id="Form1" method="post" runat="server">

        <asp:gridview
          id="GridView1"
          runat="server"
          datasourceid="ObjectDataSource1"
          autogeneratedeletebutton="true"
          autogeneratecolumns="false"
          datakeynames="EmpID">
          <columns>
            <asp:boundfield headertext="EmpID" datafield="EmpID" />
            <asp:boundfield headertext="First Name" datafield="FirstName" />
            <asp:boundfield headertext="Last Name" datafield="LastName" />
          </columns>
        </asp:gridview>

        <asp:objectdatasource
          id="ObjectDataSource1"
          runat="server"
          selectmethod="GetAllEmployees"
          deletemethod="DeleteEmployee"
          ondeleting="NorthwindEmployeeDeleting"
          ondeleted="NorthwindEmployeeDeleted"
          typename="Samples.AspNet.CS.EmployeeLogic">
          <deleteparameters>
            <asp:parameter name="EmpID" type="Int32" />
          </deleteparameters>
        </asp:objectdatasource>

        <asp:label id="Label1" runat="server" />

    </form>
  </body>
</html>
<!-- </Snippet1> -->