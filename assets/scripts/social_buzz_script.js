// Function to open Twitter tweet composer with the given text
function openTweetComposer(text) {
  window.open(
    "https://twitter.com/intent/tweet?text=" +
      encodeURIComponent(text) +
      "%0A%23NectarOfService",
    "_blank"
  );
}

// Function to update character count
function updateCharCount() {
  const tweetText = document.getElementById("tweet-text").value;
  const charCount = tweetText.length;
  const remainingChars = 260 - charCount;
  document.getElementById("char-count").textContent = remainingChars;
}

// event listener to tweet button
document.getElementById("tweet-button").addEventListener("click", function () {
  const tweetText = document.getElementById("tweet-text").value;
  openTweetComposer(tweetText);
  // Clearing the textarea after tweeting and resetting the counter
  document.getElementById("tweet-text").value = "";
  document.getElementById("char-count").textContent = 260;
});

// Adding event listener to textarea to update character count
document
  .getElementById("tweet-text")
  .addEventListener("input", updateCharCount);

// Updating character count initially
updateCharCount();


// for fetching tweet url and putting it in a blockqute for tweet rendering by api
document.addEventListener("DOMContentLoaded", function () {
  fetch("tweets.json")
    .then((response) => response.json())
    .then((data) => {
      const tweetsContainer = document.getElementById("tweets-container");
      for (const key in data) {
        const tweetId = data[key].split("/").pop();
        tweetsContainer.innerHTML += `<blockquote class="twitter-tweet" data-cards="hidden" data-conversation="none"><a href="https://twitter.com/user/status/${tweetId}"></a></blockquote>`;
      }
    });
});

// for the heading typing text
    const wordsArray = ["motivate", "encourage", "inspire"];

    const header = document.getElementById("inspireHeader");
    const wordSpan = document.getElementById("inspireWord");
    
    let currentIndex = 0;
    let currentCharIndex = 0;
    let typingSpeed = 110;
    
    // Function to update the word with typing effect
    function updateWordWithTyping() {
        const currentWord = wordsArray[currentIndex];
        if (currentCharIndex < currentWord.length) {
            // Adding character by character to the word
            wordSpan.textContent += currentWord.charAt(currentCharIndex);
            currentCharIndex++;
            setTimeout(updateWordWithTyping, typingSpeed);
        } else {
            // Typing complete, reset char index and move to next word
            currentCharIndex = 0;
            currentIndex = (currentIndex + 1) % wordsArray.length;
            setTimeout(eraseWordWithTyping, 1500); // Wait for 1.5 second before erasing
        }
    }
    
    // Function to erase the word with typing effect
    function eraseWordWithTyping() {
        if (wordSpan.textContent.length > 0) {
            // Remove a character by character from the word
            wordSpan.textContent = wordSpan.textContent.slice(0, -1);
            setTimeout(eraseWordWithTyping, typingSpeed / 1.2);
        } else {
            // Erasing complete, start typing next word
            setTimeout(updateWordWithTyping, 1200); // Wait for 1.2 seconds before typing next word
        }
    }
    
    // Start the typing effect in 0.5 seconds
    setTimeout(updateWordWithTyping,500);