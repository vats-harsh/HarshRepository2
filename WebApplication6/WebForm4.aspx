<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebApplication6.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    <asp:DataList ID="DataList1" runat="server" BackColor="Gray" BorderColor="#666666"
            BorderStyle="None" BorderWidth="2px" CellPadding="3" CellSpacing="2"
            Font-Names="Verdana" Font-Size="Small" GridLines="Both" RepeatColumns="3" RepeatDirection="Horizontal"
            Width="429px" Height="155px">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" Font-Size="Large" ForeColor="White"
                HorizontalAlign="Center" VerticalAlign="Middle" />
            <HeaderTemplate>
                Department Details</HeaderTemplate>
            <ItemStyle BackColor="White" ForeColor="Black" BorderWidth="2px" />
            <ItemTemplate>
                <b>Deptno:</b>
                <asp:Label ID="lbldno" runat="server" Text='<%# Eval("deptno") %>'></asp:Label>
                <br />
                <b>Dname:</b>
                <asp:Label ID="lbldName" runat="server" Text='<%# Eval("dname") %>'></asp:Label>
                <br />
               <b> City:</b>
                <asp:Label ID="lblloc" runat="server" Text=' <%# Eval("loc") %>'></asp:Label>
                <br />
               
            </ItemTemplate>
        </asp:DataList>
            <br />
            <br />
            
    </div>



    </form>
</body>
</html>
