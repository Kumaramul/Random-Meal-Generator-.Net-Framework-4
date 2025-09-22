<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="MealGenerator.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Your contact page.</h3>
        <address>
            xx xx xx<br />
            xx, xx xxxxxx-xxxx<br />
            <abbr title="Phone">P:</abbr>
            xxx.xxx.xxxxx
        </address>

        <address>
            <strong>Support:</strong>   <a href="mailto:Support@example.com">xxxx@example.com</a><br />
            <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">xxxxx@example.com</a>
        </address>
    </main>
</asp:Content>
