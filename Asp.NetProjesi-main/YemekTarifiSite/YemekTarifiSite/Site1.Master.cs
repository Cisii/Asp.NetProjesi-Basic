using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class Site1 : System.Web.UI.MasterPage
    {

        SqlBaglanti baglan=new SqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("select * from Tbl_kategoriler", baglan.baglanti());
            SqlDataReader dr=komut.ExecuteReader();
            DataList1.DataSource= dr;
            DataList1.DataBind();
        }
    }
}