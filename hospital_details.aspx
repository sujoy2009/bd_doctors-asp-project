<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hospital_details.aspx.cs" Inherits="BD_doctors_2.hospital_details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="Bootstrap/CSS/bootstrap.min.css" rel="stylesheet" />
    <link href="Fontwasome/css/all.css" rel="stylesheet" />
    <script src="Bootstrap/JS/jquery-3.2.1.slim.min.js"></script>
    <script src="Bootstrap/JS/popper.min.js"></script>
    <script src="Bootstrap/JS/bootstrap.min.js"></script>

    <link href="CSS/customstyle.css" rel="stylesheet" />
    <style>
* {
  text-align: center;
  color: blue;
}
</style>
</head>
<body>
    <form id="form1" runat="server" style="background-color:lightskyblue">
         <div>
            <nav class="navbar navbar-expand-lg navbar-light" style="background-color:gray">
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
                            <asp:LinkButton class="nav-link" ID="LinkButton4" runat="server">View Books</asp:LinkButton>
                        </li>
                        
                       <li class="nav-item active">
                            <a class="nav-link" href="login.aspx">Login</a>
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
        <div>
            <center>
                   <h4><b>Hospitals of Khulna city</b></h4>

            </center>
         

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
        <br >
           <div>
               <center>
                     <h4><b>Hospitals of Dhaka city</b></h4>

               </center>
          

               <div class="col-md-6 mx-auto" runat="server" id="Div1">
            <div class="card">
               <div class="card-body">
            <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" rowstyle-height ="70px">
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
         <div>
             <center>

                 <h4><b>Hospitals of Rajshahi city</b></h4>

             </center>
            

               <div class="col-md-6 mx-auto" runat="server" id="Div2">
            <div class="card">
               <div class="card-body">
            <asp:GridView ID="GridView3" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" rowstyle-height ="70px">
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
        <br >
           <div>
               <center>
                    <h4><b>Hospitals of Chitagong city</b></h4>

               </center>
           

               <div class="col-md-6 mx-auto" runat="server" id="Div3">
            <div class="card">
               <div class="card-body">
            <asp:GridView ID="GridView4" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" rowstyle-height ="70px">
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
