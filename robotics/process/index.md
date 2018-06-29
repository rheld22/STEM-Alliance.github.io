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
  width: calc((100% / 3) - 30px);
  transition: all 0.2s ease-in-out;
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
  padding: 30px;
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
  
  opacity: 0.5;
}
.card.is-inactive:hover .card__header {
  background-color: #949fb0;
  -webkit-transform: scale(1);
          transform: scale(1);
}

@media screen and (min-width: 992px) {
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
</style>

<div class="cards">

<div class="card is-collapsed">
<div class="card__header js-expander">
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
<div class="card__header js-expander">
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
<div class="card__header js-expander">
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
<div class="card__header js-expander">
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
<div class="card__header js-expander">
5. Decision Analysis
</div>
<div markdown="1" class="card__expander">

</div>
</div>

<div class="card is-collapsed">
<div class="card__header js-expander">
6. Refine Design
</div>
<div markdown="1" class="card__expander">

</div>
</div>

<div class="card is-collapsed">
<div class="card__header js-expander">
7. Implement Final Design
</div>
<div markdown="1" class="card__expander">

</div>
</div>

<div class="card is-collapsed">
<div class="card__header js-expander">
8. Test and Analyze
</div>
<div markdown="1" class="card__expander">

</div>
</div>

</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script>
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
});

//close card when click on cross
$cell.find('.js-collapser').click(function() {

  var $thisCell = $(this).closest('.card');

  $thisCell.removeClass('is-expanded').addClass('is-collapsed');
  $cell.not($thisCell).removeClass('is-inactive');

});
</script>