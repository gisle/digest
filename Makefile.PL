require 5.004;
use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'	   => 'Digest',
    'VERSION_FROM' => 'Digest.pm',
    ($] >= 5.008 ? ('INSTALLDIRS'  => 'perl') : ()),
    'PREREQ_PM'    => {
        'MIME::Base64' => 0,
        'Test::More'   => '0.47'
    },
);
