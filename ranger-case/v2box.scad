// rounded corner box 
$fn=50;
bw=110;      // box width 
bl=65;      // box length
bh=30;      // box height minimum around 20
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
      union() {
        minkowski() {
          cube([bw,bl,bh],center=true);
          sphere(sm);
        }    
      }
      // cut off top
      translate([0,0,bedh]) cube([bw,bl,bh],center=true);
    
    }
    translate([hw-2,hl-2,-(bh/2)+2]) difference() {
      cylinder(r=pr,h=bh);
      cylinder(r=phr,h=bh);
    }
    translate([0-hw+2,hl-2,-(bh/2)+2]) difference() {
      cylinder(r=pr,h=bh);
      cylinder(r=phr,h=bh);
    }
    translate([0-hw+2,0-hl+2,-(bh/2)+2]) difference() {
      cylinder(r=pr,h=bh);
      cylinder(r=phr,h=bh);
    }
    translate([hw-2,0-hl+2,-(bh/2)+2]) difference() {
      cylinder(r=pr,h=bh);
      cylinder(r=phr,h=bh);
    }
  }
  // power cord hole
  translate([-hw-bedh,-20,-bh/4]) rotate ([90,0,90]) cylinder(d=12.1,h=4);
  // camera mounting holes
  //translate([-17.3,hl+4,0]) rotate ([90,90,0]) cylinder(d=4.6,h=4);
  //translate([17.3,hl+4,0]) rotate ([90,90,0]) cylinder(d=4.6,h=4);
}
// Mounting tabs on box bottom
translate([bw/2+10,-5,-(bh/2)-2]) rotate([0,0,90]) union() {
  translate([5,0,0]) difference() {
    cylinder(d=10, h=2);
    cylinder(d=4, h=4);
  }
  cube([10,20,2]);
}
translate([-(bw/2)-10,-5,-(bh/2)-1]) rotate([180,0,90]) union() {
  translate([5,0,0]) difference() {
    cylinder(d=10, h=2);
    cylinder(d=4, h=4);
  }
  cube([10,20,2]);
}