using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace A5
{
	public partial class Plakjanje : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (Session["cart"] != null)
			{
				ArrayList lista;
				lista = (ArrayList)Session["cart"];

				kosnicka.DataSource = lista;
				kosnicka.DataBind();
				int sum = 0;
				foreach(ListItem it in lista)
				{
					sum += Convert.ToInt32(it.Value);
				}
				vkupno.Text = sum.ToString();
			}
		}
	}
}