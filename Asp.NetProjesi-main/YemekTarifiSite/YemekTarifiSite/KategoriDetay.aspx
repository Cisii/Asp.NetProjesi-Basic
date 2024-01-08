<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="YemekTarifiSite.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style4">
            <tr>
                <td style="text-align: center; background-color: #6666FF">
                    <asp:Label ID="Label3" runat="server" style="font-weight: 700; font-size: large" Text='<%# Eval("YemekAd") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Malzemeler: </strong>&nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Yemek Tarifi :</strong>&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarifi") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Eklenme Tarihi :</strong>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Puan : </strong>&nbsp;<asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

