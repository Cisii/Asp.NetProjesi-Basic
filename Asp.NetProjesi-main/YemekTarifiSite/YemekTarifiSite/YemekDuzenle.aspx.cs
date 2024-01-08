using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        SqlBaglanti baglan = new SqlBaglanti();
        string yemekid = " ";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["Yemekid"];
            if (Page.IsPostBack == false)
            {
               
                SqlCommand komut1 = new SqlCommand("select * from Tbl_yemekler where Yemekid=@p1", baglan.baglanti());
                komut1.Parameters.AddWithValue("@p1", yemekid);
                SqlDataReader dr1 = komut1.ExecuteReader();
                while (dr1.Read())
                {
                    TxtYemekAd.Text = dr1[1].ToString();
                    TxtMalzeme.Text = dr1[2].ToString();
                    TxtTarif.Text = dr1[3].ToString();
                }
            }
            baglan.baglanti().Close();

            if (Page.IsPostBack==false)
            {
                SqlCommand komut2 = new SqlCommand("select * from Tbl_kategoriler", baglan.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriId";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/image/" + FileUpload1.FileName));
            SqlCommand komut = new SqlCommand("update Tbl_yemekler set YemekAd=@p1,YemekMalzeme=@p2,YemekTarifi=@p3,KategoriId=@p4,YemekResim=@p6 where " +
                "Yemekid=@p5", baglan.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtYemekAd.Text);
            komut.Parameters.AddWithValue("@p2", TxtMalzeme.Text);
            komut.Parameters.AddWithValue("@p3", TxtTarif.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p6", "~/image/" + FileUpload1.FileName);
            komut.Parameters.AddWithValue("@p5", yemekid);
            komut.ExecuteNonQuery();
            baglan.baglanti().Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            //Bütün yemeklerin durmunu false yaptık 
            SqlCommand komut1=new SqlCommand("update Tbl_yemekler set Durum=0",baglan.baglanti());
            komut1.ExecuteNonQuery();
            baglan.baglanti().Close();

            //Günün yemeğini seçme
            SqlCommand komut2 = new SqlCommand("update Tbl_yemekler set Durum=1 where Yemekid=@p1", baglan.baglanti());
            komut2.Parameters.AddWithValue("@p1",yemekid);
            komut2.ExecuteNonQuery();
            baglan.baglanti().Close();
        }
    }
}