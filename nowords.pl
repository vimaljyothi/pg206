use warnings;
use strict;


my $lcnt = 0;
my $wcnt = 0;
my $ccnt = 0;
my %count;
my $word;
my $count;

open my $INFILE, '<', $ARGV[0] or die $!;

while( my $line = <$INFILE> ) {

$lcnt++;

$ccnt += length($line);

my @words = split(/\s+/, $line);

$wcnt += scalar(@words);

        foreach $count(@words) {
            $count{@words}++;
        }
}

foreach $word (sort keys %count) {


print "Number of characters: $ccnt\n","Number of words: $wcnt\n","Number of lines: $lcnt\n","Frequency of words in the file: $word : $count{$word}";

}

close $INFILE;
