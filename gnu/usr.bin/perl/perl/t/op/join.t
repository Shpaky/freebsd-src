#!./perl

# $Header: /home/ncvs/src/gnu/usr.bin/perl/perl/t/op/join.t,v 1.1.1.1.6.1 1996/06/05 02:43:03 jkh Exp $

print "1..3\n";

@x = (1, 2, 3);
if (join(':',@x) eq '1:2:3') {print "ok 1\n";} else {print "not ok 1\n";}

if (join('',1,2,3) eq '123') {print "ok 2\n";} else {print "not ok 2\n";}

if (join(':',split(/ /,"1 2 3")) eq '1:2:3') {print "ok 3\n";} else {print "not ok 3\n";}
