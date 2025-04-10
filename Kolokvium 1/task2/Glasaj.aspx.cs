using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ispit
{
	public partial class Glasaj : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				string[] profesori = { "Eftim Zdravevski", "Saso Gramatikov", "Marjan Gushev" };

                for (int i = 0; i < profesori.Length; i++)
                {
                    lsprofesori.Items.Add(new ListItem(profesori[i], i.ToString()));
                }
            }

            
        }

        protected void glasaj_Click(object sender, EventArgs e)
        {
           
              

            ArrayList lista;
            if (Session["cart"]==null)
            {
                lista = new ArrayList();
            }
            else
            {
                lista = (ArrayList)Session["cart"];
            }

            lista.Add(new ListItem(predmeti.SelectedItem.Text, "3"));
            Session["cart"] = lista;
            Response.Redirect("UspesnoGlasanje.aspx");
        }
       
        protected void lsprofesori_SelectedIndexChanged(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(lsprofesori.SelectedItem.Value);
            result.Text = x.ToString();
            predmeti.Items.Clear();
            switch (x)
            {
                case 0:
                
                    predmeti.Items.Add(new ListItem("OOAID", "0"));
                    predmeti.Items.Add(new ListItem("ANSB", "1"));
                    break;
                case 1:
                    
                    predmeti.Items.Add(new ListItem("OS", "0"));
                    predmeti.Items.Add(new ListItem("M3", "1"));
                    break;
                case 2:
                    
                    predmeti.Items.Add(new ListItem("AOK", "0"));
                    predmeti.Items.Add(new ListItem("MirkoProcesori", "1"));
                    break;
            }
        }

        protected void predmeti_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}