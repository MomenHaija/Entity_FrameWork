using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityTask2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        DayTaskEntityEntities context = new DayTaskEntityEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

            var query = from t1 in context.cities
                        join t2 in context.Customers
                        on t1.city_id equals t2.city_id
                        select new { t2.customer_id, t2.customer_name, t2.customer_age, t2.email, t2.phone, t2.photo, t1.city_name };
            var result = query.ToList();

            GridView1.DataSource = result;
            GridView1.DataBind();


            if (!IsPostBack)
            {
                int i = 0;
                foreach (var g in query)
                {

                    GridView1.Rows[i].Cells[7].Text = HttpUtility.HtmlDecode($"<img src='Images/{g.photo}' width=\"60px\" height=\"60px\" ");
                    i++;
                }
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ADD_Click(object sender, EventArgs e)
        {


         




        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            var stringNumber = TextBox1.Text;
            int numericValue;
            bool isNumber = int.TryParse(stringNumber, out numericValue);
            if (!isNumber && !String.IsNullOrEmpty(TextBox1.Text))
            {

                var query = from t1 in context.cities
                            join t2 in context.Customers
                            on t1.city_id equals t2.city_id
                            where (t2.customer_name == TextBox1.Text)
                            select new { t2.customer_id, t2.customer_name, t2.customer_age, t2.email, t2.phone, t2.photo, t1.city_name };

                GridView1.DataSource = query.ToList();
                GridView1.DataBind();

                int i = 0;
                foreach (var g in query)
                {

                    GridView1.Rows[i].Cells[7].Text = HttpUtility.HtmlDecode($"<img src='Images/{g.photo}' width=\"60px\" height=\"60px\" ");
                    i++;
                }

               
            }
            else if (String.IsNullOrEmpty(TextBox1.Text))
            {

                var query = from t1 in context.cities
                            join t2 in context.Customers
                            on t1.city_id equals t2.city_id
                            select new { t2.customer_id, t2.customer_name, t2.customer_age, t2.email, t2.phone, t2.photo, t1.city_name ,};
                var result = query.ToList();

                GridView1.DataSource = result;
                GridView1.DataBind();


                if (!IsPostBack)
                {
                    int i = 0;
                    foreach (var g in query)
                    {

                        GridView1.Rows[i].Cells[7].Text = HttpUtility.HtmlDecode($"<img src='Images/{g.photo}' width=\"60px\" height=\"60px\" ");
                        i++;
                    }
                }

            }
            else
            {
                if (!String.IsNullOrEmpty(TextBox1.Text))
                {
                    int id = Convert.ToInt32(TextBox1.Text);
                    var query = from t1 in context.cities
                                join t2 in context.Customers
                                on t1.city_id equals t2.city_id
                                where (t2.customer_id == numericValue)
                                select new { t2.customer_id, t2.customer_name, t2.customer_age, t2.email, t2.phone, t2.photo, t1.city_name };


                  

                    GridView1.DataSource = query.ToList();
                    GridView1.DataBind();

                    int i = 0;
                    foreach (var g in query)
                    {

                        GridView1.Rows[i].Cells[7].Text = HttpUtility.HtmlDecode($"<img src='Images/{g.photo}' width=\"60px\" height=\"60px\" >");
                        i++;
                    }
                }
              

            }

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}