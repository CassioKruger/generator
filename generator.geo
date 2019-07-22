//Novembro, 2018 - Autor: Cássio T. Kruger
//UFPel - Eng. de Controle e Automação
//pdd1 - v4.0

Include "generator_data.geo" ;

Solver.AutoShowLastStep = 1;
Mesh.Algorithm = 1;

lc_1=0.0004;
lc_2=0.001;
lc_3=0.003;

// some characteristic lengths...
//----------------------------------------
pslo = mm * 3*2/2/1.5; // slot opening
psl  = mm * 2.2; // upper part slot
pout = mm * 12; // outer radius
pMB  = mm * 1 * 2/2; // MB
p  = mm*12*0.05*1.3;    //rotor


Include "generator_stator.geo" ;
//Include "generator_rotor.geo" ;

Mesh.CharacteristicLengthFactor = 1;
//Mesh 2;

// For nice visualisation...
Mesh.Light = 0 ;

Hide { Line{ Line '*' }; }
Hide { Point{ Point '*' }; }

Physical Line(NICEPOS) = { nicepos_rotor[], nicepos_stator[] };
Show { Line{ nicepos_rotor[], nicepos_stator[] }; }

//For post-processing...
View[PostProcessing.NbViews-1].Light = 0;
View[PostProcessing.NbViews-1].NbIso = 25; // Number of intervals
View[PostProcessing.NbViews-1].IntervalsType = 1;
