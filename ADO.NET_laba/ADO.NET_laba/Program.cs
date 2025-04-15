using System.Data;
using System.Data.SqlClient;

class Program
{
    static void Main()
    {
        string url = "Data Source=localhost;Initial Catalog=MyDB;Integrated Security=True";
        DataSet ds = new DataSet();

        using (SqlConnection con = new SqlConnection(url))
        {
            try
            {
                SqlDataAdapter adapter = new SqlDataAdapter("SELECT id, fch, ff FROM td1;", con);

                adapter.UpdateCommand = new SqlCommand("UPDATE td1 SET fch = @fch, ff = @ff WHERE id = @id", con);
                adapter.UpdateCommand.Parameters.Add("@fch", SqlDbType.NChar, 20, "fch");
                adapter.UpdateCommand.Parameters.Add("@ff", SqlDbType.Float, 0, "ff");

                SqlParameter parameter = adapter.UpdateCommand.Parameters.Add("@id", SqlDbType.Int);
                parameter.SourceColumn = "id";
                parameter.SourceVersion = DataRowVersion.Original;

                adapter.Fill(ds, "td1");

                Console.WriteLine("Колонки таблицы:");
                foreach (DataColumn col in ds.Tables[0].Columns)
                {
                    Console.WriteLine(col.ColumnName);
                }

                Console.WriteLine("Исходные данные:");
                foreach (DataRow r in ds.Tables[0].Rows)
                {
                    Console.WriteLine($"DataRow {r["id"]}   {r["fch"]}   {r["ff"]}");
                }
     
                if (ds.Tables[0].Rows.Count > 2)
                {
                    ds.Tables[0].Rows[2]["fch"] = "12345";
                }
                else
                {
                    Console.WriteLine("Недостаточно строк для обновления.");
                }

                Console.WriteLine("После изменения данных:");
                foreach (DataRow r in ds.Tables[0].Rows)
                {
                    Console.WriteLine($"DataRow {r["id"]}   {r["fch"]}   {r["ff"]}");
                }

                adapter.Update(ds, "td1");

                Console.WriteLine("Данные успешно обновлены.");
            }
            catch (Exception ex)
            {
                Console.WriteLine("Ошибка: " + ex.Message);
            }
        }
    }
}
