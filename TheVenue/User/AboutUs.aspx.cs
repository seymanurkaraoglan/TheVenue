using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TheVenue.Admin;

namespace TheVenue.User
{
    public partial class AboutUs : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter sda;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //getComments();

            }
        }
        //private void getComments()
        //{
        //    con = new SqlConnection(Connection.GetConnectionString());
        //    cmd = new SqlCommand("Comment_Crud", con);
        //    cmd.Parameters.AddWithValue("@Action", "SELECT");
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    sda = new SqlDataAdapter(cmd);
        //    dt = new DataTable();
        //    sda.Fill(dt);
        //    comments.DataSource = dt;
        //    comments.DataBind();
        //}
    }
}