using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace EF_Model_First
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            //EF Model First ile kodlama aşaması
             using(var db = new MFirstModelContainer())
            {
                //KAYDEDER
                //Yetkiler yetki = new Yetkiler();
                //yetki.YetkiAd = "Kral";
                //db.Yetkiler.Add(yetki);
                //db.SaveChanges();


                //SİLER
                //var q = db.Yetkiler.Single(x => x.YetkiID == 1);
                //db.Yetkiler.Remove(q);
                //db.SaveChanges();


                //GÜNCELLER
                //var yetki = db.Yetkiler.Single(x => x.YetkiID == 1);

                //if (yetki != null)
                //{
                //    yetki.YetkiAd = "MAFYA"; // Yeni Yetki Adı
                //    db.SaveChanges(); // Değişiklikleri kaydet
                //}


                //LİSTELER
                //var yetkiler = db.Yetkiler.ToList();

                //foreach (var yetki in yetkiler)
                //{
                //    label1.Text="Yetki ID: " + yetki.YetkiID;
                //    label2.Text = "Yetki Adı: " + yetki.YetkiAd;
                //}

            }
        }
    }
}
