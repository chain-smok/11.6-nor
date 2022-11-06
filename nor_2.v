module nor_2(NOR_OUT,A,B);
    output NOR_OUT;
    input A,B;
    supply0 GND;
    supply1 PWR;
    wire w1,N_A,N_B;
    pmos (N_A,PWR,A);
	nmos (N_A,GND,A);

	pmos (N_B,PWR,B);
	nmos (N_B,GND,B);

    pmos (NOR_OUT,PWR,N_A);
    pmos (NOR_OUT,PWR,N_B);
    
    nmos (NOR_OUT,w1,N_A);   
    nmos (w1,GND,N_B); 

endmodule
    