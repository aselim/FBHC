#! /usr/bin/perl
$l=0;
open (FILE, 'find_the_mintxt');
<FILE>;
while (<FILE>){
$l++;
my @p = split(" ", $_);
$k= $p[1];
$n= $p[0];
$file=<FILE>;
my @p = split(" ", $file);
$a=$p[0]; $b=$p[1]; $c=$p[2]; $r=$p[3];
@mr=();
for ($i=1;$i<$k;$i++)
	{$mr[0]=$a;
	$mr[$i] = ($b * $mr[$i-1] +$c) % $r;
	print "$mr[$i] ,";}

for ($z=$k;$z<$n;$z++)
	{@t = sort { $a <=> $b } @mr;
	$i=0;
	$d= 1;
	while ($d==1 or $d==0)
		{$min = $t[$i];
		$max = $t[$i+1];
		$d= $max-$min;
		$i++;}
	if ($t[0]!= 0)
        	{$find = 0;}
	elsif ($min != $max-1)
		{$find = $min +1;}
        shift(@mr);
	$mr[$k-1]=$find;
	print "$mr[$k-1] ,"}
print "Case #$l: $mr[$k-1]\n";}
