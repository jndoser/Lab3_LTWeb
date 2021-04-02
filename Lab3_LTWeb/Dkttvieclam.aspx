<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dkttvieclam.aspx.cs" Inherits="Lab3_LTWeb.Dkttvieclam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            color: #008000;
            font-weight: bold;
            text-align: center;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            text-align: right;
            width: 311px;
            color:green;
        }
        .auto-style5 {
            height: 23px;
            text-align: right;
            width: 311px;
            color:green;
        }
        .auto-style6 {
            width: 311px;
        }
    </style>
</head>
<body>
     <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2">ĐĂNG KÝ THÔNG TIN VIỆC LÀM</td>
                </tr>
                <tr style="background-color:green; color:white">
                    <td colspan="2">Thông tin cá nhân</td>
                </tr>
                <tr>
                    <td class="auto-style4"><span style="color:red">*</span>Họ &amp; tên : </td>
                    <td>
                        <asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"><span style="color:red">*</span>Ngày tháng năm sinh : </td>
                    <td>
                        <asp:TextBox ID="txtNamSinh" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Giới tính:</td>
                    <td>
                        <asp:DropDownList ID="ddlGioiTinh" runat="server">
                            <asp:ListItem Value="1">Nam</asp:ListItem>
                            <asp:ListItem Value="0">Nữ</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Tình trạng hôn nhân:</td>
                    <td>
                        <asp:DropDownList ID="ddlHonNhan" runat="server">
                            <asp:ListItem>Đã kết hôn</asp:ListItem>
                            <asp:ListItem>Độc thân</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr style="background-color:green; color:white">
                    <td colspan="2">Thông tin liên lạc</td>
                </tr>
                <tr>
                    <td class="auto-style4"><span style="color:red">*</span>Địa chỉ : </td>
                    <td>
                        <asp:TextBox ID="txtDiaChi" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"><span style="color:red">*</span>Tỉnh/Thành phố :</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtTinhTP" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Số điện thoại : </td>
                    <td>
                        <asp:TextBox ID="txtDienThoai" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Số điện thoại di động : </td>
                    <td>
                        <asp:TextBox ID="txtDiDong" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"><span style="color:red">*</span>Email : </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr style="background-color:green; color:white">
                    <td colspan="2">Trình độ học vấn</td>
                </tr>
                <tr>
                    <td class="auto-style4"><span style="color:red">*</span>Trình độ học vấn : </td>
                    <td>
                        <asp:DropDownList ID="ddlTrinhDoHocVan" runat="server">
                            <asp:ListItem>THCS</asp:ListItem>
                            <asp:ListItem>THPT</asp:ListItem>
                            <asp:ListItem>Đại học, Cao đẳng</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"><span style="color:red">*</span>Thông tin về học vấn: </td>
                    <td>
                        <asp:TextBox ID="txtTTHocVan" runat="server" Height="48px" Width="195px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Ngoại ngữ : </td>
                    <td>
                        <asp:TextBox ID="txtNgoaiNgu" runat="server" Height="39px" Width="199px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Kỹ năng : </td>
                    <td>
                        <asp:TextBox ID="txtKyNang" runat="server" Height="33px" Width="196px"></asp:TextBox>
                    </td>
                </tr>
                <tr style="background-color:green; color:white">
                    <td colspan="2">Kinh nghiệm làm việc</td>
                </tr>
                <tr>
                    <td class="auto-style4">Số năm làm việc : </td>
                    <td>
                        <asp:TextBox ID="txtSoNamLamViec" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Kinh nghiệm làm việc : </td>
                    <td>
                        <asp:TextBox ID="txtKinhNghiemLamViec" runat="server" Height="43px" Width="199px"></asp:TextBox>
                    </td>
                </tr>
                <tr style="background-color:green; color:white">
                    <td colspan="2">Mong muốn của bản thân</td>
                </tr>
                <tr>
                    <td class="auto-style4">Việc làm mong muốn : </td>
                    <td>
                        <asp:TextBox ID="txtViecLamMongMuon" runat="server" Height="45px" Width="196px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"><span style="color:red">*</span>Mức lương thoả thuận : </td>
                    <td>
                        <asp:TextBox ID="txtMucLuongThoaThuan" runat="server" TextMode="Number"></asp:TextBox><span style="color:green">VND</span>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnGuiHoSo" runat="server" Text="Gửi hồ sơ" OnClick="btnGuiHoSo_Click" />
&nbsp;<asp:Button ID="btnXoaForm" runat="server" Text="Xoá form" OnClick="btnXoaForm_Click" />
                    </td>
                </tr>
            </table>
        </div>
    <div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Lab3DBConnectionString5 %>" DeleteCommand="DELETE FROM [ttvieclam] WHERE [MaNV] = @MaNV" InsertCommand="INSERT INTO [ttvieclam] ([HoTen], [NgaySinh], [GioiTinh], [TTHonNhan], [DiaChi], [TinhTP], [DienThoai], [DiDong], [Email], [ThongtinHocVan], [TrinhDo], [NgoaiNgu], [KyNang], [SoNamKN], [KinhNghiem], [MongMuon], [MucLuong]) VALUES (@HoTen, @NgaySinh, @GioiTinh, @TTHonNhan, @DiaChi, @TinhTP, @DienThoai, @DiDong, @Email, @ThongtinHocVan, @TrinhDo, @NgoaiNgu, @KyNang, @SoNamKN, @KinhNghiem, @MongMuon, @MucLuong)" SelectCommand="SELECT [HoTen], [NgaySinh], [GioiTinh], [TTHonNhan], [DiaChi], [TinhTP], [DienThoai], [DiDong], [Email], [ThongtinHocVan], [TrinhDo], [NgoaiNgu], [KyNang], [SoNamKN], [KinhNghiem], [MongMuon], [MucLuong], [MaNV] FROM [ttvieclam]" UpdateCommand="UPDATE [ttvieclam] SET [HoTen] = @HoTen, [NgaySinh] = @NgaySinh, [GioiTinh] = @GioiTinh, [TTHonNhan] = @TTHonNhan, [DiaChi] = @DiaChi, [TinhTP] = @TinhTP, [DienThoai] = @DienThoai, [DiDong] = @DiDong, [Email] = @Email, [ThongtinHocVan] = @ThongtinHocVan, [TrinhDo] = @TrinhDo, [NgoaiNgu] = @NgoaiNgu, [KyNang] = @KyNang, [SoNamKN] = @SoNamKN, [KinhNghiem] = @KinhNghiem, [MongMuon] = @MongMuon, [MucLuong] = @MucLuong WHERE [MaNV] = @MaNV">
            <DeleteParameters>
                <asp:Parameter Name="MaNV" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="HoTen" Type="String" />
                <asp:Parameter Name="NgaySinh" Type="DateTime" />
                <asp:Parameter Name="GioiTinh" Type="Boolean" />
                <asp:Parameter Name="TTHonNhan" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="TinhTP" Type="String" />
                <asp:Parameter Name="DienThoai" Type="String" />
                <asp:Parameter Name="DiDong" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="ThongtinHocVan" Type="String" />
                <asp:Parameter Name="TrinhDo" Type="String" />
                <asp:Parameter Name="NgoaiNgu" Type="String" />
                <asp:Parameter Name="KyNang" Type="String" />
                <asp:Parameter Name="SoNamKN" Type="Byte" />
                <asp:Parameter Name="KinhNghiem" Type="String" />
                <asp:Parameter Name="MongMuon" Type="String" />
                <asp:Parameter Name="MucLuong" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="HoTen" Type="String" />
                <asp:Parameter Name="NgaySinh" Type="DateTime" />
                <asp:Parameter Name="GioiTinh" Type="Boolean" />
                <asp:Parameter Name="TTHonNhan" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="TinhTP" Type="String" />
                <asp:Parameter Name="DienThoai" Type="String" />
                <asp:Parameter Name="DiDong" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="ThongtinHocVan" Type="String" />
                <asp:Parameter Name="TrinhDo" Type="String" />
                <asp:Parameter Name="NgoaiNgu" Type="String" />
                <asp:Parameter Name="KyNang" Type="String" />
                <asp:Parameter Name="SoNamKN" Type="Byte" />
                <asp:Parameter Name="KinhNghiem" Type="String" />
                <asp:Parameter Name="MongMuon" Type="String" />
                <asp:Parameter Name="MucLuong" Type="Decimal" />
                <asp:Parameter Name="MaNV" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
    </form>
    </body>
</html>
