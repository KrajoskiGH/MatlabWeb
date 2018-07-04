using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace franceWeb
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void RegistrationSubmit_Click(object sender, EventArgs e)
        {
            User user = new User();
            user.Name = tbFname.Text;
            user.Surname = tbLname.Text;
            user.Email = tbEmail.Text;
            user.Password = PasswordHash.ComputeHash( tbPassword.Text, "SHA384",null);

            SqlDatabaseConnection sqlDatabaseConnection = new SqlDatabaseConnection("localDatabase");
            sqlDatabaseConnection.open();
            sqlDatabaseConnection.sqlQuery("insert into LoginUserTable values('"+user.Name+ "','" + user.Surname + "','" + user.Email + "','" + user.Password + "')");
            sqlDatabaseConnection.close();
           
            
        }
    }
}