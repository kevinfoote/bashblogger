RSS_item=$(cat <<RSS_News_Items
	<item>
		<title>$TITLE</title>
		<link>$LINK</link>
		<pubDate>$pubDATE</pubDate>
		<dc:creator>$ARTICLE_AUTHOR</dc:creator>
		<guid>$LINK</guid>
		$itemcat
		$enclosure
		<description><![CDATA[$RSS_ITEM_description [...] ]]></description>
		<content:encoded><![CDATA[$RSS_ITEM_CONTENT]]></content:encoded>
	</item>
RSS_News_Items)
