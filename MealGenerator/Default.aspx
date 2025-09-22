<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MealGenerator._Default" %>


    
   <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            font-family: Arial;
        }

        .main_container {
            max-width: 600px;
            margin: 0 auto;
            text-align: center;
            padding-top: 20px;
        }

        .meal-box {
            margin-top: 20px;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
        }

        .meal-image {
            max-width: 100%;
            height: auto;
        }
    </style>

    <div class="main_container">
        <h1>What Should I Eat?</h1>
        <asp:Button ID="btnGetMeal" runat="server" Text="Get Random Meal" OnClick="btnGetMeal_Click" />
        <div class="meal-box">
            <asp:Label ID="lblMealName" runat="server" Font-Bold="true" Font-Size="Large"></asp:Label><br /><br />
            <asp:Image ID="imgMeal" runat="server" CssClass="meal-image" />
            <br /><br />
            <asp:HyperLink ID="lnkInstructions" runat="server" Target="_blank">View Recipe Instructions</asp:HyperLink>
        </div>
    </div>
</asp:Content>