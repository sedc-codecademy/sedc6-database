using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net.Http;
using System.Data.SqlClient;

namespace DemoApp.SqlDemo
{
    class Program
    {
        static void Main(string[] args)
        {
            //MakeDatabaseRequestScalar().Wait();
            MakeDatabaseRequestCreateGenre().Wait();
            //MakeHttpRequest().Wait();

            Console.ReadLine();
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
