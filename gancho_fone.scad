espessura_prateleira = 15; // milimetros

espessura_gancho = 5;
altura_gancho = 70;
        
module gancho() {
difference() {
    volume_positivo();
    prateleira();
}
}

module volume_positivo() {
    linear_extrude(espessura_gancho) {
        translate([15,20,0])
            square([25,30]);
        
        translate([0,-5,0])
            square([40, 30]);
        
        translate([0,-altura_gancho,0])
            square([10, altura_gancho]);
        
        espessura_apoio_gancho = 15;
        h = altura_gancho + espessura_apoio_gancho;
        
        translate([0,-h,0])
            square([80, espessura_apoio_gancho]);

    }
}
    
//prateleira
module prateleira() {
translate([-2,15,-1])
  linear_extrude(espessura_gancho + 2) {
    square([30, espessura_prateleira]);
    translate([25,-10])
        square([10, 35]);
  }
}

//prateleira();

gancho();