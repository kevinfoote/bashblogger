## In an honest effort to pull *ALL* of the (X)HTML out of the script, here are the miscellaneous
## snippets of code that were interspersed amongst the misc functions.
##
## The function each (X)HTML bit is used in is listed in a comment above each.


# modarticlecat() quickwrite() rebuildsite() 
list_item_link=$(cat<<ListItemLink
<li><a href="${WEBPATH}${PERMAPATH}${INDEX}" rel="bookmark" title="Permanent link: ${TITLE}:${ARTICLE_ID}">$TITLE</a></li>
ListItemLink)

# addpage() editpage() quickpage()
page_header=$(cat<<ThisIsThePageHeader
<div id="content">
<p id="breadcrumbs">You are here:
<a href="../$INDEX" title="$SITENAME">$SITENAME</a> &#x2192;
<b>$TITLE</b></p>
<div class="entry-content">
ThisIsThePageHeader)

# stickyarticle() updatepermalink() rebuildindex()
multicat=$(cat<<MultiCat0
<a href="${WEBPATH}archives/$thiscat" title="$thiscat" rel="tag">$thiscat</a>
MultiCat0)

# quickwrite() rebuildsite()
month_lil=$(cat<<MonthlyListItemLink
<li><a href="${WEBPATH}archives/$YEAR/$MONTH/$DAY/$INDEX">$DAY</a></li>
MonthlyListItemLink)

# addlinks() quicklink() 
nav_link=$(cat<<NavigationLink 
<li><a href="$LINKURL">$TITLE</a></li>
NavigationLink)

# addpage() 
page_list_item_link=$(cat<<PageListItemLink
<li><a href="${NOSPACES}/$INDEX">$TITLE</a></li>
PageListItemLink)

# blogroll()
blogrolling_list_item_link=$(cat<<BRollListItemLink
<li><script type="text/javascript" src="http://rpc.blogrolling.com/display.php?r=${rollID}"></script></li>
BRollListItemLink)

# monthlyarchives()
monthly_archives=$(cat<<MonthlyArchives
<div id="breadcrumbs">You are here: 
<a href="${WEBPATH}${INDEX}">$SITENAME</a> &#x2192; 
<a href="${WEBPATH}archives/$INDEX">Archives</a> &#x2192; 
<a href="${WEBPATH}archives/$YEAR/$INDEX">$YEAR</a> &#x2192;
$LONGMONTH
</div>
<ul>
$monthly_archives_linklist
</ul>
MonthlyArchives)

# toplevelarchives() 
cat_lil=$(cat<<CategoryListItemLink 
<li><a href="${WEBPATH}archives/$categories/$INDEX">$categories</a> <strong>($articletotal)</strong></li>
CategoryListItemLink)

# toplevelarchives() 
monthly_lil=$(cat<<MonthlyListItemLink
<li><a href="${WEBPATH}archives/$YEAR/$MONTH/$INDEX" title="${LONG_MONTH}-${YEAR}">${LONGMONTH} ${YEAR}</a> <strong>($monthtotal)</strong></li>
MonthlyListItemLink)

# recententries() 
recent_lil=$(cat<<RecentEntriesListItemLink
<li><a href="${PERMAPATH}${INDEX}" title="$TITLE">$TITLE</a></li>
RecentEntriesListItemLink)

# addsearch()
search_form=$(cat <<GoogleSearch
<form method="get" action="http://www.google.com/search">
<p>
<input type="text" name="q" size="10"/><input type="hidden" name="domains" value="$URL" /><input type="hidden" name="sitesearch" value="$URL" />
</p>
</form>
GoogleSearch)

# addpodcast
ENCLOSURE=$(cat<<EnclosureHTML
<enclosure url="$URL/podcasts/$FILENAME" length="$ENCLOSURE_SIZE" type="$TYPE" />
EnclosureHTML)
