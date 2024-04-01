<link rel="stylesheet" href="http://localhost/NectarOfService/assets/main_style.css">
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
<link rel="preload" href="/NectarOfService/assets/fonts/CormorantGaramond-Regular.ttf" as="font" type="font/ttf" crossorigin>
<link rel="preload" href="/NectarOfService/assets/fonts/Inter-VariableFont_slnt,wght.ttf" as="font" type="font/ttf" crossorigin>
<title>Social Buzz</title>
<style>
        #social-buzz-top {
            margin-top:4rem;
            padding-top:3.7rem;
            margin-left:-1rem;
            margin-right:-0.5rem;
            background-image: url('http://localhost/NectarOfService/assets/images/blob.svg');
            min-height: 100vh;
            border-bottom:4px solid #000;
        }

        #tweets-container {
            padding: 0 100px;
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            grid-gap: 10px;
            margin-bottom: 6rem;
        }

        #composer-container {
            display:flex; 
            flex-direction:column;
            align-items:center;
        }
        #social-buzz-top h1 {
            font-family: 'bungee';
            text-align: center;
            font-size: 3rem;
            font-weight: 500;
            color: #fff;
            margin-top:0;
            margin-bottom:12rem;
        }

        #tweet-popup {
            background-color: #560090;
            border: 1px solid #000;
            border-radius: 1px;
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
            border-radius: 1px;
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
</style>
<body class="body" >
    <?php include '../assets/header.php'; ?>
    <div id="social-buzz-top">
        <div id="composer-container">
            <h1>BE THE VOICE, EVERYONE NEEDS TO HEAR</h1>
                
        </div>   

    <h2 style="text-align:center;text-shadow:4px 4px #000 ;color:#fff;margin-bottom:4rem; font-weight:800; font-size:2rem; ">BECAUSE YOUR WORDS RESONATE LOUDER</h2>

<div id="tweets-container"></div>
    </div>

    <h1 style="text-align:center;">s</h1>
    <div id="tweet-popup">
        <textarea id="tweet-text" placeholder="Share your experience..." rows="4" maxlength="260"></textarea>
            <div style="display:flex; justify-content:space-between; align-items:baseline;">
                <span id="char-count">260</span>
                <button id="tweet-button">Tweet</button>
            </div>
    </div>
    <script src="http://localhost/NectarOfService/social_buzz/social_buzz_script.js"></script>
</body>
<?php include '../assets/footer.php'; ?>
