using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication6
{
    public partial class WebForm1 : System.Web.UI.Page
    {
       
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                fillgrid();
        }

        private void fillgrid()
        {
            SqlConnection con = new SqlConnection("Initial catalog=Konnect;Integrated security=true; server=VDILEWVPNTH510 ");
            DataSet ds = new DataSet();

            SqlDataAdapter da = new SqlDataAdapter("Select * from emp", con);
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();


        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int i = e.NewEditIndex;
            GridView1.EditIndex = i;
            this.fillgrid();
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }

        protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
        {
            int n = e.NewEditIndex;
            GridView1.EditIndex = n;    
            this.fillgrid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            this.fillgrid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            SqlConnection con = new SqlConnection("Initial catalog=Konnect;Integrated security=true; server=VDILEWVPNTH510 ");
            SqlCommand cmd = new SqlCommand();

            string empno = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text.Trim();
            string ename = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text.Trim();
            string job = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text.Trim();
            string mgr = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text.Trim();
            string hiredate = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text.Trim();
            string sal = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text.Trim();
            string comm = ((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text.Trim();
            string deptno = ((TextBox)GridView1.Rows[e.RowIndex].Cells[8].Controls[0]).Text.Trim();

            string cm = "Update emp set ename='" + ename + "',job='" + job + "',mgr=" + mgr + ",hiredate='" +
                        hiredate + "',sal=" + sal + ",comm=" + comm + " where deptno=" + deptno ;

            con.Open();
            cmd = new SqlCommand(cm, con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("SUCCESS");
                GridView1.EditIndex = -1;
                this.fillgrid();
            }

        }
    }
}