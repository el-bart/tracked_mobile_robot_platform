include <detail/config/wheel.scad>
include <detail/config/common.scad>
include <m3d/all.scad>

module engine_axle_slot(l, spacing=0.3)
{
  module profile_2d()
  {
    intersection()
    {
      circle(d=5.45, $fn=fn(40));
      square([20, 3.75], center=true);
    }
  }

  linear_extrude(l)
    offset(r=spacing)
    profile_2d();
}

module wheel()
{
  module body()
  {
    cylinder(d=wheel_d, h=wheel_h, $fn=fn(50));
    translate([0, 0, wheel_h])
      cylinder(d=axle_d, h=wheel_axle_len, $fn=fn(50));
  }

  module shaft()
  {
    total_len = wheel_h + wheel_axle_len;

    cylinder(d=engine_axle_screw_d, h=total_len, $fn=fn(50));

    translate([0, 0, -eps])
      cylinder(d=engine_axle_screw_head_d, h=total_len - engine_axle_len - engine_axle_screw_len + eps, $fn=fn(30));

    translate([0, 0, total_len - engine_axle_len])
      engine_axle_slot(l=engine_axle_len+eps);
  }

  difference()
  {
    body();
    shaft();
  }
}


wheel();
