type messagefile;

app (messagefile t) greeting() { 
    echo "TEST TEST TEST" stdout=@filename(t);
}

messagefile outfile <"hello1.txt">;

outfile = greeting();

