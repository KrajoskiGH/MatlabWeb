using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace franceWeb
{
    public class SqlDatabaseConnection
    {
        public SqlConnection sqlConnection;
        public SqlCommand sqlCommand;
        public SqlDataAdapter sqlDataAdapter;
        public DataTable dataTable;

        

        public SqlDatabaseConnection(string connectionStringConfig)
        {
            sqlConnection = null;
            try
            {
                string cs = ConfigurationManager.ConnectionStrings[connectionStringConfig].ConnectionString;
                sqlConnection = new SqlConnection(cs);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void sqlQuery(string query)
        {
            sqlCommand = new SqlCommand(query, sqlConnection);
            sqlCommand.ExecuteNonQuery();
        }
        public void open()
        {
            this.sqlConnection.Open();
        }
        public void close()
        {
            this.sqlConnection.Close();
        }

    }
}