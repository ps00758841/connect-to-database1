
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration_Form.aspx.cs" Inherits="Registration_Form1.Registration_Form" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <table>
                <tr>
                    <td>Firstname</td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server" OnTextChanged="txtname_TextChanged"></asp:TextBox></td>
                    <asp:RequiredFieldValidator ControlToValidate="txtname" Display="Dynamic" ErrorMessage="Enter Name" ForeColor="Red" ID="req1" runat="server" ValidationGroup="Save"></asp:RequiredFieldValidator>
                </tr>

                <tr>
                    <td>Lastname</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="txtname_TextChanged"></asp:TextBox></td>
                    <asp:RequiredFieldValidator ControlToValidate="txtname" Display="Dynamic" ErrorMessage="Enter Name" ForeColor="Red" ID="RequiredFieldValidator5" runat="server" ValidationGroup="Save"></asp:RequiredFieldValidator>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
                    <asp:RequiredFieldValidator ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Enter Email" ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ValidationGroup="Save"></asp:RequiredFieldValidator>

                </tr>
                <tr>
                    <td>Address</td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox></td>
                    <asp:RequiredFieldValidator ControlToValidate="txtAddress" Display="Dynamic" ErrorMessage="Enter Address" ForeColor="Red" ID="RequiredFieldValidator2" runat="server" ValidationGroup="Save"></asp:RequiredFieldValidator>

                </tr>
                 <tr>
                    <td>Gender</td>
                    <td>
                          <asp:RadioButton ID="rbMale" runat="server" Text="Male" GroupName="gender" />
                         <asp:RadioButton ID="rbFemale" runat="server" Text="Female" GroupName="gender" />
                          <asp:RadioButton ID="rbOther" runat="server" Text="Other" GroupName="gender" />
                </tr>                              

                  <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="txtname_TextChanged"></asp:TextBox></td>
                    <asp:RequiredFieldValidator ControlToValidate="txtname" Display="Dynamic" ErrorMessage="Enter Name" ForeColor="Red" ID="RequiredFieldValidator4" runat="server" ValidationGroup="Save"></asp:RequiredFieldValidator>
                </tr>
                <tr>
                    <td>Confirm Password</td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox></td>
                    <asp:RequiredFieldValidator ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Password" ForeColor="Red" ID="RequiredFieldValidator3" runat="server" ValidationGroup="Save"></asp:RequiredFieldValidator>

                </tr>

                <tr>
                    <td>Zip</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="txtname_TextChanged"></asp:TextBox></td>
                    <asp:RequiredFieldValidator ControlToValidate="txtname" Display="Dynamic" ErrorMessage="Enter Name" ForeColor="Red" ID="RequiredFieldValidator7" runat="server" ValidationGroup="Save"></asp:RequiredFieldValidator>
                </tr>
                <tr>
                    <td>State</td>
                    <td>
                        <asp:DropDownList ID="ddlState" runat="server">
    <asp:ListItem Text="Select State" Value="" />
    <asp:ListItem Text="Madhya pradesh" Value="NY" />
    <asp:ListItem Text="uttar pradesh" Value="CA" />
                             <asp:ListItem Text="others" Value="CA" />

    
</asp:DropDownList>
                </tr>
                <tr>
                    <td>Country</td>
                    <td>
                        <asp:DropDownList ID="ddlCountry" runat="server">
    <asp:ListItem Text="Select Country" Value="" />
    <asp:ListItem Text="United States" Value="US" />
    <asp:ListItem Text="Canada" Value="CA" />
    <asp:ListItem Text="United Kingdom" Value="UK" />
                            <asp:ListItem Text="India" Value="UK" />
    
</asp:DropDownList>
                </tr>
                <tr>
                    <td class="auto-style1">Area of interest</td>
                    <td class="auto-style1">
                      <asp:CheckBox ID="cbReading" runat="server" Text="Reading" />
                      <asp:CheckBox ID="cbSports" runat="server" Text="Sports" />
                     <asp:CheckBox ID="cbMusic" runat="server" Text="Music" />
                </tr>
                <tr>
                    
                     <!--    <td>Profile picture</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="upload image "></asp:Label></td>

                      <td><asp:FileUpload ID="FileUpload1" runat="server" Visible="false"/></td> -->

                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Register" ValidationGroup="Save" Height="51px" />
                    </td>

                </tr>
                        
                    </td>

                </tr>

              
            </table>

        </div>
    </form>
</body>
</html>
