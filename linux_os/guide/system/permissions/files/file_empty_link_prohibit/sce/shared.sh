#!/bin/bash
# platform = multi_platform_openruyi
# check-import = stdout

temp=$(find ./ -type l -follow)

if [ "$temp" = "" ]; then
    exit "$XCCDF_RESULT_PASS"
fi

exit "$XCCDF_RESULT_FAIL"
