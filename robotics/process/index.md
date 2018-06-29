---
title: Robot Design Process
use-site-title: true
---

<!-- [![EDP](imgs/edp_s.png "EDP")](imgs/edp.png "EDP") -->

Processes are just recommendations. Adapt as needed.

<style>
* {
  box-sizing: border-box;
}

.cards {
  display: flex;
  flex-flow: row wrap;
}

.card {
  margin: 15px;
  width: calc((100% / 4) - 30px);
  transition: all 0.2s ease-in-out;
}
@media screen and (max-width: 1200px) {
  .card {
    width: calc((100% / 3) - 30px);
  }
}
@media screen and (max-width: 991px) {
  .card {
    width: calc((100% / 2) - 30px);
  }
}
@media screen and (max-width: 767px) {
  .card {
    width: 100%;
  }
}
.card:hover .card__header {
  background-color: #1abc9c;
  -webkit-transform: scale(1.05);
          transform: scale(1.05);
}
.card__header {
  width: 100%;
  min-height: 100px;
  padding: 15px;
  position: relative;
  cursor: pointer;
  background-color: #949fb0;
  color: #eceef1;
  font-size: 1.1em;
  text-align: center;
  transition: all 0.2s ease-in-out;
}
.card__header:after {
  transition: all 0.3s ease-in-out;
}
.card__header .fa {
  width: 100%;
  margin-top: .25em;
}
.card__expander {
  transition: all 0.2s ease-in-out;
  background-color: #ccc;
  width: 100%;
  position: relative;
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: 0.9em;
}

.card__expander .fa {
  font-size: 0.75em;
  position: absolute;
  top: 10px;
  right: 10px;
  cursor: pointer;
}
.card__expander .fa:hover {
  opacity: 0.9;
}
.card__expander ul {
    padding: 10px 20px;
}
.card__expander  li {
    margin: 0px 5px;
}

.card.is-collapsed .card__header:after {
  content: "";
  opacity: 0;
}
.card.is-collapsed .card__expander {
  max-height: 0;
  min-height: 0;
  overflow: hidden;
  margin-top: 0;
  opacity: 0;
}
.card.is-expanded .card__header {
  background-color: #1abc9c;
}
.card.is-expanded .card__header:after {
  content: "";
  opacity: 1;
  display: block;
  height: 0;
  width: 0;
  position: absolute;
  bottom: -30px;
  left: calc(50% - 15px);
  border-left: 15px solid transparent;
  border-right: 15px solid transparent;
  border-bottom: 15px solid #333a45;
}
.card.is-expanded .card__header .fa:before {
  content: "\f115";
}
.card.is-expanded .card__expander {
  max-height: 1000px;
  min-height: 200px;
  overflow: visible;
  margin-top: 30px;
  opacity: 1;
}
.card.is-expanded:hover .card__header {
  -webkit-transform: scale(1);
          transform: scale(1);
}
.card.is-inactive .card__header {
  
  background-color: #949fb0;
}
.card.is-inactive:hover .card__header {
  background-color: #949fb0;
  -webkit-transform: scale(1);
          transform: scale(1);
}

@media screen and (min-width: 1502px) {
  .card:nth-of-type(4n+2) .card__expander {
    margin-left: calc(-100% - 30px);
  }

  .card:nth-of-type(4n+3) .card__expander {
    margin-left: calc(-200% - 60px);
  }

  .card:nth-of-type(4n+4) .card__expander {
    margin-left: calc(-300% - 90px);
  }

  .card:nth-of-type(4n+5) {
    clear: left;
  }

  .card__expander {
    width: calc(400% + 90px);
  }
}
@media screen and (min-width: 992px) and (max-width:1500px) {
  .card:nth-of-type(3n+2) .card__expander {
    margin-left: calc(-100% - 30px);
  }

  .card:nth-of-type(3n+3) .card__expander {
    margin-left: calc(-200% - 60px);
  }

  .card:nth-of-type(3n+4) {
    clear: left;
  }

  .card__expander {
    width: calc(300% + 60px);
  }
}
@media screen and (min-width: 768px) and (max-width: 991px) {
  .card:nth-of-type(2n+2) .card__expander {
    margin-left: calc(-100% - 30px);
  }

  .card:nth-of-type(2n+3) {
    clear: left;
  }

  .card__expander {
    width: calc(200% + 30px);
  }
}
#svgContainer { 
	z-index: -10;
	position:absolute;
	opacity: 0.5;
}
#outer{
	margin:0 auto;
}
</style>

<div id="svgContainer" >

   <svg id="svg1" width="0" height="0" >
      <path id="path1" d="M0 0" stroke-width="0.3em" style="stroke:#555; fill:none; "/>
      <path id="path2" d="M0 0" stroke-width="0.3em" style="stroke:#555; fill:none; "/>
      <path id="path3" d="M0 0" stroke-width="0.3em" style="stroke:#555; fill:none; "/>
      <path id="path4" d="M0 0" stroke-width="0.3em" style="stroke:#555; fill:none; "/>
      <path id="path5" d="M0 0" stroke-width="0.3em" style="stroke:#555; fill:none; "/>
      <path id="path6" d="M0 0" stroke-width="0.3em" style="stroke:#555; fill:none; "/>
      <path id="path7" d="M0 0" stroke-width="0.3em" style="stroke:#555; fill:none; "/>
      <path id="path8" d="M0 0" stroke-width="0.3em" style="stroke:#555; fill:none; "/>
   </svg>

</div>

<div class="cards" id="outer">

<div class="card is-collapsed">
<div class="card__header js-expander" id="card1">
1. Define the Problem
</div>
<div markdown="1" class="card__expander">
   - Questions
      - What is the problem?
      - Why is it a problem?
   - Actions
      - Our existing differential tank drivetrain does not survive the rigors of multiple competition events
      - Instead of spending time improving other portions of the robot, we instead spend too much time making sure the drivetrain is 100% working
   - Outcome
      - We need a robust, reliable, yet easily servicable differential tank drive train
</div>
</div>

<div class="card is-collapsed">
<div class="card__header js-expander" id="card2">
2. Research Requirements
</div>
<div markdown="1" class="card__expander">
   - Questions:
      - How have others solved similar problems?
         - Other robot designs
         - Commercial Off The Shelf (COTS) parts
         - Custom parts
       - What external and internal restrictions are there?
         - Rulebook
         - Cost
         - Team Capability/Manufacturability
         - Component Shipping time
   - Actions
      - From looking at multiple successful teams' robots and discussions on CD ([1](https://www.chiefdelphi.com/forums/showthread.php?t=152211), [2](https://www.chiefdelphi.com/forums/showthread.php?t=94288), [3](https://www.chiefdelphi.com/forums/showthread.php?t=124538), we noticed most teams use aluminum box tubing, cantilever all wheels, direct drive one wheel, some form of tensioning.
      - We also found teams vary with selections of gearboxes/transmissions (gear reduction, number of motors, shifting), wheels (sizes and types), belts vs chains.
      - From the rulebook, we are restricted on components, size, weight and power.
      - From a cost standpoint, the more we make in house the cheaper the total cost, *generally*.
         - It is also easier to cut plastics then metal, and machining thinner aluminum is far easier than machining a block of aluminum.
   - Outcome
      - Set of Recommended Requirements
         - For WCD:
            - Easily servicable wheels, chain/belts, transmissions
            - Robust and Reliable to last more than a competition season
            - Cantilevered Wheels
            - Manufacture in house where possible
            - Use Center to Center calculators for [Belts](http://www.wcproducts.net/how-to-belts/), [Chains](http://www.botlanta.org/converters/dale-calc/sprocket.html), and [Gears](http://www.wcproducts.net/how-to-gears/) to ensure proper spacing and prevent wear
            - Use Gearbox Calculators to determine gear ratios and desired FPS - [WCProducts](http://www.wcproducts.net/how-to-drivetrain/) and [JVN Design Calculator](https://1drv.ms/x/s!AprigkKMKYgtgalQQPmc59XpZ3NQuQ)
            - Support for various wheel setups (omni/traction, 6 vs 8, etc) and various transmissions (2 vs 3 CIM, etc)
      - These could be rewritten to rank them in importance, however best fits the deisgn goals. 1-5, Needs vs Wants, etc.

</div>
</div>

<div class="card is-collapsed">
<div class="card__header js-expander" id="card3">
3. Develop Concepts
</div>
<div markdown="1" class="card__expander">
   - Questions:
      - How will the solution meet the requirements and constraints?
         - From lots of ideas come a few great ones
      - How can those ideas be refined to develop concept sketches?
         - If there's a great idea, don't be afraid ot take it and run with it. Start sketching/modelling it in Creo, start finding specific parts, start working out the details, etc.

   - Actions:
      - Brainstorm ideas as groups
         - No bad ideas, quantity over quality at this point
         - Consider both big picture and specific details
            - For WCD, big ideas could revolve around:
               - Gearbox placement
               - Material thickness
               - Tensioning approaches
            - Specific details could be:
               - [Vex/WCP Bearing blocks](https://www.vexrobotics.com/bearingblocks.html) with [Cam tensioners](https://www.vexrobotics.com/217-3431.html)
               - 1" x 2" x 1/8" box tubing, as it provides the needed rigidity
      - Multiple paper/quick sketches of key requirements
         - Start with the basics
            - "For these specific 4" wheels, we'd want the wheels spaced x" apart, with y" of drop and z" of adjustable tensioning with belts"
         - Refine over time into a deimensional drawing calling out all dimensions needed to manufacutre/build/etc.
   - Outcome:
      - Sets of well-defined concept drawings with dimensions
         - For WCD, this could be 2-3 designs that target specific differences, perhaps in tensioning systems, wheel layouts, etc.
</div>
</div>

<div class="card is-collapsed">
<div class="card__header js-expander" id="card4">
4. Prototype Concepts
</div>
<div markdown="1" class="card__expander">
   - Questions
      - How does each concept solution function in the real world?
      - How can the designs be refined to function better?
   
   - Actions
</div>
</div>

<div class="card is-collapsed">
<div class="card__header js-expander" id="card5">
5. Decision Analysis
</div>
<div markdown="1" class="card__expander">

</div>
</div>

<div class="card is-collapsed">
<div class="card__header js-expander" id="card6">
6. Refine Design
</div>
<div markdown="1" class="card__expander">

</div>
</div>

<div class="card is-collapsed">
<div class="card__header js-expander" id="card7">
7. Implement Final Design
</div>
<div markdown="1" class="card__expander">

</div>
</div>

<div class="card is-collapsed">
<div class="card__header js-expander" id="card8">
8. Test and Analyze
</div>
<div markdown="1" class="card__expander">

</div>
</div>

</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>

<script>
function signum(x) {
    return (x < 0) ? -1 : 1;
}
function absolute(x) {
    return (x < 0) ? -x : x;
}

function drawPath(svg, path, startX, startY, endX, endY) {
    // get the path's stroke width (if one wanted to be  really precize, one could use half the stroke size)
    var stroke =  parseFloat(path.attr("stroke-width"));
    // check if the svg is big enough to draw the path, if not, set heigh/width
    if (svg.attr("height") <  endY)                 svg.attr("height", endY);
    if (svg.attr("width" ) < (startX + stroke) )    svg.attr("width", (startX + stroke));
    if (svg.attr("width" ) < (endX   + stroke) )    svg.attr("width", (endX   + stroke));
    
    var deltaX = (endX - startX) * 0.15;
    var deltaY = (endY - startY) * 0.15;
    // for further calculations which ever is the shortest distance
    var delta  =  deltaY < absolute(deltaX) ? deltaY : absolute(deltaX);

    // set sweep-flag (counter/clock-wise)
    // if start element is closer to the left edge,
    // draw the first arc counter-clockwise, and the second one clock-wise
    var arc1 = 0; var arc2 = 1;
    if (startX > endX) {
        arc1 = 1;
        arc2 = 0;
    }
    // draw tha pipe-like path
    // 1. move a bit down, 2. arch,  3. move a bit to the right, 4.arch, 5. move down to the end 
    path.attr("d",  "M"  + startX + " " + startY +
                    " V" + (startY + delta) +
                    " A" + delta + " " +  delta + " 0 0 " + arc1 + " " + (startX + delta*signum(deltaX)) + " " + (startY + 2*delta) +
                    " H" + (endX - delta*signum(deltaX)) + 
                    " A" + delta + " " +  delta + " 0 0 " + arc2 + " " + endX + " " + (startY + 3*delta) +
                    " V" + endY );
}

function connectElements(svg, path, startElem, endElem) {
    var svgContainer= $("#svgContainer");

    // if first element is lower than the second, swap!
    if(startElem.offset().top > endElem.offset().top){
        var temp = startElem;
        startElem = endElem;
        endElem = temp;
    }

    // get (top, left) corner coordinates of the svg container   
    var svgTop  = svgContainer.offset().top;
    var svgLeft = svgContainer.offset().left;

    // get (top, left) coordinates for the two elements
    var startCoord = startElem.offset();
    var endCoord   = endElem.offset();

    // calculate path's start (x,y)  coords
    // we want the x coordinate to visually result in the element's mid point
    var startX = startCoord.left + 0.5*startElem.outerWidth() - svgLeft;    // x = left offset + 0.5*width - svg's left offset
    var startY = startCoord.top  + startElem.outerHeight() - svgTop;        // y = top offset + height - svg's top offset

        // calculate path's end (x,y) coords
    var endX = endCoord.left + 0.5*endElem.outerWidth() - svgLeft;
    var endY = endCoord.top  - svgTop;

    // call function for drawing the path
    drawPath(svg, path, startX, startY, endX, endY);

}




var $cell = $('.card');

//open and close card when clicked on card
$cell.find('.js-expander').click(function() {

  var $thisCell = $(this).closest('.card');

  if ($thisCell.hasClass('is-collapsed')) {
    $thisCell.removeClass('is-inactive');
    $cell.not($thisCell).removeClass('is-expanded').addClass('is-collapsed').addClass('is-inactive');
    $thisCell.removeClass('is-collapsed').addClass('is-expanded');
  } else {
    $thisCell.removeClass('is-expanded').addClass('is-collapsed');
    $cell.removeClass('is-inactive');
  }
   $(".card__expander").one('transitionend webkitTransitionEnd oTransitionEnd otransitionend MSTransitionEnd', 
   function() {
      connectAll();
   });
});

//close card when click on cross
$cell.find('.js-collapser').click(function() {

  var $thisCell = $(this).closest('.card');

  $thisCell.removeClass('is-expanded').addClass('is-collapsed');
  $cell.not($thisCell).removeClass('is-inactive');

   $(".card__expander").one('transitionend webkitTransitionEnd oTransitionEnd otransitionend MSTransitionEnd', 
   function() {
      connectAll();
   });
});

function connectAll() {
    // connect all the paths you want!
    connectElements($("#svg1"), $("#path1"), $("#card1"),   $("#card2"));
    connectElements($("#svg1"), $("#path2"), $("#card2"),   $("#card3"));
    connectElements($("#svg1"), $("#path3"), $("#card3"),   $("#card4"));
    connectElements($("#svg1"), $("#path4"), $("#card4"),   $("#card5"));
    connectElements($("#svg1"), $("#path5"), $("#card5"),   $("#card6"));
    connectElements($("#svg1"), $("#path6"), $("#card6"),   $("#card7"));
    connectElements($("#svg1"), $("#path7"), $("#card7"),   $("#card8"));
}

$(document).ready(function() {
    // reset svg each time 
    $("#svg1").attr("height", "0");
    $("#svg1").attr("width", "0");
    connectAll();
});

$(window).resize(function () {
    // reset svg each time 
    $("#svg1").attr("height", "0");
    $("#svg1").attr("width", "0");
    connectAll();
});
</script>