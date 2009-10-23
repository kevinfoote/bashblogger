ArchiveHeader=$(cat <<FewerEchoLines
<p id="breadcrumbs">You are here:
<a href="${WEBPATH}${INDEX}">$SITENAME</a> &#x2192;
Archives</p>
<h3>By category</h3>
<ul>
$TL_CATEGORY_ARCHIVE_LIST
</ul>

<h3>By date</h3>
<ul>
$TL_MONTHLY_ARCHIVE_LIST
</ul>
FewerEchoLines)
