use ExtUtils::MakeMaker;

WriteMakefile(

   NAME => 'vimabb',
   
   VERSION_FROM   => 'bin/vimabb',
   
   ABSTRACT_FROM  => 'bin/vimabb',      
   
   LICENSE        => 'perl',   
   
   AUTHOR         => 'Leo Charre leocharre at cpan dot org',   
   
   EXE_FILES => [qw(bin/vimabb)],

   
   # gen /usr/bin/pmused by Wed Mar 31 10:09:53 EDT 2010 
   PREREQ_PM => {
      'Carp'                              => '1',
      'Getopt::Std::Strict'               => '1.01',
   },

);


