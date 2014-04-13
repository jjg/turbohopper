hd = 10;	// hub diameter (should be function of blade angle
ms = 2;	// motor shaft diameter
bl = 20;	// blade length
ba = 30;	// blade angle

// make sure base is at 0
translate([0,0,-1]){

	difference(){

		union(){

			// nose
			translate([0,0,10]){
				sphere(r=(hd/2));
			}

			// hub
			cylinder(r=(hd/2), h=10);

			// blades
			for(i=[0:5]){
				rotate([0,0,i * (360 / 6)]){
					rotate([ba,0,0]){
						cube([bl,1,10]);
					}
				}
			}
		}

		// motor shaft hole	
		translate([0,0,-1]){
			cylinder(r=(ms/2), h=15);
		}

		// flat bottom
		translate([0,0,-1]){
			cylinder(r=(bl*2), h=2);
		}
	}
}