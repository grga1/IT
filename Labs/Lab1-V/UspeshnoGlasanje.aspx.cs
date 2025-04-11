using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab1v
{
	public partial class UspeshnoGlasanje : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				if (Session["cart"] != null)
				{
					ArrayList lista;
					lista = (ArrayList) Session["cart"];
					foreach (ListItem item in lista)
					{
						email.Text = item.Text;
					}
				}
			}
		}
	}
}