<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="GiveRegistrationPermission.aspx.cs" Inherits="SIMS.UI.Admin.GiveRegistrationPermission" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">    
     <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h3 class="page-header">Give registration permission to students</h3>                        
     <div class="row placeholders">
    <div class="col-xs-6 col-sm-3 col-md-4 placeholder">                            
     <div class="form-group">
    <label for="inputdefault" style="float: left">Select Department</label><br/>
         <asp:DropDownList ID="departmentDropDownList" CssClass="form-control" Width="100%" runat="server"></asp:DropDownList>
  </div>
         <div class="form-group">
    <label for="inputdefault" style="float: left">Select Session</label><br/>
         <asp:DropDownList ID="sessionDropDownList" CssClass="form-control" Width="100%" runat="server"></asp:DropDownList>
  </div>
        <div class="form-group">
    <label for="inputdefault" style="float: left">Select YearTerm</label><br/>
         <asp:DropDownList ID="yearTermDropDownList" CssClass="form-control" Width="100%" runat="server"></asp:DropDownList>
  </div>
        <div class="myButtonClass">           
            <asp:Button ID="saveRegistrationPermissionButton" CssClass="btn btn-primary pull-right" Width="100px" runat="server" Text="Save" OnClick="saveRegistrationPermissionButton_Click"/>
        </div>       
  </div>
     </div>        
        <div class="row placeholders">
 <div class="col-xs-6 col-sm-3 col-md-7 placeholder">        
     <span class="label label-success" style="float: left;font-size: 20px;position:relative" id="successStatusLabel" runat="server"></span>  
     <span class="label label-warning" style="float: left;font-size: 20px;position:relative" id="failStatusLabel" runat="server"></span>       
  </div>
     </div>                                          
        <div class="row placeholders">
 <div class="col-xs-6 col-sm-3 col-md-7 placeholder">            
  </div>
     </div>        
        </div>
</asp:Content>