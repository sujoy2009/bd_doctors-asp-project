<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="user_detail.aspx.cs" Inherits="BD_doctors_2.user_detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  

   
<div style="width:720px" class="col-md-6 mx-auto" runat="server" id="list_div">
            <div class="card">
               <div class="card-body" style="background-color:lightcyan">
                   <center>
                        <br >
               
                                  <asp:Label ID="hellow_name" runat="server"></asp:Label>
                       <br >
                              <img style="width:100px;border-radius:50%" src="imgs/pi.jpg" alt="Avatar"  runat ="server" ID="picid" />
                    
                     
                                
                               <br >
               
                                  <asp:Label ID="name_l" runat="server" style="color:blue"></asp:Label>
                                <br >
                                   <asp:Label ID="email_l" runat="server" style="color:blue"></asp:Label>
                 <br >
                                   <asp:Label ID="contact_l" runat="server" style="color:blue"></asp:Label>
                 <br >
                                   <asp:Label ID="fees_l" runat="server" style="color:blue"></asp:Label>
                 <br >
                                    <asp:Label ID="adress_l" runat="server" style="color:blue"></asp:Label>
                 <br >
                                 <asp:Label ID="catagory_l" runat="server" style="color:blue"></asp:Label>
                 <br >
                                  <asp:Label ID="location_l" runat="server" style="color:blue"></asp:Label>
                          <br />
                      
               

                   </center>
                
                                 
                              
                        

                     
                             

                              
                

                       </div>

                           </div>
                   
                     
                 </div>
    <div>
        <br />
        <center>
              <div style="width:50px;margin:0 auto;">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Update"  OnClick="update_button"  />
                        </div>
        </center>
       
    </div>
    <br >
                 
</asp:Content>
