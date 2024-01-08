<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="YemekTarifiSite.Kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
            text-align: right;
        }
        .auto-style5 {
            width: 190px;
        }
        .auto-style6 {
            text-align: right;
            width: 69px;
        }
        .auto-style7 {
            margin-left: 0px;
        }
        .auto-style9 {
            text-align: center;
            width: 58px;
            background-color: #FF99FF;
        }
        .auto-style10 {
            text-align: center;
            width: 57px;
            background-color: #FF99FF;
        }
        .auto-style11 {
            background-color: #FF99FF;
        }
        .auto-style12 {
            margin-left: 40px;
        }
        .auto-style13 {
            border-style: none;
            border-color: inherit;
            border-width: 2px;
            border-radius: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                </td>
                <td class="auto-style9">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style7" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                </td>
                <td class="auto-style11"><strong>KATEGORİ LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="346px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">
                           <a href="Kategoriler.aspx?KategoriId=<%#Eval("KategoriId")%>&islem=sil"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/image/delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style4">
                           <a href="KategoriGuncelle.aspx?KategoriId=<%#Eval("KategoriId") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/image/update.png" Width="30px" /></a> 
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
                    <asp:Button ID="Button7" runat="server" Height="30px" OnClick="Button7_Click" Text="+" Width="30px" />
                </td>
                <td class="auto-style9">
                    <asp:Button ID="Button6" runat="server" Height="30px" OnClick="Button6_Click" Text="-" Width="35px" />
                </td>
                <td class="auto-style11"><strong>KETEGORİ EKLE</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Kategori Ad:</td>
                <td>
                    <asp:TextBox ID="TxtKategoriAd" runat="server" CssClass="auto-style13" Width="164px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Kategori Resim:</td>
                <td class="auto-style12">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="202px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style12">
                    <asp:Button ID="Btn_ekle" runat="server" CssClass="button1" Height="40px" OnClick="Btn_ekle_Click" Text="Ekle" Width="166px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
