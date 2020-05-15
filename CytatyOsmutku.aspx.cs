using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;

namespace WebApplication1
{
    public partial class CytatyOsmutku : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string constr = ConfigurationManager.ConnectionStrings["default"].ConnectionString;
                using (MySqlConnection con = new MySqlConnection(constr))
                {
                    using (MySqlCommand cmd = new MySqlCommand("SELECT id, cytat, kto FROM cytaty_smutne"))
                    {
                        using (MySqlDataAdapter da = new MySqlDataAdapter())
                        {
                            cmd.Connection = con;
                            da.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                da.Fill(dt);
                                GridView3.DataSource = dt;
                                GridView3.DataBind();
                            }
                        }
                    }
                }
            }
        }

        protected void ButtonStrona(object sender, EventArgs e)
        {
            Response.Redirect("~/StronaGlowna.aspx");
        }
        protected void ButtonMilosc(object sender, EventArgs e)
        {
            Response.Redirect("~/CytatyOmilosci.aspx");
        }
        protected void ButtonPrzyjazn(object sender, EventArgs e)
        {
            Response.Redirect("~/CytatyOprzyjazni.aspx");
        }
        protected void ButtonSzczescie(object sender, EventArgs e)
        {
            Response.Redirect("~/CytatyOszczesciu.aspx");
        }
        protected void ButtonSmutek(object sender, EventArgs e)
        {
            Response.Redirect("~/CytatyOsmutku.aspx");
        }
        protected void ButtonSentencje(object sender, EventArgs e)
        {
            Response.Redirect("~/Sentencje.aspx");
        }
        protected void ButtonUstawienia(object sender, EventArgs e)
        {
            Response.Redirect("~/Ustawienia.aspx");
        }
        protected void ButtonDodaj(object sender, EventArgs e)
        {
            Response.Redirect("~/DodajWlasne.aspx");
        }
    }
}