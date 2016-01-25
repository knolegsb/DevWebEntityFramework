using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DevWebEntityFramework
{
    public partial class UsingStoredProcedure : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (var entities = new NorthwindEntities())
            {
                //var q = from r in entities..SalesByCategory1("Beverages", "1999")
                //        select r;

            }
        }
    }
}