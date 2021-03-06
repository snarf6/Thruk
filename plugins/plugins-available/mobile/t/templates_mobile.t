use strict;
use warnings;
use Test::More tests => 14;
use Data::Dumper;

BEGIN {
    use lib('t');
    require TestUtils;
    import TestUtils;
}


###########################################################
# check module
SKIP: {
    skip 'external tests', 1 if defined $ENV{'CATALYST_SERVER'};

    use_ok 'Thruk::Controller::mobile';
};

###########################################################
# initialize object config
TestUtils::test_page(
    'url'      => '/thruk/cgi-bin/mobile.cgi',
    'follow'   => 1,
    'like'     => 'Mobile Thruk',
);
