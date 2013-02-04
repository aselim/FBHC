#! /usr/bin/perl
$l=0;
open (FILE, 'balanced_smileystxt');
<FILE>;
 while (<FILE>) {
 	chomp;
	$l++;
	$count=0;
	$lchar='a';
 	$llchar='a';
	my $slen = length($_);
	my @chars = split("", $_);
	for ($i=0;$i<$slen;$i++)
		{#print $chars[$i]."\n";
		#if ($count < 0)
		#	{$count = 0;}
		if ($chars[$i]=~/\(/ and not($lchar=~/\:/))
			{$count=$count+1;}
		elsif ($chars[$i]=~/\)/ and $lchar=~/\:/ and $llchar=~/\(/)
			{$count=$count-1;}
		elsif ($chars[$i]=~/\)/ and not($lchar=~/\:/) and ($count  > 0))
			{$count=$count-1;}
		$llchar=$lchar;
		$lchar=$chars[$i];
		}
	if ($count == 0)
		{print "Case #$l: YES\n";}
	else
		{print "Case #$l: NO\n";}
}
 close (FILE);
