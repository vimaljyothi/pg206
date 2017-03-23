use strict;
use Text::CSV_XS;

while( <DATA> ){
  my $line = $_;
  my @input;
  my $csv = Text::CSV_XS->new({  # defaults are: ["]["][,][0]
      quote_char  => '"',
      escape_char => '"',
      sep_char    => ',',
      binary      => 0
  });
  if( $csv->parse( $line ) ){
    @input = $csv->fields;
  } else {
    my $err = $csv->error_input;
    warn "Text::CSV_XS->parse() failed in line $. on argument '"
      , $err, "'\n";
  }
  foreach my $item (@input){
    print "$item\n";
  }
  print "\n";
}
