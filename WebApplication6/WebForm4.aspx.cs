using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                bind();
        }
        private void bind() {

            COMP c = new COMP();
            DataSet ds = c.getdata("Select * from dept");
            DataList1.DataSource = ds.Tables[0];
            DataList1.DataBind();
        
        }
    }
}