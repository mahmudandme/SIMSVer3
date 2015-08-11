<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SIMS.UI.Admin.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h3 class="page-header">Login</h3>
                        
     <div class="row placeholders">
    <div class="col-xs-6 col-sm-3 col-md-4 placeholder">  
        <table class="table table-responsive">
            <tr>
                <th colspan="2"> Enter login information</th>
            </tr>
            <tr>
                <td>Email : </td>
                <td>
                    <asp:TextBox ID="codeTextBox" runat="server" CssClass="form-control" Width="200px"></asp:TextBox></td>                
                    <td >
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Width="200px" runat="server" ControlToValidate="codeTextBox" ForeColor="red" ErrorMessage="Code is required"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>Password :</td>
                <td>
                    <asp:TextBox ID="passwoedTextBox" runat="server" TextMode="Password" Width="200px" CssClass="form-control"></asp:TextBox></td>                
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" Width="200px" runat="server" ControlToValidate="passwoedTextBox" ForeColor="red" ErrorMessage="Password is required"></asp:RequiredFieldValidator></td>
                 </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="loginButton" runat="server" Text="Login" CssClass="btn btn-default right"/></td>                
            </tr>
                </tr>
            <tr>
                
                <td colspan="2">
                     <span class="label label-warning" style="float: left;font-size: 20px;position: relative" id="failStatusLabel" runat="server"></span> 
                </td>                
            </tr>
        </table>                            
    <%-- <div class="form-group">
    <label for="inputdefault" style="float: left">Email</label><br/>
         <asp:TextBox ID="emailTextBox" CssClass="form-control" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email is required" ControlToValidate="emailTextBox"></asp:RequiredFieldValidator>
  </div>
 <div class="form-group">
    <label for="inputdefault" style="float: left">Password</label><br/>
         <asp:TextBox ID="passwordTextBox" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
  </div>
        <div class="myButtonClass">           
            <asp:Button ID="loginButton" CssClass="btn btn-primary pull-right" runat="server" Text="Login"/>  
        </div>    --%>   
  </div>
     </div> 
       
      <%--  <div class="row placeholders">
 <div class="col-xs-6 col-sm-3 col-md-7 placeholder">        
     <span class="label label-success" style="float: left;font-size: 20px;position:relative" id="successStatusLabel" runat="server"></span>  
     <span class="label label-warning" style="float: left;font-size: 20px;position:relative" id="failStatusLabel" runat="server"></span>       
  </div>
     </div>  --%>
        
        
        
                
        <div class="row placeholders">
 <div class="col-xs-6 col-sm-3 col-md-7 placeholder">        
<%--     mm  --%>     
  </div>
     </div>        
        </div>
</asp:Content>
