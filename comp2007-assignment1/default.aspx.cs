using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comp2007_assignment1
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {

            //assign variables to pass values into
            int   totalScore, totalAllowed, pointDiff, totalSpec, avgSpec;
            float gamesWon = 0, gamesLost = 0, winPercent;

            //start checking for radio button values
            if (calc1.wins == 1)
                gamesWon += 1;
            else
                gamesLost += 1;

            if (calc2.wins == 1)
                gamesWon += 1;
            else
                gamesLost += 1;

            if (calc3.wins == 1)
                gamesWon += 1;
            else
                gamesLost += 1;

            if (calc4.wins == 1)
                gamesWon += 1;
            else
                gamesLost += 1;

            //calculate game win percentage
            if(gamesLost == 0)
            {
                winPercent = 100;
            }
            else
            {
                winPercent = gamesWon / 4;
            }

           
            //adding and dividing different totals and averages
            totalScore = calc1.score + calc2.score + calc3.score + calc4.score;
            totalAllowed = calc1.allow + calc2.allow + calc3.allow + calc4.allow;
            pointDiff = totalScore - totalAllowed;
            totalSpec = calc1.spect + calc2.spect + calc3.spect + calc4.spect;
            avgSpec = totalSpec / 4;

            //print to summary label on screen
            summary.Text = "Wins: " + gamesWon.ToString() + "<br />" + "Losses: " + gamesLost.ToString() + "<br />" + "Winning %: " + winPercent + "<br/>" +  "Points scored: " + totalScore.ToString() + "<br />" + "Points Allowed : " + totalAllowed.ToString() + "<br /> " + "Point Differential: " + pointDiff + "<br/>" + "Total Attendance : " + totalSpec.ToString()  + "<br />" + "Average Attendance: " + avgSpec ;
        }
    }
}