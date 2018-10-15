<%@ Page Language="VB" AutoEventWireup="false" Title="Standard Controls" MasterPageFile="~/MasterPage.master" CodeFile="StandardControls.aspx.vb" Inherits="CustomPages_StandardControls" %>

<%@ Register Src="~/CustomPages/UCStd1.ascx" TagPrefix="uc1" TagName="UCStd1" %>
<%@ Register Src="~/CustomPages/UCStd2.ascx" TagPrefix="uc1" TagName="UCStd2" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="font-x">Registration Form Wizard</div>
    <hr />
    <asp:Wizard ID="Wizard1" runat="server" CssClass="border" Width="80%" Height="72%" ActiveStepIndex="0">
        <SideBarStyle CssClass="border" Width="30%" HorizontalAlign="Center" />
        <WizardSteps>
            <asp:WizardStep ID="Step1" runat="server" Title="Enter Information">
                <uc1:UCStd1 runat="server" ID="UCStd1" />
            </asp:WizardStep>
            <asp:WizardStep ID="Step2" runat="server" Title="Enter More Information">
                <uc1:UCStd2 runat="server" ID="UCStd2" />
            </asp:WizardStep>
            <asp:WizardStep ID="Step3" runat="server" Title="Upload File">
                <div style="padding-left: 10px">
                    <asp:Label ID="Label1" runat="server" Text="Upload Photo" CssClass="font-x"></asp:Label><br />
                    <hr />
                    <asp:Image ID="Image1" Width="100" CssClass="border" runat="server" /><br />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Button ID="Button1" runat="server" Text="Upload" />
                </div>
            </asp:WizardStep>
        </WizardSteps>
    </asp:Wizard>
</asp:Content>
