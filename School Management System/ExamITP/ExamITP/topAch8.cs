﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using WindowsFormsApplication4;

namespace ExamITP
{
    public partial class topAch8 : MetroFramework.Forms.MetroForm
    {
        SqlConnection con = DBAccess.GetConnection();

        public topAch8()
        {
            InitializeComponent();
        }

        public void PassValue(string strValue1)
        {
            metroLabel6.Text = strValue1;
        }

        public void organize1()
        {
            metroGrid1.Columns[0].HeaderText = "Admission No";
            metroGrid1.Columns[1].HeaderText = "First Name";
            metroGrid1.Columns[2].HeaderText = "Last Name";
        }

        public void organize2()
        {
            metroGrid2.Columns[0].HeaderText = "Admission No";
            metroGrid2.Columns[1].HeaderText = "First Name";
            metroGrid2.Columns[2].HeaderText = "Last Name";
        }

        public void organize3()
        {
            metroGrid3.Columns[0].HeaderText = "Admission No";
            metroGrid3.Columns[1].HeaderText = "First Name";
            metroGrid3.Columns[2].HeaderText = "Last Name";
        }

        public void organize4()
        {
            metroGrid4.Columns[0].HeaderText = "Admission No";
            metroGrid4.Columns[1].HeaderText = "First Name";
            metroGrid4.Columns[2].HeaderText = "Last Name";
        }

        public void organize5()
        {
            metroGrid5.Columns[0].HeaderText = "Admission No";
            metroGrid5.Columns[1].HeaderText = "First Name";
            metroGrid5.Columns[2].HeaderText = "Last Name";
        }

        public void organize6()
        {
            metroGrid6.Columns[0].HeaderText = "Admission No";
            metroGrid6.Columns[1].HeaderText = "First Name";
            metroGrid6.Columns[2].HeaderText = "Last Name";
        }

        public void organize7()
        {
            metroGrid7.Columns[0].HeaderText = "Admission No";
            metroGrid7.Columns[1].HeaderText = "First Name";
            metroGrid7.Columns[2].HeaderText = "Last Name";
        }

        public void organize8()
        {
            metroGrid8.Columns[0].HeaderText = "Admission No";
            metroGrid8.Columns[1].HeaderText = "First Name";
            metroGrid8.Columns[2].HeaderText = "Last Name";
        }
        private void topAch8_Load(object sender, EventArgs e)
        {
            SqlCommand command1 = new SqlCommand();
            command1.Connection = con;
            if (metroLabel6.Text == "8")
            {
                command1.CommandText = "select AdmissionNo,fname,surname,[English],DENSE_RANK() OVER (ORDER BY English DESC) AS [Standing] from yearEnd where admissionGrade  = '8'";
            }
            else if (metroLabel6.Text == "9")
            {
                command1.CommandText = "select AdmissionNo,fname,surname,[English],DENSE_RANK() OVER (ORDER BY English DESC) AS [Standing] from yearEnd where admissionGrade  = '9'";
            }
            else
            {

            }
            DataTable data1 = new DataTable();
            SqlDataAdapter adapter1 = new SqlDataAdapter(command1);
            adapter1.Fill(data1);
            metroGrid1.DataSource = data1;
            organize1();

            SqlCommand command2 = new SqlCommand();
            command2.Connection = con;
            if (metroLabel6.Text == "8")
            {
                command2.CommandText = "select AdmissionNo,fname,surname,[Mathematics],DENSE_RANK() OVER (ORDER BY Mathematics DESC) AS [Standing] from yearEnd where admissionGrade  = '8'";
            }
            else if (metroLabel6.Text == "9")
            {
                command2.CommandText = "select AdmissionNo,fname,surname,[Mathematics],DENSE_RANK() OVER (ORDER BY Mathematics DESC) AS [Standing] from yearEnd where admissionGrade  = '9'";
            }
            else
            {

            }
            DataTable data2 = new DataTable();
            SqlDataAdapter adapter2 = new SqlDataAdapter(command2);
            adapter2.Fill(data2);
            metroGrid2.DataSource = data2;
            organize2();

            SqlCommand command3 = new SqlCommand();
            command3.Connection = con;
            if (metroLabel6.Text == "8")
            {
                command3.CommandText = "select AdmissionNo,fname,surname,[ICT],DENSE_RANK() OVER (ORDER BY ICT DESC) AS [Standing] from yearEnd where admissionGrade  = '8'";
            }
            else if (metroLabel6.Text == "9")
            {
                command3.CommandText = "select AdmissionNo,fname,surname,[ICT],DENSE_RANK() OVER (ORDER BY ICT DESC) AS [Standing] from yearEnd where admissionGrade  = '9'";
            }
            else
            {

            }
            DataTable data3 = new DataTable();
            SqlDataAdapter adapter3 = new SqlDataAdapter(command3);
            adapter3.Fill(data3);
            metroGrid3.DataSource = data3;
            organize3();

            SqlCommand command4 = new SqlCommand();
            command4.Connection = con;
            if (metroLabel6.Text == "8")
            {
                command4.CommandText = "select AdmissionNo,fname,surname,[Science],DENSE_RANK() OVER (ORDER BY Science DESC) AS [Standing] from yearEnd where admissionGrade  = '8'";
            }
            else if (metroLabel6.Text == "9")
            {
                command4.CommandText = "select AdmissionNo,fname,surname,[Science],DENSE_RANK() OVER (ORDER BY Science DESC) AS [Standing] from yearEnd where admissionGrade  = '9'";
            }
            else
            {

            }
            DataTable data4 = new DataTable();
            SqlDataAdapter adapter4 = new SqlDataAdapter(command4);
            adapter4.Fill(data4);
            metroGrid4.DataSource = data4;
            organize4();

            SqlCommand command5 = new SqlCommand();
            command5.Connection = con;
            if (metroLabel6.Text == "8")
            {
                command5.CommandText = "select AdmissionNo,fname,surname,[History],DENSE_RANK() OVER (ORDER BY History DESC) AS [Standing] from yearEnd where admissionGrade  = '8'";
            }
            else if (metroLabel6.Text == "9")
            {
                command5.CommandText = "select AdmissionNo,fname,surname,[History],DENSE_RANK() OVER (ORDER BY History DESC) AS [Standing] from yearEnd where admissionGrade  = '9'";
            }
            else
            {

            }
            DataTable data5 = new DataTable();
            SqlDataAdapter adapter5 = new SqlDataAdapter(command5);
            adapter5.Fill(data5);
            metroGrid5.DataSource = data5;
            organize5();

            SqlCommand command6 = new SqlCommand();
            command6.Connection = con;
            if (metroLabel6.Text == "8")
            {
                command6.CommandText = "select AdmissionNo,fname,surname,[Language],DENSE_RANK() OVER (ORDER BY Language DESC) AS [Standing] from yearEnd where admissionGrade  = '8'";
            }
            else if (metroLabel6.Text == "9")
            {
                command6.CommandText = "select AdmissionNo,fname,surname,[Language],DENSE_RANK() OVER (ORDER BY Language DESC) AS [Standing] from yearEnd where admissionGrade  = '9'";
            }
            else
            {

            }
            DataTable data6 = new DataTable();
            SqlDataAdapter adapter6 = new SqlDataAdapter(command6);
            adapter6.Fill(data6);
            metroGrid6.DataSource = data6;
            organize6();


            SqlCommand command7 = new SqlCommand();
            command7.Connection = con;
            if (metroLabel6.Text == "8")
            {
                command7.CommandText = "select AdmissionNo,fname,surname,[Englit],DENSE_RANK() OVER (ORDER BY Englit DESC) AS [Standing] from yearEnd where admissionGrade  = '8'";
            }
            else if (metroLabel6.Text == "9")
            {
                command7.CommandText = "select AdmissionNo,fname,surname,[Englit],DENSE_RANK() OVER (ORDER BY Englit DESC) AS [Standing] from yearEnd where admissionGrade  = '9'";
            }
            else
            {

            }
            DataTable data7 = new DataTable();
            SqlDataAdapter adapter7 = new SqlDataAdapter(command7);
            adapter7.Fill(data7);
            metroGrid7.DataSource = data7;
            organize7();

            SqlCommand command8 = new SqlCommand();
            command8.Connection = con;
            if (metroLabel6.Text == "8")
            {
                command8.CommandText = "select AdmissionNo,fname,surname,[Commerce],DENSE_RANK() OVER (ORDER BY Commerce DESC) AS [Standing] from yearEnd where admissionGrade  = '8'";
            }
            else if (metroLabel6.Text == "9")
            {
                command8.CommandText = "select AdmissionNo,fname,surname,[Commerce],DENSE_RANK() OVER (ORDER BY Commerce DESC) AS [Standing] from yearEnd where admissionGrade  = '9'";
            }
            else
            {

            }
            DataTable data8 = new DataTable();
            SqlDataAdapter adapter8 = new SqlDataAdapter(command8);
            adapter8.Fill(data8);
            metroGrid8.DataSource = data8;
            organize8();
        }

        private void metroButton1_Click(object sender, EventArgs e)
        {
            yearEnd a = new yearEnd();
            this.Hide();
            a.Show();
        }
    }
}
