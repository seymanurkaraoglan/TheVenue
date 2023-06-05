using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheVenue.User
{
    public partial class MyReservations : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter sda;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["userId"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    getReservationHistory();
                }
            }
        }

        void getReservationHistory()
        {
            int sr = 0;
            con = new SqlConnection(Connection.GetConnectionString());
            cmd = new SqlCommand("Reservation_Crud", con);
            cmd.Parameters.AddWithValue("@Action", "RESHISTORY");
            cmd.Parameters.AddWithValue("@UserId", Session["userId"]);
            cmd.CommandType = CommandType.StoredProcedure;
            sda = new SqlDataAdapter(cmd);
            dt = new DataTable();
            sda.Fill(dt);
            dt.Columns.Add("SrNo", typeof(Int32));
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dataRow in dt.Rows)
                {
                    dataRow["SrNo"] = sr;
                    sr++;
                }
            }
            if (dt.Rows.Count == 0)
            {
                rReservationHistory.FooterTemplate = null;
                rReservationHistory.FooterTemplate = new CustomTemplate(ListItemType.Footer);
            }
            rReservationHistory.DataSource = dt;
            rReservationHistory.DataBind();

        }



        protected void rReservationHistory_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {

                HiddenField reservationtId = e.Item.FindControl("hdnReservationId") as HiddenField;
                Repeater repReservations = e.Item.FindControl("rReservations") as Repeater;

                con = new SqlConnection(Connection.GetConnectionString());
                cmd = new SqlCommand("Reservation_Crud", con);
                cmd.Parameters.AddWithValue("@Action", "RESBYID");
                cmd.Parameters.AddWithValue("@ReservationId", Convert.ToInt32(reservationtId.Value));
                cmd.Parameters.AddWithValue("@UserId", Session["userId"]);
                cmd.CommandType = CommandType.StoredProcedure;
                sda = new SqlDataAdapter(cmd);
                dt = new DataTable();
                sda.Fill(dt);

                //if (dt.Rows.Count > 0)
                //{
                //    foreach (DataRow dataRow in dt.Rows)
                //    {
                //        grandTotal += Convert.ToDouble(dataRow["TotalPrice"]);
                //    }
                //}
                //DataRow dr = dt.NewRow();
                //dr["TotalPrice"] = grandTotal;
                //dt.Rows.Add(dr);
                repReservations.DataSource = dt;
                repReservations.DataBind();

            }
        }



        private sealed class CustomTemplate : ITemplate
        {
            private ListItemType ListItemType { get; set; }
            public CustomTemplate(ListItemType type)
            {
                ListItemType = type;
            }

            public void InstantiateIn(Control container)
            {
                if (ListItemType == ListItemType.Footer)
                {
                    var footer = new LiteralControl("<tr><td><b>Neden bir rezervasyon yapmıyorsun?</b><a href='Reservation.aspx'>Rezervasyon yapmak için tıkla</a></td></tr></tbody></table>");
                    container.Controls.Add(footer);
                }
            }
        }

        
    }
}