using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    
    public partial class YemekDetay : System.Web.UI.Page
    {
        SqlBaglanti baglan = new SqlBaglanti();
        string yemekId ="";

        protected void Page_Load(object sender, EventArgs e)
        {
            yemekId = Request.QueryString["yemekid"];
            SqlCommand komut = new SqlCommand("select YemekAd from Tbl_yemekler where Yemekid=@p1", baglan.baglanti());
            komut.Parameters.AddWithValue("@p1", yemekId);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Label8.Text = dr[0].ToString();
            }
            baglan.baglanti().Close();

            listele();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            yemekId = Request.QueryString["yemekid"];
            SqlCommand komut = new SqlCommand("insert into Tbl_Yorumlar (YorumAdSoyad,YorumMail,YorumIcerik,YemekId) values(@p1,@p2,@p3,@p4)", baglan.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtAdSoyad.Text);
            komut.Parameters.AddWithValue("@p2", TxtMail.Text);
            komut.Parameters.AddWithValue("@p3", TxtYorumuzu.Text);
            komut.Parameters.AddWithValue("@P4", yemekId);
            komut.ExecuteNonQuery();
            baglan.baglanti().Close();
            listele();
            temizle();
        }
        void temizle()
        {
            TxtAdSoyad.Text = " ";
            TxtMail.Text = " ";
            TxtYorumuzu.Text = " ";
        }
        void listele()
        {
            // yorumları listeleme
            SqlCommand komut2 = new SqlCommand("select * from Tbl_Yorumlar where YemekId=@p2", baglan.baglanti());
            komut2.Parameters.AddWithValue("@p2", yemekId);
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();

        }
    }
}