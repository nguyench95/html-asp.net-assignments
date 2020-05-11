<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="surveydisplay.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        $(document).ready(function () {
            $.ajax({
                type: "GET",
                url: "XMLFile.xml",
                dataType: "xml",
                success: xmlParser
            });
        });

        function xmlParser(xml) {
            $('#load').fadeOut();
            $(xml).find("Book").each(function () {
                $("#container").append('<div class="book"><img src="images/' + $(this).find("image").text() + '" width="200" height="300" alt="'
                    + $(this).find("title").text() + '" /><br /><div class="title">' + $(this).find("title").text() + '<br />' + $(this).find("author").text() + '<br />' + $(this).find("genre").text() +  '</div></div>');
                $(".Book").fadeIn(1000);
            });
        }
    </script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div>
       <h3>
        Welcome
       <asp:Label ID="txtFirstName" runat="server" Text="fname" Font-Bold="True" 
            ForeColor="Red"></asp:Label> 
        <asp:Label ID="txtLastName" runat="server" Text="lname" Font-Bold="True" 
            ForeColor="Red"></asp:Label>!
         Take a look at our selection. </h3>
    </div>
    <div id="content">
        <div id="container">
            <div class="loader"><img src="images/loading.gif" id="load" width="400" height="400"/></div>

        </div>

    </div>

</asp:Content>

