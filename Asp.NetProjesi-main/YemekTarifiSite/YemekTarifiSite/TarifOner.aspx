<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="YemekTarifiSite.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        width: 100%;
    }
    .auto-style5 {
        text-align: right;
    }
    .auto-style6 {
        width: 232px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder">
    <table class="auto-style4">
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">Tarif Ad:</td>
        <td class="auto-style6">
            <asp:TextBox ID="TxtTarifAd" runat="server" Width="200px" CssClass="txt" Height="50px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Malzemeler</td>
        <td class="auto-style6">
            <asp:TextBox ID="TxtMalzemeler" runat="server" Height="100px" TextMode="MultiLine" Width="200px" CssClass="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Yapılış</td>
        <td style="margin-left: 40px" class="auto-style6">
            <asp:TextBox ID="TxtYapilis" runat="server" Height="100px" TextMode="MultiLine" Width="200px" CssClass="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Resim:</td>
        <td style="margin-left: 80px" class="auto-style6">
            <asp:FileUpload ID="TxtResim" runat="server" Width="232px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Tarif Öneren:</td>
        <td style="margin-left: 120px" class="auto-style6">
            <asp:TextBox ID="TxtTarifOneren" runat="server" Width="200px" CssClass="txt" Height="40px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Mail Adres:</td>
        <td style="margin-left: 160px" class="auto-style6">
            <asp:TextBox ID="TxtMailAdres" runat="server" Width="200px" CssClass="txt" Height="50px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="margin-left: 160px" class="auto-style6">
            <asp:Button ID="BtnTarifOner" runat="server" Height="41px" Text="Tarif Öner" Width="206px" OnClick="BtnTarifOner_Click" CssClass="button1" />
        </td>
    </tr>
</table>
</asp:Content>

