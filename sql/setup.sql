
-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`
DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS artificer;
DROP TABLE IF EXISTS barbarian;
DROP TABLE IF EXISTS blood_hunter; 
DROP TABLE IF EXISTS cleric;
DROP TABLE IF EXISTS druid;
DROP TABLE IF EXISTS monk; 
DROP TABLE IF EXISTS paladin; 
DROP TABLE IF EXISTS ranger; 
DROP TABLE IF EXISTS sorcerer;
DROP TABLE IF EXISTS warlock; 
DROP TABLE IF EXISTS fighter; 
DROP TABLE IF EXISTS wizard; 
DROP TABLE IF EXISTS bard; 
DROP TABLE IF EXISTS rogue; 
DROP TABLE IF EXISTS warrior; 



CREATE TABLE users (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  email VARCHAR,
  password_hash VARCHAR NOT NULL,
  first_name VARCHAR NOT NULL,
  last_name VARCHAR NOT NULL
);

CREATE TABLE warrior (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  result VARCHAR NOT NULL
);

CREATE TABLE rogue (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  result VARCHAR NOT NULL
);

CREATE TABLE bard (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  result VARCHAR NOT NULL
);
CREATE TABLE artificer(
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  result VARCHAR NOT NULL
);
CREATE TABLE barbarian (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  result VARCHAR NOT NULL
  );
CREATE TABLE blood_hunter (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  result VARCHAR NOT NULL
  );
CREATE TABLE cleric (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  result VARCHAR NOT NULL
);
CREATE TABLE druid (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  result VARCHAR NOT NULL
);
CREATE TABLE monk (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  result VARCHAR NOT NULL
  );
CREATE TABLE paladin (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  result VARCHAR NOT NULL
);
CREATE TABLE ranger (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  result VARCHAR NOT NULL
);
CREATE TABLE sorcerer (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  result VARCHAR NOT NULL
);
CREATE TABLE warlock (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  result VARCHAR NOT NULL
);
CREATE TABLE fighter (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  result VARCHAR NOT NULL
);
CREATE TABLE wizard(
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  die_value INTEGER NOT NULL,
  result VARCHAR NOT NULL
);

INSERT INTO barbarian (die_value, result) VALUES
(1, 'In the midst of your rage you shrivel up and start to cry'),
(1, 'They said you were too mad to die and yet'),
(2, 'while charging fearlessly you become timid and deal a low blow of damage'),
(2, 'Be thankful for your natural damage resistance today'),
(2, 'STOP CLEAVE'),
(3, 'During your attack you notice a butterfly and decide to stare at it for a while'),
(3, 'Not everything needs to die'),
(3, 'Take some deep breaths before you try anything crazy'),
(4, 'your strength was enough to not get pushed over'),
(4, 'You start hittin and you aint quittin'),
(4, 'CLEAVE'),
(5, 'Your blow dealt massive damage and everyone loves you'),
(5, 'Your weapon is only a feathers weight on this day'),
(5, 'Your enemies should make themselves unfindable if they wish to see tomorrow');

INSERT INTO bard (die_value, result) VALUES
(1, 'bonk go to horny bard jail'),
(1, 'you are unaware of the customs surrounding bagpipes in this area'),
(1, 'not only has this dragon rejected your advances they told all the other dragons about you too'),
(2, 'A string breaks mid performance, spend some time making repairs'),
(2, 'you cast vicious mockery but instead insult yourself'),
(2, 'misstep during dance and twist an ankle'),
(3, 'no amount of booze will get them to talk to you'),
(3, 'deaf and blind mark'),
(3, 'music is a foreign concept to these beings'),
(4, 'the song and dance number inspires hope in the town mayor'),
(4, 'ladies swoon over in your presence, men grow in courage'),
(4, 'you hit the highest, most perfect note during the song'),
(5, 'youve invented a new dance and the entire village is on board'),
(5, 'please marry my daughter the dragon pleads'),
(5, 'the crowd is enthralled and throw a festival in your honor');

INSERT INTO blood_hunter (die_value, result) VALUES
(1, 'lorem ipsum'),
(1, 'lorem ipsum'),
(1, 'lorem ipsum'),
(2, 'lorem ipsum'),
(2, 'lorem ipsum'),
(2, 'lorem ipsum'),
(3, 'lorem ipsum'),
(3, 'lorem ipsum'),
(3, 'lorem ipsum'),
(4, 'lorem ipsum'),
(4, 'lorem ipsum'),
(4, 'lorem ipsum'),
(5, 'lorem ipsum'),
(5, 'lorem ipsum'),
(5, 'lorem ipsum');


INSERT INTO cleric (die_value, result) VALUES
(1, 'Your god hears you they just do not care'),
(1, 'Holy Symbol disintegrates in your hand'),
(1, 'After 20 minutes of concentration, your focus breaks and you lose the blessing of your god'),
(2, 'You are not bad you are just bad at it'), 
(2, 'Should have prayed harder'),
(2, 'Prayed to the wrong deity'),
(3, 'Your healing spell goes off without a hitch but it isnt very effective'),
(3, 'out of spell slots. rest up and try again'),
(3, 'missed attack wtih mace'),
(4, 'Sing a hymn so beautiful your god cries'),
(4, 'theyre going to need a stronger attack to get through your AC'),
(4, 'your secret order grants you one treasure'),
(5, 'your secret order grants your party each one treasure'),
(5, 'You cast cure mod but the effects match cure serious instead'),
(5, 'With your god guiding you your foes are laid to waste at your feet');


INSERT INTO druid (die_value, result) VALUES
(1, 'Unfortunately you are tired today as a result your conjured animals being felines'),
(1, 'the spirits are silent to you as you enter a cold stone tomb'),
(1, 'which magic fruit makes you forget again?'),
(2, 'your vines dont quite reach the target'), 
(2, 'automotons. why did it have to be automotons?!'),
(2, 'belittled by the archdruid. Sad'),
(3, 'not enough hit points'),
(3, 'gotta recharge in the sun like a lizard spirit'),
(3, 'Using that timeless body to full effect. See you in a decade'),
(4, 'Twilight! Stars! Bring out the Primeval!'),
(4, 'Your Druid Circle is all about lightning and they just invented a new type of energy'),
(4, 'You can spend the whole day hanging out with all of your animal friends'),
(5, 'Luckily you can control the weather because today is going to be a good day'),
(5, 'Throw a party and invite all of your conjured animals because your day is going to rock'),
(5, 'Your connection to nature is strong today and will yield amazing results with Plant Growth');

INSERT INTO fighter (die_value, result) VALUES
(1, 'You suddenly find yourself not so proficient with your weapons'),
(1, 'Probably take it easy today after just dropping all of your weapons on the ground'),
(1, 'Seems like today just decided to pick a fight with you'),
(2, 'while lunging towards your target you get disoriented and knocked prone'), 
(2, 'your fighting spirit was dampened'),
(2, 'shield breaks and you are disarmed '),
(3, 'you and your opponent both decide to walk away'),
(3, 'surge action into a snare'),
(3, 'HWAGGHHHH!'),
(4, 'overpowered your enemy, swept the leg, and now they are prone'),
(4, 'Slash slash! Block! Parry! SLASH SLASH!'),
(4, 'For my father, the king!'),
(5, 'Hop step.... Decapitation! '),
(5, 'Strike hard. Strike true'),
(5, 'Picked a fight with the wrong champ today');


INSERT INTO monk (die_value, result) VALUES
(1, 'You completely miss your Unarmed strike and manage to punch yourself square in the nose  '),
(1, 'You are the blind monk....minus the monk part'),
(1, 'In a show of intimidation, you fail to break the board and instead break your hand'),
(2, 'No Punch'), 
(2, 'Throw a kick every once in a while '),
(2, 'you crack your knuckles and actually break something in them '),
(3, 'Punch'),
(3, 'Peace is tranquility'),
(3, 'You can take em, youre just practicing zen instead'),
(4, 'Punch Punch'),
(4, 'Ill rip your ears off, and kiss my boot with them. Ill rip your tongue out, and eat with it'),
(4, 'they will write legends of that strike'),
(5, 'Punch Punch Punch Critical Punch!'),
(5, 'Rasengan!'),
(5, '5 point palm exploding heart technique');



INSERT INTO paladin (die_value, result) VALUES
(1, 'You ramble on being super preachy. Nobody is impressed'),
(1, 'I have no idea what you did but your God is not at all pleased with you today'),
(1, 'duty calls. not a holy one'),
(1, 'your order has banished you'),
(2, 'your devotion was not strong enough this day'), 
(2, 'you cant smite an enemy you cant see'),
(2, 'youve been outclassed by the warlock and the wizard'),
(3, 'tea time!'),
(3, 'so i said to go to church every 7th day and she ghosted me!'),
(3, 'that town guard is awfully suspicious of me. better investigate that instead'),
(4, 'by the power of the divine!'),
(4, 'My sword is named virtue and it burns eternal!'),
(4, 'Blade with whom I have lived, blade with whom now I die. Serve right and justice one last time. Seek one last heart of evil, still one last life of pain. Cut well old friend, and then farewell.'),
(5, 'I am chosen by the gods to fight, I raise my shield to protect. I swing my blade to execute'),
(5, 'I invoke my Sacred Oath'),
(5, 'Your smite strikes true and sends the creature straight back to hell');


INSERT INTO rogue (die_value, result) VALUES
(1, 'Not only do you miss you also drop your dagger'),
(1, 'You do the exact opposite of moving silently  '), 
(2, 'Your attack was not quite quick enough to strike true'), 
(3, 'It may not have been a sneak attack but it was definitely an attack'),
(5, 'They did not see you coming and now they will never see you leave');

INSERT INTO ranger (die_value, result) VALUES
(1, 'LOREM IPSUM'),
(1, 'LOREM IPSUM'),
(1, 'LOREM IPSUM'),
(2, 'LOREM IPSUM'), 
(2, 'LOREM IPSUM'),
(2, 'LOREM IPSUM'),
(3, 'LOREM IPSUM'),
(3, 'LOREM IPSUM'),
(3, 'LOREM IPSUM'),
(4, 'LOREM IPSUM'),
(4, 'LOREM IPSUM'),
(4, 'LOREM IPSUM'),
(5, 'LOREM IPSUM'),
(5, 'LOREM IPSUM'),
(5, 'LOREM IPSUM');




INSERT INTO warlock (die_value, result) VALUES
(1, 'Genie doesnt feel like it today. DENIED'),
(1, 'Deity requires a sacrifice of flesh.....yours'),
(1, 'theres not enough cantrips in the world to save you right now'),
(2, 'eldritch blast....more like limp doodle blast'), 
(2, 'you cast thunderclap while standing on water. Whoops?'),
(2, 'You attempt a weird spell on a mirror and it hits you instead. AHH SPIDERS!'),
(3, 'too wrapped up in borrowed knowledge '),
(3, 'Your find vehicle spell is a tortoise. Magical? Yes. Quick? no'),
(3, 'I wonder how many minor illusions i can cast at one time....'),
(4, 'Deity is in your favor today. +4 to attack'),
(4, 'Casting Hallucinatory Terrain forces the enemy off a cliff'),
(4, 'Those necro-skeletons are extra chatty but boy do they decimate a battlefield'),
(5, 'Throwing the green flame blade, you cast it into the enemy, obliterating their will to live before the sword shortly returns to you'),
(5, ''),
(5, '');


INSERT INTO sorcerer (die_value, result) VALUES
(1, 'the ancestors are displeased. No magic for you!'),
(1, 'LOREM IPSUM'),
(1, 'LOREM IPSUM'),
(2, 'LOREM IPSUM'), 
(2, 'LOREM IPSUM'),
(2, 'LOREM IPSUM'),
(3, 'LOREM IPSUM'),
(3, 'LOREM IPSUM'),
(3, 'LOREM IPSUM'),
(4, 'LOREM IPSUM'),
(4, 'LOREM IPSUM'),
(4, 'LOREM IPSUM'),
(5, 'LOREM IPSUM'),
(5, 'LOREM IPSUM'),
(5, 'LOREM IPSUM');



INSERT INTO wizard (die_value, result) VALUES
(1, 'LOREM IPSUM'),
(1, 'LOREM IPSUM'),
(1, 'LOREM IPSUM'),
(2, 'LOREM IPSUM'), 
(2, 'LOREM IPSUM'),
(2, 'LOREM IPSUM'),
(3, 'LOREM IPSUM'),
(3, 'LOREM IPSUM'),
(3, 'LOREM IPSUM'),
(4, 'LOREM IPSUM'),
(4, 'LOREM IPSUM'),
(4, 'LOREM IPSUM'),
(5, 'LOREM IPSUM'),
(5, 'LOREM IPSUM'),
(5, 'LOREM IPSUM');


INSERT INTO warrior (die_value, result) VALUES
(1, 'LOREM IPSUM'),
(1, 'LOREM IPSUM'),
(1, 'LOREM IPSUM'),
(2, 'LOREM IPSUM'), 
(2, 'LOREM IPSUM'),
(2, 'LOREM IPSUM'),
(3, 'LOREM IPSUM'),
(3, 'LOREM IPSUM'),
(3, 'LOREM IPSUM'),
(4, 'LOREM IPSUM'),
(4, 'LOREM IPSUM'),
(4, 'LOREM IPSUM'),
(5, 'LOREM IPSUM'),
(5, 'LOREM IPSUM'),
(5, 'What is best in life? To crush my enemies. To see them driven before me. To hear the lamentation of their women');


