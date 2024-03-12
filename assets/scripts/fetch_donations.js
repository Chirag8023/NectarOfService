document.addEventListener('DOMContentLoaded', function() {
    // Function to fetch donations recursively
    function fetchDonations() {
        fetch('http://localhost/NectarOfService/assets/scripts/get_donations.php')
            .then(response => {
                if (!response.ok) {
                    throw new Error('Network response was not ok');
                }
                return response.json();
            })
            .then(data => {
                var donationsList = document.getElementById('donations-list');
                donationsList.innerHTML = ''; // Clear existing list items

                data.forEach(donation => {
                    donationsList.innerHTML += '<li>' + donation.name +'<br>Donated: ₹ '+ donation.amount +'/- in<br>' + donation.campaign_name + '<br><br>' + donation.donation_time +'</li>';
                });

                // Trigger next fetch when all list elements reach the end
                setTimeout(fetchDonations, 35000); // Call fetchDonations after 30 seconds (adjust as needed)
            })
            .catch(error => {
                console.error('Error fetching donations:', error);
            });
    }
    // Initial call to fetchDonations
    fetchDonations();
});
