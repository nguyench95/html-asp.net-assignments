<%@ Page Title="" Language="C#" MasterPageFile="~/bookStore.master" AutoEventWireup="true" CodeFile="inventory.aspx.cs" Inherits="inventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2 class="centered">Current Stock</h2>
    <br />

    <p>Search</p>
    <asp:textbox ID="txtSearch" runat="server"></asp:textbox>
    <asp:button ID="btnTitle" runat="server" text="Search by Title" OnClick="btnTitle_Click" />
    <asp:button ID="btnAuthor" runat="server" text="Search by Author" OnClick="btnAuthor_Click" />
    <asp:button ID="btnGenre" runat="server" text="Search by Genre" OnClick="btnGenre_Click" />
    <asp:button ID="btnReset" runat="server" text="Reset" OnClick="btnReset_Click" />
    <br />
    <asp:label ID="lblSearchMsg" runat="server" text=""></asp:label>
    <br />
    <br />

    <asp:GridView ID="stockGridView" runat="server"></asp:GridView>







</asp:Content>

