using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MealGenerator
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnGetMeal_Click(object sender, EventArgs e)
        {
            string apiUrl = "https://www.themealdb.com/api/json/v1/1/random.php";

            using (WebClient client = new WebClient())
            {
                string json = client.DownloadString(apiUrl);
                var data = new JavaScriptSerializer().Deserialize<MealApiResponse>(json);

                if (data != null && data.meals != null && data.meals.Length > 0)
                {
                    var meal = data.meals[0];

                    lblMealName.Text = meal.strMeal;
                    imgMeal.ImageUrl = meal.strMealThumb;
                    lnkInstructions.NavigateUrl = meal.strSource ?? meal.strYoutube ?? "#";
                    lnkInstructions.Text = "View Recipe Instructions";
                }
            }
        }

        public class MealApiResponse
        {
            public Meal[] meals { get; set; }
        }

        public class Meal
        {
            public string strMeal { get; set; }
            public string strMealThumb { get; set; }
            public string strSource { get; set; }
            public string strYoutube { get; set; }
        }
    }
}