#!/usr/bin/env sh
# neeasade
# Set the color of the acyl icons
# extracted from included ACYL scripts.

args() {
cat << HEREDOC
'<linearGradient id="linearGradient4321">
   <stop
     style="stop-color:$1;stop-opacity:1.0;"
     offset="0.0"
     id="stop1" />
</linearGradient>'

'<linearGradient
  inkscape:collect="always"
  xlink:href="#linearGradient4321"
  id="acyl_gradient"
  x1="50.0%"
  y1="0.0%"
  x2="50.0%"
  y2="100.0%" />'

'<filter></filter>
<use id="1" style="fill:url(#acyl_gradient);filter:url(#filter1111)" xlink:href="#path-main" />'
HEREDOC
}

# Work when called from any dir, or symlinked
cd $(dirname $([ -L $0 ] && readlink -f $0 || echo $0))/scalable/scripts

. ./script_functions
eval apply_all $(args "$1") &
