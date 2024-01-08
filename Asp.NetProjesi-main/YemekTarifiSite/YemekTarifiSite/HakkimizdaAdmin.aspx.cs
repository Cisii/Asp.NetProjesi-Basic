using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class HakkimizdaAdmin : System.Web.UI.Page
    {
        SqlBaglanti baglan = new SqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            if (Page.IsPostBack == false)
            {
                SqlCommand komut1 = new SqlCommand("select * from Tbl_hakkimizda", baglan.baglanti());
                SqlDataReader dr1 = komut1.ExecuteReader();
                while (dr1.Read())
                {
                    TxtMetin.Text = dr1[0].ToString();
                }
                baglan.baglanti().Close();
            }

        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut2 = new SqlCommand("update Tbl_hakkimizda set Metin=@p1", baglan.baglanti());
            komut2.Parameters.AddWithValue("@p1", TxtMetin.Text);
            komut2.ExecuteNonQuery();
            baglan.baglanti().Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
    }
}