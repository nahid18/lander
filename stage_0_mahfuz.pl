#!/usr/bin/perl
use strict;
use warnings;

my $name = "Name: Md. Mahfuzur Rahman Bhuyan\n";
my $email = "Email: mdmahfuzurrahmanbhuyan\@gmail.com\n";
my $slack ="Slack: \@Mahfuz\n";
my $biostack ="Biostack: Genomics\n";
my $twitter ="Twitter: \@RobyRahman13\n";
my $string1 ="Mahfuz";
my $string2 ="RobyRahman13";


print $name;
print $email;
print $slack;
print $biostack;
print $twitter;
print "Hamming Distance: ",hd( $string1, $string2 ),"\n";

sub hd{ length( $_[ 0 ] ) - ( ( $_[ 0 ] ^ $_[ 1 ] ) =~ tr[\0][\0] ) }