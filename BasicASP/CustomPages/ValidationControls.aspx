<%@ Page Language="VB" AutoEventWireup="false" Title="Validation Controls" UnobtrusiveValidationMode="none" MasterPageFile="~/MasterPage.master" CodeFile="ValidationControls.aspx.vb" Inherits="CustomPages_ValidationControls" %>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <asp:Table runat="server" ID="Tab1" CellPadding="5">
        <asp:TableRow>
            <asp:TableCell Width="200px">
                <asp:Label ID="Label1" runat="server" Text="Choose UserName"></asp:Label>
            </asp:TableCell><asp:TableCell>
                <asp:TextBox ID="TxtName" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="V1" runat="server" ErrorMessage="Name Can't be Empty! [Required Field Validator]" ControlToValidate="TxtName" Text="*"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label2" runat="server" Text="Choose Password"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TxtPass1" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                <asp:CustomValidator ID="V3" runat="server" ErrorMessage="Password must be at least 8 Characters wide. [Custom Validator]" ControlToValidate="TxtPass1" ClientValidationFunction="checkPass1" Text="*"></asp:CustomValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label3" runat="server" Text="Re-Enter Password"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TxtPass2" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="V2" runat="server" ErrorMessage="Passwords don't match. [Compare Validator]" ControlToCompare="TxtPass1" ControlToValidate="TxtPass2" Text="*"></asp:CompareValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TxtEmail" runat="server" Width="200px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="V4" runat="server" ErrorMessage="Email is Not Valid. [Regular Expression Validator]" ControlToValidate="TxtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Text="*"></asp:RegularExpressionValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label5" runat="server" Text="Mobile No."></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TxtCon2" runat="server" Width="200px"></asp:TextBox>
                <asp:RangeValidator ID="V5" runat="server" ErrorMessage="Mobile No. must be of 10 Digits. [Range Validator]" ControlToValidate="TxtCon2" MaximumValue="9999999999" MinimumValue="1000000000" Text="*" Type="Double"></asp:RangeValidator>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <br />
    <hr />
    &nbsp;
    <asp:Button ID="Button1" runat="server" Text="Submit" />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="head">
    <script>function checkPass1(ctl, args) { args.IsValid = (args.Value.length >= 8); } </script>
</asp:Content>

