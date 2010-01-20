
use strict;
use warnings;



use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Lingua-ZH-PinyinConvert-ID',
  NAME      => 'Lingua::ZH::PinyinConvert::ID',
  AUTHOR    => "Steven\ Haryanto\ \<stevenharyanto\@gmail\.com\>",
  ABSTRACT  => "Convert\ between\ various\ Chinese\ pinyin\ system\ and\ Indonesian\ transliteration",
  VERSION   => '0.03',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "Test::More" => '0',
    "Pod::Coverage" => '0.18',
    "Test::Pod::Coverage" => '1.08',
  },
  test => {TESTS => 't/*.t'}
);

