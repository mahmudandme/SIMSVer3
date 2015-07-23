<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="AddedStudentInformation.aspx.cs" Inherits="SIMS.UI.Admin.AddedStudentInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
 <div class="row">

<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
         <div class="form-group">
             <asp:GridView ID="CreatedStudentInformationGridView" CssClass="table table-responsive" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                 <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                 <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                 <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                 <RowStyle BackColor="White" ForeColor="#003399" />
                 <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                 <SortedAscendingCellStyle BackColor="#EDF6F6" />
                 <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                 <SortedDescendingCellStyle BackColor="#D6DFDF" />
                 <SortedDescendingHeaderStyle BackColor="#002876" />
                 

             </asp:GridView>
  </div>
  </div>
 </div>
<div class="row">
<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
    <asp:Button ID="generatePDFButton" runat="server" Text="Button" />
  </div>
 </div>
</asp:Content>
