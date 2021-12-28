// Front panel - LCD1602  and HC-SR504
// Punch holes for LCD 1602 
// Punch holes for HC-SR504 + standoffs
// Next Version - screw holes in corners.Rounded corners.
module blank() {
    union() {
        resize([0,95,0]) import("/home/ccoupe/Projects/3d/1602/box/files/top_cover_lcd_only.stl");
        translate([22,78,0]) cube([82,28,4]);
    }
}
difference() {
    blank();
    // SR-504 holes
    translate([49,43,0]) cylinder(d=17,h=4);
    translate([74,43,0]) cylinder(d=17,h=4);
    // LCD cutout
    translate([26,65,0]) cube([71.1, 24.2, 4]);
}
// Standoffs for LCD 
translate([42,32,-6]) cylinder(d=6.6,h=6);
translate([42,53.5,-6]) cylinder(d=6.6,h=6);

translate([82,33,-6]) cylinder(d=6.6,h=6);
translate([82,52.6,-6]) cylinder(d=6.6,h=6);
