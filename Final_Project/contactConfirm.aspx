<%@ Page Title="" Language="C#" MasterPageFile="~/bookStore.master" AutoEventWireup="true" CodeFile="contactConfirm.aspx.cs" Inherits="contactConfirm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
    <br />
    <h2 class="centered">Confirm</h2>
    <h2 class="centered">Is the following information correct?</h2>
    <br />
    <br />
    <br />
    <br />

    <div id="formWrapper">
        <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblPhone" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblComment" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnBack" runat="server" Text="<-- Back" OnClick="btnBack_Click" />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    </div>

</asp:Content>

