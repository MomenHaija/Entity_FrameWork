using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Runtime.Remoting.Contexts;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace EntityTask2
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DayTaskEntityEntities context = new DayTaskEntityEntities();

            if (!IsPostBack)
            {
                Customer custome = new Customer();
                int id = Convert.ToInt32(Request.QueryString["id"]);
                var query = from t1 in context.cities
                            join t2 in context.Customers
                            on t1.city_id equals t2.city_id
                            select new { t2.customer_id, t2.customer_name, t2.customer_age, t2.city_id, t2.phone, t2.email, t1.city_name };

                var result = query.ToList();

                var cu = context.Customers.FirstOrDefault(a => a.customer_id == id);
                Name.Text = cu.customer_name;
                Email.Text = cu.email;
                Phone.Text = cu.phone;
                Image1.ImageUrl = "~/Images/" + cu.photo;
                Age.Text = cu.customer_age.ToString();
                ViewState["Image"] = cu.photo;
                City.Text = cu.city.city_name;



            }

        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            DayTaskEntityEntities context = new DayTaskEntityEntities();
            if (!string.IsNullOrEmpty(Request.QueryString["id"]))
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                var con = context.Customers.FirstOrDefault(a => a.customer_id == id);
                context.Customers.Remove(con);
                context.SaveChanges();

            }
            Response.Redirect("https://localhost:44322/WebForm2.aspx");

        }
    }
}