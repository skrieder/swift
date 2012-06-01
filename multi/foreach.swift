type messagefile; 
type countfile; 

app (countfile t) countwords (messagefile f) {   
     sh @filename(f) stdout=@filename(t);
}

string inputNames = "scott3a.sh scott3b.sh scott3c.sh";

messagefile inputfiles[] <fixed_array_mapper;files=inputNames>;

foreach f in inputfiles {
  countfile c;
  c = countwords(f);
}
