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
    public partial class WebForm5 : System.Web.UI.Page
    {
        DayTaskEntityEntities context = new DayTaskEntityEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Customer custome = new Customer();
                int id = Convert.ToInt32(Request.QueryString["id"]);
                //var  = from t1 in context.cities
                //            join t2 in context.Customers
                //            on t1.city_id equals t2.city_id
                //            select new { t2.customer_id, t2.customer_name, t2.customer_age, t2.city_id, t2.phone, t2.email, t1.city_name,t2.city.city_name };
                var query = from t2 in context.Customers select new { t2.customer_id, t2.customer_name, t2.customer_age, t2.city_id, t2.phone, t2.email, t2.city.city_name };

                var result = query.ToList();

                var cu = context.Customers.FirstOrDefault(a => a.customer_id == id);
                TxtName.Text = cu.customer_name;
                TxtEmail.Text = cu.email;
                TxtPhone.Text = cu.phone;
                Image1.ImageUrl = "~/Images/" + cu.photo;
                TxtAge.Text = cu.customer_age.ToString();
                Label1.Text = cu.customer_name.ToString();
                ViewState["Image"] = cu.photo;

                DropDownList1.SelectedValue = cu.city_id.ToString();
                var data = from b in context.cities select (new { b.city_id, b.city_name });
                if (!IsPostBack)
                {
                    DropDownList1.DataSource = data.ToList();
                    DropDownList1.DataTextField = "city_name";
                    DropDownList1.DataValueField = "city_id";
                    DropDownList1.DataBind();
                }


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["id"]))
            {

                int id = Convert.ToInt32(Request.QueryString["id"]);
                string iii = Image1.ImageUrl;
                if (!FileUpload1.HasFile)
                {
                    iii = ViewState["Image"].ToString();
                }
                else
                {
                    FileUpload1.SaveAs(Server.MapPath("/Images/") + Path.GetFileName(FileUpload1.FileName));
                    iii = FileUpload1.FileName;
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
                        custome.customer_age = Convert.ToInt32(TxtAge.Text);
                        custome.photo = iii;
                        custome.city_id = Convert.ToInt32(DropDownList1.SelectedValue);

                        entities.SaveChanges();
                    }
                }
                Response.Redirect("WebForm2.aspx");
            }
        }
    }
}