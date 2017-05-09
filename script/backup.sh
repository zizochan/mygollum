#!/bin/sh

output_path=${DIR}
if [ -z "$output_path" ] ; then
        echo "ERROR! DIR is empty";
        exit;
fi

filename=gollum_`date '+%Y%m%d'`
`git archive HEAD --output=$output_path/$filename.zip`

# remove old files
`find $output_path/*.zip -mtime +14 | xargs rm -rf`
