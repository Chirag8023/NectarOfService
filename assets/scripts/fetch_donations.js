//file for campaigns_home page
document.addEventListener("DOMContentLoaded", function () {
  // Function to fetch donations recursively
  function fetchDonations() {
    fetch("http://localhost/NectarOfService/assets/scripts/get_donations.php")
      .then((response) => {
        if (!response.ok) {
          throw new Error("Network response was not ok");
        }
        return response.json();
      })
      .then((data) => {
        var donationsList = document.getElementById("donations-list");
        donationsList.innerHTML = ""; // Clearing existing list items

        data.forEach((donation) => {
          donationsList.innerHTML +=
            "<li>" +
            donation.name +
            "<br>Donated: ₹ " +
            donation.amount +
            "/- in " +
            donation.campaign_name +
            "<br><br>" +
            donation.donation_time +
            "</li>";
        });

        setTimeout(fetchDonations, 40000); // Calling fetchDonations after 40 seconds
      })
      .catch((error) => {
        console.error("Error fetching donations:", error);
      });
  }
  // Initial call to fetchDonations
  fetchDonations();
});
