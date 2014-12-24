#!/usr/bin/perl

use strict;
use warnings;
use String::CRC32;

my @nodes = ('node1','node2','node3');
my @keys = ('tokyo', 'kanagawa', 'chiba', 'saitama', 'gunma');

foreach my $key (@keys) {
	    my $crc = crc32($key);             # CRC値
		my $mod = $crc % ( $#nodes + 1 );
	    my $server = $nodes[ $mod ];       # 根据余数选择服务器
	    printf "%s => %s\n", $key, $server;
}

