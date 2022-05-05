<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profil.aspx.cs" Inherits="Projet_ASP.Profil" EnableEventValidation="false" ValidateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="Theme/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" />

    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />

    <!-- Custom styles for this template-->
    <link href="Theme/css/sb-admin-2.min.css" rel="stylesheet" />


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>
    <form id="form2" runat="server">
        <div id="page-top">

            <!-- Page Wrapper -->
            <div id="wrapper">

                <!-- Sidebar -->
                <ul class="navbar-nav bg-gradient sidebar sidebar-dark accordion" id="accordionSidebar" style="background: linear-gradient(to top left, #e40d38 0%, #7e071b 100%);">

                    <!-- Sidebar - Brand -->
                    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="http://localhost:65470/DashbordVendeur.aspx">
                        <div class="sidebar-brand-icon ">

                            <img src="logo/sansback.png" style="max-height: 25px; max-width: 25px;" />
                        </div>
                        <div class="sidebar-brand-text mx-3">
                            <img src="logo/sansback2.png" style="max-height: 75px; max-width: 175px;" />
                        </div>
                    </a>

                    <!-- Divider -->
                    <hr class="sidebar-divider my-0">

                    <!-- Nav Item - Dashboard -->
                    <li class="nav-item active">
                        <a class="nav-link" href="http://localhost:65470/DashbordVendeur.aspx">
                            <i class="fas fa-fw fa-home"></i>
                            <span>Accueil</span></a>
                    </li>

                    <!-- Divider -->
                    <hr class="sidebar-divider">

                    <!-- Heading -->
                    <div class="sidebar-heading">
                        Interface
                    </div>

                    <!-- Nav Item - Pages  Menu (Button 1)Nouveau Colis -->
                    <li class="nav-item">
                        <a class="nav-link collapsed" href="http://localhost:65470/NVcoli.aspx" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                            <i class="fas fa-fw fa-plus-square"></i>
                            <span>Nouveau Colis</span>
                            <i class="fas fa-angle-right" style="margin-left: 63px;"></i>
                        </a>
                    </li>

                    <!-- Nav Item -  Menu  (Button 2)Mes Colis-->
                    <li class="nav-item">
                        <a class="nav-link collapsed" href="#" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
                            <i class="fas fa-fw fa-box-open"></i>
                            <span>Mes Colis</span>
                            <i class="fas fa-angle-right" style="margin-left: 92px;"></i>
                        </a>

                    </li>
                    <!-- Nav Item -  Menu  (Button 3)Mes Factures-->
                    <li class="nav-item">
                        <a class="nav-link collapsed" href="#" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
                            <i class="fas fa-fw fa-hand-holding-usd"></i>
                            <span>Mes Factures</span>
                            <i class="fas fa-angle-right" style="margin-left: 70px;"></i>
                        </a>

                    </li>

                    <!-- Divider -->
                    <hr class="sidebar-divider">

                    <!-- Heading -->
                    <div class="sidebar-heading">
                    </div>

                    <!-- Nav Item - (button 4)Livreur  -->
                    <li class="nav-item">
                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
                            <i class="fas fa-fw fa-motorcycle"></i>
                            <span>Livreur</span>
                        </a>
                        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                            <div class="bg-white py-2 collapse-inner rounded">
                                <h6 class="collapse-header">Option:</h6>
                                <a class="collapse-item" href="http://localhost:65470/inscriptionForm.aspx">
                                    <i class="fas fa-fw fa-plus-square"></i>
                                    Nouveau Livreur</a>

                            </div>
                        </div>
                    </li>


                    <!-- Divider -->
                    <hr class="sidebar-divider d-none d-md-block">

                    <!-- Sidebar Toggler (Sidebar) -->
                    <div class="text-center d-none d-md-inline">
                        <button class="rounded-circle border-0" id="sidebarToggle" onclick="return false;"></button>
                    </div>

                </ul>
                <!-- End of Sidebar -->

                <!-- Content Wrapper -->
                <div id="content-wrapper" class="d-flex flex-column">

                    <!-- Main Content -->
                    <div id="content">

                        <!-- Topbar -->
                        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                            <!-- Sidebar Toggle (Topbar) -->
                            <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3" onclick="return false;">
                                <i class="fa fa-bars"></i>
                            </button>

                            <!-- Topbar Search -->
                            <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                                <div class="input-group">
                                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                                    <div class="input-group-append">
                                        <button class="btn btn-danger" type="button">
                                            <i class="fas fa-search fa-sm"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>

                            <!-- Topbar Navbar -->
                            <ul class="navbar-nav ml-auto">

                                <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                                <li class="nav-item dropdown no-arrow d-sm-none">
                                    <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="fas fa-search fa-fw"></i>
                                    </a>
                                    <!-- Dropdown - Messages -->
                                    <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                                        <form class="form-inline mr-auto w-100 navbar-search">
                                            <div class="input-group">
                                                <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                                                <div class="input-group-append">
                                                    <button class="btn btn-danger" type="button">
                                                        <i class="fas fa-search fa-sm"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </li>

                                <!-- Nav Item - Alerts -->
                                <li class="nav-item dropdown no-arrow mx-1">
                                    <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="fas fa-bell fa-fw"></i>
                                        <!-- Counter - Alerts -->
                                        <span class="badge badge-danger badge-counter">3+</span>
                                    </a>
                                    <!-- Dropdown - Alerts -->
                                    <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
                                        <h6 class="dropdown-header">Alerts Center
                                        </h6>
                                        <a class="dropdown-item d-flex align-items-center" href="#">
                                            <div class="mr-3">
                                                <div class="icon-circle bg-danger">
                                                    <i class="fas fa-file-alt text-white"></i>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="small text-gray-500">December 12, 2019</div>
                                                <span class="font-weight-bold">A new monthly report is ready to download!</span>
                                            </div>
                                        </a>
                                        <a class="dropdown-item d-flex align-items-center" href="#">
                                            <div class="mr-3">
                                                <div class="icon-circle bg-success">
                                                    <i class="fas fa-donate text-white"></i>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="small text-gray-500">December 7, 2019</div>
                                                $290.29 has been deposited into your account!
                                            </div>
                                        </a>
                                        <a class="dropdown-item d-flex align-items-center" href="#">
                                            <div class="mr-3">
                                                <div class="icon-circle bg-warning">
                                                    <i class="fas fa-exclamation-triangle text-white"></i>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="small text-gray-500">Dember 2, 2019</div>
                                                Spending Alert: We've noticed unusually high spending for your account.
                                            </div>
                                        </a>
                                        <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                                    </div>
                                </li>

                                <!-- Nav Item - Messages -->
                                <li class="nav-item dropdown no-arrow mx-1">
                                    <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="fas fa-envelope fa-fw"></i>
                                        <!-- Counter - Messages -->
                                        <span class="badge badge-danger badge-counter">7</span>
                                    </a>
                                    <!-- Dropdown - Messages -->
                                    <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">
                                        <h6 class="dropdown-header">Message Center
                                        </h6>
                                        <a class="dropdown-item d-flex align-items-center" href="#">
                                            <div class="dropdown-list-image mr-3">
                                                <img class="rounded-circle" src="https://source.unsplash.com/fn_BT9fwg_E/60x60" alt="">
                                                <div class="status-indicator bg-success"></div>
                                            </div>
                                            <div class="font-weight-bold">
                                                <div class="text-truncate">Hi there! I am wondering if you can help me with a problem I've been having.</div>
                                                <div class="small text-gray-500">Emily Fowler · 58m</div>
                                            </div>
                                        </a>
                                        <a class="dropdown-item d-flex align-items-center" href="#">
                                            <div class="dropdown-list-image mr-3">
                                                <img class="rounded-circle" src="https://source.unsplash.com/AU4VPcFN4LE/60x60" alt="">
                                                <div class="status-indicator"></div>
                                            </div>
                                            <div>
                                                <div class="text-truncate">I have the photos that you ordered last month, how would you like them sent to you?</div>
                                                <div class="small text-gray-500">Jae Chun · 1d</div>
                                            </div>
                                        </a>
                                        <a class="dropdown-item d-flex align-items-center" href="#">
                                            <div class="dropdown-list-image mr-3">
                                                <img class="rounded-circle" src="https://source.unsplash.com/CS2uCrpNzJY/60x60" alt="">
                                                <div class="status-indicator bg-warning"></div>
                                            </div>
                                            <div>
                                                <div class="text-truncate">Last month's report looks great, I am very happy with the progress so far, keep up the good work!</div>
                                                <div class="small text-gray-500">Morgan Alvarez · 2d</div>
                                            </div>
                                        </a>
                                        <a class="dropdown-item d-flex align-items-center" href="#">
                                            <div class="dropdown-list-image mr-3">
                                                <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="">
                                                <div class="status-indicator bg-success"></div>
                                            </div>
                                            <div>
                                                <div class="text-truncate">Am I a good boy? The reason I ask is because someone told me that people say this to all dogs, even if they aren't good...</div>
                                                <div class="small text-gray-500">Chicken the Dog · 2w</div>
                                            </div>
                                        </a>
                                        <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
                                    </div>
                                </li>

                                <div class="topbar-divider d-none d-sm-block"></div>

                                <!-- Nav Item - User Information -->
                                <li class="nav-item dropdown no-arrow">
                                    <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <asp:Label ID="LabeNomUser" runat="server" Text="" class="mr-2 d-none d-lg-inline text-gray-600 small"></asp:Label>
                                        <%-- <span class="mr-2 d-none d-lg-inline text-gray-600 small"></span>--%>
                                        <img class="img-profile rounded-circle" src="logo/antmedialogo1.jpeg">
                                    </a>
                                    <!-- Dropdown - User Information -->
                                    <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                                        <a class="dropdown-item" href="http://localhost:65470/Profil.aspx">
                                            <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                            Profile
                                        </a>

                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                            <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                            Logout
                                        </a>
                                    </div>
                                </li>

                            </ul>

                        </nav>
                        <!-- End of Topbar -->

                        <!-- Begin Page Content -->
                       <%-- <div class="container-fluid">
                            <!-- Content Row -->
                            <div class="row">--%>
                               
                                    <!-- Cadre de Profil -->
                                    <div class="card  mb-4 shadow" style="margin-left:15%; margin-right:15%;">
                                        <div class="card-header py-3 ">
                                            <h6 class="m-0 font-weight-bold text-danger">Mon Profile</h6>
                                        </div>
                                        <div class="card-body mb-2 py-3 border-bottom-danger " >
                                            <%--   NomComplet et CIN--%>
                                            <div class="form-group row">
                                                <div class="col-sm-6 mb-3 mb-sm-0">
                                                    <asp:TextBox ID="Text_Nom" runat="server" CssClass="form-control form-control-user" placeholder="Nom Complet"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorNomComplet" runat="server" ControlToValidate="Text_Nom" ErrorMessage="Champ Vide !" CssClass="invalid-feedback text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                                                </div>
                                                <div class="col-sm-6">
                                                    <asp:TextBox ID="Text_cin" runat="server" CssClass="form-control form-control-user" placeholder="CIN"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Text_cin" CssClass="invalid-feedback text-danger" ErrorMessage="Champ vide !" Display="Dynamic"></asp:RequiredFieldValidator>

                                                </div>
                                            </div>
                                            <%--Adresse--%>
                                            <div class="form-group">
                                                <asp:TextBox ID="Text_Adresse" runat="server" class="form-control form-control-user" placeholder="Adresse" ToolTip="Adresse de Livreur"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Text_Adresse" CssClass="invalid-feedback text-danger" ErrorMessage="Champ vide !" Display="Dynamic"></asp:RequiredFieldValidator>

                                            </div>
                                            <%--Telephone--%>
                                            <div class="form-group row">
                                                <div class="col-sm-6 mb-3 mb-sm-0">
                                                    <asp:TextBox ID="Text_Telephone" runat="server" class="form-control form-control-user" placeholder="Telephone" ToolTip="Telephone de Livreur"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Text_Telephone" ErrorMessage="Champ Vide !" CssClass="invalid-feedback text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                                               
                                                </div>
                                                <%-- Ville--%>
                                                <div class="col-sm-6">
                                                    <asp:DropDownList ID="listeDeVille" runat="server" class="form-control form-user">
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <%--zone de Text Login and PassWord--%>
                                            <div class="form-group row">
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
                                            <div class="form-group">
                                                <asp:TextBox ID="text_Email" runat="server" class="form-control form-control-user" placeholder="email" AutoCompleteType="Email" ToolTip="Email de Livreur"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Champ Vide !" Display="Dynamic" CssClass="invalid-feedback" ControlToValidate="text_Email"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="RegularExpressionValidator" CssClass="invalid-feedback text-danger" Display="Dynamic" ControlToValidate="text_Email" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator>
                                            </div>
                                            <%--Button Modifier--%>
                                            <div class="form-group">
                                        <a class="btn btn-facebook  float-lg-right mr-2 mb-2 text-width-80" href="#"  data-toggle="modal" data-target="#modifierModal">
                                            <i class="fas fa-edit fa-sm fa-fw mr-2 text-width-400"></i>
                                           Modifier Mes informations
                                        </a>
                                               
                                            </div>
                                           
                                        </div>
                                    </div>
                               
                          
                    </div>
                    <!-- End of Main Content -->

                    <!-- Footer -->
                    <footer class="sticky-footer bg-white">
                        <div class="container my-auto">
                            <div class="copyright text-center my-auto">
                                <span>Copyright &copy; ANTMEDIA 2020</span>
                            </div>
                        </div>
                    </footer>
                    <!-- End of Footer -->

                </div>
                <!-- End of Content Wrapper -->

            </div>
            <!-- End of Page Wrapper -->

            <!-- Scroll to Top Button-->
            <a class="scroll-to-top rounded" href="#page-top">
                <i class="fas fa-angle-up"></i>
            </a>

            <!-- Logout Modal Pour Deconecte (alert Model)-->
            <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                        <div class="modal-footer">
                            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>         
                            <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-danger" OnClick="LinkButton1_Click">Se Déconnecte</asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
            <%--Modal Pour Modifier (alert Model)--%>
             <div class="modal fade" id="modifierModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title text-gray-900" id="modifierModal">Voulez-vous vraiment modifier vos informations?</h5>
                            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">Sélectionnez "Modifier" ci-dessous si vous êtes prêt à continuer.</div>
                        <div class="modal-footer">
                            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>         
     <asp:Button ID="Button1" runat="server" Text="Modifier" CssClass="btn btn-facebook  " OnClick="Button1_Click" />                       
                        </div>
                    </div>
                </div>
            </div>



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






        </div>
    </form>
</body>


</html>
