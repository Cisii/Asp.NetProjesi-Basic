using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifiSite
{
    public partial class Yemekler : System.Web.UI.Page
    {
        SqlBaglanti baglan=new SqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible= false;
            Panel4.Visible= false;
            string islem = " ";
            string id = " ";

            if (Page.IsPostBack==false)//sayfa yüklendiğinde
            {
                islem = Request.QueryString["islem"];
                id = Request.QueryString["Yemekid"];

                //Kategorileri listeleme
                SqlCommand komut2 = new SqlCommand("select * from Tbl_kategoriler", baglan.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriId";
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }

            //Yemekleri listeleme
            SqlCommand komut = new SqlCommand("select * from Tbl_yemekler", baglan.baglanti());
            SqlDataReader dr=komut.ExecuteReader();
            DataList1.DataSource= dr;
            DataList1.DataBind();

            if (islem == "sil")
            {
                SqlCommand komut3= new SqlCommand("delete from  Tbl_yemekler where Yemekid=@k1",baglan.baglanti());
                komut3.Parameters.AddWithValue("@k1", id);
                komut3.ExecuteNonQuery();
                baglan.baglanti().Close();

            }

  
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible= true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible= false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible=true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible= false;
        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {

        }
        void temizle()
        {
            TxtYemekAd.Text = " ";
            TxtYemekMalzeme.Text= " ";
            TxtYemekTarifi.Text= " ";
        }

        protected void BtnEkle_Click1(object sender, EventArgs e)
        {
            //Yemek ekle
            SqlCommand komut3 = new SqlCommand("insert into Tbl_yemekler (YemekAd,YemekMalzeme,YemekTarifi,KategoriId) values(@p1,@p2,@p3,@p4)"
    , baglan.baglanti());
            komut3.Parameters.AddWithValue("@p1", TxtYemekAd.Text);
            komut3.Parameters.AddWithValue("@p2", TxtYemekMalzeme.Text);
            komut3.Parameters.AddWithValue("@p3", TxtYemekTarifi.Text);
            komut3.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut3.ExecuteNonQuery();
            baglan.baglanti().Close();
            temizle();

            //Kategori sayısını 1 artırma
            SqlCommand komut4 = new SqlCommand("update Tbl_kategoriler set KategoriAdet=KategoriAdet+1 where KategoriId=@t1", baglan.baglanti());
            komut4.Parameters.AddWithValue("@t1",DropDownList1.SelectedValue);
            komut4.ExecuteNonQuery();
            baglan.baglanti().Close();  
        }
    }
}