$file=$ARGV[0];
$word=$ARGV[1];
open(my $fh,'<:encoding(UTF-8)',$file) or die "could not open filename '$file' $!";
$total=0;
while(my $line = <$fh>)
{
my @match = $line = -m/($word)/g;
my $count = scalar(@match);
$total = $total+$count;
#print "$count\t$line\n";
}
