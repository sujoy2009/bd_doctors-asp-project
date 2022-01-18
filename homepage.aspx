<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="BD_doctors_2.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section>
      
         <img style="width:100%;height:250px;" src="imgs/banar.jpg" class="img-fluid"/>
         <div class="row">
            <div class="col-12">
               <center>
                  <h2>Our Features</h2>
                  <p><b>Our 3 Primary Features -</b></p>
               </center>
            </div>
         </div>
         <div class="row">
            <div class="col-md-4">
               <center>
                  <img width="150px" src="imgs/doctor.jpg"/>
                   <a class="nav-link" href="show.aspx"><h4>Find Doctors</h4></a>
                  <p class="text-justify"> <a class="nav-link" href="show.aspx">Find doctors of your area of special catagory.All highly experienced doctors are listed here</a> </p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img width="150px" src="imgs/hos.jpg"/>
                 <a class="nav-link" href="hospital_details"><h4>Find Hospital</h4></a>
                  <p class="text-justify"> <a class="nav-link" href="hospital_details.aspx">Find Hospital of your area of special catagory.All private and Govt hospital are listed here</a> </p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img width="150px" src="imgs/doctor.jpg"/>
                  <h4>Blood donation</h4>
                   <p class="text-justify"> <a class="nav-link" href="show.aspx">Find dooners of your area of special catagory.</a> </p>
               </center>
            </div>
         </div>
      </div>
   </section>
 
   
</asp:Content>
