document.addEventListener("DOMContentLoaded", function () {
  fetchAndType();

  function fetchAndType() {
    fetchStatsEntries()
      .then(function (data) {
        var terminalText = document.getElementById("terminal-text");
        var firstHalf =
          "Overall Stats:\n\n" +
          "> Total Donations:  ₹ " +
          data.total_donations +
          "/-\n > Total Campaigns: " +
          data.total_campaigns +
          "\n > Total Contributors: " +
          data.total_donors;
        var secondHalf =
          "Current Month Stats:\n\n" +
          "> Total Donations:  ₹ " +
          data.total_donation_this_month +
          "/-\n > Total Campaigns: " +
          data.total_campaigns_this_month +
          "\n > Total Contributors: " +
          data.total_donors_this_month;

        typeAndBackspace(terminalText, firstHalf, function () {
          setTimeout(function () {
            typeAndBackspace(terminalText, secondHalf, function () {
              setTimeout(fetchAndType, 2000); // Pause for 2 seconds before fetching new data
            });
          }, 1000); // Pause for 1 second before typing second half
        });
      })
      .catch(function (error) {
        console.error("Error fetching donations:", error);
      });
  }

  function fetchStatsEntries() {
    return fetch(
      "http://localhost/NectarOfService/assets/terminal_stats/get_terminal_stats_data.php"
    )
      .then((response) => {
        if (!response.ok) {
          throw new Error("Network response was not ok");
        }
        return response.json();
      })
      .catch((error) => {
        throw new Error("Error fetching data:", error);
      });
  }

  function typeAndBackspace(element, text, callback) {
    typeText(element, text, function () {
      setTimeout(function () {
        backspaceText(element, text, callback);
      }, 3000); // Pause for 3 seconds before backspacing
    });
  }

  function typeText(element, text, callback, index = 0) {
    if (index < text.length) {
      element.innerHTML += text.charAt(index);
      index++;
      setTimeout(function () {
        typeText(element, text, callback, index);
      }, 70);
    } else {
      callback();
    }
  }

  function backspaceText(element, text, callback, index = text.length - 1) {
    if (index >= 0) {
      var truncatedText = text.substring(0, index);
      element.innerHTML = truncatedText;
      index--;
      setTimeout(function () {
        backspaceText(element, text, callback, index);
      }, 70);
    } else {
      callback();
    }
  }
});
