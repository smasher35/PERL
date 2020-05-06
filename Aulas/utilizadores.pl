#!/usr/bin/perl
use strict;



my @users;


@users = `cut -f1 -d: /etc/passwd | sort`;
print "\n\n";
print "estes são os utilizadores registados nesta máquina: \n";
print "\n\n";
print "@users";
