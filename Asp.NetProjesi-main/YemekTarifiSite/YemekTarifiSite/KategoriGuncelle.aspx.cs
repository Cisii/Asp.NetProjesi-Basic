using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class KategoriGuncelle : System.Web.UI.Page
    {
        SqlBaglanti baglan=new SqlBaglanti();
        string kategoriId = " ";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriId = Request.QueryString["KategoriId"];

            if (Page.IsPostBack==false)//sayfayı 1 kere yenile
            {
                
                SqlCommand komut = new SqlCommand("select * from Tbl_kategoriler where KategoriId=@p1", baglan.baglanti());
                komut.Parameters.AddWithValue("@p1", kategoriId);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtKategoriAd.Text = dr[1].ToString();
                    TxtAdet.Text = dr[2].ToString();
                }
                baglan.baglanti().Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Tbl_kategoriler set KategoriAd=@p1,KategoriAdet=@p2 where KategoriId=@p3", baglan.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtKategoriAd.Text);
            komut.Parameters.AddWithValue("@p2",TxtAdet.Text);
            komut.Parameters.AddWithValue("@p3", kategoriId);
            komut.ExecuteNonQuery();
            baglan.baglanti().Close();
        }
    }
}