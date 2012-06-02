type messagefile;

app (messagefile t) greeting() { 
    scott3a stdout=@filename(t);
}

messagefile outfile <"hello.txt">;

outfile = greeting();

