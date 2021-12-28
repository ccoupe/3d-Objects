// Box - punch holes for USB cable on side
// and camera attatchment.
difference() {
    resize([0,95,0]) {
        import("/home/ccoupe/Projects/3d/1602/box/files/Box_Body.stl");
    }
    translate([-47,-30,15]) rotate ([90,0,90]) cylinder(d=12.1,h=4);
    translate([-17.3,50,30]) rotate ([90,90,0]) cylinder(d=4.6,h=4);
    translate([17.3,50,30]) rotate ([90,90,0]) cylinder(d=4.6,h=4);
}

   