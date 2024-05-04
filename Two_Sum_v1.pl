#!/bin/perl -w

use strict;
use feature 'say';

sub two_sum{
	my ($target, $nums) = @_;
	my @nums = @$nums;
	
	for my $i (0 .. @nums - 2){
		for my $j ($i + 1 .. @nums - 1){
			return [$i, $j] if $nums[$i] + $nums[$j] == $target;
		}
	}
	return 0;
}

my $result1 = two_sum(9, [2, 7, 11, 15]);
my $result2 = two_sum(6, [3, 2, 4]);

say('result1 = ', "@$result1"); # 0 1
say('result2 = ', "@$result2"); # 1 2

