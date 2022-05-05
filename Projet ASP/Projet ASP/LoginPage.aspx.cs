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
    public partial class LoginPage : System.Web.UI.Page
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }
        //protected void btnCommande(object sender, CommandEventArgs e)
        //{
        //    switch (e.CommandName)
        //    {
        //        case "Livreur":
                   
        //            Label1.Text = "" + type.ToString();
        //            break;
        //        case "Vendeur":
        //            type = false;
        //            Label1.Text = "" + type.ToString();
        //            //ClientScript.RegisterStartupScript(this.GetType(), "afficher", "Tourne();", true);
        //            break;
        //    }

        //}

        protected void Button3_Click(object sender, EventArgs e)
        {

           
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["GestiondeLivraisonConnectionString"].ToString());
            cn.Open();
            SqlCommand cmVend = new SqlCommand("select * from utilisateur where lgn ='" + TextBox1.Text + "' and code = '" + TextBox2.Text + "' and TypeUser ='Vendeur'", cn);
       
            SqlDataReader drVend;
            
            drVend = cmVend.ExecuteReader();
            if (drVend.Read())
            {
                Session["passport"] = TextBox1.Text;              
               Response.Redirect("DashbordVendeur.aspx");
            }
            else
            {
                cmVend = null;
                drVend.Close();
                drVend = null;
                SqlCommand cmLiv = new SqlCommand("select * from utilisateur where lgn ='" + TextBox1.Text + "' and code = '" + TextBox2.Text + "' and TypeUser ='Livreur'", cn);
                SqlDataReader drLiv;
                drLiv = cmLiv.ExecuteReader();
                if (drLiv.Read())
                {
                    Session["passport"] = TextBox1.Text;
                    Response.Redirect("inscriptionForm.aspx");
                    drLiv.Close();
                    drLiv = null;
                    cmLiv = null;
                }
                else
                {
                    Response.Write("<script> alert('Information incorect !!'); </script>");
                }
            }
            
            cn.Close();
            cn = null;
           

         



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
        }
    }
}



//protected void Button3_Click(object sender, EventArgs e)
//{
//    Response.Redirect("inscriptionLoginLivreur.aspx");
//}


//}


//if (type == true)
//{
//    var lg = from LogVen in db.LogPassVendeur join Ven in db.Vendeur on LogVen.idlogVendeur equals Ven.idlogVendeur where TextBox1.Text.Trim() == LogVen.login && TextBox2.Text.Trim() == LogVen.password select Ven.nom;
//    if (lg.Count()>0)
//    {
//        Response.Write("<script> alert('walooooo); </script>");

//    }
//    else { Server.Transfer("inscriptionForm.aspx"); }
//}
//else
//{
//    if (type == false)
//    {
//        var lg1 = from LogLiv in db.LogPassLivreur join Liv in db.Livreur on LogLiv.idlogLivreur equals Liv.idlogLivreur where TextBox1.Text.Trim() == LogLiv.login && TextBox2.Text.Trim() == LogLiv.password select Liv.nom;
//        if (lg1 == null)
//        {
//            Server.Transfer("inscriptionLoginLivreur.aspx");
//        }
//        else
//        {
//            foreach (var bb in lg1)
//            {
//                Response.Write("<script> alert('Hi Livreur'); </script>");
//                Server.Transfer("inscriptionForm.aspx");
//                TextBox1.Text = "";
//                TextBox2.Text = "";
//                Session["passport"] = "oui";
//            }
//        }

//    }
//}


