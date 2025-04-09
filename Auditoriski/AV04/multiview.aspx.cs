using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            mvRegistracija.ActiveViewIndex = 0;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            mvRegistracija.ActiveViewIndex = 1;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            mvRegistracija.ActiveViewIndex = 2;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            mvRegistracija.SetActiveView(vwCekor1);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            mvRegistracija.SetActiveView(vwCekor2);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            mvRegistracija.SetActiveView(vwCekor1);
        }
    }
}
