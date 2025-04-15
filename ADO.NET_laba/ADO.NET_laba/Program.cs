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
                // Создаем SqlDataAdapter для извлечения данных
                SqlDataAdapter adapter = new SqlDataAdapter("SELECT id, fch, ff FROM td1;", con);

                // Настройка команды для обновления
                adapter.UpdateCommand = new SqlCommand("UPDATE td1 SET fch = @fch, ff = @ff WHERE id = @id", con);
                adapter.UpdateCommand.Parameters.Add("@fch", SqlDbType.NChar, 20, "fch");
                adapter.UpdateCommand.Parameters.Add("@ff", SqlDbType.Float, 0, "ff");

                // Параметр для ID, используем DataRowVersion.Original для сравнения значений
                SqlParameter parameter = adapter.UpdateCommand.Parameters.Add("@id", SqlDbType.Int);
                parameter.SourceColumn = "id";
                parameter.SourceVersion = DataRowVersion.Original;

                // Заполняем DataSet данными из таблицы td1
                adapter.Fill(ds, "td1");

                // Выводим имена столбцов
                Console.WriteLine("Колонки таблицы:");
                foreach (DataColumn col in ds.Tables[0].Columns)
                {
                    Console.WriteLine(col.ColumnName);
                }

                // Выводим данные из DataSet
                Console.WriteLine("Исходные данные:");
                foreach (DataRow r in ds.Tables[0].Rows)
                {
                    Console.WriteLine($"DataRow {r["id"]}   {r["fch"]}   {r["ff"]}");
                }

                // Проверяем, что строк в таблице достаточно для обновления
                if (ds.Tables[0].Rows.Count > 2)
                {
                    ds.Tables[0].Rows[2]["fch"] = "12345"; // Обновляем значение в третьей строке
                }
                else
                {
                    Console.WriteLine("Недостаточно строк для обновления.");
                }

                Console.WriteLine("После изменения данных:");
                // Выводим обновленные данные
                foreach (DataRow r in ds.Tables[0].Rows)
                {
                    Console.WriteLine($"DataRow {r["id"]}   {r["fch"]}   {r["ff"]}");
                }

                // Обновляем данные в базе
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
