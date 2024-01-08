using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class Mesajlar : System.Web.UI.Page
    {
        SqlBaglanti baglan=new SqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible= false;
            SqlCommand komut1 = new SqlCommand("select * from Tbl_mesajlar", baglan.baglanti());
            SqlDataReader dr1= komut1.ExecuteReader();
            DataList1.DataSource= dr1;
            DataList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible=false;
        }
    }
}