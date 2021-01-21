using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace stok_veritabanı
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Form2 frm2 = new Form2();
            frm2.Show();
       
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (radioButton1.Checked == true || radioButton2.Checked==true)
            {
                groupBox2.Visible = true;
                groupBox3.Visible = false;

            }
            else if (radioButton3.Checked==true)
            {
                groupBox3.Visible = true;
                groupBox2.Visible = false;
            }
            else
                MessageBox.Show("Lütfen seçim Yapınız");
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void groupBox2_Enter(object sender, EventArgs e)
        {

        }

        private void pictureBox1_Click_1(object sender, EventArgs e)
        {

        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {

        }

        private void linkLabel1_Click(object sender, EventArgs e)
        {
            
        }

        private void button5_Click(object sender, EventArgs e)
        {
            Form3 frm3 = new Form3();
            frm3.Show();
          
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }
    }
}
