<%@ Page Title="" Language="C#" MasterPageFile="~/bookStore.master" AutoEventWireup="true" CodeFile="editXml.aspx.cs" Inherits="editXml" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
    <h2 class="centered">XML Edit</h2>
    <br />
    <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
    <br />
    <br />

    <asp:Label ID="lblTitle" runat="server" Text="Title:"></asp:Label>
    <br />
    <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblAuthor" runat="server" Text="Author:"></asp:Label>
    <br />
    <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblGenre" runat="server" Text="Genre"></asp:Label>
    <br />
    <asp:TextBox ID="txtGenre" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblDescription" runat="server" Text="Description:"></asp:Label>
    <br />
    <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblPrice" runat="server" Text="Price:"></asp:Label>
    <br />
    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblQuantity" runat="server" Text="Quantity:"></asp:Label>
    <br />
    <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblImg" runat="server" Text="Image URL:"></asp:Label>
    <br />
    <asp:TextBox ID="txtImg" runat="server"></asp:TextBox>
    <br />
    <br />
    <br />
    <p>Search selection by title for edit/delete.</p>
    <asp:Button ID="btnEdit" runat="server" Text="Edit" OnClick="btnEdit_Click" />
    <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
    <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" />
    <br />
    <asp:GridView ID="stockGridView" runat="server"></asp:GridView>
        </div>
</asp:Content>

