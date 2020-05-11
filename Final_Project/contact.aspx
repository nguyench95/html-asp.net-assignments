<%@ Page Title="" Language="C#" MasterPageFile="~/bookStore.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2 class="centered">Contact Us</h2>
    

    <div id="formWrapper">
        <asp:Label ID="lblName" runat="server" Text="Name: "></asp:Label>
        <br />
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="valName" runat="server" ErrorMessage="Name is required field." ValidationGroup="1" ControlToValidate="txtName"></asp:RequiredFieldValidator>
        <br />

        <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label>
        <br />
        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
        <br />
        <br />

        <asp:Label ID="lblPhone" runat="server" Text="Phone:"></asp:Label>
        <br />
        <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone"></asp:TextBox>
        <br />
        <br />

        <asp:Label ID="lblComment" runat="server" Text="Comment: "></asp:Label>
        <br />
        <asp:TextBox ID="txtComment" runat="server" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="valComment" runat="server" ErrorMessage="Comment is required field." ControlToValidate="txtComment" ValidationGroup="1"></asp:RequiredFieldValidator>
        <br />

        <asp:Button ID="btnSubmit" runat="server" Text="Submit" ValidationGroup="1" OnClick="btnSubmit_Click" />
        <br />
        <asp:CustomValidator ID="valEmailOrPhone" runat="server" ErrorMessage="Email or phone number required." OnServerValidate="valEmailOrPhone_ServerValidate" ValidationGroup="1"></asp:CustomValidator>

    </div>

</asp:Content>

