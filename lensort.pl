#!/usr/bin/perl
my %lines;
while(my $curr_line = <STDIN>){
  chomp $curr_line;
  $lines{$curr_line} = length $curr_line;
}

for my $line (sort{ $lines{$a} <=> $lines{$b} } keys %lines){
  print $line, "\n";
}
