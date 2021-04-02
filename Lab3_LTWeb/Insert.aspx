<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Insert.aspx.cs" Inherits="Lab3_LTWeb.Insert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            font-weight: bold;
            font-size: x-large;
            color: #FF0000;
        }
        .auto-style3 {
            width: 200px;
        }
        .auto-style4 {
            width: 200px;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2">Employee Management System</td>
                </tr>
                <tr>
                    <td class="auto-style3">Employee ID : </td>
                    <td>
                        <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Employee Name : </td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Employee Address : </td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Phone Number : </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Designation : </td>
                    <td>
                        <asp:DropDownList ID="ddlDesignation" runat="server" Width="125px" DataSourceID="SqlDataSource2" DataTextField="PositionName" DataValueField="EmpPosition">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Lab3DBConnectionString3 %>" SelectCommand="SELECT * FROM [Designation]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    <div>

        <asp:GridView ID="gvEmployee" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="EmpID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="EmpID" HeaderText="EmpID" ReadOnly="True" SortExpression="EmpID" />
                <asp:BoundField DataField="EmpName" HeaderText="EmpName" SortExpression="EmpName" />
                <asp:BoundField DataField="EmpAddress" HeaderText="EmpAddress" SortExpression="EmpAddress" />
                <asp:BoundField DataField="EmpPhone" HeaderText="EmpPhone" SortExpression="EmpPhone" />
                <asp:BoundField DataField="EmpPosition" HeaderText="EmpPosition" SortExpression="EmpPosition" />
                <asp:TemplateField HeaderText="Details">
                    <ItemTemplate>
                        <asp:LinkButton ID="lbtnDetails" runat="server" OnClick="lbtnDetails_Click">Details</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Lab3DBConnectionString2 %>" DeleteCommand="DELETE FROM [Employee] WHERE [EmpID] = @EmpID" InsertCommand="INSERT INTO [Employee] ([EmpID], [EmpName], [EmpAddress], [EmpPhone], [EmpPosition]) VALUES (@EmpID, @EmpName, @EmpAddress, @EmpPhone, @EmpPosition)" SelectCommand="SELECT * FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [EmpName] = @EmpName, [EmpAddress] = @EmpAddress, [EmpPhone] = @EmpPhone, [EmpPosition] = @EmpPosition WHERE [EmpID] = @EmpID">
            <DeleteParameters>
                <asp:Parameter Name="EmpID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EmpID" Type="String" />
                <asp:Parameter Name="EmpName" Type="String" />
                <asp:Parameter Name="EmpAddress" Type="String" />
                <asp:Parameter Name="EmpPhone" Type="String" />
                <asp:Parameter Name="EmpPosition" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="EmpName" Type="String" />
                <asp:Parameter Name="EmpAddress" Type="String" />
                <asp:Parameter Name="EmpPhone" Type="String" />
                <asp:Parameter Name="EmpPosition" Type="String" />
                <asp:Parameter Name="EmpID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
    </form>
    </body>
</html>
