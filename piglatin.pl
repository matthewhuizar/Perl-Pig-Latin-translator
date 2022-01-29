#!/usr/bin/perl -w
print "Enter a sentence: "; # Prompt the user
$word = <STDIN>; # Wait for input
do {
	chomp($word); # Remove the newline
	print "Converted sentence: "; 
	foreach $word (split(' ', $word)) {
		$word =~ s/([^aeiouy]+)(\w+)/$2$1ay/i;
		print "$word ";
	}
	print "\nEnter another sentence or \"quit\" to quit: "; # Prompt the user
	$word = <STDIN>; # Wait for input
	chomp($word); # Remove the newline
	#last if ($word eq "quit");
} while($word ne "quit");