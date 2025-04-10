using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace A5
{
	public partial class Proizvodi : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{

                string[] tehnickaLiteratura = {
                "Beginning ASP.NET 2.0 in C# From Novice To Professional",
                "Introduction To Automata Theory, Languages and Computation",
                "Cisco CCNA 3.0 Study Guide",
                "Broadband Telecommunications Handbook"
            };
                string[] tehnickaLiteraturaCeni = { "2300", "1280", "4920", "3090" };

                string[] naucnaFantastika = {
                "Star Wars, Jedi vs. Sith: The Essential",
                "Harry Potter and the Prisoner of Azkaban",
                "Ghosts of Onyx",
                "Fleet of Worlds"
            };
                string[] naucnaFantastikaCeni = { "1400", "2930", "2500", "1300" };

                string[] avtomobili = {
                "The Art of the Sports Car: The Greatest Designs of the 20th Century",
                "Automobile, September 2007 Issue",
                "New Car Buying Guide 2007",
                "The New Illustrated Encyclopedia of Automobiles"
            };
                string[] avtomobiliCeni = { "2300", "4100", "2010", "2210" };

                switch (Convert.ToInt32(Request.QueryString.Get("id"))){
                    case 1:
                        proizvod.DataSource = tehnickaLiteratura;
                        ceni.DataSource = tehnickaLiteraturaCeni;
                        break;
                    case 2:
                        proizvod.DataSource = naucnaFantastika;
                        ceni.DataSource = naucnaFantastikaCeni;
                        break;
                    case 3:
                        proizvod.DataSource = avtomobili;
                        proizvod.DataSource = avtomobiliCeni;
                        break;
                }
                proizvod.DataBind();
                ceni.DataBind();
                naslov.Text = Request.QueryString.Get("name");
            } 

		}

        protected void katalog_Click(object sender, EventArgs e)
        {
			Response.Redirect("Katalog.aspx");
        }

        protected void proizvod_SelectedIndexChanged(object sender, EventArgs e)
        {
            ceni.SelectedIndex = proizvod.SelectedIndex;
            if (ViewState["brPromeni"] == null)
            {
                ViewState["brPromeni"] = 1;
            }
            else
            {
                ViewState["brPromeni"] = (int)ViewState["brPromeni"] + 1;
            }
            total.Text = ((int)ViewState["brPromeni"]).ToString();
        }

        protected void dodadi_Click(object sender, EventArgs e)
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
            lista.Add(new ListItem(proizvod.SelectedItem.Text, ceni.SelectedItem.Text));
            kosnicka.DataSource = lista;
            kosnicka.DataBind();
            Session["cart"] = lista;
        }

        protected void kupi_Click(object sender, EventArgs e)
        {
            Response.Redirect("Plakjanje.aspx");
        }
    }
}