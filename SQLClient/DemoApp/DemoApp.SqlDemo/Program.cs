using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net.Http;
using System.Data.SqlClient;
using Newtonsoft.Json;

namespace DemoApp.SqlDemo
{
    class Program
    {
        static void Main(string[] args)
        {
            while (true)
            {
                Console.Write("Enter Id of the genre: ");
                GetGenreById(Console.ReadLine());
            }
            //ExecuteScalar:
            // used to get result from aggregate functions such as count(), sum(), max(), min(), avg()
            //MakeDatabaseRequestScalar().Wait();

            //ExecuteNonQuery:
            //  result from insert, update, delete queries
            // used to get number of rows affected
            //MakeDatabaseRequestCreateGenre().Wait();

            //ExecuteReader
            //  used to get actual quried records

            //MakeHttpRequest().Wait();
            Console.ReadLine();
        }

        static void GetGenreById(string ID)
        {
            string query = "select * from Genres as g where g.Id = @Id";
            string connectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=MusicDb;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            var connection = new SqlConnection(connectionString);
            connection.Open();
            var command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@Id", ID);
            var reader = command.ExecuteReader();
            if (reader.Read())
            {
                var id = (int)reader["Id"];
                var name = (string)reader[1];
                var genre = new Genre
                {
                    Id = id,
                    Name = name
                };
                var json = JsonConvert.SerializeObject(genre, Formatting.Indented);
                Console.WriteLine(json);
            }
            else
            {
                Console.WriteLine("genre was not found");
            }
            connection.Close();
        }

        static void GetAllGenres()
        {
            string query = "select * from Genres";
            string connectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=MusicDb;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            var connection = new SqlConnection(connectionString);
            connection.Open();
            var command = new SqlCommand(query, connection);
            var reader = command.ExecuteReader();
            var genres = new List<Genre>();
            while (reader.Read())
            {
                var id = (int)reader["Id"];
                var name = (string)reader[1];
                var genre = new Genre
                {
                    Id = id,
                    Name = name
                };
                genres.Add(genre);
            }
            connection.Close();
            //var json = JsonConvert.SerializeObject(genres,Formatting.Indented);
            var json = JsonConvert.SerializeObject(genres);
            Console.WriteLine(json);
        }

        private static async Task MakeDatabaseRequestScalar()
        {
            string query = "select count(*) from Genres";
            string connectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=MusicDb;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand command = new SqlCommand(query, connection);
            var result = command.ExecuteScalar();
            Console.WriteLine(result);
        }
        private static async Task MakeDatabaseRequestCreateGenre()
        {
            string query = "select * from Genres";
            //string query = "insert into Genres(Id,Name) values (30000,'new genre')";
            string connectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=MusicDb;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand command = new SqlCommand(query, connection);
            var result = command.ExecuteNonQuery();
            Console.WriteLine(result);
        }

        static async Task MakeHttpRequest()
        {
            var url = "https://google.com";
            var client = new HttpClient();
            var response = await client.GetAsync(url);
            var result = await response.Content.ReadAsStringAsync();
            Console.WriteLine(result);
        }

        private static void DoSomeJob()
        {
            throw new NotImplementedException();
        }
    }
}
