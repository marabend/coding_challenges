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

# useful concat strings for many times
sub how_many_times2($num) {
    "Ed" ~ "a" x $num ~ "bit"
}

sub mysum($x, $y) {
    return $x + $y #  Can be invoked as say mysum(|@(1,2))
}

sub min_max(@lst) {
    minmax(@lst)
}

sub has_spaces($txt) {
    $txt.contains(" ")
}

# USEFUL: count number of occurences in string
sub count_d($sentence) {
    $sentence.lc.indices("d").elems
}

# There must be a better way
sub create_id($firstname, $lastname) {
    $firstname.lc.comb[0] ~ $lastname.tclc.substr(0,3)
}

# USEFUL
sub distance_home(@lst) {
    @lst.sum.abs
}

sub first_last2(@lst) {
    (@lst[0], @lst[@lst.end])
}

sub is_safe_bridge($bridge) {
    !$bridge.contains(" ");
}

sub absolute($num) {
    $num > 0 ?? $num !! $num * (-1)
}

sub programmers($one, $two, $three) {
    my $sortedList = @($one, $two, $three).sort;
    ($sortedList[0] - $sortedList[$sortedList.end]).abs
}

sub calculate($num1, $num2, $op) {
    return ("" ~ $num1 ~ $op ~$num2).EVAL
}

sub flip($num) {
    return $num == 0 ?? 1 !! 0
}

sub nth_even($num) {
    return $num + $num - 2
}

sub calculate2($num1, $num2, $op) {
    (""~$num1~$op~$num2).EVAL
}

sub should_serve_drinks($age, $on_break) {
    $age >= 18 and !$on_break
}

sub last_ind($lst) {
    $lst.elems == 1 ?? $lst.comb[*-1] !! $lst[*-1]
}

sub km_to_miles($km) {
    $km * 0.621371
}

sub potatoes($potato) {
    split("potato", $potato.lc).elems -1
}

sub random_int($a, $b) {
    Int(($a^..$b).rand)
}

sub birthday_cake_candles(@candles) {
    split(""~@candles.sort.reverse[0], @candles).elems-1;
}

# USEFUL if you want to define your own types
sub define_your_own_subset() {
    subset PositiveInt of Int where {$^a > 0};
    my PositiveInt $x = 5;
}

sub my_empty_list() {
    my $empty-list = List.new;
    my $empty-list2 = Empty;
    $empty-list.elems
}

sub init_my_list() {
    my $butterfly-genus = List.new:
        'Hamadryas', 'Sostrata', 'Junonia';

    my $bufferfly-genus2 = List.new(
                'Hamadryas',
                'Sostrata',
                'Junonia'
            );
    $butterfly-genus.elems
}

sub butterfly_list() {
    my $bufferfly-genus = qw<Hamadryas Sostrata Junonia>;
    my $bufferfly-genus2 = Q :w/Hamadryas Sostrata Junonia/;
}

sub same_list() {
    @(0 xx 5)
}

sub join_them_together() {
    my $butterfly = <<Butterfly1 Butterfly2 Butterfly3, 'Another Butterfly'>>;
    $butterfly.join(';')
}

sub iterating_lists() {
    my $butterfly-list = <<Butterfly1 Butterfly2 Butterfly3 'Another Butterfly'>>;
    for $butterfly-list.List {
        put $_
    }

    for $butterfly-list {
        say $_;
    }
}

sub show_data_type() {
    my @lst = <<1 2 3>>;
    @lst.^name
}

sub print_length_of_each_item() {
    my @butterfly-list = <<Butterflyy1 Butterflyyyy2 Butterflyyyyyyy3>>;
    for @butterfly-list {
        put "$_ has {.chars} characters";
    }
}

sub iterate_list_in_pairs() {
    my  @list = <1 2 3 4 5 6 7 8>;

    for @list {
        put "Got $^a and $^b";
    }
}

sub count_words_in_string() {
    "Hallo, ich heisse Marcel".words.elems
}

sub iterate_through_string() {
    my $txt = "This is any text";
    for $txt.words {
        put $_;
    }
}

sub split_txt_into_chars() {
    my $name = "Marcel";
    $name.comb;
}

sub your_own_wc() {
    my $txt = "This is\n some input ";
    # for lines() {
    for $txt.words {
        state $lines = 0;
        state $words = 0;
        state $chars = 0;
        $lines++;
        $words += .words;
        $chars += .comb;

        LAST {
            put "lines: $lines\nwords: $words\nchars: $chars";
        }
    }
}

sub experiment_with_ranges() {
    my $digit-range = 0 .. 10;
    my $alpha-range = 'a' .. 'f';
    my $digit-range2 = 0^..^10; # exclude 0 and 10
    my $is_in_range = 7 ~~ $digit-range2;
    my $range_to_list = $digit-range2.List;
    my $cache = $alpha-range.cache; # TODO Not quite sure what it is
    $cache;
}

sub smart_seq() {
    my $s := 0,1,2,4 ... 256;
    $s := 1, {$^a + 0.1} ... 1.8;
    $s := 1,1, {$^a + $^b} ... 21;
    $s := 1,1, {$^a + $^b} ... {$^a > 20};
    $s := 1,1, {$^a + $^b} ... * > 20;
    $s := 1,1, * + * ... * > 20;
    $s := 1,1, * + * ... * ;
    $s.gist;
}

# USEFUL : Can be used to start a sequence and to pick a random value of it
sub random_num_generator($start, $end) {
    @($start .. $end).pick
}

sub random_array_item() {
    @('Butterfly1', 'Butterfly2', 'Butterfly3').pick
}

sub usage_of_cache() {
    my $s := 1 ... 5;
    put $s.cache.reverse;
    $s;
}

sub list_from_string() {
    my $txt = "Here it could say anything";
    @$txt
}

sub gathering_values() {
    my $seq := gather {
        state $previous = 0;

        while $previous++ < 5 { take $previous }
    }
    $seq;

    # gather take $++ while 1;
}

sub gathering_values_in_array() {
    my @array = <red green blue purple orange>;
    gather take @array.pick(1) while 1;
}

sub gather_values_in_line() {
    my $seq := gather for lines() {next unless /eq/; take $_};
    my @seq := lazy gather for lines() {next unless /eq/; take $_};
    $seq;
}

sub check_if_lazy_list() {
    my $bufferfly-genus = <Hamadryas Sostrata Junonia>;
    $bufferfly-genus = (1 ... *);
    put do if $bufferfly-genus.is-lazy {'Lazy list!'}
    else {
        my $end = $bufferfly-genus.end;
        $bufferfly-genus[$end];
    }
}

sub list_access() {
    my $bufferfly-genus = <Hamadryas Sostrate Junonia>;
    my $first-butterfly = $bufferfly-genus[0];
    my $first-butterfly2 = $bufferfly-genus.[0];
    my $last-butterfly = $bufferfly-genus[$bufferfly-genus.end];
    my $last-butterfly2 = $bufferfly-genus[*-1];
    $last-butterfly2;
}

sub extract_array_values() {
    my ($first, $last) = <Hamadryas Sostrate Junonia>[0,*-1];
    put "First: $first Last: $last";
}

sub creating_arrays() {
    Array.new: 'Hamadryas', 'Sostrata', 'Junonia';
    my @butterfly-genus := ($, $, $,); # binding
    @butterfly-genus = <Butterfly1 Butterfly2 Butterfly3>;
    @butterfly-genus.join: '|';
}

sub array_interpolation() {
    my $butterflies = <Hamadryas Sostrata Junonia>;
    put "The first butterfly is $butterflies[0]";
    put "The last butterfly is $butterflies[*-1]";
    put "All the butterfles are $butterflies[]";
}

sub create_butterflies() {
    <Hamadryas Sostrata Junonia>;
}

sub array_operations() {
    my @butterfly-genus = create_butterflies();
    my $first-item = @butterfly-genus.shift;
    say @butterfly-genus;
    say $first-item;

    @butterfly-genus = create_butterflies();
    $first-item = @butterfly-genus.pop;
    say @butterfly-genus;
    say $first-item;

    @butterfly-genus = create_butterflies();
    @butterfly-genus.unshift: <Butterfly4 Butterfly5>;
    @butterfly-genus.push: <Test>;
    say @butterfly-genus;

    @butterfly-genus = 1 .. 10;
    my @removed = @butterfly-genus.splice: 3,4;
    say @removed;
    say @butterfly-genus;

    @butterfly-genus = create_butterflies();
    $first-item = shift @butterfly-genus;
    my $last-item = pop @butterfly-genus;
    say $first-item;
    say $last-item;
}

sub list_methods() {
    my $list = (1 .. 3);
    say $list.permutations;
    $list = (1,2,('a', 'b'));
    put $list.elems;
    my $flat_list = $list.flat;
    say $flat_list;
    my @butterflies = create_butterflies();
    @butterflies.push: <Item1 Item2 Item3>;
    my @numbers = (1..10);
    my $sublist = @numbers.rotor: 2;
    $sublist
}

sub useful_list_rotor() {
    my $list = 1 .. 10;
    for $list.rotor: 3 {
        .say
    }

    put "###################";

    for $list.rotor: 3, :partial {
        .say
    }
}

sub zip_things_up() {
    say <1 2 3> Z <a b c>;
    say zip(<1 2 3>, <a b>);
    say @(1..10) Z @('a'..'j');
}

sub cross_operator() {
    my @letters = <A B C>;
    my @digits = 1,2,3;
    my @crossed = @letters X @digits;
    say @crossed;
}

sub hyperoperators_in_use() {
    my @right = 1, 2, 3;
    my @left = 5,9,4;
    say @left <<+>> @right;

    @right = 1, 2, 3;
    @left = 5,9,4;
    say @left <<~>> @right;

    my @long = 3,5,8;
    my @short = 11,13;
    say @short >>+>>@long
}

sub longest {
    $^a.chars > $^b.chars ?? $^a !! $^b;
}

sub reduction_operator() {
    my $sum = [+] 1..10;
    my $factorial = [*] 1..10;
    my $max = 23 max 10;
    my @nums = @(1..100);
    $max = [max] @nums;
    my @butterflies = create_butterflies();
    my $longest = [[&longest]] @butterflies;
    my $first = "Butterfly1";
    my $second = "Butterfly2";
    say $first [&longest] $second;
}

sub filtering_list() {
    my $evens = (0..10).grep: * %% 2;
    $evens = (0..10).grep: {$_ %% 2};
    my @comp_list = ("Butterfly1", 10, 20, "Yohoo");
    my $strings = @comp_list.grep: Str;
    my $ints = @comp_list.grep: Int;
    say "Strings: $strings";
    say "Ints:  $ints";
    my $just-str = @comp_list.grep: {! .does(Numeric)};
    say "None numeric: $just-str";
    my $int-strs = @comp_list.grep: IntStr, :v;
    say "Int-Strs: $int-strs";
}

sub transforming_lists() {
    my $squares = (1..5).map: {$_ ** 2};
    $squares = (1..5).map: * ** 2; # shorter
    say "Squares: $squares";
    my $even_squares = map {$_ ** 2}, @(1..5);
    my @butterflies = create_butterflies();
    my @lowered_butterflies = @butterflies.map: *.lc;
    say @lowered_butterflies;
    $even_squares = (0..9).map: {$_ %% 2 ?? $_**2 !! |() };
    say $even_squares;
    my @comp_list = (1,2,3,"Butterfly1");
    $squares = @comp_list
        .grep({! .does(Int)})
        .map({$_ %% 2 ?? $_**2 !! |()});
    say "Squares: $squares";
}

sub sorting_lists() {
    # p.110
}



sub MAIN() {
    say transforming_lists();
}
