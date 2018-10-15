<%@ Control Language="VB" AutoEventWireup="false" CodeFile="UCStd1.ascx.vb" Inherits="CustomPages_UCStd1" %>
<asp:Table runat="server" ID="Tab1" CellPadding="10">
    <asp:TableRow>
        <asp:TableCell Width="200px">
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="TxtName" runat="server" Width="200px"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="Label2" runat="server" Text="Address"></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="TxtAddr" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:RadioButtonList ID="RadioGender" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Text="Male" Selected="True"></asp:ListItem>
                <asp:ListItem Text="Female"></asp:ListItem>
            </asp:RadioButtonList>
        </asp:TableCell>
    </asp:TableRow>
</asp:Table>
