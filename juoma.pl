#!/usr/bin/perl

# list players here
@players = ("Juha", "Pekka", "Timo", "Liisa", "Maija");

# list drinks here
@drinks = ("Beer", "Koskenkorva", "Whiskey", "Milk");

my $winnerStr = "";
my $winner = 0;

foreach $player(@players) {
    my $roll = int(rand(100));
    my $string = $player  . " rolls " . $roll . " for drink " . @drinks[int(rand(@drinks))];

    print $string . "\n";

    if($roll > $winner) {
        $winner = $roll;
        $winnerStr = $string;
    }
}

print "WINNER: " . $winnerStr . "\n";