type messagefile;

app (messagefile t) greeting() { 
   sh "scott.sh" stdout=@filename(t);
}

messagefile outfile <"scott.txt">;

outfile = greeting();