using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifiSite
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        SqlBaglanti baglan = new SqlBaglanti();
        string TarifId = " ";
        protected void Page_Load(object sender, EventArgs e)
        {
            TarifId = Request.QueryString["TarifId"];
            if (Page.IsPostBack == false)
            {
                SqlCommand komut1 = new SqlCommand("select * from Tbl_tarifler where TarifId=@p1", baglan.baglanti());
                komut1.Parameters.AddWithValue("@p1", TarifId);
                SqlDataReader dr1 = komut1.ExecuteReader();
                while (dr1.Read())
                {
                    TxtTarifAd.Text = dr1[1].ToString();
                    TxtMalzeme.Text = dr1[2].ToString();
                    TxtYapilis.Text = dr1[3].ToString();
                    TxtTarifShibi.Text = dr1[5].ToString();
                    TxtMail.Text = dr1[6].ToString();
                }
                baglan.baglanti().Close();
                //Kategori Listesi
                SqlCommand komut2 = new SqlCommand("select * from Tbl_Kategoriler", baglan.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriId";
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Tarifleri güncelleme
            SqlCommand komut1 = new SqlCommand("update Tbl_tarifler set TarifDurum=1 where TarifId=@p1", baglan.baglanti());
            komut1.Parameters.AddWithValue("@p1", TarifId);
            komut1.ExecuteNonQuery();
            baglan.baglanti().Close();

            //Yemeği ana sayfaya ekleme
            SqlCommand komut2 = new SqlCommand("insert into Tbl_yemekler (YemekAd,YemekMalzeme,YemekTarifi,KategoriId) " +
                "values(@k1,@k2,@k3,@k4)",baglan.baglanti());
            komut2.Parameters.AddWithValue("@k1", TxtTarifAd.Text);
            komut2.Parameters.AddWithValue("@k2", TxtMalzeme.Text);
            komut2.Parameters.AddWithValue("@K3", TxtYapilis.Text);
            komut2.Parameters.AddWithValue("@k4", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            baglan.baglanti().Close();

        }
    }
}