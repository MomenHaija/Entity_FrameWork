using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityTask2
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        DayTaskEntityEntities context = new DayTaskEntityEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var query = from t1 in context.cities
                        join t2 in context.Customers
                        on t1.city_id equals t2.city_id
                        select new { t2.customer_id, t2.customer_name, t2.customer_age, t2.email, t2.phone, t2.photo, t1.city_name };
            var result = query.ToList();

            var s1 = (from b in context.Customers select b).Count();
            Label1.Text = s1.ToString();

            Customer custome = new Customer();

            var s2 = (from b in context.Customers select b.customer_age).Average();
            int avgAge = Convert.ToInt32(s2);
            Label2.Text = avgAge.ToString();

            var s3 = (from b in context.Customers select b.customer_age).Max();
            Label3.Text = s3.ToString();



        }
    }
}