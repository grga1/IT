using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ispit
{
	public partial class UspesnoGlasanje : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (Session["cart"] != null)
			{
				ArrayList lista;
				lista = (ArrayList)Session["cart"];
				int counter = 0;
				foreach(ListItem it in lista)
				{
					if (counter == 0)
					{
						ime.Text = it.Text;
					}else if (counter == 2)
					{
						predmet.Text = it.Text;
					}else
					{
						email.Text = it.Text;
					}
					counter++;
				}
			}
		}
	}
}