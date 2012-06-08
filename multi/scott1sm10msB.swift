
type messagefile; 
type countfile; 

app (countfile t) countwords (messagefile f) {   
     a1sm10ms stdout=@filename(t);
}

string inputNames = "test1 test2 test3";

messagefile inputfiles[] <fixed_array_mapper;files=inputNames>;
//messagefile inputfiles[];

foreach f,i in inputfiles {
  countfile c <single_file_mapper; file=@strcat(i, ".result")>;
  c = countwords(f);
}
