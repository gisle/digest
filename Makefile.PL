require 5.004;
use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'	   => 'Digest',
    'VERSION_FROM' => 'Digest.pm',
    'PREREQ_PM'    => { 'Digest::MD5' => 2.00 },
    ($] >= 5.008 ? ('INSTALLDIRS'  => 'perl') : ()),
    'dist'         => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
);
