using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DevWebEntityFramework
{
    public partial class FormTaskListUpdate : System.Web.UI.Page
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
            ctlTaskLists.DataSource = context.TaskLists.OrderByDescending(tl => tl.ListId).ToList();
            ctlTaskLists.DataBind();
        }

        protected void btnModify_Click(object sender, EventArgs e)
        {
            int listId = Convert.ToInt32(txtListId.Text);
            Models.TaskList task = context.TaskLists.Where(t => t.ListId == listId).SingleOrDefault();

            task.Name = txtName.Text;
            task.Priority = Convert.ToInt32(listPriority.SelectedValue);
            task.IsComplete = Convert.ToBoolean(checkIsCompleted.Checked);

            context.SaveChanges();

            DisplayData();
        }
    }
}