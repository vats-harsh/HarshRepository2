using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                COMP c = new COMP();
                DataSet ds = c.getdata("select * from emp");
                GridView1.DataSource = ds.Tables[0];
                GridView1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            string b = TextBox1.Text;

            COMP c = new COMP();
            DataSet ds = c.getdata("select * from emp where ename = '" + b+"'");
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
    }
}