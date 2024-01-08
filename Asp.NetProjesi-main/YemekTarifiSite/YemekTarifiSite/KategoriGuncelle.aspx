<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriGuncelle.aspx.cs" Inherits="YemekTarifiSite.KategoriGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            margin-left: 40px;
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
            margin-left: 40px;
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
            <td>Kategori Ad:</td>
            <td>
                <asp:TextBox ID="TxtKategoriAd" runat="server" CssClass="txt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Adet:</td>
            <td class="auto-style4">
                <asp:TextBox ID="TxtAdet" runat="server" CssClass="txt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Resim:</td>
            <td class="auto-style6">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="228px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="Button1" runat="server" CssClass="button1" Height="45px" OnClick="Button1_Click" Text="Güncelle" Width="205px" />
            </td>
        </tr>
    </table>
</asp:Content>
