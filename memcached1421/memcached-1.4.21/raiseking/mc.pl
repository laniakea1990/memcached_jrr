#!/usr/bin/perl

use strict;
use warnings;
use Cache::Memcached;

my $key = "jin";
my $value = "nuli";
my $expires = 60;  # 1 min
my $memcached = Cache::Memcached->new({
		servers => ["127.0.0.1:11211"],
		compress_threshold => 10_000
	});

$memcached->add($key, $value, $expires);
my $ret = $memcached->get($key);
print "$ret\n";
