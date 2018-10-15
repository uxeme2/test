<%@ Control Language="VB" AutoEventWireup="false" CodeFile="UCStd2.ascx.vb" Inherits="CustomPages_UCStd2" %>
<asp:Table runat="server" ID="Tab1" CellPadding="10">
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="Label3" runat="server" Text="Date of Birth"></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="TxtDate" runat="server" Width="200px"></asp:TextBox>&nbsp;
            <asp:ImageButton ID="BtImgCal" ImageUrl="~/Images/Cal.PNG" ImageAlign="top" Width="32" runat="server" />
            <asp:Calendar ID="Cal1" runat="server" Visible="false" CellPadding="1" Font-Size="Smaller"></asp:Calendar>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="Label5" runat="server" Text="Country"></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:DropDownList ID="DropDown1" runat="server">
                <asp:ListItem Text="India"></asp:ListItem>
                <asp:ListItem Text="UK"></asp:ListItem>
                <asp:ListItem Text="US"></asp:ListItem>
                <asp:ListItem Text="France"></asp:ListItem>
            </asp:DropDownList>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="Label6" runat="server" Text="Subscribe"></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:CheckBoxList ID="Check1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Text="Service 1"></asp:ListItem>
                <asp:ListItem Text="Service 2"></asp:ListItem>
                <asp:ListItem Text="Service 3"></asp:ListItem>
            </asp:CheckBoxList>
        </asp:TableCell>
    </asp:TableRow>
</asp:Table>