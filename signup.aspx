<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="BD_doctors_2.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <div class="container" ">
      <div class="row">
         <div class="col-md-8 mx-auto">
            <div class="card" style="background-color:steelblue">
               <div class="card-body">
                  <div class="row" style="background-color:steelblue">
                     <div class="col" >
                        <center>
                           <img width="100px" src="imgs/pic2.jpg"/ style="background-color:steelblue">
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Doctors Registration Form</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="nameid" runat="server" placeholder="Enter Full Name"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Date of Birth</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="dateid" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="contactid" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Fees</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="feesid" runat="server" placeholder="Fees"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Location</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="locationid" runat="server">
                              <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="Dhaka" Value="Dhaka" />
                              <asp:ListItem Text="Khulna" Value="Khulna" />
                              <asp:ListItem Text="Rajshahi" Value="Rajshahi" />
                              <asp:ListItem Text="Dinajpur" Value="Dinajpur" />
                              <asp:ListItem Text="Chitagong" Value="Chitagong" />
                               <asp:ListItem Text="Ranjpur" Value="Ranjpur" />
                           </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Catagory</label>
                          <div class="form-group">
                           <asp:DropDownList class="form-control" ID="catagoryid" runat="server">
                              <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="Medicine" Value="Medicine" />
                              <asp:ListItem Text="Dental" Value="Dental" />
                              <asp:ListItem Text="Gioconologist" Value="Gioconologist" />
                              <asp:ListItem Text="Heart specialist" Value="Heart specialist" />
                              <asp:ListItem Text="Chest Specialist" Value="Chest Specialist" />
                               <asp:ListItem Text="neuriologist" Value="neuriologist" />
                           </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>BMDC</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="BMDCid" runat="server" placeholder="Enter BMDC number" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Full Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="adressid" runat="server" placeholder="Chember Adresss" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <span class="badge badge-pill badge-info">Login Credentials</span>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Member ID</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="emailid" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="passwardid" runat="server" placeholder="Enter passward" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                     <div class="col-md-6">
                        <label>Image upload</label>
                        <div class="form-group">
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </div>
                     </div>
                  <div class="row">
                     <div class="col">
                         <center>
                               <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                        </div>
                         </center>
                      
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br><br>
         </div>
      </div>
   </div>
</asp:Content>
