#!perl -T

use strict;
use warnings;
use Test::More tests => 5+6+4;
use Lingua::ZH::PinyinConvert::ID;

my $conv = Lingua::ZH::PinyinConvert::ID->new;

my @h2i = (
    ["zhong guo", "cung kuo"],
    ["zhong1 guo2", "cung1 kuo2"],
    ["woaita", "woaitha"],
    ["wo3ai4ta1", "wo3ai4tha1"],
    ["{wo ai ta} means {I love him}", "{wo ai tha} means {I love him}"],
);
is($conv->hanyu2id($_->[0]), $_->[1], "hanyu2id '$_->[0]'") for @h2i;

my @i2h = (
    ["cung kuo", undef],
    ["cung kuo", "(zhong|zong) guo", {list_all=>1}],
    ["yuen liau", "yuan liao"],
    ["yuenliau", "yuanliao"],
    ["yuen2 liau4", "yuan2 liao4"],
    ["yuen2liau4", "yuan2liao4"],
);
is($conv->id2hanyu($_->[0], $_->[2]), $_->[1], "id2hanyu '$_->[0]'") for @i2h;

my @d = (
    ["I love You", "neither"],
    ["wo ai tha", "id"],
    ["wo ai bei jing", "hanyu"],
    ["wo ai ni", "ambiguous"],
);
is($conv->detect($_->[0]), $_->[1], "detect '$_->[0]'") for @d;
