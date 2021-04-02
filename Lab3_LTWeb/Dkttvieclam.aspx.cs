using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab3_LTWeb
{
    public partial class Dkttvieclam : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuiHoSo_Click(object sender, EventArgs e)
        {
            String hoten = txtHoTen.Text;
            String namsinh = Convert.ToDateTime(txtNamSinh.Text).ToString();
            Boolean gioitinh = Convert.ToInt32(ddlGioiTinh.SelectedValue) > 0 ? true:false;
            String tinhtranghonnhan = ddlHonNhan.SelectedValue;

            String diachi = txtDiaChi.Text;
            String tinhtp = txtTinhTP.Text;
            String sdt = Convert.ToInt32(txtDienThoai.Text).ToString();
            String didong = txtDiDong.Text;
            String email = txtEmail.Text;

            String trinhdohocvan = ddlTrinhDoHocVan.SelectedValue;
            String tthocvan = txtTTHocVan.Text;
            String ngoaingu = txtNgoaiNgu.Text;
            String kynang = txtKyNang.Text;

            String sonamkinhnghiem = Convert.ToByte(txtSoNamLamViec.Text).ToString();
            String kinhnghiemlamviec = txtKinhNghiemLamViec.Text;
            String vieclammongmuon = txtViecLamMongMuon.Text;
            String mucluongthoathuan = Convert.ToDecimal(txtMucLuongThoaThuan.Text).ToString();

            if (hoten == "" || namsinh == "" ||
                diachi == "" || tinhtp == "" ||
                email == "" || trinhdohocvan == "" ||
                tthocvan == "" || mucluongthoathuan == "")
            {
                Response.Write("<script>alert('Vui lòng điền đầy " +
                    "đủ các trường bắt buộc!');</script>");
            }
            else
            {
                SqlDataSource1.InsertParameters["HoTen"].DefaultValue = hoten;
                SqlDataSource1.InsertParameters["NgaySinh"].DefaultValue = namsinh;
                SqlDataSource1.InsertParameters["GioiTinh"].DefaultValue = gioitinh.ToString();
                SqlDataSource1.InsertParameters["TTHonNhan"].DefaultValue = tinhtranghonnhan;
                SqlDataSource1.InsertParameters["DiaChi"].DefaultValue = diachi;
                SqlDataSource1.InsertParameters["TinhTP"].DefaultValue = tinhtp;
                SqlDataSource1.InsertParameters["DienThoai"].DefaultValue = sdt;
                SqlDataSource1.InsertParameters["DiDong"].DefaultValue = didong;
                SqlDataSource1.InsertParameters["Email"].DefaultValue = email;
                SqlDataSource1.InsertParameters["ThongtinHocVan"].DefaultValue = tthocvan;
                SqlDataSource1.InsertParameters["TrinhDo"].DefaultValue = trinhdohocvan;
                SqlDataSource1.InsertParameters["NgoaiNgu"].DefaultValue = ngoaingu;
                SqlDataSource1.InsertParameters["KyNang"].DefaultValue = kynang;
                SqlDataSource1.InsertParameters["SoNamKN"].DefaultValue = sonamkinhnghiem;
                SqlDataSource1.InsertParameters["KinhNghiem"].DefaultValue = kinhnghiemlamviec;
                SqlDataSource1.InsertParameters["MongMuon"].DefaultValue = vieclammongmuon;
                SqlDataSource1.InsertParameters["MucLuong"].DefaultValue = mucluongthoathuan;

                if(SqlDataSource1.Insert() > 0)
                {
                    Response.Write("<script>alert('OK');</script>");
                }               
            }
        }

        protected void btnXoaForm_Click(object sender, EventArgs e)
        {
            txtHoTen.Text = "";
            txtNamSinh.Text = "";
            ddlGioiTinh.SelectedValue = "";
            ddlHonNhan.SelectedValue = "";

            txtDiaChi.Text = "";
            txtTinhTP.Text = "";
            txtDienThoai.Text = "";
            txtDiDong.Text = "";
            txtEmail.Text = "";

            ddlTrinhDoHocVan.SelectedValue = "";
            txtTTHocVan.Text = "";
            txtNgoaiNgu.Text = "";
            txtKyNang.Text = "";

            txtSoNamLamViec.Text = "";
            txtKinhNghiemLamViec.Text = "";
            txtViecLamMongMuon.Text = "";
            txtMucLuongThoaThuan.Text = "";
        }
    }
}