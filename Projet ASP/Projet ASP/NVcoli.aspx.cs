using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace Projet_ASP
{
    public partial class NVcoli : System.Web.UI.Page
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
                    TextBox_id.Text = Session["passport"].ToString()+"-";
                    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["GestiondeLivraisonConnectionString"].ToString());
                    cn.Open();
                    SqlCommand cm = new SqlCommand("select * from ville", cn);
                    SqlDataReader dr;
                    dr = cm.ExecuteReader();
                    ListdeVille.DataSource = dr;
                    ListdeVille.DataTextField = "label";
                    ListdeVille.DataValueField = "idville";
                    ListdeVille.DataBind();
                    cn.Close();
                    cn = null;
                    cm = null;
                    dr.Close();
                    dr = null;
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