#!/usr/bin/perl -w
use strict;
use File::Find;

## todo : make aware of subsections?

sub caps{
  my $line = (split(/\//, shift))[-1];
  $line =~ s/_/ /g;
  $line =~ s/(\w+)/\u\L$1/g;
  return $line;
}

sub wanted{
  if(-f && m/\.tex$/){
    print "\\section*{}\n";
    print "\\input{$_}\n";
  }

  if(-d) {
    print "\\chapter{" . caps($_) . "}\n";

    if (-f "$_/discuss.txt"){
      print "\\section{Discussion}\n";
      print "\\input{$_/discuss.txt}\n";
    }

    print "\\section{Recipies}\n";

  }
}

find({ wanted => \&wanted, no_chdir => 1 }, <recipes/*>);
