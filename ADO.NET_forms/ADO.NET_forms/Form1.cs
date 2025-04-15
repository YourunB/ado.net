using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ADO.NET_forms
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            // TODO: данная строка кода позволяет загрузить данные в таблицу "myDBDataSet.t1". При необходимости она может быть перемещена или удалена.
            this.t1TableAdapter.Fill(this.myDBDataSet.t1);

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            this.dataGridView1.DataSource = this.myDBDataSet;
            this.dataGridView1.DataMember = "t1";
        }

        private void button1_Click(object sender, EventArgs e)
        {

        }
    }
}
