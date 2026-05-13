#!/bin/bash
# platform = multi_platform_openruyi
# check-import = stdout

temp=$(find / -type f -name "\.*" -perm /+x)

if [ "$temp" = "" ]; then
    exit "$XCCDF_RESULT_PASS"
fi

exit "$XCCDF_RESULT_FAIL"
