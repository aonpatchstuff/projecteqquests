# items: 14789, 14788, 14790, 14783, 3053, 4976, 14786, 3060, 4979, 3056, 4977
sub EVENT_SAY {
  if ($text=~/hail/i) {
    quest::emote("sighs heavily and after a long while speaks.");
	quest::say("Leave us, Iksar. Leave us to our eternal [damnation].");
    }
  if ($text=~/damnation/i) {
    quest::emote("twists his face into a frown.");
	quest::say("You read what's written, Iksar. It's clear enough so we won't bother to explain the details. We can only stand our guard and hope for [redemption].");
    }
  if ($text=~/redemption/i) {
    quest::emote("grits his teeth and snaps!");
	quest::say("It's very simple, $name! We are fallen! We seek redemption! We guard our 'brothers' here among the Howling Stones until we are relieved. Whether that will ever happen, we do not know. We can only hope that by providing the great warriors of the legion with our [ancient armor], we will earn salvation.");
    }
  if ($text=~/anicent armor/i) {
	quest::say("You wish the armor of our ancestors? The armor donned by the Guard whose duty was to protect the Chosen? A warrior relies not on strength alone, but many virtues. If a warrior learns to balance each virtue, then he may be fit to guard the Chosen. Each piece of armor reflects a [virtue], and each virtue must be learned before the armor is given.");
    }
  if ($text=~/virtue/i) {
    quest::say("The armor I keep are the symbols of focus, sacrifice, and perseverence. The [helm], [pauldrons], [vambraces], and [breastplate]. You must bring me proof that you know these virtues before attaining the armor I keep. I also will need a piece of Banded armor of the type you desire. My brother keeps the other pieces.");
  }
  if ($text=~/breastplate/i) {
    quest::say("The monk is the master of focus, the shaman of sacrifice and the shadowknight of righteousness. Lastly, our brothers of the dark know confidence. It is then our duty to know perseverance more than any other. When others fall from spear and sword, we must stand. When others are washed away by fire and ice, we must stand. When others are frustrated and confused, we must continue on. There is a warrior in the swamp near the city. He is an exile, like my brother and I. He knows more about than I.");
    quest::summonitem(14789); # Item: Illegible Note: Breastplate
     }
if ($text=~/helm/i) {
  quest::say("You must first learn focus before being awarded the legionnaire scale helm. The Swifttails are the masters of focus and as such you will learn from the Grand Master of the Court. It has been so long, I do not know who is Grand Master now. Whoever it is, give him this note and follow his instruction. Once you have learned, return to us and the helm will be yours.");
  quest::summonitem(14788); # Item: Illegible Note: Helm
}
if ($text=~/vambraces/i) {
  quest::say("Our arms carry more than the weapons of war and the hands that make use of them. We sacrifice the strength in our arms to carry our duties and obligations. Unless we can sacrifice our own bodies and abilities to carry these ideals, we will never be fit to protect the Chosen. Take this note to the master of the mystics in Cabilis, he will teach you a lesson in sacrifice.");
  quest::summonitem(14790); # Item: Illegible Note: Vambraces
 }
 
 if ($text=~/pauldrons/i) {
  quest::say("Upon our shoulders we carry the virtue of sacrifice. Our bodies are ruined in the name of our Lord. Pain and suffering please him and our ancestors. Without knowing sacrifice, a warrior can never protect his charge from harm as he sees himself as greater than his duty. The mystics embody sacrifice. Find their highest authority and give him this note. He will recognize it.");
  quest::summonitem(14795); # Item: Illegible Note: Pauldrons
 }
 
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 14783 =>1, 3053 =>1  )) {
    quest::say("Well done");
    quest::summonitem(4976); # Item: Trooper Scale Helm
    quest::ding();
    quest::exp(10000);
  }
  if (plugin::check_handin(\%itemcount, 14786 =>1, 3060 =>1 )) {
    quest::say("Well done");
    quest::summonitem(4979); # Item: Trooper Scale Vambraces
    quest::ding();
    quest::exp(10000);
  }
  if (plugin::check_handin(\%itemcount, 14816 =>1, 3056 =>1 )) {
    quest::say("Well done");
    quest::summonitem(4977); # Item: Trooper Scale Breastplate
    quest::ding();
    quest::exp(10000);
  }
  if (plugin::check_handin(\%itemcount, 14787 =>1, 3057 =>1 )) {
    quest::say("Well done");
    quest::summonitem(4978); # Item: Trooper Scale Pauldrons
    quest::ding();
    quest::exp(10000);
  }
  plugin::return_items(\%itemcount);
}