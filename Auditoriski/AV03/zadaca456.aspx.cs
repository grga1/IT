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
			lista.Items.Add(new ListItem(valuta.Text, vrednost.Text));
			int counter = 0;
			foreach (ListItem item in lista.Items)
			{
				counter++;

			}
			vkupno.Text = counter.ToString();
        }

        protected void brisi_Click(object sender, EventArgs e)
        {
			if (lista.SelectedItem != null)
			{
				lista.Items.Remove(lista.SelectedItem);
			}
        }

        protected void lista_SelectedIndexChanged(object sender, EventArgs e)
        {
			convert.Text = (Convert.ToInt32(lista.SelectedItem.Value) * Convert.ToInt32(iznos.Text)).ToString();
        }
    }
}
