require 5.004;
use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'	   => 'Digest',
    'VERSION_FROM' => 'Digest.pm',
    ($] >= 5.008 ? ('INSTALLDIRS'  => 'perl') : ()),
    'dist'         => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
);
