using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        SqlBaglanti baglan=new SqlBaglanti();
        string MesajId = " ";
        protected void Page_Load(object sender, EventArgs e)
        {
            MesajId = Request.QueryString["MesajId"];
            SqlCommand komut=new SqlCommand("select * from Tbl_mesajlar where MesajId=@p1",baglan.baglanti());
            komut.Parameters.AddWithValue("@p1",MesajId);   
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TxtMesajGonderen.Text = dr[1].ToString();
                TxtBaslik.Text = dr[2].ToString();
                TxtMailAdresi.Text= dr[3].ToString();
                TxtMesajIcerik.Text= dr[4].ToString();  
            }
            baglan.baglanti().Close();
        }
    }
}