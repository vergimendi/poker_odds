DECK = ['AH';'2H';'3H';'4H';'5H';'6H';'7H',;'8H';'9H';'TH';'JH';'QH';'KH'; ...
    'AS';'2S';'3S';'4S';'5S';'6S';'7S';'8S';'9S';'TS';'JS';'QS';'KS'; ...
    'AD';'2D';'3D';'4D';'5D';'6D';'7D';'8D';'9D';'TD';'JD';'QD';'KD'; ...
    'AC';'2C';'3C';'4C';'5C';'6C';'7C';'8C';'9C';'TC';'JC';'QC';'KC'];
repeat = 50000;

%Four of a Kind
n1 = 0; 
n2 = 0; 
n3 = 0; 
n4 = 0; 
n5 = 0;
for i=1:repeat
    index = randperm(52);
    shuffle = DECK(index); 
    s = shuffle(1:5);
    hand = sort(s);
    if hand(1) == hand(4) || hand(2) == hand(5)
        %disp(hand)
        n1 = n1 + 1;
    end
    if (hand(1) == hand(3) && (hand(4) == hand(5))) || (hand(3) == hand(5) && hand(1) == hand(2)) 
        %disp(hand)
        n2= n2 + 1;
    end
    if (hand(1) == hand(3) && hand(3) ~= hand(4) && hand(4) ~= hand(5)) || (hand(3) == hand(5) && hand(3) ~= hand(2) && hand(1) ~= hand(2)) || (hand(2) == hand(4) && hand(1) ~= hand(2) && hand(4) ~= hand(5)) 
        %disp(hand)
        n3 = n3 + 1;
    end
    if (hand(1) == hand(2) && hand(3) == hand(4) && hand(1) ~= hand(5) && hand(3) ~= hand(5)) || (hand(2) == hand(3) && hand(4) == hand(5) && hand(4) ~= hand(1) && hand(2) ~= hand(1)) || (hand(1) == hand(2) && hand(4) == hand(5) && hand(1) ~= hand(3) && hand(5) ~= hand(3))
        %disp(hand)
        n4 = n4 + 1;
    end
    if (hand(1) == hand(2) && hand(2) ~= hand(3) && hand(2) ~= hand(4) && hand(2) ~= hand(5) && hand(3) ~= hand(4) && hand(4) ~= hand(5)) || (hand(2) == hand(3) && hand(3) ~= hand(1) && hand(3) ~= hand(4) && hand(3) ~= hand(5) && hand(4) ~= hand(5)) || (hand(3) == hand(4) && hand(4) ~= hand(1) && hand(4) ~= hand(2) && hand(1) ~= hand(2) && hand(4) ~= hand(5)) || (hand(4) == hand(5) && hand(5) ~= hand(1) && hand(5) ~= hand(2) && hand(5) ~= hand(3) && hand(3) ~= hand(2) && hand(2) ~= hand(1))
        %disp(hand)
        n5 = n5 + 1;
    end
end
fourOfAKind = n1 / 50000;
disp(newline + "# of Hands that were 4ofAK: " +n1)
disp("Probabiblity of 4ofAK: " + fourOfAKind)

fullHouse = n2 / 50000;
disp(newline + "# of Hands that were FH: " + n2)
disp("Probabiblity of FH: " + fullHouse)

threeOfAKind = n3 / 50000;
disp(newline + "# of Hands that were 3ofAK: " + n3)
disp("Probabiblity of 3ofAK: " + threeOfAKind)

twoPair = n4 / 50000;
disp(newline + "# of Hands that were 2 Pair: " + n4)
disp("Probabiblity of 2 Pair: " + twoPair)

onePair = n5 / 50000;
disp(newline + "# of Hands that were 1 Pair: " + n5)
disp("Probabiblity of 1 Pair: " + onePair)
