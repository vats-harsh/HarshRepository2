<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="WebApplication6.WebForm5" %>

 <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="lightseagreen">
    <form id="form1" runat="server">
        <br />
            <asp:Label ID="Label5" runat="server" Font-Size="Large" ForeColor="#993300" Text="List VIEW"></asp:Label>
            <br />
        <br />
        <asp:ListView ID="ListView1" runat="server" >
		<ItemTemplate> <table width="30%" border="1" style="border: 1px solid black"> <tr> <th>Dept Id</th> <td><%# Eval("deptno") %></td> </tr> <tr> 
		<th>DName</th> <td><%# Eval("dname") %></td> </tr> <tr> <th>LOC</th> <td><%# Eval("loc") %></td> </table> </ItemTemplate> 
		 <EmptyDataTemplate> <p style="border: 1px solid red; color: red">No Employee Details Are Available!!!</p> </EmptyDataTemplate> 
            </asp:ListView>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
            <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="#993300" Text="FORM VIEW"></asp:Label>
            <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:FormView ID="FormView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderWidth="1px" AllowPaging="True" OnPageIndexChanging="FormView1_PageIndexChanging" Height="264px" Width="283px" BorderStyle="None" CellPadding="3" CellSpacing="2" GridLines="Both">
        <HeaderTemplate> <table width="100%" style="border: 1px solid black"> <tr> <th colspan="2">Employee Details </th> </tr> </table> </HeaderTemplate>
		<ItemTemplate> <table width="100%" border="1" style="border: 1px solid black"> <tr> <th>Emp Id</th> <td><%# Eval("empno") %></td> </tr> <tr> 
		<th>Emp Name</th> <td><%# Eval("ename") %></td> </tr> <tr> <th>Emp Job</th> <td><%# Eval("job") %></td> </tr> <tr> <th>Emp Salary</th> <td>
		<%# Eval("sal","{0:C}") %></td> </tr> <tr> <th>Dept No</th> <td> <%# Eval("deptno") %> </td> </tr> </table> </ItemTemplate> 
		<FooterTemplate> <table width="100%" style="border: 1px solid black"> <tr> <th colspan="2">End of Emp Details </th> </tr> </table> </FooterTemplate>
		    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
		 <EmptyDataTemplate> <p style="border: 1px solid red; color: red">No Employee Details Are Available!!!</p> </EmptyDataTemplate> 
		<HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" /> 
		<FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" /> 
		    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
		<RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />


            </asp:FormView>
        <br />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Size="Large" ForeColor="#993300" Text="DetailsView"></asp:Label>
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" Height="69px" Width="283px" AllowPaging="True" OnPageIndexChanging="DetailsView1_PageIndexChanging" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <Fields>  
                           <asp:CommandField ShowEditButton="true" ShowDeleteButton="true" ShowInsertButton="true" /> </Fields>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />

        </asp:DetailsView>
        <br />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Font-Size="Large" ForeColor="#993300" Text="Grid VIEW"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" BackColor="#DEBA84" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="2" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
    </form>
</body>
</html>
