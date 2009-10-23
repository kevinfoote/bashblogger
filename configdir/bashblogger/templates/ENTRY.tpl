# Source in dateline_vars
find_template Dateline.tpl

article_entry=$(cat <<Build_the_content
<div class="hentry">
<div class="entry-content">
<h2 class="updated" title="$ARTICLE_ID">$LONGMONTH $DAY, $YEAR</h2>
<h3 id="$ARTICLE_ID" class="entry-title"><a href="${PERMAPATH}${INDEX}" rel="bookmark" title="link to article $TITLE:$ARTICLE_ID">$TITLE</a></h3>
$CONTENT
<p class="dateline">$dateline_vars</p>
</div>
</div>
Build_the_content)
