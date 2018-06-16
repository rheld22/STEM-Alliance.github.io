# STEM Alliance of Fargo Moorhead

- [Robotics Resources](resources)
- [About Us](#about-us)
- [Teams](#teams)
- [Sponsors](#sponsors)
- [Contact Us](#contact-us)

## About Us

## Teams
- FRC 4360, [Spudnik Robotics](http://www.moorheadrobotics.org/)
- FRC 4818, [The Herd, WF Robotics](http://www.wfrobotics.org/)
- FRC 7048, [Red River Rage](http://www.redriverrage.com)

[Robotics Team Resources & Links](resources)

## Sponsors

[![Greater Fargo/Moorhead Economic Development Corporation](logos/gfmedc.png)](http://gfmedc.com/)

[![John Deere](logos/johndeere.png)](http://deere.com/)

[![KJOS Investments](logos/kjos.png)](http://www.kjosinvestments.com/)

[![Microsoft](logos/microsoft.png)](https://www.microsoft.com/)

[![Appareo](logos/appareo.png)](https://www.appareo.com/)

[![Classic Industries](logos/classicindustries.png)](http://www.alumadeck.com/)


## Contact Us

<style>
 input, textarea {
    width:300px;
    font-size: 0.8em;
    font-family: 'proxima-nova-soft', sans-serif; 
    border: 1px solid #ddd; 
    background: #fff; 
    padding: 0.9em;
    transition: all 0.3s ease-in-out;
 }
 button {
    font-size: 1em;
    text-transform: uppercase;
    font-weight: 600;
    border: 2px solid #0040b0;
    color: #0040b0;
    background: transparent;
    line-height: 1em;
    padding: 0.6em 0.9em;
    transition: all 0.3s ease-in-out;
 }
</style>
<form id="formaction" method="POST">
  <div style="width:100%; margin:10px">
    <input type="email" name="email" placeholder="email@domain.com">
  </div>
  <div style="width:100%; margin:10px">
    <textarea name="message" placeholder="Message" style="height:100px"></textarea>
  </div>
  <div style="width:100%; margin:10px">
    <button type="submit">Send</button>
  </div>
</form>
<script>
    var contactform =  document.getElementById('formaction');
    contactform.setAttribute('action', '//formspree.io/' + 'contact' + '@' + 'stemalliancefm' + '.' + 'org');
</script>