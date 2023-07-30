using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/*Thabang Benny Kwinana (34862145)
 * Program for grouping students from three campuses(Vanderbjilpark, Potchestroom and Mahikeng) into three groups according to group color
 * Blue, Red and/or Green. The user/Lecturer will be able to log in, and the log-in details are to be stored in cookies. Should also be able
 * to add and delete students. Session will be applied in the program to filter/search for students using their group color. And cookies will
 * be used to store details of students to be added and log-in details. Button(Back) and hyperlinks are in use for moving from one page to another.
 * Validation is also used for surname and email inputs.
 */

namespace _34862145_Kwinana_CMPG_212_Assessment_2
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Cookies for storing log-in details of the user for 2 days...
            HttpCookie _userCookie = new HttpCookie("LoginDetails");
            _userCookie["Surname"] = txtLogSurname.Text;
            _userCookie["Email"] = txtLogEmail.Text;
            Response.Cookies.Add(_userCookie);
            _userCookie.Expires = DateTime.Now.AddDays(2);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //When the log-in button is clicked, this will open the search page. For the user to be able to search and delete...
            Response.Redirect("FindMembers.aspx");
        }
    }
}