$fn=40;
r = 5;
difference() {
  cylinder(0.1, r, r, true);
  union() {
    cylinder(1, 2, 2, true);
    for(deg = [0:360]) {
      rotate(deg) translate([r-.3, 0, 0]) cube([0.4, 0.05, 1], true);
    }
    for(deg = [0:4]) {
      rotate(deg*(360/4))
      translate([3.5, 0, 0]){
        cube([0.2, 1, 1], true);
        translate([0.4, 0, 0]) cube([0.2, 1, 1], true);
      }
    }
    
  }
}
