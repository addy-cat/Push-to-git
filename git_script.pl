#!/usr/bin/perl
use strict;
use warnings;

#This program will add files in a repository,
#do a commit with a message typed as a command line argument,
#and push to a remote repository

if(length(@ARGV) < 2) {
  print "usage: enter a file name then a commit message, separated by a space";
  exit;
}

my ($prog, $commit_msg) = @ARGV;

system("git", "add", "*");
system("git", "commit", "-m", $commit_msg);
system("git", "push", "origin");




