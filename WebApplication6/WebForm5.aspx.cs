using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                formbind(0);
                detailbind(0);
                gridbind(0);
            }
        }



        private void gridbind(int pid) {

            COMP c = new COMP();

            DataSet ds1 = c.getdata("select * from bank");
            GridView1.DataSource = ds1.Tables[0];
            GridView1.PageIndex = pid;
            GridView1.DataBind();



        }
        private void formbind(int pid)
        {

            COMP c = new COMP();
           
            DataSet ds1 = c.getdata("select * from emp");
            FormView1.DataSource = ds1.Tables[0];
            FormView1.PageIndex = pid;
            FormView1.DataBind();
             
           

        }

        private void detailbind(int pid)
        {

            COMP c = new COMP();
            DataSet ds = c.getdata("Select * from dept");
            ListView1.DataSource = ds.Tables[0];
            ListView1.DataBind();
            DetailsView1.DataSource = ds.Tables[0];
            DetailsView1.PageIndex = pid;
            DetailsView1.DataBind();

        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {
            formbind(e.NewPageIndex);
        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {
            detailbind(e.NewPageIndex);
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridbind(e.NewPageIndex);
        }
    }
}