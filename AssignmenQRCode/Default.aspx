<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AssignmenQRCode.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            height: 26px;
            width: 179px;
        }
        .auto-style3 {
            width: 179px;
        }
        .auto-style4 {
            height: 26px;
            width: 185px;
        }
        .auto-style5 {
            width: 185px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>QR Code Generator</h1>
            <p>
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style2">Name:*</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="TextBox1" runat="server" Width="159px"></asp:TextBox>
                        </td>
                        <td class="auto-style1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="This field is required!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Date:*</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="This field is required!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Message:</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">QR Code:</td>
                        <td class="auto-style4">
                            <asp:Image ID="Image1" runat="server" />
                        </td>
                        <td class="auto-style1"></td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Combined Message:</td>
                        <td class="auto-style4">
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="auto-style1"></td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style5">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Generate" Width="165px" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </p>
        </div>
    </form>
</body>
</html>
