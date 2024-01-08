using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public class SqlBaglanti
    {
        public SqlConnection baglanti() 
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-GLTFK1B;Initial Catalog=Dbo_yemekTarifi;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            baglan.Open();
            return baglan;
        }

    }
}