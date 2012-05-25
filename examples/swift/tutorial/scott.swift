type messagefile;

app (messagefile t) greeting() { 
   sh "/home/skrieder/swift/examples/swift/tutorial/scott.sh" stdout=@filename(t);
}

messagefile outfile <"scott.txt">;

outfile = greeting();