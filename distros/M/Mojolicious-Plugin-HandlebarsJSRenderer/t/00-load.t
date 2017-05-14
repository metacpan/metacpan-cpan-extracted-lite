use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'Mojolicious::Plugin::HandlebarsJSRenderer' ) || print "Bail out!\n";
}

diag( "Testing Mojolicious::Plugin::HandlebarsJSRenderer $Mojolicious::Plugin::HandlebarsJSRenderer::VERSION, Perl $], $^X" );
