<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="YemekTarifiSite.Yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: left;
            width: 41px;
            background-color: #99CCFF;
        }

        .auto-style5 {
            text-align: left;
            width: 35px;
            background-color: #99CCFF;
        }

        .auto-style6 {
            text-align: center;
        }

        .auto-style7 {
            text-align: center;
            width: 98px;
        }

        .auto-style8 {
            width: 326px;
        }

        .auto-style9 {
            background-color: #99CCFF;
        }

        .auto-style10 {
            background-color: #6600CC;
        }
        .auto-style11 {
            width: 216px;
        }
        .auto-style12 {
            text-align: center;
            width: 58px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Text="+" OnClick="Button1_Click" Height="30px" Width="30px" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="Button2" runat="server" Text="-" OnClick="Button2_Click" Height="30px" Width="30px" />
                </td>
                <td class="auto-style9">Onaylanan Yorum Listesi<br />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style7">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/image/delete.png" Width="30px" />
                        </td>
                        <td class="auto-style6">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/image/update.png" Width="30px" />
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
                <td class="auto-style10">Onaylanmayan Yorum Listesi</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style11">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style12">
                            <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/image/delete.png" Width="30px" />
                        </td>
                        <td class="auto-style6">
                            <a href="YorumDetay.aspx?YorumId=<%#Eval("YorumId") %>"> <asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/image/update.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>

    </asp:Panel>
    
</asp:Content>
