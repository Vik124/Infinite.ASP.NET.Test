using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Infinite.ASP.NET.Test
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = "DataSource=DESKTOP-FDCAVVM\\SQLEXPRESS;Initial Catalog=HRCon;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand("InsertPositionDetails", connection))
                {
                    command.CommandType = System.Data.CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@cPositionCode", TxtPositionCode.Text);
                    command.Parameters.AddWithValue("@vDescription", TxtDescription.Text);
                    command.Parameters.AddWithValue("@iBudgetedStrength", TxtBudgetedStrength.Text);

                }
            }
        }
    }
}