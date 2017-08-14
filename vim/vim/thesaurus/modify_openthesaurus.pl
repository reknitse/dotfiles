#!/cygdrive/c/progs/Perl5222/perl/bin/perl

use strict;
use warnings;

use FindBin qw/$Bin/;
use File::Slurp;

chdir "$Bin";

my @lines = read_file("openthesaurus.txt");
my $result = "";
foreach my $line (@lines){
    my @words = split(/;/,$line);
    my @single_words;
    foreach my $word (@words){
        chomp $word;
        if ($word =~ m/^[\wäöüßÄÖÜ]+$/) {
            push @single_words, $word;
        }else{
            print "$word\n";
        }
    }
    if (scalar @single_words > 1){
        $result .= join(" ", @single_words) . "\n";
    }
}


write_file("openthesaurus.vim.txt",$result);
