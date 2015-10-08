
function color
{
echo -n \'
echo -n '<linearGradient
     id="linearGradient4321">
    <stop
       style="stop-color:THIS_COLOR;stop-opacity:1.0;"
       offset="0.0"
       id="stop1" />
  </linearGradient>' | sed "s/THIS_COLOR/$1/g"
echo -n \'
}

function gradient
{
echo -n \'
echo -n '<linearGradient
     inkscape:collect="always"
     xlink:href="#linearGradient4321"
     id="acyl_gradient"
     x1="50.0%"
     y1="0.0%"
     x2="50.0%"
     y2="100.0%" />'
echo -n \'
}

function filter
{
echo -n \'
echo -n '<filter>
    </filter>
<use id="1" style="fill:url(#acyl_gradient);filter:url(#filter1111)" xlink:href="#path-main" />'
echo -n \'
}

# Work when called from any dir
cd $( dirname $0 )

source ./script_functions && eval apply_all `color $1` `gradient` `filter`
