type messagefile; 
type countfile; 

app (countfile t) file_to_sleep (messagefile f) {   
     sh @filename(f) stdout=@filename(t);
}

string inputNames = "scott3a.sh scott3b.sh scott3c.sh";

messagefile inputfiles[] <fixed_array_mapper;files=inputNames>;

foreach f in inputfiles {
  countfile s;
  s = file_to_sleep(f);
}
