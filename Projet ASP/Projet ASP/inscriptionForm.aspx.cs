using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Projet_ASP
{
    public partial class inscriptionForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            Session.Timeout = 15;
            if (Session["passport"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }
            else
            {
             SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["GestiondeLivraisonConnectionString"].ToString());
            cn.Open();
            SqlCommand cm = new SqlCommand("select * from ville", cn);
            SqlDataReader dr;
            dr = cm.ExecuteReader();
            listeDeVille.DataSource = dr;
            listeDeVille.DataTextField = "label";
            listeDeVille.DataValueField = "idville";
            listeDeVille.DataBind();
            cn.Close();
            cn = null;
            cm = null;
            dr.Close();
            dr = null;
               
            }
            

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["GestiondeLivraisonConnectionString"].ToString());
            cn.Open();
            SqlCommand cm = new SqlCommand("insert into utilisateur values ('"+text_Login.Text+"','"+text_PassWord.Text+"','"+Text_Nom.Text+"',"+int.Parse(Text_Telephone.Text)+",'"+Text_Adresse.Text+"','"+text_Email.Text+"','"+Text_cin.Text+"',"+Convert.ToInt16( listeDeVille.SelectedValue)+",'Livreur')",cn);
            SqlDataReader dr;
            dr = cm.ExecuteReader();

           
            
                //Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "<script> $(document).ready(function(){ $('.alert-success').show(); $('.alert-success).html('GOOD');})");
            
         
                //ClientScript.RegisterStartupScript(this.GetType(), "randomTest", "MSGalert()", true);
               
                
            dr.Close();
            dr = null;
            cm = null;
            cn.Close();
            Text_Nom.Text = "";
            Text_cin.Text = "";
            text_Email.Text = "";
            text_Login.Text = "";
            text_PassWord.Text = "";
            Text_Adresse.Text = "";
            Text_Telephone.Text = "";
        }

    }
}