#!./perl

# $Header: /home/ncvs/src/gnu/usr.bin/perl/perl/t/io/print.t,v 1.1.1.1.6.1 1996/06/05 02:42:45 jkh Exp $

print "1..16\n";

$foo = 'STDOUT';
print $foo "ok 1\n";

print "ok 2\n","ok 3\n","ok 4\n";
print STDOUT "ok 5\n";

open(foo,">-");
print foo "ok 6\n";

printf "ok %d\n",7;
printf("ok %d\n",8);

@a = ("ok %d%c",9,ord("\n"));
printf @a;

$a[1] = 10;
printf STDOUT @a;

$, = ' ';
$\ = "\n";

print "ok","11";

@x = ("ok","12\nok","13\nok");
@y = ("15\nok","16");
print @x,"14\nok",@y;
