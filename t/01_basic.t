#!perl
use strict;
use warnings;
use Test::More;
use Net::Host64;

my $netw_val = 0x8877665544332211;
my $is_little_endian = unpack("h*", pack("s", 1)) =~ /^1/;
my $host_val = $is_little_endian ? 0x1122334455667788 : $netw_val;



pass("Alive");
done_testing();
