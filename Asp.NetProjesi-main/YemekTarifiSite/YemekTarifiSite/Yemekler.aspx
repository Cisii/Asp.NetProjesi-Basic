<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="YemekTarifiSite.Yemekler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            color: #CC99FF;
            background-color: #9966FF;
        }
        .auto-style5 {
            color: #CC99FF;
            text-align: left;
            width: 69px;
            background-color: #9966FF;
        }
        .auto-style6 {
            color: #CC99FF;
            text-align: left;
            width: 53px;
            background-color: #9966FF;
        }
        .auto-style7 {
            color: #990000;
        }
        .auto-style8 {
            color: #990033;
        }
        .auto-style9 {
            text-align: right;
        }
        .auto-style10 {
            text-align: right;
            width: 93px;
        }
        .auto-style11 {
            width: 389px;
        }
        .auto-style12 {
            background-color: #6699FF;
        }
        .auto-style13 {
            width: 72px;
            background-color: #6699FF;
            text-align: left;
        }
        .auto-style14 {
            background-color: #6699FF;
            text-align: left;
            width: 55px;
        }
        .auto-style15 {
            margin-left: 40px;
        }
        .auto-style16 {
            height: 29px;
            text-align: right;
        }
        .auto-style17 {
            height: 29px;
            margin-left: 40px;
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
            <td class="auto-style5">
                <asp:Button ID="Button2" runat="server" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
            </td>
            <td class="auto-style4"><span class="auto-style8"><strong>YEMEK </strong></span><span class="auto-style7"><strong>LİSTESİ</strong></span></td>
        </tr>
    </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </td>
                    <td class="auto-style10">
                       <a href="Yemekler.aspx?Yemekid=<%#Eval("Yemekid")%>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" Width="30px" ImageUrl="~/image/delete.png" /></a> 
                    </td>
                    <td class="auto-style9">
                        <a href="YemekDuzenle.aspx?Yemekid=<%#Eval("Yemekid") %>"><asp:Image ID="Image3" runat="server" Height="30px" Width="30px" ImageUrl="~/image/update.png" /></a> 
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style14">
                    <asp:Button ID="Button3" runat="server" Text="+" Height="30px" Width="30px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style13">
                    <asp:Button ID="Button4" runat="server" Text="-" Height="30px" Width="30px" OnClick="Button4_Click" />
                </td>
                <td class="auto-style12"><strong>YEMEK EKLEME</strong><br /> </td>
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
                <td class="auto-style9"><strong>Yemek Ad:</strong></td>
                <td>
                    <asp:TextBox ID="TxtYemekAd" runat="server" CssClass="txt" Height="20px" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Yemek Malzeme:</strong></td>
                <td>
                    <asp:TextBox ID="TxtYemekMalzeme" runat="server" CssClass="txt" Height="50px" TextMode="MultiLine" Width="181px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16"><strong>Yemek Tarifi:</strong></td>
                <td class="auto-style17">
                    <asp:TextBox ID="TxtYemekTarifi" runat="server" CssClass="txt" Height="50px" TextMode="MultiLine" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Kategori:</strong></td>
                <td class="auto-style15">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="txt" Width="180px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style15">
                    <asp:Button ID="BtnEkle" runat="server" CssClass="button1" Height="35px" Text="Ekle" Width="179px" OnClick="BtnEkle_Click1" />
                </td>
            </tr>
        </table>

    </asp:Panel>

</asp:Content>
