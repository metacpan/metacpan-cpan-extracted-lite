#!perl

BEGIN {
  unless ($ENV{RELEASE_TESTING}) {
    print qq{1..0 # SKIP these tests are for release candidate testing\n};
    exit
  }
}

# This file was automatically generated by Dist::Zilla::Plugin::MetaTests.

use Test::CPAN::Meta;

meta_yaml_ok();