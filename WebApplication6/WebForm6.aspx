<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="WebApplication6.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="#993300" Text="FORM VIEW"></asp:Label>
            <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:FormView ID="FormView1" runat="server" BackColor="#99CCFF" BorderColor="#333333" BorderWidth="2px" ForeColor="Black" AllowPaging="True" OnPageIndexChanging="FormView1_PageIndexChanging" Height="264px" Width="283px">
        <HeaderTemplate> <table width="100%" style="border: 1px solid black"> <tr> <th colspan="2">Employee Details </th> </tr> </table> </HeaderTemplate>
		<ItemTemplate> <table width="100%" border="1" style="border: 1px solid black"> <tr> <th>Emp Id</th> <td><%# Eval("empno") %></td> </tr> <tr> 
		<th>Emp Name</th> <td><%# Eval("ename") %></td> </tr> <tr> <th>Emp Job</th> <td><%# Eval("job") %></td> </tr> <tr> <th>Emp Salary</th> <td>
		<%# Eval("sal","{0:C}") %></td> </tr> <tr> <th>Dept No</th> <td> <%# Eval("deptno") %> </td> </tr> </table> </ItemTemplate> 
		<FooterTemplate> <table width="100%" style="border: 1px solid black"> <tr> <th colspan="2">End of Emp Details </th> </tr> </table> </FooterTemplate>
		 <EmptyDataTemplate> <p style="border: 1px solid red; color: red">No Employee Details Are Available!!!</p> </EmptyDataTemplate> 
		<HeaderStyle BackColor="LightBlue" /> 
		<FooterStyle BackColor="LightBlue" /> 
		<RowStyle BackColor="Azure" />


            </asp:FormView>
        </div>
    </form>
</body>
</html>
