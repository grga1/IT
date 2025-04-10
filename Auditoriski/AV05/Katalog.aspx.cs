using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace A5
{
	public partial class Katalog : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
		}

        protected void tehnicka_literatura_Click(object sender, EventArgs e)
        {

            Response.Redirect("Proizvodi.aspx?id=1&name=Техничка литература");

        }

        protected void avtomobili_Click(object sender, EventArgs e)
        {
            Response.Redirect("Proizvodi.aspx?id=3&name=Автомобили");
        }

        protected void naucna_fantastika_Click(object sender, EventArgs e)
        {
            Response.Redirect("Proizvodi.aspx?id=2&name=Научна фантастика");
        }
    }
}