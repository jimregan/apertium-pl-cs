#!/usr/bin/perl

use warnings;
use strict;
use utf8;

binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";
binmode STDERR, ":utf8";

while (<>)
{
	# (prawie) całe słowa
	s/\bprzedewszystkiem\b/przede wszystkim/g;
	# nie można zmienić -iem na -im, bo to
	# poprawna końcówka rzeczownikowa
	s/\bwszystkiem\b/wszystkim/g;
	s/\bwysokiem\b/wysokim/g;
	s/\bwielkiem\b/wielkim/g;
	s/\btem\b/tym/g;
	s/\bztąd\b/stąd/g;
	s/\bzkąd\b/skąd/g;
	s/\bmoję\b/moją/g;
	s/tł[óo]macz/tłumacz/g;

	# litery
	s/([czs])y([aeiouąęó])/$1j$2/g;
	s/([dr])y([aeiouąęó])/$1i$2/g;

	# końcówki
	s/([^kg])emi/$1ymi/g;
	s/([kg])emi/$1imi/g;
	print;
}
