using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab1v
{
	public partial class Glasaj : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				string[] predmeti = { "Интернет технологии","Интернет","Дигитална електроника"};
				string[] krediti = { "6","5.5","5.5"};
				string[] profesori = { "Проф. др Гоце Арменски", "Проф. др Марјан Гушев", "проф. др Ефтим Здравевски" };

				for (int i = 0; i <predmeti.Length; i++)
				{
					predmetils.Items.Add(new ListItem(predmeti[i], profesori[i]));
					kreditils.Items.Add(new ListItem(krediti[i],i.ToString()));
				}

            }
		}

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            kreditils.SelectedIndex=predmetils.SelectedIndex;
			ime.Text = predmetils.SelectedItem.Value;

        }

        protected void dodadi_Click(object sender, EventArgs e)
        {
			predmetils.Items.Add(new ListItem(p.Text, "X"));
			kreditils.Items.Add(new ListItem(k.Text, "X"));
        
        }

        protected void izbrisi_Click(object sender, EventArgs e)
        {
            
            predmetils.Items.Remove(predmetils.SelectedItem);
			kreditils.Items.Remove(kreditils.SelectedItem);
        }

        protected void glas_Click(object sender, EventArgs e)
        {
			Response.Redirect("UspeshnoGlasanje.aspx");
        }
    }
}