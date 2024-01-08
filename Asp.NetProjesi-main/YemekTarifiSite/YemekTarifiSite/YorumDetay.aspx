<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="YemekTarifiSite.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        margin-left: 40px;
    }
    .auto-style5 {
        text-align: right;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">Ad Soyad:</td>
        <td>
            <asp:TextBox ID="TxtAdSoyad" runat="server" CssClass="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Mail Adresi:</td>
        <td>
            <asp:TextBox ID="TxtMail" runat="server" CssClass="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">İçerik:</td>
        <td class="auto-style4">
            <asp:TextBox ID="TxtIcerik" runat="server" CssClass="txt" Height="50px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Yemek:</td>
        <td class="auto-style4">
            <asp:TextBox ID="TxtYemek" runat="server" CssClass="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style4">
            <asp:Button ID="BtnOnayla" runat="server" CssClass="button1" Height="58px" OnClick="BtnOnayla_Click" Text="Onayla" Width="206px" />
        </td>
    </tr>
</table>
</asp:Content>
