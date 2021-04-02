<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Lab3_LTWeb.Registration" %>

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
            font-weight: bold;
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">Registration Form</td>
            </tr>
            <tr>
                <td>Candidate Name</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" Width="241px"></asp:TextBox>
                    <span style="color:red;">*</span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" Display="None" ErrorMessage="Candidate Name can not be blank !" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Age</td>
                <td>
                    <asp:TextBox ID="txtAge" runat="server" Width="241px"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" Display="Dynamic" ErrorMessage="Tuổi phải từ 18 đến 60" ForeColor="Red" MaximumValue="60" MinimumValue="18" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td>Day Of Birth</td>
                <td>
                    <asp:TextBox ID="txtDOB" runat="server" Width="241px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtDOB" Display="Dynamic" ErrorMessage="Ngày sinh phải đúng định dạng" ForeColor="Red" ValidationExpression="(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Social Securiry Number</td>
                <td>
                    <asp:TextBox ID="txtSSN" runat="server" Width="238px"></asp:TextBox>
                 <span style="color:red;">*</span>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSSN" Display="None" ErrorMessage="Social Security Number can not be blank !" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td>Sex</td>
                <td>
                    <asp:DropDownList ID="ddlSex" runat="server" Width="248px">
                        <asp:ListItem Value="1">Nam</asp:ListItem>
                        <asp:ListItem Value="0">Nữ</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Address</td>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server" Width="243px"></asp:TextBox>
                 <span style="color:red;">*</span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAddress" Display="None" ErrorMessage="Address can not be blank !" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Phone Number</td>
                <td>
                    <asp:TextBox ID="txtPhone" runat="server" Width="243px"></asp:TextBox>
                 <span style="color:red;">*</span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPhone" Display="None" ErrorMessage="Phone Number can not be blank !" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Mobile Number</td>
                <td>
                    <asp:TextBox ID="txtMobile" runat="server" Width="240px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Email ID</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" Width="241px"></asp:TextBox>
                 <span style="color:red;">*</span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" Display="None" ErrorMessage="Email can not be blank !" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email phải đúng định dạng" ForeColor="Red" ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Zip Code</td>
                <td>
                    <asp:TextBox ID="txtZipCode" runat="server" Width="241px"></asp:TextBox>
                 <span style="color:red;">*</span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtZipCode" Display="None" ErrorMessage="Zip Code can not be blank !" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Lab3DBConnectionString4 %>" DeleteCommand="DELETE FROM [Candidate] WHERE [SSN] = @SSN" InsertCommand="INSERT INTO [Candidate] ([Name], [Age], [DOB], [SSN], [Sex], [Address], [Phone], [Mobile], [Email], [ZipCode]) VALUES (@Name, @Age, @DOB, @SSN, @Sex, @Address, @Phone, @Mobile, @Email, @ZipCode)" SelectCommand="SELECT * FROM [Candidate]" UpdateCommand="UPDATE [Candidate] SET [Name] = @Name, [Age] = @Age, [DOB] = @DOB, [Sex] = @Sex, [Address] = @Address, [Phone] = @Phone, [Mobile] = @Mobile, [Email] = @Email, [ZipCode] = @ZipCode WHERE [SSN] = @SSN">
                        <DeleteParameters>
                            <asp:Parameter Name="SSN" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Age" Type="Int32" />
                            <asp:Parameter Name="DOB" Type="DateTime" />
                            <asp:Parameter Name="SSN" Type="Int32" />
                            <asp:Parameter Name="Sex" Type="Boolean" />
                            <asp:Parameter Name="Address" Type="String" />
                            <asp:Parameter Name="Phone" Type="Int32" />
                            <asp:Parameter Name="Mobile" Type="Int32" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="ZipCode" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Age" Type="Int32" />
                            <asp:Parameter Name="DOB" Type="DateTime" />
                            <asp:Parameter Name="Sex" Type="Boolean" />
                            <asp:Parameter Name="Address" Type="String" />
                            <asp:Parameter Name="Phone" Type="Int32" />
                            <asp:Parameter Name="Mobile" Type="Int32" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="ZipCode" Type="Int32" />
                            <asp:Parameter Name="SSN" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <div>
            <asp:Label ID="lblResult" runat="server"></asp:Label>
        </div>
    <div>

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />

    </div>
    </form>
    </body>
</html>
