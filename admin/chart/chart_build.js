// Function to fetch data from PHP scripts and create charts
async function fetchDataAndCreateCharts() {
  // Fetch total amount donated per day in last 30 days
  const totalAmountResponse = await fetch(
    "http://localhost/nectarofservice/admin/chart/chart_amount_data.php"
  );
  const totalAmountData = await totalAmountResponse.json();

  // Fetch donations by campaigns in last 30 days
  const campaignsResponse = await fetch(
    "http://localhost/nectarofservice/admin/chart/chart_campaigns_data.php"
  );
  const campaignsData = await campaignsResponse.json();

  // Fetch people donated by date in last 30 days
  const donationsByDateResponse = await fetch(
    "http://localhost/nectarofservice/admin/chart/chart_people_data.php"
  );
  const donationsByDateData = await donationsByDateResponse.json();

  // Chart for total amount donated per day in last 30 days
  const totalAmountCtx = document
    .getElementById("totalAmountChart")
    .getContext("2d");
  const totalAmountLabels = totalAmountData.map((item) => item.donation_date);
  const totalAmountValues = totalAmountData.map((item) => item.total_amount);
  new Chart(totalAmountCtx, {
    type: "bar",
    data: {
      labels: totalAmountLabels,
      datasets: [
        {
          label: "Total Amount (Rs.)",
          data: totalAmountValues,
          backgroundColor: "#03DAC655",
          borderColor: "#03DAC6",
          borderWidth: 2,
        },
      ],
    },
    options: {
      responsive: true,
      plugins: {
        legend: {
          position: "top",
        },
        title: {
          display: true,
          text: "Total Donations last 30 days",
          position: "right",
        },
      },
      scales: {
        y: {
          title: {
            display: true,
            text: "Amount  (Rs.)",
          },
        },
        x: {
          title: {
            display: true,
            text: "Date",
          },
        },
      },
    },
  });

  // Chart for total contributors per day in last 30 days
  const donationsByDateCtx = document
    .getElementById("donationsByDateChart")
    .getContext("2d");
  new Chart(donationsByDateCtx, {
    type: "line",
    data: {
      labels: Object.keys(donationsByDateData),
      datasets: [
        {
          label: "Contributors",
          data: Object.values(donationsByDateData),
          fill: true,
          borderColor: "#6200EAaa",
          tension: 0.1,
        },
      ],
    },
    options: {
      responsive: true,
      plugins: {
        legend: {
          position: "top",
        },
        title: {
          display: true,
          text: "Total Contributors last 30 days",
          position: "right",
        },
      },
      scales: {
        y: {
          title: {
            display: true,
            text: "Contributors",
          },
        },
        x: {
          title: {
            display: true,
            text: "Date",
          },
        },
      },
    },
  });

  // Chart for total donations by campaigns in last 30 days
  const campaignsCtx = document
    .getElementById("campaignsChart")
    .getContext("2d");
  new Chart(campaignsCtx, {
    type: "doughnut",
    data: {
      labels: campaignsData.campaigns.map((campaign) => campaign.campaign_name),
      datasets: [
        {
          label: "Amount Donated (Rs.)",
          data: campaignsData.campaigns.map(
            (campaign) => campaign.campaign_total
          ),
          backgroundColor: [
            "#FF408199",
            "#FFEB3B99",
            "#03DAC699",
            "#6200EA99",
            "#FF6E4099",
            "#00E67699",
          ],
          borderColor: "#FF408199",
          borderWidth: 2,
        },
      ],
    },
    options: {
      responsive: true,
      plugins: {
        legend: {
          position: "top",
        },
        title: {
          display: true,
          text: "Campaigns Performance last 30 days",
          position: "right",
        },
      },
      scales: {
        yAxes: [
          {
            ticks: {
              beginAtZero: true,
            },
          },
        ],
      },
    },
  });
}

// Call the function to fetch data and create charts when the page loads
window.onload = fetchDataAndCreateCharts;

//function to show only selected chart
function show(id) {
  // Hiding all sections
  document.getElementById("totalAmount").style.display = "none";
  document.getElementById("donationsByDate").style.display = "none";
  document.getElementById("campaigns").style.display = "none";

  // Showing the selected section
  document.getElementById(id).style.display = "block";
}
