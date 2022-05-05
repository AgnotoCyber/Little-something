<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inscriptionForm.aspx.cs" Inherits="Projet_ASP.inscriptionForm" EnableEventValidation="false" ValidateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="Theme/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <script> function MSGalert() { Swal.fire('Good job!', 'You clicked the button!', 'success');        }</script>
   
    <!-- Custom styles for this template-->
    <%--<link href="css/sb-admin-2.min.css" rel="stylesheet">--%>
    <link href="Theme/css/sb-admin-2.css" rel="stylesheet" />

</head>
<body class="bg-gradient-primary">
    <form id="form1" runat="server">
        <div>

            <div class="container">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                            <div class="col-lg-7">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Créer Livreur </h1>
                                    </div>
                                    <form class="user  form-control " id="validateForm">
                                        <%--Zone de Text--%>
                                        <div class="form-group row" >
                                            <%--NomComplet--%>
                                            <div class="col-sm-6 mb-3 mb-sm-0">
                                                <asp:TextBox ID="Text_Nom" runat="server" CssClass="form-control form-control-user" placeholder="Nom Complet" AutoCompleteType="FirstName" ToolTip="Entrer Nom De Livreur"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorNomComplet" runat="server" ControlToValidate="Text_Nom" ErrorMessage="Champ Vide !" CssClass="invalid-feedback text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
<%--                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ValidationExpression="[a-z]$" ControlToValidate="Text_Nom" ErrorMessage="Nom incorrect !" CssClass="invalid-feedback text-danger" Display="Dynamic"></asp:RegularExpressionValidator>--%>
                                            </div>
                                            <%--CIN--%>
                                            <div class="col-sm-6">
                                                <asp:TextBox ID="Text_cin" runat="server" class="form-control form-control-user" placeholder="CIN" MaxLength="7" ToolTip="CIN de Livreur"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Text_cin" CssClass="invalid-feedback text-danger" ErrorMessage="Champ vide !" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </div>

                                        </div>
                                        <%--Adresse--%>
                                        <div class="form-group" >
                                            <asp:TextBox ID="Text_Adresse" runat="server" class="form-control form-control-user" placeholder="Adresse" ToolTip="Adresse de Livreur"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Text_Adresse" CssClass="invalid-feedback text-danger" ErrorMessage="Champ vide !" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group row" >
                                            <%--Telephone--%>
                                            <div class="col-sm-6 mb-3 mb-sm-0">
                                                <asp:TextBox ID="Text_Telephone" runat="server" class="form-control form-control-user" placeholder="Telephone" ToolTip="Telephone de Livreur"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Text_Telephone" ErrorMessage="Champ Vide !" CssClass="invalid-feedback text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Text_Telephone" ErrorMessage="Telephone incorrect !" Display="Dynamic" CssClass="invalid-feedback text-danger" ValidationExpression="([0-9]{10})$"></asp:RegularExpressionValidator>
                                            </div>

                                            <%--ComboBox Ville--%>
                                            <div class="col-sm-6">
                                                <asp:DropDownList ID="listeDeVille" runat="server" class="form-control form-user">
                                                </asp:DropDownList>

                                            </div>
                                        </div>
                                        <%--zone de Text Login and PassWord--%>
                                        <div class="form-group row" >
                                            <div class="col-sm-6 mb-3 mb-sm-0">
                                                <asp:TextBox ID="text_Login" runat="server" class="form-control form-control-user" placeholder="Login" ToolTip="Entrer Login de Livreur"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="text_Login" ErrorMessage="Champ vide !" CssClass="invalid-feedback text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:TextBox ID="text_PassWord" runat="server" class="form-control form-control-user" placeholder="PassWord" ToolTip="Entrer PassWord de Livreur"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="text_PassWord" ErrorMessage="Champ vide !" CssClass="invalid-feedback text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <%--Email--%>
                                        <div class="form-group" >
                                            <asp:TextBox ID="text_Email" runat="server" class="form-control form-control-user" placeholder="email" AutoCompleteType="Email" ToolTip="Email de Livreur"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Champ Vide !" Display="Dynamic" CssClass="invalid-feedback" ControlToValidate="text_Email"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="RegularExpressionValidator" CssClass="invalid-feedback text-danger" Display="Dynamic" ControlToValidate="text_Email" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator>
                                        </div>

                                        <%--Button Valide--%>
                                        <asp:Button ID="Button1" runat="server" Text="Valide" class="btn btn-facebook btn-user btn-block" OnClick="Button1_Click"  />

                                    </form>
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" href="#">2020© </a>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <!-- Bootstrap core JavaScript-->
            <script src="vendor/jquery/jquery.min.js"></script>
            <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

            <!-- Core plugin JavaScript-->
            <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

            <!-- Custom scripts for all pages-->
            <script src="js/sb-admin-2.min.js"></script>



        </div>
    </form>
</body>
</html>
