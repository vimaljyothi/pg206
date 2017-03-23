print "\n";
print "palindrome words\n";
for($i=0;$i<=$#ARGV;$i++)
	{
	if($ARGV[$i]eq reverse($ARGV[$i]))
		{
		print "$ARGV[$i]\n";
		}
	}

