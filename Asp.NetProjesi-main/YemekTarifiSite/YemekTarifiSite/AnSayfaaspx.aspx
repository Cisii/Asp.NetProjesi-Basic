<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AnSayfaaspx.aspx.cs" Inherits="YemekTarifiSite.AnSayfaaspx" %>
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
                    <td style="background-color: #FF99FF">
                       <a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid") %>"> <asp:Label ID="Label3" runat="server" style="font-weight: 700; color: #003300; font-size: large" Text='<%# Eval("YemekAd") %>'></asp:Label></a>
                    </td>
                </tr>
                <tr>
                    <td><strong>Malzemeler :</strong>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;<strong>Yemek Tarifi :</strong>&nbsp;
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarifi") %>'></asp:Label>
                        &nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td><strong>Eklenme Tarihi: </strong>&nbsp;<asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        &nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td><strong><em>Puan : </em></strong>&nbsp;<asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #008000">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

