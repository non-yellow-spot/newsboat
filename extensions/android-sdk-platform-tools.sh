#!/bin/sh
set -e

TITLE="android-sdk-platform-tools"
DATA=$(curl -Ss "https://repology.org/badge/latest-versions/android-sdk-platform-tools.svg")
VERSION=${DATA%</text>*}
VERSION=${VERSION##*>}
URL="https://dl.google.com/android/repository/platform-tools_r${VERSION}-linux.zip"

cat <<EOF
<?xml version="1.0" ?>

<rdf:RDF
  xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
  xmlns="http://purl.org/rss/1.0/">

<channel rdf:about="http://tools.android.com/">
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
