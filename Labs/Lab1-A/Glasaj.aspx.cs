using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LAB1
{
	public partial class Glasaj : System.Web.UI.Page
	{

		String[] profesori = { "проф. Ефтим Здравевски","проф. Кире Триводалиев","проф. Сашо Граматиков"};
		String[] predmeti = { "Анализа на софтверски барања","Вештачка интелигенција","Оперативни системи"};
		String[] krediti = { "6","6","6"};
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				for (int i = 0; i < predmeti.Length; i++)
				{
					lbPredmeti.Items.Add(new ListItem(predmeti[i], profesori[i]));
					lbKrediti.Items.Add(new ListItem(krediti[i]));

				}

				
			}

		}


        protected void Button1_Click(object sender, EventArgs e)
        {	
			Response.Redirect("UspeshnoGlasanje.aspx");	
        }

        protected void lbPredmeti_SelectedIndexChanged(object sender, EventArgs e)
        {
			lblProfesor.Text = lbPredmeti.SelectedValue;
        }
    }
}