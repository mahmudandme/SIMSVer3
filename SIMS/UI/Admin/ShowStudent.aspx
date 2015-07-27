﻿<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="ShowStudent.aspx.cs" Inherits="SIMS.UI.Admin.ShowStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
        <h3 class="page-header">Student information</h3>
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                <div class="form-group">
                    <asp:Label ID="Label1" CssClass="text-primary" runat="server" Text="Enter student id and then select a department"></asp:Label>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                <div class="form-group">
                    <label for="inputdefault" style="float: left">Student ID</label><br />
                    <asp:TextBox ID="studentIdTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                    <span class="label label-warning pull-left" style="float: left; font-size: 20px; position: relative" id="studentIdLabel" visible="False" runat="server"></span>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                <div class="form-group">
                    <label for="inputdefault" style="float: left">Select department</label><br />
                    <asp:DropDownList ID="departmentDropDownlist" Width="100%" Height="32px" runat="server" AutoPostBack="True" OnSelectedIndexChanged="departmentDropDownlist_SelectedIndexChanged"></asp:DropDownList>
                </div>
            </div>
            <%-- <div class="row placeholders">
 <div class="col-xs-6 col-sm-3 col-md-7 placeholder">        
     <span class="label label-success" style="float: left;font-size: 20px;position: relative" id="successStatusLabel" runat="server"></span>  
     <span class="label label-warning" style="float: left;font-size: 20px;position: relative" id="failStatusLabel" runat="server"></span>       
  </div>
     </div> --%>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                <div class="form-group">
                    <asp:GridView ID="studentInformationGridView" AutoGenerateColumns="False" CssClass="table table-responsive table-bordered" runat="server">
                        <Columns>
                            <asp:TemplateField HeaderText="No.">
                                <ItemTemplate>
                                    <%# Container.DataItemIndex+1 %>>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="Student ID" DataField="StudentID" />
                             <asp:BoundField HeaderText="Name" DataField="StudentName" />
                             <asp:BoundField HeaderText="Gender" DataField="Gender" />
                            <asp:BoundField HeaderText="Nationality" DataField="Nationality" />
                             <asp:BoundField HeaderText="Department" DataField="DepartmentName" />
                             <asp:BoundField HeaderText="Session" DataField="Session" />
                            <asp:BoundField HeaderText="Year-Term" DataField="YearTerm" />                                                                                     
                        </Columns>

                    </asp:GridView>    
                </div>
            </div>
        </div>

    </div>
</asp:Content>
