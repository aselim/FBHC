#! /usr/bin/perl

$input=$ARGV[0];
open (FILE, $input);
<FILE>;
$l=1;
while (<FILE>){
	$rslt=0;
	$cycle=0;
	my ($n, $r) = split(" ", $_);
	$iter=$r-1;
	$line = <FILE>;
	my @set = split(" ", $line);
	@tset = sort { $a <=> $b } @set;
	for ($j=$r;$j<$n+1;$j++)
		{$rslt= $rslt + ($tset[$j-1]*(C($j,$r)-$cycle));
		$cycle=C($j,$r);
		}
	print "Case #$l: $rslt \n";
	$l++;
}
close(File);




sub C{
	$n=$_[0];
	$r=$_[1];
	$d_fact=$n-$r;
	$num=1;
	$dum=1;
	for ($i=$d_fact;$i>0;$i--)
		{$num=$n*$num;
		$n--;}
	for ($i=$d_fact;$i>0;$i--)
		{$dum=$i*$dum;}
	return($num/$dum);
}
