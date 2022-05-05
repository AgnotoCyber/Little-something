using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Data.Sql; 
    

namespace Projet_ASP
{
    public partial class Profil : System.Web.UI.Page
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

        //Mode Connecte
                    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["GestiondeLivraisonConnectionString"].ToString());
                    cn.Open();
                    SqlCommand cm = new SqlCommand("select * from ville", cn);
                    SqlDataReader dr;
                    dr = cm.ExecuteReader();
                    listeDeVille.DataSource = dr;
                    listeDeVille.DataTextField = "label";
                    listeDeVille.DataValueField = "idville";
                    listeDeVille.DataBind();
                    cm = null;
                    dr.Close();
                    dr = null;
                    //Remplire les Champs
                    SqlCommand cmR = new SqlCommand("select Nom,CIN,Adresse,Telephone,idville,code,Email from utilisateur where lgn='"+Session["passport"].ToString()+"'", cn);
                    SqlDataReader drR;
                    drR = cmR.ExecuteReader();
                    while (drR.Read())
                    {
                        Text_Nom.Text = drR.GetValue(0).ToString();
                        Text_cin.Text = drR.GetValue(1).ToString();
                        Text_Adresse.Text = drR.GetValue(2).ToString();
                        Text_Telephone.Text = drR.GetValue(3).ToString();
                        listeDeVille.SelectedIndex =int.Parse(drR.GetValue(4).ToString())-1;
                        text_PassWord.Text = drR.GetValue(5).ToString();
                        text_Email.Text = drR.GetValue(6).ToString();
                        text_Login.Text = Session["passport"].ToString();
                    }

                    cn.Close();
                    cn = null;
                    cmR = null;
                    drR.Close();
                    drR = null;
                }


            }
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["passport"] = "";
            Response.Redirect("LoginPage.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["GestiondeLivraisonConnectionString"].ToString());
            cn.Open();
            //modifier
            SqlCommand cmEdit = new SqlCommand("update utilisateur set lgn='" + text_Login.Text + "', code='" + text_PassWord.Text + "', Nom='" + Text_Nom.Text + "', Telephone=" + int.Parse(Text_Telephone.Text) + ", Adresse='" + Text_Adresse.Text + "', Email='" + text_Email.Text + "', CIN='" + Text_cin.Text + "', idville=" + listeDeVille.SelectedValue + " where lgn='" + Session["passport"] + "'",cn);
            cmEdit.ExecuteReader();
        }
    }
}