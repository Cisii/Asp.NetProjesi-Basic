<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="YemekTarifiSite.HakkimizdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            border-style: none;
            border-color: inherit;
            border-width: 2px;
            border-radius: 5px;
        }
    .auto-style6 {
        text-align: left;
        width: 52px;
        background-color: #6699FF;
    }
    .auto-style7 {
        text-align: left;
        width: 70px;
        background-color: #6699FF;
    }
    .auto-style8 {
        background-color: #6699FF;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                </td>
                <td class="auto-style7">
                    <asp:Button ID="Button2" runat="server" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                </td>
                <td class="auto-style8"><strong>Hakkımızda</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">&nbsp;<table class="auto-style1">
            <tr>
                <td>
                    <asp:TextBox ID="TxtMetin" runat="server" CssClass="auto-style5" Height="200px" TextMode="MultiLine" Width="338px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <strong>
                    <asp:Button ID="BtnGuncelle" runat="server" CssClass="button1" Height="55px" OnClick="BtnGuncelle_Click" Text="Güncelle" Width="144px" />
                    </strong>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
