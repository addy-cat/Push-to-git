#!/usr/bin/perl
use strict;
use warnings;

#This program will add files in a repository,
#do a commit with a message typed as a command line argument,
#and push to a remote repository

if(scalar(@ARGV) < 1) {
  print scalar(@ARGV);
  print "usage: enter a file name then a commit message inside double parentheses, separated by a space\n";
  exit;
}

my ($commit_msg) = @ARGV;

#use system to execute commands
system("git", "add", "*");
system("git", "commit", "-m", $commit_msg);
system("git", "push", "origin");




