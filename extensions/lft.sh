#!/bin/sh
set -e

TITLE="lft"
DATA=$(curl -Ss "https://repology.org/badge/latest-versions/lft.svg")
VERSION=${DATA%</text>*}
VERSION=${VERSION##*>}
URL="http://pwhois.org/get/lft-$VERSION.tar.gz"

cat <<EOF
<?xml version="1.0" ?>

<rdf:RDF
  xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
  xmlns="http://purl.org/rss/1.0/">

<channel rdf:about="http://pwhois.org">
<title> $TITLE </title>
<link></link>
<description> $TITLE </description>
</channel>

<item rdf:about="1">
<title> $TITLE v$VERSION </title>
<link> $URL </link>
<description>
</description>
</item>
EOF

# End of file
