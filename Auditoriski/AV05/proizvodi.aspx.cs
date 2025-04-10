using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class p : System.Web.UI.Page
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

                naslov.Text = Request.QueryString.Get("ime");

                switch (Convert.ToInt32(Request.QueryString.Get("id")))
                {
                    case 1:
                        proizvodi.DataSource = tehnickaLiteratura;
                        ceni.DataSource = tehnickaLiteraturaCeni;
                        break;
                    case 2:
                        proizvodi.DataSource = naucnaFantastika;
                        ceni.DataSource = naucnaFantastikaCeni;
                        break;
                    case 3:
                        proizvodi.DataSource = avtomobili;
                        ceni.DataSource = avtomobiliCeni;
                        break;
                }
                proizvodi.DataBind();
                ceni.DataBind();

            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("k.aspx");
        }

        protected void proizvodi_SelectedIndexChanged(object sender, EventArgs e)
        {
            ceni.SelectedIndex = proizvodi.SelectedIndex;
            if (ViewState["brPromeni"] == null)
            {
                ViewState["brPromeni"] = 1;
            }
            else
            {
                ViewState["brPromeni"] = (int)ViewState["brPromeni"] + 1;
                total.Text = ((int)ViewState["brPromeni"]).ToString();
            }
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
            
            lista.Add(new ListItem(proizvodi.SelectedItem.Text, ceni.SelectedItem.Text));

            koshnicka.DataSource = lista;
            koshnicka.DataBind();
            Session["cart"] = lista;
        }
    }
}
