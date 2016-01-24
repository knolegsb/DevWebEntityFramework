using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DevWebEntityFramework
{
    public partial class NorthwindProductList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            NorthwindEntities context = new NorthwindEntities();
            var product = from p in context.Products
                          orderby p.ProductID descending
                          select p;
            this.ControlProdcutList.DataSource = product.ToList();
            this.ControlProdcutList.DataBind();
        }
    }
}