#!/usr/bin/perl

my $cmdV1 = q[/tmp/cmd_V1.sh];
my $cmdV1_1 = q[/tmp/cmd_V1_1.sh];

my $plist = $ARGV[0];

print("$plist\n");

sub buildV1() {
 system(qq[imscc_V1 $plist > ${cmdV1}]);
 system(qq[sh ${cmdV1}]);
 }

sub buildV1_1() {
 system(qq[imscc_V1_1 $plist > ${cmdV1_1}]);
 system(qq[sh ${cmdV1_1}]);
 }

if ($plist) {

print("$plist\n");

 buildV1();
 buildV1_1();

 }

else {

 print("you must specify only one plist file as the only argument\n");

 }

__END__

