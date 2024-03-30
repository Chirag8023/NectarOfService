<link rel="stylesheet" href="http://localhost/NectarOfService/assets/main_style.css">
<link rel="preload" href="/NectarOfService/assets/fonts/CormorantGaramond-Regular.ttf" as="font" type="font/ttf" crossorigin>
<link rel="preload" href="/NectarOfService/assets/fonts/Inter-VariableFont_slnt,wght.ttf" as="font" type="font/ttf" crossorigin>
<title>Social Buzz</title>
<style>
        #social-buzz-top {
            margin-top:4rem;
            padding:3.7rem;
            margin-left:-1rem;
            margin-right:-0.53rem;
            background-image: url('http://localhost/NectarOfService/assets/images/blob.svg');
        }

        #composer-container {
            display:flex; 
            flex-direction:column;
            align-items:center;
        }
        #social-buzz-top h1 {
            font-family: 'bungee';
            font-size: 3rem;
            font-weight: 500;
            color: #fff;
            margin-bottom: -1.5rem;
            margin-top:-1rem;
        }

        #social-buzz-top p {
            font-family: 'inter';
            font-size: 1rem;
            font-weight: 600;
            color: #fff;
            margin-bottom: 23rem;
        }

        #tweet-popup {
            background-color: #560090;
            border: 1px solid #000;
            border-radius: 3px;
            width: 700px;
            padding: 1.3rem;
            box-shadow: 14px 14px #000;
            margin-bottom: 1rem;
            margin:auto;
            margin-top: 2rem;
        }

        #tweet-text {
            font-family: 'Inter';
            font-weight: 500;
            width: 100%;
            margin-bottom: 10px;
            padding: 10px;
            border: 2px solid #0000;
            background-color: #140021;
            color: #fff;
            border-radius: 2px;
            font-size: 1.5rem;
            resize: none;
            outline: none;
            transition: border-color 0.3s ease;
        }

        #tweet-text:focus {
            border-color: #fff;
        }

        #char-count {
            color: #888;
            font-size: 1.2rem;
            margin-top: 6px;
            font-weight: 500;
        }

        #tweet-button {
            background-color: #9900ff;
            color: #fff;
            font-weight: 600;
            border: none;
            border-radius: 999px;
            padding: 10px 20px;
            font-size: 1.5rem;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        #tweet-button:hover {
            background-color: #000;
        }

        .social-buzz-grid-container {
            padding: 50px;
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            grid-gap: 10px;
        }

</style>
<body class="body" >
    <?php include '../assets/header.php'; ?>
    <div id="social-buzz-top">
        <div id="composer-container">
            <h1>BE THE VOICE, EVERYONE NEED TO HEAR</h1>
            <p>Share the word in community</p>
                
        </div>
    </div>
    <div id="tweet-popup">
        <textarea id="tweet-text" placeholder="Share your experience..." rows="4" maxlength="260"></textarea>
            <div style="display:flex; justify-content:space-between; align-items:baseline;">
                <span id="char-count">260</span>
                <button id="tweet-button">Tweet</button>
            </div>
    </div>

    <h2>Embedded Tweets Grid</h2>
    <div class="social-buzz-grid-container">
        <?php /*
        // Load JSON data from file
        $data = json_decode(file_get_contents("tweets.json"), true);

        // Loop through each URL
        foreach ($data as $id => $url) {
            // Fetch embedded tweet using Twitter API
            $tweet_html = get_embedded_tweet($url);

            // Display tweet in grid
            if ($tweet_html) {
                echo $tweet_html;
            } 
        }

        // Function to fetch embedded tweet using Twitter API
        function get_embedded_tweet($url) {
            // Extract tweet ID from URL
            $tweet_id = extract_tweet_id($url);

            if ($tweet_id) {
                // Twitter API endpoint for embedded tweet
                $endpoint = "https://publish.twitter.com/oembed?url=$url&hide_thread=true&hide_media=true";

                // Fetch tweet data
                $response = file_get_contents($endpoint);
                $tweet_data = json_decode($response, true);

                // Return HTML embed code
                return $tweet_data['html'];
            } else {
                return false;
            }
        }

        // Function to extract tweet ID from URL
        function extract_tweet_id($url) {
            $parts = explode('/', parse_url($url, PHP_URL_PATH));
            $tweet_id = end($parts);
            return $tweet_id;
        }
        */?>
    </div>

    <script src="http://localhost/NectarOfService/social_buzz/social_buzz_script.js"></script>
</body>
<?php include '../assets/footer.php'; ?>
