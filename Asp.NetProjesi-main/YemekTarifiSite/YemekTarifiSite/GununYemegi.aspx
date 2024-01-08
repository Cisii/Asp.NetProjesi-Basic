<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekTarifiSite.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        width: 100%;
    }
    .auto-style5 {
        height: 30px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style4">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;<strong>Yemek Ad: </strong>&nbsp;
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;<strong>Malzemeler: </strong>&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;<strong>Tarif: </strong>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarifi") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="margin-left: 80px">
                    <asp:Image ID="Image1" runat="server" Height="200px" Width="321px" ImageUrl='<%# Eval("YemekResim") %>' />
                </td>
            </tr>
            <tr>
                <td style="margin-left: 80px">&nbsp;</td>
            </tr>
            <tr>
                <td style="margin-left: 120px">
                    <table class="auto-style4">
                        <tr>
                            <td><strong>Puan :&nbsp;</strong>&nbsp;
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                &nbsp;</td>
                            <td><strong>Tarih :</strong>&nbsp;
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

