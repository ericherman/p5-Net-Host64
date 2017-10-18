use strict;
use warnings;

# To determine your endianness, you could use either of these statements:
# my $is_big_endian  = unpack("h*", pack("s", 1)) =~ /01/;
my $is_little_endian = unpack("h*", pack("s", 1)) =~ /^1/;

my $netw_val = 0x8877665544332211;
my $host_val = $is_little_endian ? 0x1122334455667788 : $netw_val;

use Data::Dumper;
print Dumper({ host_val => $host_val, netw_val => $netw_val, is_little_endian => $is_little_endian});

