<%@ Page Title="" Language="C#" MasterPageFile="~/assignment1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="comp2007_assignment1._default" %>
<%@ Register TagPrefix="uc" TagName="Calculator" Src="~/calculator.ascx" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Game Calculator</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-md-3 center-block well well-sm">
        <h2>Game 1</h2>
        <br />
    <uc:Calculator ID="calc1" runat="server"  />
    </div>

    <div class="col-md-3 center-block well well-sm">
        <h2>Game 2</h2>
        <br />
    <uc:Calculator ID="calc2" runat="server" />
    </div>

    <div class="col-md-3 center-block well well-sm">
        <h2>Game 3</h2>
        <br />
    <uc:Calculator ID="calc3" runat="server" />
    </div>

    <div class="col-md-3 center-block well well-sm">
        <h2>Game 4</h2>
        <br />
    <uc:Calculator ID="calc4" runat="server" />
    </div>

    <br />
    <br />

    <br />
    <br />
    <br />

    <div>
        <center><asp:Button ID="submit" Text="Submit" runat="server" OnClick="submit_Click" /></center>

        <br />
        <br />
        <br />
        <br />
    </div>

    <center><asp:Label ID="summary" runat="server"></asp:Label></center>

</asp:Content>
