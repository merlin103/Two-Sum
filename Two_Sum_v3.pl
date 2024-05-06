#!/bin/perl -w

use strict;
use feature 'say';

sub two_sum{
	my ($target, @nums) = @_;
	my %seen;

	foreach (0 .. @nums - 1){
		my $target_ = $target - $nums[$_];
		
		return [$seen{$target_}, $_] if exists $seen{$target_};
		$seen{$nums[$_]} = $_;
	}
	return [];
}

my $result1 = two_sum(9, (2, 7, 11, 15));
my $result2 = two_sum(6, (3, 2, 4));

say('result1 = ', "@$result1"); # 0 1
say('result2 = ', "@$result2"); # 1 2

