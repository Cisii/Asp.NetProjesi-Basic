<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="YemekTarifiSite.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder">
    <asp:DataList ID="DataList2" runat="server" Height="112px" OnSelectedIndexChanged="DataList2_SelectedIndexChanged" Width="345px">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
&nbsp;&nbsp;&nbsp;
    <br />
    <asp:Image ID="Image1" runat="server" Height="231px" ImageUrl="~/image/blog.png" Width="350px" />
</asp:Content>

