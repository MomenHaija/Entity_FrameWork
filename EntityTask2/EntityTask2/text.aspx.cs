using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityTask2
{
    public partial class text : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DayTaskEntityEntities context = new DayTaskEntityEntities();
            Customer custome = new Customer();
            int id = Convert.ToInt32(Request.QueryString["id"]);
            var query = from t1 in context.cities
                        join t2 in context.Customers
                        on t1.city_id equals t2.city_id
                        select new { t2.customer_id, t2.customer_name, t2.customer_age, t2.city_id, t2.phone, t2.email, t1.city_name,t2.photo };

            var result = query.ToList();
            GridView1.DataSource= result;
            GridView1.DataBind();
        }
    }
}