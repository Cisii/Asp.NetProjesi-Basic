using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class iletisim : System.Web.UI.Page
    {
        SqlBaglanti baglan = new SqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void temizle()
        {
            TxtAdSoyad.Text = " ";
            TxtKonu.Text = " ";
            TxtMail.Text = " ";
            TxtMesaj.Text = " ";
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_mesajlar (MesajAdSoyad,MesajBaslik,MesajMail,MesajIcerik) values (@p1,@p2,@p3,@p4)", baglan.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtAdSoyad.Text);
            komut.Parameters.AddWithValue("@p2", TxtKonu.Text);
            komut.Parameters.AddWithValue("@p3", TxtMail.Text);
            komut.Parameters.AddWithValue("@P4", TxtMesaj.Text);
            komut.ExecuteNonQuery();
            baglan.baglanti().Close();
            temizle();
        }
    }
}