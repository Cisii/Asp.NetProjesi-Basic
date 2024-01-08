using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        SqlBaglanti baglan=new SqlBaglanti();
        string kategoriid = " ";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriid = Request.QueryString["KategoriId"];
            SqlCommand komut=new SqlCommand("select * from Tbl_yemekler where KategoriId=@p1",baglan.baglanti());
            komut.Parameters.AddWithValue("@p1", kategoriid);
            SqlDataReader dr= komut.ExecuteReader();
            DataList2.DataSource= dr;
            DataList2.DataBind();
        }
    }
}