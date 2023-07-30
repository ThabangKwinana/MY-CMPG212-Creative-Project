using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace _34862145_Kwinana_CMPG_212_Assessment_2
{
    public partial class FindMembers : System.Web.UI.Page
    {
        SqlConnection con;
        string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=\\143.160.81.13\CTX_Redirected_Data$\34862145\Documents\34862145_Kwinana_CMPG_212_Assessment_2\34862145_Kwinana_CMPG_212_Assessment_2\App_Data\StudentGroups.mdf;Integrated Security=True";
        SqlDataAdapter adapt = new SqlDataAdapter();
        SqlCommand com;
        DataSet set;
        protected void Page_Load(object sender, EventArgs e)
        {
            //When the page loads all records on the table are retrieved from the database and displayed on the gridView...
            con = new SqlConnection(conStr);
            con.Open();
            string sql = "SELECT * FROM TableGroups";
            com = new SqlCommand(sql, con);
            
            set = new DataSet();
            adapt = new SqlDataAdapter();
            adapt.SelectCommand = com;
            adapt.Fill(set);

            gViewM.DataSource = set;
            gViewM.DataBind();

            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //When the search button is clicked records on the gridView are filtered according to group colors...
            con = new SqlConnection(conStr);
            con.Open();
            string sql_q = "SELECT * FROM TableGroups WHERE GroupColor = '"+txtSearch.Text+"' ";
            com = new SqlCommand(sql_q, con);
            adapt = new SqlDataAdapter();
            
            set = new DataSet();
                
            adapt.SelectCommand = com;
            adapt.Fill(set);

            gViewM.DataSource = set;
            gViewM.DataBind();

            con.Close();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            //Session is used to delete items...
            //Records on the gridView are deleted accoring to surnames, when the user double-clicks the delete button...
            Session["Delete"] = txtDelete.Text;

            con = new SqlConnection(conStr);
            con.Open();
            string sql_add = "DELETE FROM TableGroups WHERE Surname = '"+txtDelete.Text+"' ";
            com = new SqlCommand(sql_add, con);
            adapt.DeleteCommand = com;
            adapt.DeleteCommand.ExecuteNonQuery();
            con.Close();

            //A message is to be displayed using a label to state that the record is successfully deleted from the table...
            if(Session["Delete"] != null)
            {
                lblDeleted.Text = "Successfully deleted "+Session["Delete"]+"'s details.";
            }
        }
    }
}