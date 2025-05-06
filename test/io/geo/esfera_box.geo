// Gmsh project created on Wed Feb 19 15:51:35 2025
SetFactory("OpenCASCADE");
//+
Sphere(1) = {0, 0, 0, 50, -Pi/2, Pi/2, 2*Pi};
//+
Box(2) = {-100, -100, 0, 400, 200, -200};
//+
BooleanDifference{ Volume{2}; Delete; }{ Volume{1}; Delete; }
//+
Rotate {{25, 0, 0}, {0, 0, 0}, Pi} {
  Duplicata { Volume{2}; }
}
//+
Recursive Delete {
  Point{12}; Point{4}; Point{2}; Point{1}; Point{14}; Point{3}; Point{20}; Point{10}; Point{15}; Point{7}; Point{9}; Point{5}; Point{6}; Point{19}; 
}
//+
Recursive Delete {
  Point{15}; 
}
//+
Delete {
  Point{15}; 
}

//+
Physical Surface("NOSLIP", 1) = {12, 5, 9, 4, 11, 2};
//+
Physical Surface("INLET", 2) = {8, 1};
//+
Physical Surface("OUTLET", 3) = {13, 6};
//+
Physical Surface("ESFERA", 4) = {14, 7};
//+
Physical Volume("FLUID", 5) = {2, 3};
