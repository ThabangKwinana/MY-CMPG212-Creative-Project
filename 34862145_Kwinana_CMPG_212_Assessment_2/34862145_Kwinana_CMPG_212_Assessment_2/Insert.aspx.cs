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
    public partial class Insert : System.Web.UI.Page
    {
        SqlConnection con;
        string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=\\143.160.81.13\CTX_Redirected_Data$\34862145\Documents\34862145_Kwinana_CMPG_212_Assessment_2\34862145_Kwinana_CMPG_212_Assessment_2\App_Data\StudentGroups.mdf;Integrated Security=True";
        SqlDataAdapter adapt = new SqlDataAdapter();
        SqlCommand com;
        DataSet set;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblAdd.Visible = false;
        }
        public string color;
        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            //To select color when adding new students to the table...
            if(this.rdBlue.Checked)
            {
                color = "Blue";
            }
            else if(this.rdRed.Checked)
            {
                color = "Red";
            }
            else if(this.rdGreen.Checked)
            {
                color = "Green";
            }
        }

        protected void lblAddAndView_Click(object sender, EventArgs e)
        {
            //Cookies are used to store details of students to be added into the records of students...
            HttpCookie _userCookie = new HttpCookie("StudentDetails");
            _userCookie["Surname"] = txtSurname.Text;
            _userCookie["Email"] = txtEmail.Text;
            _userCookie["Campus"] = txtCampus.Text;
            _userCookie["Color"] = color;
            Response.Cookies.Add(_userCookie);
            _userCookie.Expires = DateTime.Now.AddDays(1);

            //To add students into the table TableGroups...
            con = new SqlConnection(conStr);
            con.Open();
            string sql_add = $"INSERT INTO TableGroups(Surname, Email, Campus, GroupColor) VALUES('{_userCookie["Surname"]}', '{_userCookie["Email"]}','{_userCookie["Campus"]}','{_userCookie["Color"]}') ";
            com = new SqlCommand(sql_add, con);
            adapt.InsertCommand = com;
            adapt.InsertCommand.ExecuteNonQuery();

            //Message to be displayed after adding a student accompanied by date and time...
            lblAdd.Visible = true;
            lblAdd.Text = "Successfully added "+_userCookie["Surname"]+" at "+myCalendar.TodaysDate;
            con.Close();

            //To display all records on the gridView after adding students...
            con = new SqlConnection(conStr);
            con.Open();
            string sql = "SELECT * FROM TableGroups";
            com = new SqlCommand(sql, con);

            set = new DataSet();
            adapt = new SqlDataAdapter();
            adapt.SelectCommand = com;
            adapt.Fill(set);

            gAddView.DataSource = set;
            gAddView.DataBind();

            con.Close();
        }

        protected void BackBtn_Click(object sender, EventArgs e)
        {
            //to return to the Search and delete page using the back button...
            Response.Redirect("FindMembers.aspx");
        }
    }
}