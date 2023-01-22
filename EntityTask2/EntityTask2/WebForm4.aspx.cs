using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityTask2
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        DayTaskEntityEntities context = new DayTaskEntityEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            var data = from b in context.cities select (new { b.city_id, b.city_name });
            if (!IsPostBack)
            {
                DropDownList1.DataSource = data.ToList();
                DropDownList1.DataTextField = "city_name";
                DropDownList1.DataValueField = "city_id";
                DropDownList1.DataBind();
            }

        }
    
        protected void ADD_Click(object sender, EventArgs e)
        {
            var custome = new Customer();
            custome.customer_name = txtname.Text;
            custome.customer_age = Convert.ToInt32(txtage.Text);
            custome.email = txtemail.Text;
            custome.phone = txtphone.Text;
            custome.city_id = Convert.ToInt32(DropDownList1.SelectedValue);
            string folderpath = Server.MapPath("Images/");
            FileUpload1.SaveAs(folderpath + Path.GetFileName(FileUpload1.FileName));
            custome.photo = FileUpload1.FileName;
            context.Customers.Add(custome);
            context.SaveChanges();
        }
    }
}