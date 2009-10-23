MAIN=$(cat <<HEADER_abcdefg
<!DOCTYPE HTML>
<html lang="$LANG">
<head>  
        <title>$PAGE_TITLE</title>
        <meta name="generator" content="Bash Blogger-$VERSION">
        <link rel="alternate" type="application/rss+xml" title="$SITENAME RSS" href="${WEBPATH}index.xml">
        <style type="text/css" media="screen" title="Default">
                @import "${WEBPATH}style.css";
        </style>
        <link rel="stylesheet" type="text/css" media="print" href="${WEBPATH}print.css">
        <link rel="shortcut icon" href="${WEBPATH}favicon.ico" type="image/x-icon">
</head>
<body>
<h1 id="logo"><a href="${WEBPATH}${INDEX}" class="logo">$SITENAME</a></h1>
<h2 id="tagline">$DESCRIPTION</h2>

$ENTRIES_regular_extra_crispy

<div id="footer">
Powered by <a href="http://bashblogger.grimthing.com/">Bash Blogger</a> | <a href="${URL}/index.xml">RSS</a>
</div>
</body>
</html>
HEADER_abcdefg)
