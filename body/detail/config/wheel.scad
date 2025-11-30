// 8x22x7 mm bearing
bearing_d_int = 8;
bearing_d_ext = 22;
bearing_h = 7;
bearing_inter_space = 6;

engine_axle_len = 8-1; // this is also how deep the screw goes in
// M2x20
engine_axle_screw_head_d = 3.75 + 1;
engine_axle_screw_d = 2 + 0.5;
engine_axle_screw_len = 20 - engine_axle_len;

wheel_h = 10;
wheel_d = 40;
wheel_axle_len = 2 + bearing_h + bearing_inter_space + bearing_h + engine_axle_len;
