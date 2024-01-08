<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemekTarifiSite.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            height: 30px;
        }
        .auto-style6 {
            font-weight: bold;
        }
        .auto-style7 {
            text-align: right;
        }
        .auto-style8 {
            font-weight: bold;
            text-align: right;
        }
        .auto-style9 {
            font-weight: bold;
            text-align: right;
            height: 29px;
        }
        .auto-style10 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <asp:Label ID="Label8" runat="server" style="font-weight: 700; font-size: x-large" Text="Label"></asp:Label>
    <br />
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style4">
                <tr>
                    <td class="auto-style5"><strong>Yorumu Yapan kişi:</strong><asp:Label ID="Label9" runat="server" style="font-size: large" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;<strong>İçerik :</strong>
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("YorumIcerik") %>'></asp:Label>
                        &nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td style="border-top-style: inherit; border-right-style: inherit; border-bottom-style: solid; border-left-style: inherit; border-bottom-width: thick; border-bottom-color: #800000">&nbsp;<strong>Tarih: </strong>
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <div style="background-color: #9966FF"><strong>Yorum Yapma Paneli</strong></div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style4">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">Ad Soyad:</td>
                <td>
                    <asp:TextBox ID="TxtAdSoyad" runat="server" Height="25px" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Mail:</td>
                <td class="auto-style10" style="margin-left: 40px">
                    <asp:TextBox ID="TxtMail" runat="server" Height="25px" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Yorumumuz:</td>
                <td style="margin-left: 40px">
                    <asp:TextBox ID="TxtYorumuzu" runat="server" Height="100px" TextMode="MultiLine" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style7" style="text-align: left; margin-left: 40px">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style6" Height="46px" OnClick="Button1_Click" Text="Yorum Yap" Width="158px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
