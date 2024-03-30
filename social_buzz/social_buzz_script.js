  // Function to open Twitter tweet composer with the given text
  function openTweetComposer(text) {
    window.open('https://twitter.com/intent/tweet?text=' + encodeURIComponent(text) +'%0A%23NectarOfService', '_blank');
}

// Function to update character count
function updateCharCount() {
    const tweetText = document.getElementById('tweet-text').value;
    const charCount = tweetText.length;
    const remainingChars = 260 - charCount;
    document.getElementById('char-count').textContent = remainingChars;
}


// Add event listener to tweet button
document.getElementById('tweet-button').addEventListener('click', function() {
    const tweetText = document.getElementById('tweet-text').value;
    openTweetComposer(tweetText);
    // Clear the textarea after tweeting
    document.getElementById('tweet-text').value = '';
    document.getElementById('char-count').textContent = 260;
});

// Add event listener to textarea to update character count
document.getElementById('tweet-text').addEventListener('input', updateCharCount);

// Update character count initially
updateCharCount();