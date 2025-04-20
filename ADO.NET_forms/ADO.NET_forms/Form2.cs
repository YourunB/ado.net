using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ADO.NET_forms
{
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }

        private void t1BindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.t1BindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.myDBDataSet);

        }

        private void Form2_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'myDBDataSet.t1' table. You can move, or remove it, as needed.
            this.t1TableAdapter.Fill(this.myDBDataSet.t1);

        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.t1TableAdapter.Fill(this.myDBDataSet.t1);
            this.t1BindingSource.DataSource = this.myDBDataSet.t1;
        }

        private void t1BindingSource_CurrentChanged(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.myDBDataSet.Clear();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            SqlCommand mySqlCommand = new SqlCommand();
            mySqlCommand.Connection = this.t1TableAdapter.Connection;
            mySqlCommand.CommandType = CommandType.Text;
            mySqlCommand.CommandText = "INSERT INTO t1(f1, f2) VALUES ('Новый', 8)";

            mySqlCommand.Connection.Open();
            int i = mySqlCommand.ExecuteNonQuery();
            mySqlCommand.Connection.Close();

            this.myDBDataSet.Clear();
            this.t1TableAdapter.Fill(this.myDBDataSet.t1);
        }
    }
}
