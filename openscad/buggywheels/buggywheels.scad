$fa = 5;
$fs = 1;
hub_r = 11 /2;
sprockets = 6;
sprocket_w = 2.3;
wheel_r = 50;
thickness = 5;
kerf = 0.2;

projection() wheel();

module wheel(kerf=kerf)
{
    echo(kerf);
    difference()
    {
        //wheel
        cylinder(r=wheel_r,h=thickness,center=true);
        //hub
        cylinder(r=hub_r-kerf,h=thickness*2,center=true);
        //sprockets
        for(i = [0:360/sprockets:360])
        {
            rotate([0,0,i])
            translate([hub_r,0,0])
            cube([(sprocket_w-kerf)*2,sprocket_w-kerf,thickness*2],center=true);
        }
    }

}
