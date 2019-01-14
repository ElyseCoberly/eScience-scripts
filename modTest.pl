#!/usr/bin/perl

my $cmd = q[/tmp/modTest.sh];

my $plist = $ARGV[0];

if ($plist) {

print("=" x 50,": ${plist}\n");

system(qq[printCURL $plist > ${cmd}]);
system(qq[sh ${cmd}]);

 }

## if no argument, do the entire plist directory...

else {

for my $p (</Users/eslcd/etc/plist/*>) {

print("=" x 50,": ${p}\n");

system(qq[printCURL $p > ${cmd}]);
system(qq[sh ${cmd}]);

  }

 }

__END__

