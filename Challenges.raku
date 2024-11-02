#!/usr/bin/env raku
use v6.d;

sub list_less_than_100(@lst) {
    @lst.sum < 100
}

sub concat_name($first, $last) {
    $last ~ ", " ~ $first
}

sub calculator($txt) {
    # EVAL $txt
}

sub first_last($val) {
    $val.substr(0,1) ~ $val.substr(*-1)
}

sub odd_or_even($word) {
    $word.chars mod 2 == 0
}

sub make_pair($num1, $num2) {
    @($num1, $num2)
}

sub front3($txt) {
    my $concat = $txt.substr(0,3);
    $concat ~ $concat ~ $concat
}

sub check_equals(@lst1, @lst2) {
    @lst1 eq @lst2
}

sub is_even($n) {
    $n mod 2 == 0
}

sub inches_to_feet($inches) {
    $inches < 12 ?? 0 !! $inches / 12;
}

sub even_or_odd(@list) {
    @list.sum mod 2 == 0 ?? "even" !! "odd"
}

sub is_odd($num) {
    $num mod 2 != 0
}

sub num_to_dashes($num) {
    my $concat = "";
    for 1..$num -> $n {
        $concat ~= "-"
    }
    $concat
}

sub area($h, $w) {
    $h > 0 and $w > 0 ?? $h * $w !! -1
}

sub check(@lst, $el) {
   $el (elem) @lst
}

sub isEvenOrOdd($num) {
    $num mod 2 == 0 ?? "even" !! "odd"
}

sub is_plural($word) {
    $word.substr(*-1) eq "s"
}

sub pos_com($num) {
    2 ** $num
}

sub ist_last_character_n($word) {
    $word.substr(*-1).lc eq "n"
}

sub get_container($key) {
    my %map = (
        'Bread' => 'bag',
        'Milk' => 'bottle',
        'Beer' => 'bottle',
        'Eggs' => 'carton',
        'Cerials' => 'box',
        'Candy' => 'plastic',
        'Cheese' => Nil
    );
    %map{$key}
}

sub long_burp($num) {
    my $letter = "";
    for 1..$num {
        $letter ~= "r";
    }
    "Bu" ~ $letter ~ "p"
}

sub ctoa($char) {
    $char.ord
}

sub years_in_one_house($age, $moves) {
    $moves == 0 ?? $age !! $age / ($moves + 1)
}

# useful method to replace
sub add($char, $txt) {
    $txt.comb.join('').trans(' ' => $char)
}

sub flip_bool($bool) {
    !$bool
}

sub check_equals2(@lst1, @lst2) {
    @lst1 eq @lst2
}

sub sum_lst(@lst) {
    my $total = 0;
    for @lst {
        $total += $_;
    }
    $total
}

# useful removing the first character of a string
sub new_word($word) {
    substr($word, 1)
}

sub area_shape($base, $height, $shape) {
    $shape eq "triangle" ?? 0.5 * $base * $height !! $base * $height;
}

sub half_quarter_eight($n) {
    @($n * .5, $n * .25, $n * .125)
}

sub future_people($P, $nP) {
    $P + 360 * $nP
}

sub star_number($n) {
    return 6 * $n * ($n - 1) + 1
}

# useful concat strings for many times
sub how_many_times($num) {
    my $var ~= "a" for 1..$num;
    "Ed" ~ $var ~ "bit"
}

sub MAIN() {
    say how_many_times(5)
}
