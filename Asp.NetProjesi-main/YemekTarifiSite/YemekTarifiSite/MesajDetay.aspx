<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajDetay.aspx.cs" Inherits="YemekTarifiSite.MesajDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        margin-left: 40px;
    }
    .auto-style5 {
        text-align: right;
    }
    .auto-style6 {
        border-style: none;
        border-color: inherit;
        border-width: 2px;
        border-radius: 5px;
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
        <td class="auto-style5"><strong>Mesaj Gönderen:</strong></td>
        <td>
            <asp:TextBox ID="TxtMesajGonderen" runat="server" CssClass="auto-style6" Width="177px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Başlık</strong></td>
        <td class="auto-style4">
            <asp:TextBox ID="TxtBaslik" runat="server" CssClass="auto-style6" Width="173px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Mail Adresi</strong></td>
        <td class="auto-style4">
            <asp:TextBox ID="TxtMailAdresi" runat="server" CssClass="auto-style6" Width="173px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Mesaj içerik:</strong></td>
        <td class="auto-style4">
            <asp:TextBox ID="TxtMesajIcerik" runat="server" CssClass="auto-style6" Width="175px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
</table>
</asp:Content>
