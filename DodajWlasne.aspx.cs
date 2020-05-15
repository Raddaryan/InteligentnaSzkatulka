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
    public partial class DodajWlasne : System.Web.UI.Page
    {
        MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["default"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string constr = ConfigurationManager.ConnectionStrings["default"].ConnectionString;
                using (MySqlConnection con = new MySqlConnection(constr))
                {
                    using (MySqlCommand cmd = new MySqlCommand("SELECT cytat, kto, odczytane FROM cytaty_wlasne"))
                    {
                        using (MySqlDataAdapter da = new MySqlDataAdapter())
                        {
                            cmd.Connection = con;
                            da.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                da.Fill(dt);
                                GridView6.DataSource = dt;
                                GridView6.DataBind();
                            }
                        }
                    }
                }
            }


        }

        void clear()
        {
            wiadomosc.Text = string.Empty;
            imie.Text = string.Empty;
        }

        private void BindGridView()
        {
            try
            {
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                MySqlCommand cmd = new MySqlCommand("Select * from cytaty_wlasne ORDER BY SID DESC;",
conn);
                MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                GridView6.DataSource = ds;
                GridView6.DataBind();
                
            }
            catch (MySqlException ex)
            {
               // ShowMessage(ex.Message);
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
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
        protected void ButtonWyslij(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "jakis tekst", "alertme()", true);
            try{
                conn.Open();
                MySqlCommand cmd = new MySqlCommand("Insert into cytaty_wlasne (cytat, kto, odczytane) values(@cytat, @kto, NULL)", conn);  
                cmd.Parameters.AddWithValue("@cytat", wiadomosc.Text);
                cmd.Parameters.AddWithValue("@kto", imie.Text);
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                clear();
                BindGridView();
            }
            catch (MySqlException ex)
            {
               //ShowMessage(ex.Message);
            }
            finally
            {
                conn.Close();
            }

        }
    }
}