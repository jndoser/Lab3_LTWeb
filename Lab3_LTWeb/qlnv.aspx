<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="qlnv.aspx.cs" Inherits="Lab3_LTWeb.qlnv" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: x-large;
            color: #0000FF;
            text-transform: uppercase;
            font-weight: bold;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Danh sách nhân viên</td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MaNhanVien" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="MaNhanVien" HeaderText="MaNhanVien" InsertVisible="False" ReadOnly="True" SortExpression="MaNhanVien" />
                                <asp:BoundField DataField="TenNhanVien" HeaderText="TenNhanVien" SortExpression="TenNhanVien" />
                                <asp:BoundField DataField="NgaySinh" HeaderText="NgaySinh" SortExpression="NgaySinh" />
                                <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
                                <asp:BoundField DataField="DienThoai" HeaderText="DienThoai" SortExpression="DienThoai" />
                                <asp:CheckBoxField DataField="GioiTinh" HeaderText="GioiTinh" SortExpression="GioiTinh" />
                                <asp:BoundField DataField="MaPhong" HeaderText="MaPhong" SortExpression="MaPhong" />
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Lab3DBConnectionString3 %>" DeleteCommand="DELETE FROM [qlnv] WHERE [MaNhanVien] = @MaNhanVien" InsertCommand="INSERT INTO [qlnv] ([TenNhanVien], [NgaySinh], [DiaChi], [DienThoai], [GioiTinh], [MaPhong]) VALUES (@TenNhanVien, @NgaySinh, @DiaChi, @DienThoai, @GioiTinh, @MaPhong)" SelectCommand="SELECT * FROM [qlnv]" UpdateCommand="UPDATE [qlnv] SET [TenNhanVien] = @TenNhanVien, [NgaySinh] = @NgaySinh, [DiaChi] = @DiaChi, [DienThoai] = @DienThoai, [GioiTinh] = @GioiTinh, [MaPhong] = @MaPhong WHERE [MaNhanVien] = @MaNhanVien">
                            <DeleteParameters>
                                <asp:Parameter Name="MaNhanVien" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="TenNhanVien" Type="String" />
                                <asp:Parameter Name="NgaySinh" Type="DateTime" />
                                <asp:Parameter Name="DiaChi" Type="String" />
                                <asp:Parameter Name="DienThoai" Type="Int32" />
                                <asp:Parameter Name="GioiTinh" Type="Boolean" />
                                <asp:Parameter Name="MaPhong" Type="Int32" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="TenNhanVien" Type="String" />
                                <asp:Parameter Name="NgaySinh" Type="DateTime" />
                                <asp:Parameter Name="DiaChi" Type="String" />
                                <asp:Parameter Name="DienThoai" Type="Int32" />
                                <asp:Parameter Name="GioiTinh" Type="Boolean" />
                                <asp:Parameter Name="MaPhong" Type="Int32" />
                                <asp:Parameter Name="MaNhanVien" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
