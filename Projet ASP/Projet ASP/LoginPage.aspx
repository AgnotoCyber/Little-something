<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Projet_ASP.LoginPage"  EnableEventValidation="false" ValidateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
      <script src="jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.min.js"></script>
   
    <style type="text/css">
        .loginform {
            border: 5px solid solid;
            margin: auto;
            margin-top: 70px;
            padding: 20px;
            background-color: white;
            box-shadow: 2px 5px 55px #000000;
            border-radius: 10px;
            width: 400px;
            height: 500px;
        }

        .imgLogin {
            margin-left: auto;
            margin-right: auto;
            margin-bottom: 40px;
         /*TSTdEanimation*/
  -webkit-transform: rotate(0deg);
-moz-transform: rotate(0deg);
-o-transform: rotate(0deg);
-ms-transform: rotate(0deg);
transform: rotate(0deg);
transition-duration:0.4s;

        }
        .font-small {
            font-size: 0.8rem;
        }

        .Rouge-gradient{
background: rgb(126,7,27);
background: linear-gradient(0deg, rgba(126,7,27,1) 0%, rgba(228,13,56,1) 50%, rgba(126,7,27,1) 100%);

        }
.btn-grad {background-image: linear-gradient(to right, #e52d27 0%, #b31217 51%, #e52d27 100%)}
.btn-grad:hover { background-position: right center; }


        img {
            width: 120px;
            height: 160px;
        }

        body {
            background: rgb(126,7,27);
            background: linear-gradient(90deg, rgba(126,7,27,1) 0%, rgba(228,13,56,1) 50%, rgba(126,7,27,1) 100%);
        }

        #Button1 {
            width: 250px;
            margin-left: 55px;
            margin-right: auto;
            margin-top: 20px;
           
        }
        #groupeButton{
           width:300px;
            margin-left: 35px;  
            margin-top: 130px;         
        }
        .form-check-label{
            margin-left:79px;    
        }
        .rotate {

/**/
       -webkit-transform: rotate(-90deg);
-moz-transform: rotate(-90deg);
-o-transform: rotate(-90deg);
-ms-transform: rotate(-90deg);
transform: rotate(-90deg);
transition-duration:0.4s;
}
    </style>
    <script type="text/javascript">
        function Tourne() {
            document.getElementById("PageDeChoix").style.display = "none";
            document.getElementById("PageDeSaisir").style.display = "block";
            
        }
        //function VendeurClick()
        //{
        //    document.getElementById("PageDeChoix").style.display = "none";
        //    document.getElementById("PageDeSaisir").style.display = "block";
           
        //}

    </script>
    <script> $(document).ready(function () {
     $(".imgLogin").mouseenter(function () {
         $(this).addClass("rotate");
     });
     $(".imgLogin").mouseleave(function () {
         $(this).removeClass("rotate");
     });
 });</script>
    <script>
        function alertMSG() {
            Swal.fire(
  'Good job!',
  'You clicked the button!',
  'success'
)
        }

    </script>


</head>
<body> 
    
    <form id="form1" runat="server">
        <div>
            <div id="PageDeChoix" style="display:block">
                <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
                <div class="loginform">
                    <div class="imgLogin">
                        <img src="logo/antmedialogo1.jpeg" class="rounded mx-auto d-block animated jackInTheBox" />
                    </div>
                    <div id="groupeButton">
                        <asp:HiddenField ID="tst1" Value="true" runat="server" />
                        <div class="btn-group btn-group-toggle btn-block" data-toggle="buttons">
                           
                            <asp:Button ID="Button2" runat="server" Text="Livreur" CssClass="btn btn-danger btn-lg " OnClick="Button2_Click" OnClientClick="Tourne(); return false;" />
                            <asp:Button ID="Button3" runat="server" Text="Vendeur" CssClass="btn btn-info  btn-lg "  OnClick="Button3_Click" OnClientClick="Tourne(); return false;"/>
                        </div>
                        <label class="form-check-label " for="exampleCheck1" style="margin-top: 30px;">Choise votre type:</label>
                    </div>
                </div>
            </div>
<%--  Login Page--%>
            <div id="PageDeSaisir" style="display: none"  >
            <div class="loginform" style="position:relative;">
                <%--Logo--%>
                <div class="imgLogin">
                    <img src="logo/antmedialogo1.jpeg" class="rounded mx-auto d-block" />
                </div>
                <%--zone de text --%>
                <div class="form-group">
                    <asp:TextBox ID="TextBox1" runat="server" Class="form-control" aria-describedby="emailHelp" placeholder="Login"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="invalid-feedback text-danger font-weight-bold" ErrorMessage="Champ Vide !" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Champ Vide !" CssClass="invalid-feedback text-danger font-weight-bold" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <%--check user type--%>
                <div class="form-check">
                  <%--  <input type="checkbox" class="form-check-input" id="exampleCheck1">--%>
                    <label class="form-check-label" for="exampleCheck1" onclick="alertMSG()" >Oublier de mot passe ?</label>
                </div>
                <%--Button de Login--%>

                <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" CssClass=" btn btn-grad  "  ForeColor="White" />
            </div>
                </div>
    <%--  Login Page--%>
        </div>

    </form>
    
            <!-- Bootstrap core JavaScript-->
            <script src="Theme/vendor/jquery/jquery.min.js"></script>
            <script src="Theme/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

            <!-- Core plugin JavaScript-->
            <script src="Theme/vendor/jquery-easing/jquery.easing.min.js"></script>

            <!-- Custom scripts for all pages-->
            <script src="Theme/js/sb-admin-2.min.js"></script>

            <!-- Page level plugins -->
            <script src="Theme/vendor/chart.js/Chart.min.js"></script>

            <!-- Page level custom scripts -->
            <script src="Theme/js/demo/chart-area-demo.js"></script>
            <script src="Theme/js/demo/chart-pie-demo.js"></script>
</body>
</html>
