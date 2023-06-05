using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using Org.BouncyCastle.Asn1.Cms;
using System.IO;
using System.Security.Cryptography;

namespace TheVenue.User
{
    public partial class Reservation : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr, dr1;
        SqlDataAdapter sda;
        DataTable dt;
        SqlTransaction transaction = null;



        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["userId"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }

        protected void btnReservation_Click(object sender, EventArgs e)
        {
            string actionName = string.Empty;
            bool isValidToExecute = true;
            int userId = Convert.ToInt32(Request.QueryString["id"]);
            con = new SqlConnection(Connection.GetConnectionString());
            cmd = new SqlCommand("Reservation_Crud", con);
            cmd.Parameters.AddWithValue("@Action", "INSERT");
            cmd.Parameters.AddWithValue("@ReservationDate", txtDate.Text.Trim());
            cmd.Parameters.AddWithValue("@ReservationTime", txtTime.Text.Trim());
            cmd.Parameters.AddWithValue("@Person", txtPerson.Text.Trim());
            cmd.Parameters.AddWithValue("@Branch", txtBranch.Text.Trim());
            cmd.Parameters.AddWithValue("@Status", "Aktif");
            cmd.Parameters.AddWithValue("@UserId", Session["userId"]);

            if (isValidToExecute)
            {
                cmd.CommandType = CommandType.StoredProcedure;
                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    
                        lblMsg.Text = "Rezervasyon başarıyla tamamlandı! <b><a href='Profile.aspx'>Rezervasyonları görüntülemek için</a></b> tıklayınız";
                    
                    lblMsg.Visible = true;
                    lblMsg.CssClass = "alert alert-success";
                    
                    if (userId != 0)
                    {
                        Response.AddHeader("REFRESH", "1;URL=Profile.aspx");
                    }
                    clear();
                }
                catch (Exception ex)
                {
                    lblMsg.Visible = true;
                    lblMsg.Text = "Error- " + ex.Message;
                    lblMsg.CssClass = "alert alert-danger";
                    isValidToExecute = false;


                }
                finally
                {
                    con.Close();
                }

            }
        }

        

        void getReservationDetails()
        {
            con = new SqlConnection(Connection.GetConnectionString());
            cmd = new SqlCommand("Reservation_Crud", con);
            cmd.Parameters.AddWithValue("@Action", "SELECT4RES");
            cmd.Parameters.AddWithValue("@UserId", Request.QueryString["id"]);
            cmd.CommandType = CommandType.StoredProcedure;
            sda = new SqlDataAdapter(cmd);
            dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count == 1)
            {
                txtDate.Text = dt.Rows[0]["ReservationDate"].ToString();
                txtTime.Text = dt.Rows[0]["ReservationTime"].ToString();
                txtPerson.Text = dt.Rows[0]["Person"].ToString();
                txtBranch.Text = dt.Rows[0]["Branch"].ToString();


            }
            lblHeaderMsg.Text = "<h2>Rezervasyonu düzenle</h2>";
            btnReservation.Text = "Update";
            lblUpdateRes.Text = "";
        }
        private void clear()
        {
            txtDate.Text = string.Empty;
            txtTime.Text = string.Empty;
            txtPerson.Text = string.Empty;
            txtBranch.Text = string.Empty;
        }

    }
}