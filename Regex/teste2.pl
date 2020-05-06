#!/usr/bin/perl -w
use strict;

my $s = 'abcdefcdcd';
my $i = 'X';
my $j = 'W';


#substituição é feita a cada iteração
while ($s =~ s/CD/$i/i){
print "1: $s\n";
$i++;
}


#substituição é feita de uma vez só, pois é especificada a opção g
$s = 'abcdefcdcd';
while ($s =~ s/CD/$j/ig){
print "2: $s\n";
}
