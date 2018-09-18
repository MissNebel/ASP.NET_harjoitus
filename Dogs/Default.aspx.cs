using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;
using System.Data.SqlClient;

namespace Dogs
{
    public partial class _Default : Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        /*  protected void Button1_Click(object sender, EventArgs e)
          {
              string constr = ConfigurationManager.ConnectionStrings["DogsConnectionString"].ToString();

              using (OleDbConnection con = new OleDbConnection(constr))
              {
                  OleDbCommand cmd = new OleDbCommand("INSERT INTO Table1 values(@dog,@breed)");
                  cmd.Connection = con;
                  con.Open();



                  cmd.Parameters.AddWithValue("@dog", TextBox1.Text);
                  cmd.Parameters.AddWithValue("@breed", TextBox2.Text);
                  int a = cmd.ExecuteNonQuery();
                  if (a > 0)
                  {
                      Label1.Text = "Added";
                  }
                  cmd.ExecuteNonQuery();
                  con.Close();
              }

          }*/
        /*
        protected void Button1_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["DogsConnectionString"].ToString();

            using (OleDbConnection con = new OleDbConnection(constr))
            {
                OleDbCommand cmd = new OleDbCommand("INSERT INTO Table1 values(@dog,@breed)", con);
                con.Open();
                cmd.Parameters.AddWithValue("@dog", TextBox1.Text);
                cmd.Parameters.AddWithValue("@breed", TextBox2.Text);
                cmd.ExecuteNonQuery();
            }
        } */


        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection
            {
                ConnectionString = ConfigurationManager.ConnectionStrings["DogsConnectionString2"].ToString()
            };
            con.Open();
            OleDbCommand cmd = new OleDbCommand("INSERT INTO Table1 (dog, breed) VALUES (?, ?)",con);
            
            cmd.Parameters.AddWithValue("@dog", TextBox1.Text);
            cmd.Parameters.AddWithValue("@breed", TextBox2.Text);
            cmd.Connection = con;
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Label1.Text = "Inserted";
            }
           // cmd.ExecuteNonQuery();
            con.Close();
        }

       
        protected void Button2_Click(object sender, EventArgs e)
        {
            int thisID = Convert.ToInt32(TextBox3.Text);

            String sql = "DELETE FROM Table1 WHERE ID = ";
            
            sql = sql + thisID;
        

            Label2.Text = sql;
            SqlDataSource2.DeleteCommand = sql;

            SqlDataSource2.Delete();
            Label2.Text = SqlDataSource2.DeleteCommand.ToString();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
    }
}