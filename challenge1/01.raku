my @input = 'input'.IO.lines;

# Part 1
my $count = 0;
my $prev;

for @input -> $curr {
  if ($prev && $prev < $curr) {
    $count++
  }
  $prev = $curr
}

say "Part 1: Depth measurement increased $count times";

# Part 2
my $prev2;
$count = 0;

my $i = 2;
while $i < @input.elems {
  my $sum = @input[$i - 2] + @input[$i - 1] + @input[$i];
  if ($prev2 && $prev2 < $sum) {
    $count++
  }
  $prev2 = $sum;
  $i++;
}

say "Part 2: Depth measurement increased $count times";
