# Source in dateline_vars
find_template Dateline.tpl

permalink_entry=$(cat <<PermalinkENTRY
<p id="breadcrumbs">You are here:
<a href="${WEBPATH}${INDEX}">$SITENAME</a> &#x2192;
<a href="${WEBPATH}archives/$INDEX" title="archives">Archives</a> &#x2192;
<a href="${WEBPATH}archives/$YEAR/$INDEX" title="$YEAR">$YEAR</a> &#x2192;
<a href="${WEBPATH}archives/$YEAR/$MONTH/$INDEX" title="$MONTH">$LONGMONTH</a> &#x2192;
<a href="${WEBPATH}archives/$YEAR/$MONTH/$DAY/$INDEX" title="$DAY">$DAY</a> &#x2192;
<b>$TITLE</b></p>
<div class="hentry">
<p class="updated" title="$ARTICLE_ID">$LONGMONTH $DAY, $YEAR</p>
<h2 id="$ARTICLE_ID" class="entry-title"><a href="${WEBPATH}${PERMAPATH}$INDEX" rel="bookmark" title="Permanent link: ${TITLE}:${ARTICLE_ID}">$TITLE</a></h2>
<div class="pentry-content">
$CONTENT
<p class="dateline">$dateline_vars</p>
</div>
</div>
PermalinkENTRY)

