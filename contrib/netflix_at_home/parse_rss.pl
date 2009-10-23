#!/usr/bin/perl

open(RSS, $ARGV[0]);
while($line = <RSS>) {

    chomp($line);

    if ( $line =~ /<title>(.*)<\/title>/ ) {
	push @titles, $1;
    }
    if ( $line =~ /<link>(.*)<\/link>/ ) {
	push @links, $1;
    }
}

for ($ct = 1;$ct <= $#titles;$ct++) {
    print qq!<li><A HREF="$links[$ct]">$titles[$ct]</a></li>\n!;
}
