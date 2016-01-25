using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DevWebEntityFramework
{
    public partial class FormTaskListInsert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            // data input by using ef4

            // create context object
            Models.TaskDBEntities context = new Models.TaskDBEntities();

            // create input object
            Models.TaskList task = new Models.TaskList();
            task.Name = txtName.Text;
            task.IsComplete = false;
            task.Priority = ListPriority.SelectedIndex + 1;
            task.DateCreated = DateTime.Now;

            // data assign into context object
            context.TaskLists.Add(task);

            // execute
            context.SaveChanges();
        }
    }
}