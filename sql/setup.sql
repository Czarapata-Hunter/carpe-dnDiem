
-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`
DROP TABLE IF EXISTS artificer;
DROP TABLE IF EXISTS barbarian;
DROP TABLE IF EXISTS bard;
DROP TABLE IF EXISTS bloodhunter; 
DROP TABLE IF EXISTS cleric;
DROP TABLE IF EXISTS druid;
DROP TABLE IF EXISTS fighter;
DROP TABLE IF EXISTS monk; 
DROP TABLE IF EXISTS paladin; 
DROP TABLE IF EXISTS ranger;
DROP TABLE IF EXISTS rogue; 
DROP TABLE IF EXISTS sorcerer;
DROP TABLE IF EXISTS warlock;  
DROP TABLE IF EXISTS wizard; 

CREATE TABLE artificer(
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  descriptor VARCHAR NOT NULL,
  result VARCHAR NOT NULL
);

CREATE TABLE barbarian (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  descriptor VARCHAR NOT NULL,
  result VARCHAR NOT NULL
  );

  CREATE TABLE bard (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  descriptor VARCHAR NOT NULL,
  result VARCHAR NOT NULL
  );

CREATE TABLE bloodhunter (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  descriptor VARCHAR NOT NULL,
  result VARCHAR NOT NULL
  );

CREATE TABLE cleric (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  descriptor VARCHAR NOT NULL,
  result VARCHAR NOT NULL
);

CREATE TABLE druid (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  descriptor VARCHAR NOT NULL,
  result VARCHAR NOT NULL
);

CREATE TABLE fighter (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  descriptor VARCHAR NOT NULL,
  result VARCHAR NOT NULL
);

CREATE TABLE monk (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  descriptor VARCHAR NOT NULL,
  result VARCHAR NOT NULL
  );

CREATE TABLE paladin (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  descriptor VARCHAR NOT NULL,
  result VARCHAR NOT NULL
);

CREATE TABLE ranger (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  descriptor VARCHAR NOT NULL,
  result VARCHAR NOT NULL
);

CREATE TABLE rogue (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  descriptor VARCHAR NOT NULL,
  result VARCHAR NOT NULL
  );

CREATE TABLE sorcerer (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  descriptor VARCHAR NOT NULL,
  result VARCHAR NOT NULL
);
CREATE TABLE warlock (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  descriptor VARCHAR NOT NULL,
  result VARCHAR NOT NULL
);
CREATE TABLE wizard(
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  descriptor VARCHAR NOT NULL,
  result VARCHAR NOT NULL
);

INSERT INTO artificer (die_value, descriptor, result) VALUES
(1, 'terrible', 'That machine youve been working on is about to blow! Run for cover!'),
(1, 'terrible', 'You have dropped your favorite hammer and the handle broke'),
(1, 'terrible', 'Magic fizzles from your work bench and your item turns grey and lifeless forever useless'),
(2, 'mediocre', 'You stub your toe and drop your artifact on the ground damaging it'), 
(2, 'mediocre', 'Fire emanates from the sword you are working on singeing your fingers'),
(2, 'mediocre', 'You lose concentration on your last step and the spell fizzles'),
(3, 'great', 'The customer whose order you are working on cancels mid production'),
(3, 'great', 'The grenade spits out laughing gas instead of spikes'),
(3, 'great', 'You keep losing your glasses on top of your head for hours at a time'),
(4, 'superb', 'Under pressure you craft a series of intricate runes into a flintlock pistol'),
(4, 'superb', 'You over bluff about your abilities but your foe buys it'),
(4,'superb', 'The natives see your craftwork and mistake you for a god plus 5 gold'),
(5, 'exemplary', 'You have made a blade so fine if you were to encounter a god it would be struck down'),
(5, 'exemplary', 'Word has spread through the realm of your masterwork and youve been invited to the artificers guild'),
(5, 'exemplary', 'You have crafted an armor so exquisite that no blade axe or spell can scratch it');

INSERT INTO barbarian (die_value, descriptor, result) VALUES
(1, 'terrible', 'In the midst of your rage you shrivel up and start to cry'),
(1, 'terrible', 'They said you were too mad to die and yet'),
(2, 'mediocre', 'While charging fearlessly you become timid and deal a low blow of damage'),
(2, 'mediocre', 'Be thankful for your natural damage resistance today'),
(2, 'mediocre', 'STOP CLEAVE'),
(3, 'great', 'During your attack you notice a butterfly and decide to stare at it for a while'),
(3, 'great', 'Not everything needs to die'),
(3, 'great', 'Take some deep breaths before you try anything crazy'),
(4, 'superb', 'Your strength was enough to not get pushed over'),
(4, 'superb', 'You start hittin and you aint quittin'),
(4, 'superb', 'CLEAVE'),
(5, 'exemplary', 'Your blow dealt massive damage and everyone loves you'),
(5, 'exemplary', 'Your weapon is only a feathers weight on this day'),
(5, 'exemplary', 'Your enemies should make themselves unfindable if they wish to see tomorrow');

INSERT INTO bard (die_value, descriptor, result) VALUES
(1, 'terrible', 'Bonk go to horny bard jail'),
(1, 'terrible', 'You are unaware of the customs surrounding bagpipes in this area'),
(1, 'terrible', 'Not only has this dragon rejected your advances they told all the other dragons about you too'),
(2, 'mediocre', 'A string breaks mid performance, spend some time making repairs'),
(2, 'mediocre', 'You cast vicious mockery but instead insult yourself'),
(2, 'mediocre', 'Misstep during dance and twist an ankle'),
(3, 'great', 'No amount of booze will get them to talk to you'),
(3, 'great', 'Deaf and blind mark'),
(3, 'great', 'Music is a foreign concept to these beings'),
(4, 'superb', 'The song and dance number inspires hope in the town mayor'),
(4, 'superb', 'Ladies swoon over in your presence, men grow in courage'),
(4, 'superb', 'You hit the highest, most perfect note during the song'),
(5, 'exemplary', 'Youve invented a new dance and the entire village is on board'),
(5, 'exemplary', 'Please marry my daughter the dragon pleads'),
(5, 'exemplary', 'The crowd is enthralled and throw a festival in your honor');

INSERT INTO bloodhunter (die_value, descriptor, result) VALUES
(1, 'terrible', 'In your attempt to Crimson Rite your weapon you somehow fail and now just have a cut that stings'),
(1, 'terrible', 'It blows my mind that you even survived your Hunters Bane'),
(1, 'terrible', 'I have seen baby penguins who could pick up a blood scent better than you'),
(2, 'mediocre', 'You picked up the blood scent but for the wrong creature'),
(2, 'mediocre', 'You have advantage on survival checks and you still manage to fail'),
(2, 'mediocre', 'Maybe you chose the wrong fighting style because that was just sad'),
(3, 'great', 'The bolt from your crossbow strikes true'),
(3, 'great', 'You still hit and do damage but we all know you could do better than that'),
(3, 'great', 'Your Hardened Soul prevents you from being frightened'),
(4, 'superb', 'You do excellent damage with your extra attack'),
(4, 'superb', 'Your Blood Curse of Binding roots the large creature'),
(4, 'superb', 'Your target shrieks as your Blood Curse of Corrosion takes effect'),
(5, 'exemplary', 'Your target can run but it can never hide from your amazing scent abilities'),
(5, 'exemplary', 'There is a reason you are known as The Monster to Hunt Monsters'),
(5, 'exemplary', 'The life of a Blood Hunter is not supposed to be easy but you sure prove them wrong');

INSERT INTO cleric (die_value, descriptor, result) VALUES
(1, 'terrible', 'Your god hears you they just do not care'),
(1, 'terrible', 'Holy Symbol disintegrates in your hand'),
(1, 'terrible', 'After 20 minutes of concentration, your focus breaks and you lose the blessing of your god'),
(2, 'mediocre', 'You are not bad you are just bad at it'), 
(2, 'mediocre', 'Should have prayed harder'),
(2, 'mediocre', 'Prayed to the wrong deity'),
(3, 'great', 'Your healing spell goes off without a hitch but it isnt very effective'),
(3, 'great', 'Out of spell slots. rest up and try again'),
(3, 'great', 'Missed attack wtih mace'),
(4, 'superb', 'Sing a hymn so beautiful your god cries'),
(4, 'superb', 'Theyre going to need a stronger attack to get through your AC'),
(4, 'superb', 'Your secret order grants you one treasure'),
(5, 'exemplary', 'Your secret order grants your party each one treasure'),
(5, 'exemplary', 'You cast cure mod but the effects match cure serious instead'),
(5, 'exemplary', 'With your god guiding you your foes are laid to waste at your feet');

INSERT INTO druid (die_value, descriptor, result) VALUES
(1, 'terrible', 'Unfortunately you are tired today as a result your conjured animals being felines'),
(1, 'terrible', 'The spirits are silent to you as you enter a cold stone tomb'),
(1, 'terrible', 'Which magic fruit makes you forget again?'),
(2, 'mediocre', 'Your vines dont quite reach the target'), 
(2, 'mediocre', 'Automotons. why did it have to be automotons?!'),
(2, 'mediocre', 'Belittled by the archdruid. Sad'),
(3, 'great', 'Not enough hit points'),
(3, 'great', 'Gotta recharge in the sun like a lizard spirit'),
(3, 'great', 'Using that timeless body to full effect. See you in a decade'),
(4, 'superb', 'Twilight! Stars! Bring out the Primeval!'),
(4, 'superb', 'Your Druid Circle is all about lightning and they just invented a new type of energy'),
(4, 'superb', 'You can spend the whole day hanging out with all of your animal friends'),
(5, 'exemplary', 'Luckily you can control the weather because today is going to be a good day'),
(5, 'exemplary', 'Throw a party and invite all of your conjured animals because your day is going to rock'),
(5, 'exemplary', 'Your connection to nature is strong today and will yield amazing results with Plant Growth');

INSERT INTO fighter (die_value, descriptor, result) VALUES
(1, 'terrible', 'You suddenly find yourself not so proficient with your weapons'),
(1, 'terrible', 'Probably take it easy today after just dropping all of your weapons on the ground'),
(1, 'terrible', 'Seems like today just decided to pick a fight with you'),
(2, 'mediocre', 'While lunging towards your target you get disoriented and knocked prone'), 
(2, 'mediocre', 'Your fighting spirit was dampened'),
(2, 'mediocre', 'Shield breaks and you are disarmed '),
(3, 'great', 'You and your opponent both decide to walk away'),
(3, 'great', 'Surge action into a snare'),
(3, 'great', 'HWAGGHHHH!'),
(4, 'superb', 'Overpowered your enemy, swept the leg, and now they are prone'),
(4, 'superb', 'Slash slash! Block! Parry! SLASH SLASH!'),
(4, 'superb', 'For my father, the king!'),
(5, 'exemplary', 'Hop step.... Decapitation! '),
(5, 'exemplary', 'Strike hard. Strike true'),
(5, 'exemplary', 'Picked a fight with the wrong champ today');

INSERT INTO monk (die_value, descriptor, result) VALUES
(1, 'terrible', 'You completely miss your Unarmed strike and manage to punch yourself square in the nose  '),
(1, 'terrible', 'You are the blind monk....minus the monk part'),
(1, 'terrible', 'In a show of intimidation, you fail to break the board and instead break your hand'),
(2, 'mediocre', 'No Punch'), 
(2, 'mediocre', 'Throw a kick every once in a while '),
(2, 'mediocre', 'You crack your knuckles and actually break something in them '),
(3, 'great', 'Punch'),
(3, 'great', 'Peace is tranquility'),
(3, 'great', 'You can take em, youre just practicing zen instead'),
(4, 'superb', 'Punch Punch'),
(4, 'superb', 'Ill rip your ears off, and kiss my boot with them. Ill rip your tongue out, and eat with it'),
(4, 'superb', 'They will write legends of that strike'),
(5, 'exemplary', 'Punch Punch Punch Critical Punch!'),
(5, 'exemplary', 'Rasengan!'),
(5, 'exemplary', '5 point palm exploding heart technique');

INSERT INTO paladin (die_value, descriptor, result) VALUES
(1, 'terrible', 'You ramble on being super preachy. Nobody is impressed'),
(1, 'terrible', 'I have no idea what you did but your God is not at all pleased with you today'),
(1, 'terrible', 'Duty calls. not a holy one'),
(1, 'terrible', 'Your order has banished you'),
(2, 'mediocre', 'Your devotion was not strong enough this day'), 
(2, 'mediocre', 'You cant smite an enemy you cant see'),
(2, 'mediocre', 'Youve been outclassed by the warlock and the wizard'),
(3, 'great', 'Tea time!'),
(3, 'great', 'So i said to go to church every 7th day and she ghosted me!'),
(3, 'great', 'That town guard is awfully suspicious of me. better investigate that instead'),
(4, 'superb', 'By the power of the divine!'),
(4, 'superb', 'My sword is named virtue and it burns eternal!'),
(4, 'superb', 'Blade with whom I have lived, blade with whom now I die. Serve right and justice one last time. Seek one last heart of evil, still one last life of pain. Cut well old friend, and then farewell.'),
(5, 'exemplary', 'I am chosen by the gods to fight, I raise my shield to protect. I swing my blade to execute'),
(5, 'exemplary', 'I invoke my Sacred Oath'),
(5, 'exemplary', 'Your smite strikes true and sends the creature straight back to hell');

INSERT INTO rogue (die_value, descriptor, result) VALUES
(1, 'terrible', 'Not only do you miss you also drop your dagger'),
(1, 'terrible', 'You do the exact opposite of moving silently'),
(1, 'terrible', 'You drop both your daggers on what you thought was going to be a terrifying strike'),
(2, 'mediocre', 'Your attack was not quite quick enough to strike true'),
(2, 'mediocre', 'Your strike glances off your target because you forgot to sharpen those knives'),
(2, 'mediocre', 'The Goblin giggles as your toothpick of a weapon barely draws a single drop of blood'), 
(3, 'great', 'It may not have been a sneak attack but it was definitely an attack'),
(3, 'great', 'Your target watches you on your entire approach but you still manage to strike true'),
(3, 'great', 'Not a very strong attack by any means but your target still did not enjoy that'),
(4, 'great', 'Your sneak was questionable at best but you still did great damage'),
(4, 'great', 'If your sneak was not so great people might actually be able to see that dashing gear'),
(4, 'great', 'It was not enough to kill your target but you can bet they are crawling away from this fight'),
(5, 'exemplary', 'They did not see you coming and now they will never see you leave'),
(5, 'exemplary', 'You melt into the shadows and drop your enemies before the first even hits the ground'),
(5, 'exemplary', 'You deal such devastating damage that you have to question if that was even a boss');

INSERT INTO ranger (die_value, descriptor, result) VALUES
(1, 'terrible', 'As you draw back your bow it completely snaps in half'),
(1, 'terrible', 'It is going to be one of those days where you just spill your entire quiver'),
(1, 'terrible', 'That bear does not want to be your friend.'),
(2, 'mediocre', 'You loose an arrow and miss but luckily not by much'),
(2, 'mediocre', 'You have lost the trail, take a moment to collect yourself'),
(2, 'mediocre', 'You are too focused on what is directly in front of you. Take in your surroundings.'), 
(3, 'great', 'You missed your target but at least you hit his buddy'),
(3, 'great', 'Your arrow strike true'),
(3, 'great', 'Uh oh! Your boots untied.'),
(4, 'great', 'If you believe in yourself, you can do the cool shield slide down the stairs just like Legolas.'),
(4, 'great', 'That bear would probably be friends with you.'),
(4, 'great', 'The scent is strong, you are nearing your goal'),
(5, 'exemplary', 'Your arrow passes clean through your target and impales his friend behind him'),
(5, 'exemplary', 'Your legendary Ranger status is so great even Robin Hood would bow to you in the streets'),
(5, 'exemplary', 'You are superb enough to shoot more than one arrow at a time');

INSERT INTO sorcerer (die_value, descriptor, result) VALUES
(1, 'terrible', 'The ancestors are displeased. No magic for you!'),
(1, 'terrible', 'You rolled a 7 on the wild magic surge table'),
(1, 'terrible', 'You forgot that you are squishy, didnt you?'),
(1, 'terrible', 'That robe really makes you look like a wizard.'),
(2, 'mediocre', 'Remember: You are squishy.'), 
(2, 'mediocre', 'Conserve spell slots today, there may be a challenge on the horizon.'),
(2, 'mediocre', 'You probably should just stick to cantrips and Magic Missile today.'),
(3, 'great', 'Supreme power but lack of ambition hinders you'),
(3, 'great', 'Forced into melee combat. Good luck'),
(3, 'great', 'Nobody ever checks the components portion of the spell. Especially you'),
(4, 'superb', 'Lightning Bolt!'),
(4, 'superb', 'Eldritch blast!'),
(4, 'superb', 'POCKET SAND!'),
(5, 'exemplary', 'Mass polymorph the town into squirrels and ride them into battle!'),
(5, 'exemplary', 'No one dare challenge the Sorcerer Supreme'),
(5, 'exemplary', 'Darkness eminates from your fingers and with a spoken word your enemy lies dead before you');

INSERT INTO warlock (die_value, descriptor, result) VALUES
(1, 'terrible', 'Genie doesnt feel like it today. DENIED'),
(1, 'terrible', 'Deity requires a sacrifice of flesh.....yours'),
(1, 'terrible', 'Theres not enough cantrips in the world to save you right now'),
(2, 'mediocre', 'Eldritch blast....more like limp doodle blast'), 
(2, 'mediocre', 'You cast thunderclap while standing on water. Whoops?'),
(2, 'mediocre', 'You attempt a weird spell on a mirror and it hits you instead. AHH SPIDERS!'),
(3, 'great', 'Too wrapped up in borrowed knowledge '),
(3, 'great', 'Your find vehicle spell is a tortoise. Magical? Yes. Quick? no'),
(3, 'great', 'I wonder how many minor illusions i can cast at one time....'),
(4, 'superb', 'Deity is in your favor today. +4 to attack'),
(4, 'superb', 'Casting Hallucinatory Terrain forces the enemy off a cliff'),
(4, 'superb', 'Those necro-skeletons are extra chatty but boy do they decimate a battlefield'),
(5, 'exemplary', 'Throwing the green flame blade, you cast it into the enemy, obliterating their will to live before the sword shortly returns to you'),
(5, 'exemplary', 'You have fulfilled your contract to your deity and he leaves most of its power with you'),
(5, 'exemplary', 'You are now the proud owner of this plane. None may challenge your rule');


INSERT INTO wizard (die_value, descriptor, result) VALUES
(1, 'terrible', 'Out of Spell Slots. Take a nap.'),
(1, 'terrible', 'You spilled coffee on your spellbook. Leave it somewhere safe to dry.'),
(1, 'terrible', 'Whoops! Accidentally summoned a fiend from the abyss :('),
(2, 'mediocre', 'Your familiar ran away, spend some time summoning them.'), 
(2, 'mediocre', 'You wore your business robes to a casual gathering.'),
(2, 'mediocre', 'Caught the Inn on fire... again. You are going to have to find a new place to sleep.'),
(3, 'great', 'WAIT! Do not forget your spellbook.'),
(3, 'great', 'There is a stain on your robe, but do not worry it is barely noticeable'),
(3, 'great', 'Your archrival is in town. Be Wary.'),
(4, 'superb', 'The Robe is on fleek today.'),
(4, 'superb', 'You finally remembered that spell! Put it to good use!'),
(4,'superb', 'You did not go to college for nothing. Show them what you are made of.'),
(4,'superb', 'YOU SHALL NOT PASS'),
(5, 'exemplary', 'Flameo, my good hotman. It is a good day for Fireball.'),
(5, 'exemplary', 'You are not just an old geezer. You are a magic geezer!'),
(5, 'exemplary', 'Double your productivity. Haste and Time Stop will really make you stand out.');













