<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="YemekTarifiSite.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        width: 100%;
    }
    .auto-style5 {
        font-weight: bold;
        text-align: right;
    }
    .auto-style6 {
        font-size: large;
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder">
    <table class="auto-style4">
    <tr>
        <td class="auto-style6" colspan="2"><strong><em>Mesaj Paneli</em></strong></td>
    </tr>
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
        <td class="auto-style5">Mail Adresiniz:</td>
        <td>
            <asp:TextBox ID="TxtMail" runat="server" CssClass="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Konu:</td>
        <td>
            <asp:TextBox ID="TxtKonu" runat="server" CssClass="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Mesaj</td>
        <td>
            <asp:TextBox ID="TxtMesaj" runat="server" CssClass="txt" Height="100px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" CssClass="button1" Height="54px" OnClick="Button1_Click" Text="Button" Width="168px" />
        </td>
    </tr>
</table>
</asp:Content>

