<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="YemekTarifiSite.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            border-style: none;
            border-color: inherit;
            border-width: 2px;
            border-radius: 5px;
        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style6 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style5">Tarif Ad:</td>
            <td>
                <asp:TextBox ID="TxtTarifAd" runat="server" CssClass="auto-style4" Width="178px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Tarif Malzemeler:</td>
            <td>
                <asp:TextBox ID="TxtMalzeme" runat="server" CssClass="auto-style4" Width="176px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Tarifin Yapılışı:</td>
            <td class="auto-style6">
                <asp:TextBox ID="TxtYapilis" runat="server" CssClass="auto-style4" Height="100px" TextMode="MultiLine" Width="175px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Tarifin Resmi:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="180px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Tarifin Sahibi:</td>
            <td>
                <asp:TextBox ID="TxtTarifShibi" runat="server" CssClass="auto-style4" Width="177px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Tarif Mail:</td>
            <td>
                <asp:TextBox ID="TxtMail" runat="server" CssClass="auto-style4" Width="178px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Kategori:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="180px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" CssClass="button1" Height="46px" OnClick="Button1_Click" Text="Onay" Width="140px" />
            </td>
        </tr>
    </table>
</asp:Content>
