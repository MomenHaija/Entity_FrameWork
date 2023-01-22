using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.AccessControl;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityTask2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        DayTaskEntityEntities context = new DayTaskEntityEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

                var query = from t1 in context.cities
                            join t2 in context.Customers
                            on t1.city_id equals t2.city_id
                            select new {t2.customer_id,t2.customer_name,t2.customer_age,t2.email,t2.phone,t2.photo, t1.city_name };
                var result = query.ToList();

            //GridView1.DataSource = result;
            //GridView1.DataBind();

            var data = from b in context.cities select (new { b.city_id, b.city_name });

            if (!IsPostBack)
            {
                labTabel.Text = "<table><tr><th>Customer ID</th><th>Customer Name</th><th>Customer Age</th><th>Email</th><th>Phone</th><th>Photo</th><th>City</th></tr>";
                foreach (var g in query)
                {
                    labTabel.Text += $"<tr><td>{g.customer_id}</td><td>{g.customer_name}</td><td>{g.customer_age}</td><td>{g.email}</td><td>{g.phone}</td><td><img src='Images/{g.photo}' width=\"200px\" height=\"200px\"/></td><td>{g.city_name}</td></tr>";
                }
                labTabel.Text += "</table>";
            }

            if (!IsPostBack)
            {
                DropDownList1.DataSource = data.ToList();
                DropDownList1.DataTextField = "city_name";
                DropDownList1.DataValueField = "city_id";
                DropDownList1.DataBind();
            }

            var s1 = (from b in context.Customers select b).Count();
            Label1.Text = "Number of customers:" + s1.ToString();

            Customer custome = new Customer();

            var s2 = (from b in context.Customers select b.customer_age).Average();
            int avgAge = Convert.ToInt32(s2);
            Label2.Text = "Avg of Age :" + avgAge.ToString();

            var s3 = (from b in context.Customers select b.customer_age).Max();
            Label3.Text = "Max Age:" + s3.ToString();


           
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

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
            Response.Redirect("WebForm1.aspx");

            


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


                
                    labTabel.Text = "<table><tr><th>Customer ID</th><th>Customer Name</th><th>Customer Age</th><th>Email</th><th>Phone</th><th>Photo</th><th>City</th></tr>";
                    foreach (var g in query)
                    {
                        labTabel.Text += $"<tr><td>{g.customer_id}</td><td>{g.customer_name}</td><td>{g.customer_age}</td><td>{g.email}</td><td>{g.phone}</td><td><img src='Images/{g.photo}' width=\"200px\" height=\"200px\"/></td><td>{g.city_name}</td></tr>";
                    }
                    labTabel.Text += "</table>";

                //GridView1.DataSource = query.ToList();
                //GridView1.DataBind();
            }
            else if (String.IsNullOrEmpty(TextBox1.Text))
            {

                var query = from t1 in context.cities
                            join t2 in context.Customers
                            on t1.city_id equals t2.city_id
                            select new { t2.customer_id, t2.customer_name, t2.customer_age, t2.email, t2.phone, t2.photo, t1.city_name };



                labTabel.Text = "<table><tr><th>Customer ID</th><th>Customer Name</th><th>Customer Age</th><th>Email</th><th>Phone</th><th>Photo</th><th>City</th></tr>";
                foreach (var g in query)
                {
                    labTabel.Text += $"<tr><td>{g.customer_id}</td><td>{g.customer_name}</td><td>{g.customer_age}</td><td>{g.email}</td><td>{g.phone}</td><td><img src='Images/{g.photo}' width=\"200px\" height=\"200px\"/></td><td>{g.city_name}</td></tr>";
                }
                labTabel.Text += "</table>";
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



                    labTabel.Text = "<table><tr><th>Customer ID</th><th>Customer Name</th><th>Customer Age</th><th>Email</th><th>Phone</th><th>Photo</th><th>City</th></tr>";
                    foreach (var g in query)
                    {
                        labTabel.Text += $"<tr><td>{g.customer_id}</td><td>{g.customer_name}</td><td>{g.customer_age}</td><td>{g.email}</td><td>{g.phone}</td><td><img src='Images/{g.photo}' width=\"200px\" height=\"200px\"/></td><td>{g.city_name}</td></tr>";
                    }
                    labTabel.Text += "</table>";
                }
                //GridView1.DataSource = query.ToList();
                //GridView1.DataBind();

            }

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
          
        }
    }
}