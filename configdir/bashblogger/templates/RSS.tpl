RSS_TEMPLATE=$(cat <<RSS_Template_abcdefg
<?xml version='1.0' encoding='utf-8'?>
<!-- generator="bashblogger/$VERSION" -->
<rss version="2.0" 
        xmlns:content="http://purl.org/rss/1.0/modules/content/"
        xmlns:wfw="http://wellformedweb.org/CommentAPI/"
        xmlns:dc="http://purl.org/dc/elements/1.1/"
>

	<channel>
		<title>${SITENAME}</title>
		<link>${URL}</link>
		<description>$DESCRIPTION</description>
		<pubDate>$lastBuildDate</pubDate>
		<generator>Bash Blogger-$VERSION</generator>
		<language>$LANG</language>
		<image>
			<url>$ICON</url>
			<title>$SITENAME</title>
			<link>$URL</link>
			<width>$ICON_WIDTH</width>
			<height>$ICON_HEIGHT</height>
		</image>
		$RSS_CONTENTS
	</channel>
</rss>
RSS_Template_abcdefg)
