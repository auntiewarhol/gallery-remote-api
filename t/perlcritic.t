#!perl
use strict;
use warnings;
use Test::More;

if (!require Test::Perl::Critic) {
    Test::More::plan(
        skip_all => "Test::Perl::Critic required for testing PBP compliance"
    );
}
if (! $ENV{TEST_AUTHOR}) {
    Test::More::plan(
        skip_all => "Author test. Set \$ENV{TEST_AUTHOR} to a true value to run."
    );
}


Test::Perl::Critic::all_critic_ok();
