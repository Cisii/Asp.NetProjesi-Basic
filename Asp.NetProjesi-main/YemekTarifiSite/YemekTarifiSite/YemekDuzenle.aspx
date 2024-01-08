<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="YemekTarifiSite.YemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            margin-left: 40px;
        }
        .auto-style5 {
            border-style: none;
            border-color: inherit;
            border-width: 2px;
            border-radius: 5px;
        }
        .auto-style6 {
            height: 26px;
            text-align: right;
        }
        .auto-style7 {
            height: 26px;
            text-align: left;
            margin-left: 40px;
        }
        .auto-style8 {
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
            <td class="auto-style8"><strong>Yemek Ad :</strong></td>
            <td>
                <asp:TextBox ID="TxtYemekAd" runat="server" CssClass="txt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Malzemeler :</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="TxtMalzeme" runat="server" CssClass="txt" Height="150px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Tarif:</strong></td>
            <td class="auto-style7"><strong>
                <asp:TextBox ID="TxtTarif" runat="server" CssClass="txt" Height="150px" TextMode="MultiLine"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Kategoriler:</strong></td>
            <td class="auto-style4">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style5" Height="33px" Width="197px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Resim:</strong></td>
            <td class="auto-style4">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="206px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="Button1" runat="server" CssClass="button1" Height="47px" OnClick="Button1_Click" Text="Güncelle" Width="204px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="Button2" runat="server" CssClass="button1" Height="41px" OnClick="Button2_Click" Text="Günün Yemeği Seç" Width="200px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
