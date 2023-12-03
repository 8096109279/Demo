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
using System.ComponentModel.DataAnnotations;

namespace Demo_2
{
    public partial class GridView_2 : System.Web.UI.Page
    {
        void GetData()
        {
            SqlConnection con = new SqlConnection("user id=sa;password=abc;database=Employee;data source=.");

            string q = "select * from [dbo].[emp]";
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            String a = Convert.ToString(TextBox1.Text);
            String b = Convert.ToString(TextBox2.Text);
            String c = Convert.ToString(TextBox3.Text);
            String d = Convert.ToString(TextBox4.Text);
            String f = Convert.ToString(TextBox5.Text);
            string q = "";
            if (Button1.Text == "Insert")
            {
                q = "insert into emp values('" + a + "','" + DropDownList1.SelectedValue + "','" + b + "','" + c + "','" + DropDownList2.SelectedValue + "','" + f + "','" + d + "')";
            }
            else if (Button1.Text == "Update")
            {
                q = "update emp set [designation]='" + DropDownList1.SelectedValue + "',[salary]='" + TextBox2.Text + "',[email]='" + TextBox3.Text + "',[mobile]='" + TextBox4.Text + "',[qualification]='" + DropDownList2.SelectedValue + "',[manager]='" + TextBox5.Text + "' where empname='" + TextBox1.Text + "'";
            }
                SqlConnection con = new SqlConnection("user id=sa;password=abc;database=Employee;data source=.");
            con.Open();
            SqlCommand cmd = new SqlCommand(q, con);
             cmd.ExecuteNonQuery();
            con.Close();
            GetData();

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            DropDownList1.SelectedItem.Text = "Select";
            DropDownList2.SelectedItem.Text = "Select";

            Button1.Text = "Insert";
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            Control c1 = row.FindControl("Label1");
            Label a = (Label)c1;
            SqlConnection con = new SqlConnection("user id=sa;password=abc;database=Employee;data source=.");
            con.Open();
            string q = "delete from [emp] where empname='" + a.Text + "'";
            SqlCommand cmd = new SqlCommand(q, con);
            int p = cmd.ExecuteNonQuery();
            con.Close();
            GetData();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //Button1.Text = "Update";
            //GridView1.EditIndex = e.NewEditIndex;
            //GetData();
            //GridViewRow row = GridView1.Rows[e.NewEditIndex];
            //Control c1 = row.FindControl("TextBox1");
            //TextBox a1 = (TextBox)c1;
            //Control c2 = row.FindControl("TextBox2");
            //TextBox a2 = (TextBox)c2;
            //Control c3 = row.FindControl("TextBox3");
            //TextBox a3 = (TextBox)c3;
            //Control c4 = row.FindControl("TextBox4");
            //TextBox a4 = (TextBox)c4;
            //Control c5 = row.FindControl("TextBox5");
            //TextBox a5 = (TextBox)c5;
            //Control c6 = row.FindControl("TextBox6");
            //TextBox a6 = (TextBox)c6;
            //Control c7 = row.FindControl("TextBox7");
            //TextBox a7 = (TextBox)c7;
            //TextBox1.Text = a1.Text;
            //DropDownList1.SelectedValue = a2.Text;
            //TextBox2.Text = a3.Text;
            //TextBox3.Text = a4.Text;
            //TextBox4.Text = a5.Text;
            //DropDownList2.SelectedValue = a6.Text;
            //TextBox5.Text = a7.Text;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //GridView1.EditIndex = -1;
            //GetData();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            Button1.Text = "Insert";
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GetData();
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            Button1.Text = "Update";
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
            Control c6 = row.FindControl("TextBox6");
            TextBox a6 = (TextBox)c6;
            Control c7 = row.FindControl("TextBox7");
            TextBox a7 = (TextBox)c7;
            TextBox1.Text = a1.Text;
            DropDownList1.SelectedValue = a2.Text;
            TextBox2.Text = a3.Text;
            TextBox3.Text = a4.Text;
            TextBox4.Text = a5.Text;
            DropDownList2.SelectedValue = a6.Text;
            TextBox5.Text = a7.Text;
        }
    }
}