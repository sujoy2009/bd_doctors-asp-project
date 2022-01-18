<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="show.aspx.cs" Inherits="BD_doctors_2.show" %>

<!DOCTYPE html>

<html >
<head runat="server">
    <title></title>
       

    <link href="Bootstrap/CSS/bootstrap.min.css" rel="stylesheet" />
    <link href="Fontwasome/css/all.css" rel="stylesheet" />
    <script src="Bootstrap/JS/jquery-3.2.1.slim.min.js"></script>
    <script src="Bootstrap/JS/popper.min.js"></script>
    <script src="Bootstrap/JS/bootstrap.min.js"></script>

    <link href="CSS/customstyle.css" rel="stylesheet" />

   
</head>
<body>
    <style type="text/css">
  
    .col-xs-9
    {
      width: 70%;
      background: #E9ECEF;
      border-radius: 10px;
     
    }

    .col-sm-3
    {
      margin: 0px 0px 10px 15px;
      padding-top: 5px;
      width: 25%;
      background: #E9ECEF;
      border-radius: 10px;
      height: 110px;
    }

    .col-sm-3 img
    {
      border-radius: 50px;
    }
   .row{
       width:100%;
       height:auto;
   }
   .myDiv {
  border: 5px outset red;
  background-color: lightblue;
  text-align: center;
}
  
 </style>

    <form id="form1" runat="server" style="background-color:#E6E6FA">

         <div>
            <nav class="navbar navbar-expand-lg navbar-light" style="background-color:green">
                <a class="navbar-brand" href="#">
                    <img src="imgs/doctor.jpg" width="30" height="30" />
                    Bd_Doctors
                </a>

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                 <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav m-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="homepage.aspx">Home</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="#">About Us</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Terms</a>
                        </li>

                    </ul>

                    <ul class="navbar-nav ">
                       
                        
                       <li class="nav-item active">
                            <a class="nav-link" href="loginpage.aspx">Login</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="signup.aspx">Register</a>
                        </li>
                        <li class="nav-item active">
                            <asp:LinkButton class="nav-link" ID="LinkButton3" runat="server">Logout</asp:LinkButton>
                        </li>

                        <li class="nav-item active">
                            <asp:LinkButton class="nav-link" ID="LinkButton7" runat="server">Hello user</asp:LinkButton>

                        </li>
                    </ul>
                </div>


            </nav>
        </div>


          <div class="container">
      <div class="row">
         <div class="col-md-6 mx-auto">
            <div class="card">
               <div class="card-body">
                   <center>
                 
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
                   <br >
                     <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="findid" runat="server" Text="Find doctor" OnClick="show_doc_list" />
                        </div>
                  </center>
                  </div>
                </div>
              </div>
           </div>
               </div>
              <br>
                       
        
        
     
             <br >
                 
         <div style="width:720px" class="col-md-6 mx-auto" runat="server" id="list_div">
            <div class="card">
               <div class="card-body">
                   <asp:DataList ID="DataList1" runat="server" CssClass="row">
                       <ItemTemplate>
                           <div  style="height:420px; width:700px;margin-top:0px;" class="row">
           <div style="width:100%; text-align:center"; class="myDiv" >
                                 
                               <img src="<%#Eval("pic","imgs/{0}") %>" alt="Avatar"  style="width:100px;border-radius: 50%">
                               
                            
                               <br >
                                  <h5><b>Name:<%#Eval("name") %></b> </h5> 
                                <br >
                                   <h5><b>Catagory:<%#Eval("catagory") %></b> </h5> 
                 <br >
                                   <h5><b>Location:<%#Eval("location") %></b> </h5> 
                 <br >
                                   <h5><b>Adress:<%#Eval("adress") %></b> </h5> 
                 <br >
                                   <h5><b>Visiting fees:<%#Eval("tk") %></b> </h5> 
                 <br >
                                  <h5><b>Contact Number:<%#Eval("contact") %></b> </h5> 
               

                     
                             

                              
                

                       </div>

                           </div>
                       </ItemTemplate>
                   </asp:DataList>
                     </div>
                 </div>
                </div>
        <br >
            <div class="container"  >
     
         <div class="col-md-6 mx-auto" runat="server" id="grid_div">
            <div class="card">
               <div class="card-body">
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" rowstyle-height ="70px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
                     </div>
                 </div>
                </div>

             </div>

    </form>
</body>
</html>
