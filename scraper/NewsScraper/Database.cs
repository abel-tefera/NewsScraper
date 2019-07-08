using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static System.Console;
namespace NewsScraper
{
    class Database
    {
        private MySqlConnection connection;
        private string server;
        private string database;
        private string uid;
        private string password;

        public Database()
        {
            Initialize();
        }

        private void Initialize()
        {
            server = "localhost";
            database = "news";
            uid = "root";
            password = "";
            string connectionString;
            connectionString = "SERVER=" + server + ";" + "DATABASE=" +
            database + ";" + "UID=" + uid + ";" + "PASSWORD=" + password + ";" + "PORT=3306; charset=utf8;";
            connection = new MySqlConnection(connectionString);
        }

        private bool OpenConnection()
        {
            try
            {
                connection.Open();
                return true;
            }
            catch (MySqlException ex)
            {
                switch (ex.Number)
                {
                    case 0:
                        WriteLine("Cannot connect to server.  Contact administrator");
                        break;

                    case 1045:
                        WriteLine("Invalid username/password, please try again");
                        break;
                    default:
                        WriteLine("Failed to connect!");
                        break;
                }
                return false;
            }
        }

        private bool CloseConnection()
        {
            try
            {
                connection.Close();
                return true;
            }
            catch (MySqlException ex)
            {
                WriteLine(ex.Message);
                return false;
            }
        }



        public void NewsInsert(News news)
        {
            string query = $"INSERT INTO news_tbl (title, link, content, created_at, image_link) VALUES (@title, @link, @content, @created_at, @image_link)";
            //string query = $"INSERT INTO news_tbl (title, content, created_at) VALUES ('{news.title}', '{news.content}', '{news.created_at}')";
            if (this.OpenConnection() == true)
            {
                MySqlCommand cmd = new MySqlCommand(query, connection);
                cmd.Parameters.Add("@title", MySqlDbType.VarChar);
                cmd.Parameters.Add("@link", MySqlDbType.VarChar);
                cmd.Parameters.Add("@content", MySqlDbType.VarChar);
                cmd.Parameters.Add("@created_at", MySqlDbType.VarChar);
                cmd.Parameters.Add("@image_link", MySqlDbType.VarChar);

                cmd.Parameters["@title"].Value = news.title;
                cmd.Parameters["@link"].Value = news.link;
                cmd.Parameters["@content"].Value = news.content;
                cmd.Parameters["@created_at"].Value = news.created_at;
                cmd.Parameters["@image_link"].Value = news.image_link;

                cmd.ExecuteNonQuery();
                this.CloseConnection();
            }
        }
    }
}
