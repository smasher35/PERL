#!/usr/bin/perl -w
use strict;

# o meu código
my $input;
print 'Escreve a palavra OPS: ';
chomp($input=<STDIN>);
if($input eq'OPS'){
print "Obrigado!\n";
} else {
print "Não era essa a palavra!";
}

