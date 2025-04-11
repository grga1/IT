using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab1v
{
	public partial class Najava : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void Button1_Click(object sender, EventArgs e)
        {
			ArrayList lista;
			if (Session["cart"] == null)
			{
				lista = new ArrayList();
			}
			else
			{
				lista = (ArrayList)Session["cart"];
			}
			lista.Add(new ListItem(email.Text, "1"));
			Session["cart"] = lista;
				Response.Redirect("Glasaj.aspx");
        }
    }
}