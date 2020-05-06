#!/usr/bin/perl -w
use strict;


my @users;
my $users;


@users = `cut -f1 -d: /etc/passwd |sort`;


foreach $users(@users)
{
	print $users;

}
