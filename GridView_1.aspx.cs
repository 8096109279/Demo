using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Diagnostics;

namespace Demo_2
{
    public partial class GridView_1 : System.Web.UI.Page
    {
        void GetData()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["vishnu"].ToString());

            string q = "select * from [customer_Details]";
            SqlDataAdapter da = new SqlDataAdapter(q, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                GetData();
            }
        }

        protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            Control c1 = row.FindControl("Label1");
            Label a = (Label)c1;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["vishnu"].ToString());
            con.Open();
            string q = "delete from [customer_Details] where AccountNo='" + a.Text + "'";
            SqlCommand cmd = new SqlCommand(q, con);
            int p = cmd.ExecuteNonQuery();
            con.Close();
            GetData();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
          
                GridView1.EditIndex = e.NewEditIndex;
                GetData();
                GridViewRow row = GridView1.Rows[e.NewEditIndex];
                Control c1 = row.FindControl("TextBox1");
                TextBox a1 = (TextBox)c1;
                Control c2 = row.FindControl("TextBox2");
                TextBox a2 = (TextBox)c2;
                Control c3 = row.FindControl("TextBox3");
                TextBox a3 = (TextBox)c3;
                Control c4 = row.FindControl("TextBox4");
                TextBox a4 = (TextBox)c4;
                Control c5 = row.FindControl("TextBox5");
                TextBox a5 = (TextBox)c5;
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["vishnu"].ToString());
                con.Open();
                string q = "update customer_Details set CustomerName='" + a2.Text + "',PhoneNo='" + a3.Text + "',State='" + a4.Text + "' where AccountNo='" + a1.Text + "'";
                SqlDataAdapter da = new SqlDataAdapter(q, con);
                DataTable ds = new DataTable();
                da.Fill(ds);
                con.Close();
                GetData();
            

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
           
              
                

            GridViewRow row = GridView1.Rows[e.RowIndex];
            Control c1 = row.FindControl("TextBox1");
            TextBox a1 = (TextBox)c1;
            Control c2 = row.FindControl("TextBox2");
            TextBox a2 = (TextBox)c2;
            Control c3 = row.FindControl("TextBox3");
            TextBox a3 = (TextBox)c3;
            Control c4 = row.FindControl("TextBox4");
            TextBox a4 = (TextBox)c4;
            Control c5 = row.FindControl("TextBox5");
            TextBox a5 = (TextBox)c5;

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["vishnu"].ToString());
                con.Open();
                string q = "update customer_Details set CustomerName='" + a2.Text + "',PhoneNo='" + a3.Text + "',State='" + a4.Text + "' where AccountNo='" + a1.Text + "'";
                SqlDataAdapter da = new SqlDataAdapter(q, con);
                DataTable ds = new DataTable();
                da.Fill(ds);
                con.Close();
                GetData();
            

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GetData();
        }
    }
}