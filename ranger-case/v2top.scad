// ranger box lib V2
$fn=50;
bw=110;      // box width 
bl=65;      // box length
bh=2;      // box height minimum around 20
pr=4;       // post radius, 3 is ok
phr=1.25;   // post hole radius 1.25 ==> M2.5
bedh=4;
sm=3;       // corner rounding (sphere 2 is OK)
// 
hw=bw/2;
hl=bl/2;

difference() {
  union() {
    difference() {
      cube([bw,bl,bh]);
    
      
        // SR-504 holes
        translate([44,40,0]) cylinder(d=17,h=4);
        translate([69,40,0]) cylinder(d=17,h=4);
        // LCD cutout
        //translate([22,62,0]) cube([71.1, 24.2, 4]);
    }
    // Standoffs for LCD 
    translate([38,29,-6]) cylinder(d=6.6,h=6);
    translate([38,50.5,-6]) cylinder(d=6.6,h=6);
    
    translate([79,33,-6]) cylinder(d=6.6,h=6);
    translate([78,49.6,-6]) cylinder(d=6.6,h=6);
  }
  // screw holes
  translate ([bw-2,bl-2]) cylinder(r=phr,h=4);
  translate ([2,2]) cylinder(r=phr,h=4);
  translate ([bw-2,2]) cylinder(r=phr,h=4);
  translate ([2,bl-2]) cylinder(r=phr,h=4);
}