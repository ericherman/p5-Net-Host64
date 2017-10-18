#!perl
use strict;
use warnings;
use Test::More;
use Net::Host64;

my $netw_val = 0x8877665544332211;
my $is_little_endian = unpack("h*", pack("s", 1)) =~ /^1/;
my $host_val = $is_little_endian ? 0x1122334455667788 : $netw_val;

my $ntoh = Net::Host64::pntoh64($netw_val);
is($ntoh, $host_val, "is(pntoh64($netw_val), $host_val");

my $hton = Net::Host64::pntoh64($host_val);
is($hton, $netw_val, "is(pntoh64($host_val), $netw_val");

pass("Alive");
done_testing();
