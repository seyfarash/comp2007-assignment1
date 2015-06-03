<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="calculator.ascx.cs" Inherits="comp2007_assignment1.calculator" %>

<div> 
    <asp:RadioButtonList ID="winlose" runat="server">
        <asp:ListItem Value="1" Text="Win"></asp:ListItem>
        <asp:ListItem Value="2" Text="Lose"></asp:ListItem>
    </asp:RadioButtonList>
    <asp:RequiredFieldValidator ID="winloseValidate" ControlToValidate="winlose" runat="server" ErrorMessage="Please Choose One"></asp:RequiredFieldValidator>
</div>

<br />
<div class="input-group">
    <asp:Label Text="Scored: " runat="server"></asp:Label>
    <asp:TextBox ID="scored" runat="server" OnTextChanged="scored_TextChanged"></asp:TextBox>
    <asp:RangeValidator ID="scoreValidate" ControlToValidate="scored" runat="server" ErrorMessage="Only Enter numbers above 0 please" MinimumValue="0" MaximumValue="99999"></asp:RangeValidator>
    <asp:RequiredFieldValidator ID="scoreVal" ControlToValidate="scored" runat="server" ErrorMessage="Please Enter a Value"></asp:RequiredFieldValidator>

</div>

<div class="input-group">
    <asp:Label Text="Allowed: " runat="server"></asp:Label>
    <asp:TextBox ID="allowed" runat="server" OnTextChanged="allowed_TextChanged"></asp:TextBox>
    <asp:RangeValidator ID="allowedValidate" ControlToValidate="allowed" runat="server" ErrorMessage="Only Enter numbers above 0 please" MinimumValue="0" MaximumValue="999999"></asp:RangeValidator>
    <asp:RequiredFieldValidator ID="allowVal" ControlToValidate="allowed" runat="server" ErrorMessage="Please Enter a Value"></asp:RequiredFieldValidator>
    
</div>

<div class="input-group">
    <asp:Label Text="Spectators: " runat="server"></asp:Label>
    <asp:TextBox ID="spectate" runat="server"></asp:TextBox>
    <asp:RangeValidator ID="spectateValidate" ControlToValidate="spectate" runat="server" ErrorMessage="Only Enter numbers above 0 please" MinimumValue="0" MaximumValue="99999"></asp:RangeValidator>
    <asp:RequiredFieldValidator ID="specVal" ControlToValidate="spectate" runat="server" ErrorMessage="Please Enter a Value"></asp:RequiredFieldValidator>
</div>

<div>
    <asp:CompareValidator runat="server" ControlToCompare="allowed" Operator="NotEqual" Type="Integer" ControlToValidate="scored" ErrorMessage="Allowed and Scored cannot be the same value" Style="color: red" Display="Dynamic" />
</div>
