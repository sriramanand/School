using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using WindowsFormsApplication4;
using System.Data.SqlClient;

namespace demo1
{
    public partial class Form1 : MetroFramework.Forms.MetroForm
    {
        SqlConnection con = DBAccess.GetConnection();
        public Form1()
        {
            InitializeComponent();

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            timer1.Start();
            up();
        }
        public void up()
        {

            con.Open();

            DateTime thisDay = DateTime.Now.Date;

            DateTime endDay = DateTime.Today.AddDays(30);






            // String vi = "select  StartDate as date, Ename as ename from EventDe where StartDate between '2016-09-17' and '2016-09-30'";
            String vi = "select  StartDate as date, Ename as ename from EventDe where StartDate between '" + thisDay + "' and '" + endDay + "'";

            SqlCommand cmd = new SqlCommand(vi, con);

            cmd.ExecuteNonQuery();
            SqlDataAdapter ds = new SqlDataAdapter(cmd);
            SqlDataReader d;
            d = cmd.ExecuteReader();
            while (d.Read())
            {

                string name = d["ename"].ToString();

                string tot = d["date"].ToString();

               


                listBox1.Items.Add(name);
                listBox1.Items.Add(tot);


                
            }

            con.Close();

        }

        private void metroLabel1_Click(object sender, EventArgs e)
        {

        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            label1.Text = DateTime.Now.ToString("hh:mm:ss tt");
        }

        private void groupBox5_Enter(object sender, EventArgs e)
        {

        }

        private void metroPanel2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void groupBox4_Enter(object sender, EventArgs e)
        {

        }

        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void monthCalendar1_DateChanged(object sender, DateRangeEventArgs e)
        {

        }
    }
}
 