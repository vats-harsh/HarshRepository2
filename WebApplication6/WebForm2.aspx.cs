using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Initial catalog=Konnect;Integrated security=true; server=VDILEWVPNTH510 ");
            DataSet ds = new DataSet();

            SqlDataAdapter da = new SqlDataAdapter("Select * from dept", con);
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Initial catalog=Konnect;Integrated security=true; server=VDILEWVPNTH510 ");
            DataSet ds = new DataSet();

            SqlDataAdapter da = new SqlDataAdapter("Select * from emp", con);
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
    }
}