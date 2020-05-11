<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="surveyform.aspx.cs" Inherits="Default2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
    <div id="content">
          <table style="width: 40%;">
            <tr>
                <td>
                    Title</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="titleValidator" runat="server" Style="top: 98px; left: 367px; position: absolute; height: 26px; width: 162px" ErrorMessage="title required" ControlToValidate="txtName">
                    </asp:RequiredFieldValidator> 
                </td>
            </tr>
            <tr>
                <td>
                    Author</td>
                <td>
                    <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Genre</td>
                <td>
                    <asp:TextBox ID="txtGenre" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Who is requesting this?</td>
                <td>
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                </td>
            </tr>
           
           
        </table>
    </div>
    
    <asp:Button ID="btnAdd" runat="server" onclick="btnAdd_Click" Text="Add" />
    <asp:Button ID="bntDelete" runat="server" Text="Delete" 
        onclick="bntDelete_Click" />
    <asp:Button ID="bntSearch" runat="server" Text="Search" 
        onclick="bntSearch_Click" />
    
    <br /><br />
    
    <asp:GridView ID="GridViewStudentList" runat="server">
    </asp:GridView>
</asp:Content>

        