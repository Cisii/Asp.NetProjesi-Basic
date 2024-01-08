using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        SqlBaglanti baglan=new SqlBaglanti();
        string YorumId = " ";
        protected void Page_Load(object sender, EventArgs e)
        {
            YorumId = Request.QueryString["YorumId"];
            if (Page.IsPostBack == false)
            {
                //Yorum bilgilerini forma taşıma
                SqlCommand komut = new SqlCommand("select YorumAdSoyad,YorumMail,YorumIcerik,YemekAd from Tbl_Yorumlar inner join Tbl_yemekler on Tbl_Yorumlar.YemekId=Tbl_yemekler.Yemekid where YorumId=@p1", baglan.baglanti());
                komut.Parameters.AddWithValue("@p1", YorumId);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtAdSoyad.Text = dr[0].ToString();
                    TxtMail.Text = dr[1].ToString();
                    TxtIcerik.Text = dr[2].ToString();
                    TxtYemek.Text = dr[3].ToString();

                }
                baglan.baglanti().Close();
            }

        }
        void temizle()
        {
            TxtAdSoyad.Text = " ";
            TxtMail.Text = " ";
            TxtIcerik.Text = " ";
            TxtYemek.Text= " ";
        }

        protected void BtnOnayla_Click(object sender, EventArgs e)
        {
            SqlCommand komut1=new SqlCommand("update Tbl_Yorumlar set YorumAdSoyad=@p1,YorumMail=@p2,YorumOnay=1,YorumIcerik=@p3 where YorumId=@p4",baglan.baglanti());
            komut1.Parameters.AddWithValue("@p1", TxtAdSoyad.Text);
            komut1.Parameters.AddWithValue("@p2", TxtIcerik.Text);
            komut1.Parameters.AddWithValue("@p3", TxtIcerik.Text);
            komut1.Parameters.AddWithValue("@p4", YorumId);
            komut1.ExecuteNonQuery();
            baglan.baglanti().Close();
            temizle();
        }
    }
}