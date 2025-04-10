using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace A5
{
	public partial class vezba : System.Web.UI.Page
	{
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String[] book_name = { "Book Name 1", "Book Name 2", "Book Name 3", "Book Name 4", "Book Name 5", "Book Name 6" };
                String[] book_ceni = { "100", "200", "300", "400", "500", "600" };

                for (int i = 0; i < book_name.Length; i++)
                {
                    lista.Items.Add(new ListItem(book_name[i], book_ceni[i]));
                }

            }
        }

        protected void Dodaj_Click(object sender, EventArgs e)
        {
            lista.Items.Add(new ListItem(ime.Text, cena.Text));
        }

        protected void Brisi_Click(object sender, EventArgs e)
        {
            lista.Items.Remove(lista.SelectedItem);
        }
    }
}
