using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifiSite
{
    public partial class TarifOner : System.Web.UI.Page
    {
        SqlBaglanti baglan=new SqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void temizle()
        {
            TxtTarifAd.Text = " ";
            TxtMalzemeler.Text = " ";
            TxtYapilis.Text = " ";
            TxtTarifOneren.Text = " ";
            TxtMailAdres.Text = " ";    

        }

        protected void BtnTarifOner_Click(object sender, EventArgs e)
        {
            SqlCommand komut=new SqlCommand("insert into Tbl_tarifler (TarifAd,TarifMalzeme,TarifYapilis,TarifResim,TarifinSahibi,TarifSahipMail)" +
                "values(@p1,@p2,@p3,@p4,@p5,@p6)",baglan.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtTarifAd.Text);
            komut.Parameters.AddWithValue("@p2", TxtMalzemeler.Text);
            komut.Parameters.AddWithValue("@p3",TxtYapilis.Text);
            komut.Parameters.AddWithValue("@p4",TxtResim.FileName);
            komut.Parameters.AddWithValue("@p5",TxtTarifOneren.Text);
            komut.Parameters.AddWithValue("@p6", TxtMailAdres.Text);
            komut.ExecuteNonQuery();
            baglan.baglanti().Close();
            temizle();
            Response.Write("Tarifiniz alınmıştır");
        }
    }
}