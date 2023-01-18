<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Infinite.ASP.NET.Test.WebForm1" %>


 <!DOCTYPE html>

 

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
<link href="NewFolder1/bootstrap.min.css" rel="stylesheet" />
</head>
<body class="mt-4">
<form id="form1" runat="server">
<div class="container">
<div class="row">
<div class="col-md-4"></div>
<div class="col-md-5">
<div class="md-2 row">
<h2>Create New Position</h2>
<label class="form-label col-md-4">Position Code</label>


<asp:TextBox ID="TxtPositionCode" runat="server" CssClass="form-control" />
<asp:RequiredFieldValidator Display="Dynamic"  ForeColor="red" ID="RfvPositionCode" runat="server" ControlToValidate="TxtPositionCode" ErrorMessage="Please enter Position Code"></asp:RequiredFieldValidator>
</div>


<div class="md-2 row">
<label class="form-label col-md-4">Description</label>

<asp:TextBox ID="TxtDescription" runat="server" CssClass="form-control" />
<asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ID="RfvDescription" runat="server" ControlToValidate="TxtDescription" ErrorMessage="Please enter description"></asp:RequiredFieldValidator>
</div>

 

                    
<div class="md-2 row">
<label class="form-label col-md-4">Year</label>

<asp:DropDownList CssClass="form-select" ID="DdlYear" runat="server">
<asp:ListItem Text="---select---" Value="0" />
<asp:ListItem Text="2000" />
<asp:ListItem Text="2021" />
<asp:ListItem Text="2022" />
<asp:ListItem Text="2023" />
<asp:ListItem Text="2024" />
</asp:DropDownList>
<asp:RegularExpressionValidator Display="Dynamic" ForeColor="Red" InitialValue="0" ErrorMessage="Please select a year" ID="RfvYear" ControlToValidate="DdlYear" runat="server" />

 

                        </div>

<div class="md-2 row">
<label class="form-label col-md-4">Budgeted Strength</label>

<asp:TextBox ID="TxtBudgetedStrength" runat="server" CssClass="form-control" />
<asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ID="RevBudgetedStrength" runat="server" ControlToValidate="TxtBudgetedStrength" ErrorMessage="Please enter BudgetedStrength" ></asp:RequiredFieldValidator>
</div>

<div class="md-2 row">
<label class="form-label col-md-4">Current Strength</label>

<asp:TextBox ID="TxtCurrentStrength" runat="server" CssClass="form-control" />
<asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ID="RfvCurrentStrength" runat="server" ControlToValidate="TxtCurrentStrength" ErrorMessage="Please enter Current Strength"></asp:RequiredFieldValidator>
</div>

<div class="mb-2">
<asp:Button Text="Add New" ID="BtnAddNew"  runat="server" Onclick="BtnAddNew_Click"/>
<asp:Button Text="Reset" ID="BtnReset" runat="server" CausesValidation="false" />
</div>
</div>
</div>

 

         

</div>

 
 </form>
</body>

 

</html>