using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        SqlBaglanti baglanti= new SqlBaglanti();
        string id = " ";
        string islem = " ";

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible= false;
            Panel4.Visible= false;

            if (Page.IsPostBack==false)
            {
                id = Request.QueryString["KategoriId"];
                islem = Request.QueryString["islem"];

            }
            
            SqlCommand komut = new SqlCommand("select * from Tbl_kategoriler ",baglanti.baglanti());
            SqlDataReader dr= komut.ExecuteReader();
            DataList1.DataSource= dr;
            DataList1.DataBind();

            //  Silme işlemi
            if (islem == "sil")
            {
                SqlCommand komutDelete = new SqlCommand("delete from Tbl_kategoriler where KategoriId=@p2",baglanti.baglanti());
                komutDelete.Parameters.AddWithValue("@p2", id);
                komutDelete.ExecuteNonQuery();
                baglanti.baglanti().Close();
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

        protected void Button7_Click(object sender, EventArgs e)
        {
            Panel4.Visible= true;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Panel4.Visible= false;
        }

        protected void Btn_ekle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_kategoriler (KategoriAd) values (@p1) ", baglanti.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtKategoriAd.Text);
            komut.ExecuteNonQuery();
            temizle();
            baglanti.baglanti().Close();
        }
        void temizle()
        {
            TxtKategoriAd.Text = " ";
        }
    }
}