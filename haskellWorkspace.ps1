$here = Get-Location
wt split-pane -V -d $here -c ghci `; focus-pane --target 0 `; split-pane -H -d $here
