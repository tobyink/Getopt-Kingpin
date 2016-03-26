use strict;
use Test::More 0.98;
use Test::Exception;
use Getopt::Kingpin;


subtest 'int normal with overload' => sub {
    local @ARGV;
    push @ARGV, qw(--x 0);

    my $kingpin = Getopt::Kingpin->new;
    my $x = $kingpin->flag('x', 'set x')->int();
    $kingpin->parse;

    is $x, 0;
};


subtest 'int error with overload' => sub {
    local @ARGV;
    push @ARGV, qw(--x ZERO);

    my $kingpin = Getopt::Kingpin->new;
    my $x = $kingpin->flag('x', 'set x')->int();
    throws_ok {
        $kingpin->parse;
    } qr/int parse error/, 'int parse error';

};

done_testing;
