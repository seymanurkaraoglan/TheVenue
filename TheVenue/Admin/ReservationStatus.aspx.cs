using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheVenue.Admin
{
    public partial class ReservationStatus : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter sda;
        DataTable dt; 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["breadCrum"] = "Rezervasyon Durumu";
                if (Session["admin"] == null)
                {
                    Response.Redirect("../User/Login.aspx");
                }
                else
                {
                    getReservationStatus();
                }
            }
            lblMsg.Visible = false;
            pUpdateReservationStatus.Visible = false;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int reservationId = Convert.ToInt32(hdnId.Value);
            con = new SqlConnection(Connection.GetConnectionString());
            cmd = new SqlCommand("Reservation_Crud", con);
            cmd.Parameters.AddWithValue("@Action", "UPDSTATUS");
            cmd.Parameters.AddWithValue("@ReservationId", reservationId);
            cmd.Parameters.AddWithValue("@Status", ddlReservationStatus.SelectedValue);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                lblMsg.Visible = true;
                lblMsg.Text = "Rezervasyon durumu başarıyla güncellendi!";
                lblMsg.CssClass = "alert alert-success";
                getReservationStatus();
            }
            catch (Exception ex)
            {
                lblMsg.Visible = true;
                lblMsg.Text = "Error- " + ex.Message;
                lblMsg.CssClass = "alert alert-danger";
            }
            finally
            {
                con.Close();
            }
        }
        protected void rReservationStatus_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            lblMsg.Visible = false;

            if (e.CommandName == "edit")
            {
                con = new SqlConnection(Connection.GetConnectionString());
                cmd = new SqlCommand("Reservation_Crud", con);
                cmd.Parameters.AddWithValue("@Action", "STATUSBYID");
                cmd.Parameters.AddWithValue("@ReservationId", e.CommandArgument);
                cmd.CommandType = CommandType.StoredProcedure;
                sda = new SqlDataAdapter(cmd);
                dt = new DataTable();
                sda.Fill(dt);
                ddlReservationStatus.SelectedValue = dt.Rows[0]["Status"].ToString();
                hdnId.Value = dt.Rows[0]["ReservationId"].ToString();
                pUpdateReservationStatus.Visible = true;
                LinkButton btn = e.Item.FindControl("lnkEdit") as LinkButton;
                btn.CssClass = "badge badge-warning";
            }
        }
        protected void btnCansel_Click(object sender, EventArgs e)
        {
            pUpdateReservationStatus.Visible = false;
        }

        private void getReservationStatus()
        {
            con = new SqlConnection(Connection.GetConnectionString());
            cmd = new SqlCommand("Reservation_Crud", con);
            cmd.Parameters.AddWithValue("@Action", "GETSTATUS");
            cmd.CommandType = CommandType.StoredProcedure;
            sda = new SqlDataAdapter(cmd);
            dt = new DataTable();
            sda.Fill(dt);
            rReservationStatus.DataSource = dt;
            rReservationStatus.DataBind();
        }
    }
}