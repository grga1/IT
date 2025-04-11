using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab1v
{
	public partial class zadaca : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void btn_Click(object sender, EventArgs e)
        {
            ListItemCollection niza = lista.Items;

            foreach (ListItem item in niza)
            {
                if (item.Selected)
                {
                    labela.Text +="<br>"+ item.Text;
                    rastojanie.Text +="<br>"+item.Value;
                }
            }
        }
    }
}
