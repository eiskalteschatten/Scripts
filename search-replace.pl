#!/usr/bin/perl

my $find = "";
my $replace = "";

foreach $src (@ARGV) {
	open(FILE, '>', $src) or die("Unable to open file");
	@data = <FILE>;
	#close(FILE);
	
	my $string = "";
		
	foreach $line (@data) {
		$line =~ s/$find/$replace/g;
		$string .= $line;
	}
	
	print "$string";
	print FILE "$string";
	close(FILE);
}