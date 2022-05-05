using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projet_ASP
{
    public partial class MesColisVendeur : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Timeout = 15;
            if (!IsPostBack)
            {
                if (Session["passport"] == null)
                {
                    Response.Redirect("LoginPage.aspx");
                }
                else
                {
                    LabeNomUser.Text = Session["passport"].ToString();
                }

            }
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["passport"] = "";

            Response.Redirect("LoginPage.aspx");
        }
    }
}