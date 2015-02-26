#!/usr/bin/perl
#use strict;
#use warnings;
use YAML qw(LoadFile);
use Data::Dumper;
$Data::Dumper::Terse = 1;

my @data = LoadFile("data.yml");
#print "\n";

foreach $datax (@data)
{
 my %dataz = %{ $datax};
# print %dataz;
# print "\n";

 #For retrieving the keys
 print "Retriving the keys ...\n";
 foreach $key (keys %dataz)
 {
  print "$key \n";
 }
 #For getting the values
 print "Getting the values ...\n";
 foreach $value (values %dataz)
 {
#  print "$value \n";
  if(ref($value) eq 'ARRAY'){
      #It's an array reference...
      #you can read it with $item->[1]
      #or dereference it uisng @newarray = @{$item}
      print "@{$value} \n";
   }
   else{
      #not an array in any way...
      print "$value \n";
   }
 }
}
