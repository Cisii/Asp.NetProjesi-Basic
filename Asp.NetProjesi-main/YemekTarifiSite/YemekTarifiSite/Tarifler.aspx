﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="YemekTarifiSite.Tarifler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: left;
            width: 37px;
            background-color: #6600FF;
        }

        .auto-style5 {
            text-align: left;
            width: 44px;
            background-color: #6600FF;
        }

        .auto-style6 {
            background-color: #6600FF;
        }

        .auto-style7 {
            text-align: right;
        }

        .auto-style8 {
            width: 250px;
        }
        .auto-style9 {
            background-color: #6666FF;
        }
        .auto-style10 {
            width: 40px;
            background-color: #6666FF;
        }
        .auto-style12 {
            width: 254px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="Button2" runat="server" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td class="auto-style6"><strong>Onaysız Tarif&nbsp; Listesi</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">



        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style7">
                            <a href="TarifOnerDetay.aspx?TarifId=<%#Eval("TarifId")%>"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/image/update.png" Width="30px" /></a> 
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="Button3" runat="server" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style10">
                    <asp:Button ID="Button4" runat="server" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                </td>
                <td class="auto-style9"><strong>Onaylı Tarif Listesi</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style12">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style7">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/image/update.png" Width="30px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>

    </asp:Panel>
</asp:Content>


