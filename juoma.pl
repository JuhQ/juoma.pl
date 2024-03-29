# This is a simple drinking game. Juoma means "a drink" in Finnish.
# Rules are simple:
# - List players
# - List available drinks
# - The person with the highest number has to drink the drink provided by the game, player can decide portion size
# - If you puke or pass out, you lose
# - If a drink runs out, it must be removed from the drink list
# - Last one who's not thrown up or passed out, IS THE WINNER!
# - Do not die
# - Have fun
# 
#  Juha Tauriainen @juha_tauriainen juha@bin.fi
 

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