using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comp2007_assignment1
{
    public partial class calculator : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void scored_TextChanged(object sender, EventArgs e)
        {

        }

        public int wins
        {
            get { return int.Parse (winlose.SelectedValue); } //Use to return Win or Lose value
        }
        public int score
        {
            get { return int.Parse(scored.Text); } // Use to return Score Value
        }
        public int allow
        {
            get { return int.Parse(allowed.Text); } // Use to return Allowed Value
        }
        public int spect
        {
            get { return int.Parse(spectate.Text); } // Use to return number of spectators
        }

        protected void allowed_TextChanged(object sender, EventArgs e)
        {
            
        }
        
    }
}