using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DevWebEntityFramework
{
    public partial class FormTaskListsDelete : System.Web.UI.Page
    {
        Models.TaskDBEntities context = new Models.TaskDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                DisplayData();
            }
        }

        private void DisplayData()
        {
            var q = from t in context.TaskLists
                    orderby t.ListId descending
                    select t;

            ctlTaskLists.DataSource = q.ToList();
            ctlTaskLists.DataBind();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int listId = Convert.ToInt32(txtListId.Text);
            Models.TaskList task = (from t in context.TaskLists
                                   where t.ListId == listId
                                   select t).SingleOrDefault();

            if (task != null)
            {
                context.TaskLists.Remove(task);
                context.SaveChanges();
            }
            else
            {
                lblerror.Text = "There is no data to be deleted";
            }

            DisplayData();
        }
    }
}