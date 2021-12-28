// rounded corner box 
$fn=50;
bw=95;      // box width 
bl=105;     // box length
bh=55;       // box height
pr=4;       // post radius
phr=1.5;    // post hole radius
bedh=4;
// 
hw=bw/2;
hl=bl/2;
difference() {
  union() {
    minkowski() {
      cube([bw,bl,bh],center=true);
      sphere(3);
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