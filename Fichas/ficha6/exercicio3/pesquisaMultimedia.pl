#!/usr/bin/perl -w

use strict;

#====================================================================
# CODE
#====================================================================
sub main () {
	my $dir=$_[0];
	my @DirContent_L;
	my @ficheiros;

	@DirContent_L = <$dir*.{avi,wmv,mp3}>;
	my( $NumFiles, $File_S);

	#Para a própria directoria
	$NumFiles = 0;
	foreach $File_S (@DirContent_L)
	{
			$NumFiles++;
			push @ficheiros,$File_S;
	}

	my( @Dir_Content_Sub );
	#Para as sub-directorias
	opendir(DIR,$dir) || die "can't opendir $dir: $!";
	@Dir_Content_Sub = readdir(DIR);
  closedir DIR;

  my ($Dir_S);

	foreach $Dir_S (@Dir_Content_Sub)
	{
		if ( -d "$dir$Dir_S" ) {
			if ( $Dir_S ne "." && $Dir_S ne ".." )
			{
				@DirContent_L = <$dir$Dir_S/*.{avi,wmv,mp3}>;
				foreach $File_S (@DirContent_L)
				{
					$NumFiles++;
					push @ficheiros,$File_S;
				}
		  }
		}                	               
	}

	my @ficheiros_ord = sort @ficheiros;
	print join("\n",@ficheiros_ord);
	printf("\n\n%d ficheiro%s\n", $NumFiles,($NumFiles>1)? "s":"");
}
#====================================================================
# main
#====================================================================
my $DirToScan = "C:/ficha5/";
&main($DirToScan);
