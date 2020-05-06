#!/usr/bin/perl


$\ = "\n";
$, = ",";
$s = "Isto é uma string\nEsta é uma String\nEsta é a terceira linha\n";
$s .= "Esta é a quarta linha\nEsta não é a última frase\n";
$s .= "Esta é a última linha\n";

print $s;
print "--------------\n";
$s =~ m/^Isto/ && print 'verificou-se m/^Isto/';
$s =~ m/^Esta/ || print 'não se verificou m/^Esta/';
$s =~ m/^Esta/ && print 'verificou-se m/^Esta/';
print "--------------\n";
print $s;
print "--------------\n";
@l = $s =~ m/^Esta/mg and $j = @l, print "verificou-se m/^Esta/mg $j vezes";
print "--------------\n";
@l = $s =~ m/^[EI]st[ao]/mg and $j = @l, print "verificou-se m/^[EI]st[ao]/mg $j vezes";
print "--------------\n";
@l = $s =~ m/^Isto|^Esta/mg and $j = @l, print "verificou-se
m/^Isto|^Esta/mg $j vezes\t", @l;
print "--------------\n";
@l = $s =~ m/^Isto|Esta/mg and $j = @l, print "verificou-se m/^Isto|Esta/mg $j vezes\t", @l;
