#!/bin/sh
include_folder_path=include

#Clean the include folder
find ${include_folder_path} -type l -delete

cd ${include_folder_path}

#equivalent to:  s.public_header_files = "BaseModels/*.h"
find ../BaseModels -name "*.h" | sort | uniq | while read header; do
	ln -s ${header}
done

#equivalent to:  s.public_header_files = "GeneratedModels/*.h"
find ../GeneratedModels -name "*.h" | sort | uniq | while read header; do
	ln -s ${header}
done

