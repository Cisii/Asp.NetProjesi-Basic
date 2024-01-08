<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="YemekTarifiSite.Mesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        background-color: #9933FF;
    }
    .auto-style5 {
        height: 26px;
        width: 240px;
    }
    .auto-style6 {
        height: 26px;
        text-align: right;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button2" runat="server" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td class="auto-style4"><strong>Mesaj Listesi</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("MesajAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">
                           <a href="MesajDetay.aspx?MesajId=<%#Eval("MesajId")%>"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/image/readIcon.png" Width="34px" /></a> 
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>

    </asp:Panel>
</asp:Content>
