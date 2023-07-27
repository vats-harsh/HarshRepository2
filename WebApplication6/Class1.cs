using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplication6
{
    public class COMP
    {
        public DataSet getdata(string s) {

            SqlConnection con = new SqlConnection("initial catalog=Harsh; integrated security= true; server=VDILEWVPNTH510");
            SqlDataAdapter da = new SqlDataAdapter(s, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return (ds);
        }
    }
}