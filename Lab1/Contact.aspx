<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<script runat="server">
    protected void Show_Promotion_Click(object sender, EventArgs e)
    {
        promotionCode.Visible = true;
    }
</script>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">

     
            <asp:ValidationSummary runat="server" CssClass="text-danger" />
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label">Login:</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="UserName" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" CssClass="text-danger" Display="Dynamic" ErrorMessage="Pole powino byc uzupelnione" />
                </div>
            </div>

            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email:</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="Email" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Email" CssClass="text-danger" Display="Dynamic" ErrorMessage="Pole powino byc uzupelnione" />
                    <asp:RegularExpressionValidator ID="validateEmail" runat="server" ErrorMessage="Invalid email." CssClass="text-danger" ControlToValidate="Email"  ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" />
                </div>
            </div>

             <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="Age"  CssClass="col-md-2 control-label">Wiek:</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="Age" CssClass="form-control" />
                    <asp:RangeValidator runat="server" ControlToValidate="Age" MinimumValue="10" CssClass="text-danger" MaximumValue="90"  Display="Dynamic" ErrorMessage="Wpisz poprawny wiek! (od 10 do 90)" />
                </div>
            </div>

            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Haslo:</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" Display="Dynamic" ErrorMessage="Pole powino byc uzupelnione" /> 
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Potwierdzenie hasla:</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword" CssClass="text-danger" Display="Dynamic" ErrorMessage="Pole powino byc uzupelnione" /> 
                    <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" CssClass="text-danger" Display="Dynamic" ErrorMessage="Haslo oraz potwierdzenie go nie zgdzaja" />
                </div>
            </div>
      
            <asp:Label runat="server" Display="Dynamic" Visible="false" id="promotionCode" >Kod rabarowy: PSW18</asp:Label>
            <asp:Label runat="server" ID="Information"></asp:Label>
            <div class="form-group">
                <div class="col-md-offset-2 col-md-10">
                    <asp:Button runat="server" UseSubmitBehavior="false"  Text="Pokaz kod rabatowy"  OnClick="Show_Promotion_Click" CssClass="btn btn-primary" />
                    <asp:Button runat="server" Text="Zarejestruj" CssClass="btn btn-default" />
                </div>
            </div>
       
    </div>
</asp:Content>
