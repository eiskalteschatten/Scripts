#!/usr/bin/perl

foreach $src (@ARGV) {
	open(FILE, $src) or die("Unable to open file");
	@data = <FILE>;
	close(FILE);
		
	foreach $line (@data) {
		$line =~ s/\n//ig;
		my $string = "<li>".$line."</li>\n";
		print "$string";
	}
}