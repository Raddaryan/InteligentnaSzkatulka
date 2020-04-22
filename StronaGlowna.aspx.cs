using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class StronaGlowna : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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