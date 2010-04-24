use Test::Simple 'no_plan';
use strict;
use lib './lib';
use vars qw($_part $cwd);
use Smart::Comments '###';



ok_bins();


sub ok_bins {
   
   warn "\n###############################################################################\n# ok bins\n";
   ok 1, 'started';

   sub slurp {   
      open(FILE, '<', $_[0]) or warn("Can't open file for reading: '$_[0]', $!") and return;   
      local $/;
      my $text = <FILE>;
      close FILE or die($!);
      $text;
   }


   my @bin =  grep { /bin\// } split(/\n/, slurp('./MANIFEST'));
   
   my $binc = scalar @bin;
   
   $binc or warn "no bin/ files in MANIFEST, skipping.." and return;
   
   ok( $binc, "Got $binc in ./bin dir");

   for my $bin ( @bin ){
      ok( system("perl -c $bin")==0 , "check $bin");
   }

   warn "# bins tested, done.\n###############################################################################\n";

   return 1;
}












exit;






sub ok_part { printf STDERR "\n%s\nPART %s %s\n\n", '='x80, $_part++, "@_"; }

