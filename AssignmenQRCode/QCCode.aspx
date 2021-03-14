<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QCCode.aspx.cs" Inherits="AssignmenQRCode.QCCode" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sample ASP.NET Application to Generate and Read QR Code from a Browser</title>
</head>
<body>
    <form id="QCForm" runat="server">
        <div>
            <asp:TextBox ID="txtQCCode" runat="server"> </asp:TextBox>            
            <asp:Button ID="btnGenerate" runat="server" Text="Create My QR Code" OnClick="btnGenerate_Click" />  <hr/>
            <asp:Image ID="imgageQRCode" Width="100px"  Height="100px" runat="server" Visible="false" /> <br /><br /> 
            <asp:Button ID="btnRead" Text="Read My QR Code" runat="server" OnClick="btnRead_Click" /> <br /><br /> 
            <asp:Label ID="lblQRCode" runat="server"> </asp:Label>         
        </div>
    </form>
</body>
</html>
