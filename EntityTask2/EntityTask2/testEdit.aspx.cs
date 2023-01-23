using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace EntityTask2
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        DayTaskEntityEntities context = new DayTaskEntityEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Customer custome = new Customer();
                int id = Convert.ToInt32(Request.QueryString["id"]);
                var query = from t1 in context.cities
                            join t2 in context.Customers
                            on t1.city_id equals t2.city_id
                            select new { t2.customer_id, t2.customer_name, t2.customer_age, t2.city_id, t2.phone, t2.email, t1.city_name, t2.photo };

                var result = query.ToList();
                TxtName.Text = context.Customers.FirstOrDefault(a => a.customer_id == id)?.customer_name;
                TxtEmail.Text = context.Customers.FirstOrDefault(a => a.customer_id == id)?.email;
                TxtPhone.Text = context.Customers.FirstOrDefault(a => a.customer_id == id)?.phone;
                Image1.ImageUrl = "~/Images/" + context.Customers.FirstOrDefault(a => a.customer_id == id).photo;
                TxtAge.Text = context.Customers.FirstOrDefault(a => a.customer_id == id).customer_age.ToString();

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            string iii= Image1.ImageUrl;
            if (FileUpload1.FileName != null)
            {
                FileUpload1.SaveAs(Server.MapPath("/Images/") + Path.GetFileName(FileUpload1.FileName));
                 iii =FileUpload1.FileName;
            }
            else
            {
                 iii =Image1.ImageUrl;
            }
            using (var context = new DayTaskEntityEntities())
            {
             

                using (DayTaskEntityEntities entities = new DayTaskEntityEntities())

                {

                    Customer custome = (from c in entities.Customers
                                        where c.customer_id == id
                                        select c).FirstOrDefault();
                    custome.customer_name = TxtName.Text;
                    custome.phone = TxtPhone.Text;
                    custome.email = TxtEmail.Text;
                    custome.customer_age =Convert.ToInt32(TxtAge.Text);
                    custome.photo =iii;
                    entities.SaveChanges();
                    Response.Redirect("text.aspx");
                  }
            }
        }
    }
}