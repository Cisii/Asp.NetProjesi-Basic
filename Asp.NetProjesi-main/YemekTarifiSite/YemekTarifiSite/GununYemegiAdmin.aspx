<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="YemekTarifiSite.GununYemegiAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: right;
        }
        .auto-style5 {
            width: 247px;
        }
        .auto-style6 {
            background-color: #9933FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style6">
                    <asp:Button ID="Button2" runat="server" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td class="auto-style6">Yemek Listesi</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">

    </asp:Panel>
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/image/confirm.png" Width="30px" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
