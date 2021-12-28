$fn=40;
module post() {
    
 difference() {
        cylinder(r=2.5,9);
        cylinder(r=1.5,9);
  } 
}
 
difference() {
    // combine all the solids before deleting
    union() {
        cube([36,36,2]);
        translate([6.2,34,0]) cube([24,37,9]);
        // Mounting pegs
        translate([3.6, 3.6,0 ]) cylinder(r=2.5,9);
        translate([36-3.6, 3.6,0 ]) cylinder(r=2.5,9);
        translate([3.6, 36-3.6,0 ]) cylinder(r=2.5,9);
        translate([36-3.6, 36-3.6,0 ]) cylinder(r=2.5,9);
    }
    // cut cable slit
    translate([9.5,45,0]) cube([17,1,10]);
    // tabs - remove sides
    translate([6.2,55,0]) cube([7.4,17.8,10]);
    translate([23,55,0]) cube([7.4,17.8,10]);
    // remove center - leaving two arms
    translate([17,55,0]) cube([3.3,17.8,10]);
    // punch hole in arms
    translate([10,65,4.3]) rotate([0,90,0]) cylinder(r=2,h=16); 
    // punch mounting holes
    translate([3.6, 3.6,0 ]) cylinder(r=1.5,9);
    translate([36-3.6, 3.6,0 ]) cylinder(r=1.5,9);
    translate([3.6, 36-3.6,0 ]) cylinder(r=1.5,9);
    translate([36-3.6, 36-3.6,0 ]) cylinder(r=1.5,9);

} 

*difference() {
    cube([36,36,2]);
    translate([3.6, 3.6,0 ]) 
    translate([36-3.6, 3.6,0 ]) post();
    translate([3.6, 36-3.6,0 ]) post();
    translate([36-3.6, 36-3.6,0 ]) post();
}
    // swivel tabs
*    translate([6.2,34,0]) difference() {
     cube([24,32,9]);
     // tabs - remove sides
     translate([0,20,0]) cube([7.4,12.8,10]);
     translate([17,20,0]) cube([7.4,12.8,10]);
     // remove center - leaving two tabs
     translate([10,20,0]) cube([3.3,12.8,10]);
     // punch hole in arms
     translate([16,28,4.3]) rotate([0,90,0]) cylinder(r=2,h=26); 
    }

