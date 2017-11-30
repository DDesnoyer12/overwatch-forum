-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2017 at 06:32 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `abilities`
--

CREATE TABLE `abilities` (
  `Hero` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Ability` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `abilities`
--

INSERT INTO `abilities` (`Hero`, `Ability`, `Description`) VALUES
(NULL, NULL, ''),
('Ana', 'Biotic Grenade', 'Ana tosses a biotic bomb that deals damage to enemies and heals allies in a small area of effect. Affected allies briefly receive increased healing from all sources, while enemies caught in the blast cannot be healed for a few moments.'),
('Ana', 'Biotic Rifle', 'Ana\'s rifle shoots darts that can restore health to her allies or deal ongoing damage to her enemies. She can use the rifle\'s scope to zoom in on targets and make highly accurate shots.'),
('Ana', 'Sleep Dart', 'Ana fires a dart from her sidearm, rendering an enemy unconscious (though any damage will rouse them).'),
('Bastion', 'Configuration: Recon', 'In Recon mode, Bastion is fully mobile, outfitted with a submachine gun that fires steady bursts of bullets at medium range.'),
('Bastion', 'Configuration: Sentry', 'In Sentry mode, Bastion is a stationary powerhouse equipped with a gatling gun capable of unleashing a hail of bullets. The gun\'s aim can be \"walked\" across multiple targets, dealing devastating damage at short to medium range.'),
('Bastion', 'Reconfigure', 'Bastion transforms between its two primary combat modes to adapt to battlefield conditions.'),
('Bastion', 'Self-Repair', 'Bastion restores its health; it cannot fire weapons while the repair process is in effect.'),
('D.Va', 'Boosters', 'D.Va\'s mech launches into the air, her momentum carrying her forward. She can turn and change directions or barrel through her enemies, knocking them back.'),
('D.Va', 'Defense Matrix', 'D.Va can activate this forward-facing targeting array to shoot incoming projectiles out of the air.'),
('D.Va', 'Eject', 'D.Va ejects out of her mech when it is destroyed.'),
('D.Va', 'Fusion Cannons', 'D.Va\'s mech is equipped with twin short-range rotating cannons. They lay down continuous, high-damage fire without needing to reload, but slow D.Va\'s movement while they\'re active.'),
('D.Va', 'Light Gun', 'While outside of her mech, D.Va can continue the fight with a mid-range automatic blaster.'),
('D.Va', 'Micro Missles', 'D.Va fires a barrage of small rockets that detonate on impact, dealing damage in a limited radius around each explosion.'),
('Doomfist', 'Hand Cannon\r\n', 'Doomfist fires a short-range burst from the knuckles of his fist. Its ammunition is automatically regenerated over a short time.'),
('Doomfist', 'Rising Uppercut', 'Doomfist uppercuts enemies in front of him into the air.'),
('Doomfist', 'Rocket Punch', 'After charging up, Doomfist lunges forward and knocks an enemy back, dealing additional damage if they impact a wall.'),
('Doomfist', 'Seismic Slam', 'Doomfist leaps forward and smashes into the ground, knocking nearby enemies toward him.'),
('Doomfist', 'The Best Defense...', 'Doomfist generates temporary personal shields when he deals ability damage.'),
('Genji', 'Deflect', 'With lightning-quick swipes of his sword, Genji reflects an oncoming projectile and sends it rebounding towards his opponent.'),
('Genji', 'Shuriken', 'Genji looses three deadly throwing stars in quick succession. Alternatively, he can throw three shuriken in a wider spread.'),
('Genji', 'Swift Strike', 'Genji darts forward, slashing with his katana and passing through foes in his path. If Genji eliminates a target, he can instantly use this ability again.'),
('Hanzo', 'Scatter Arrow', 'Hanzo shoots a fragmenting arrow that ricochets off walls and objects and can strike multiple targets at once.'),
('Hanzo', 'Sonic Arrow', 'Hanzo launches an arrow that contains a sonar tracking device. Any enemy within its detection radius is visibly marked, making them easier for Hanzo and his allies to hunt down.'),
('Hanzo', 'Storm Bow', 'Hanzo nocks and fires an arrow at his target.'),
('Junkrat', 'Concussion Mine', 'After placing one of his homemade Concussion Mines, Junkrat can trigger it to damage enemies and send them flying... or propel himself through the air.'),
('Junkrat', 'Frag Launcher', 'Junkrat\'s Frag Launcher lobs grenades a significant distance. They bounce to reach their destination, and blow up when they strike an enemy.'),
('Junkrat', 'Steel Trap', 'Junkrat tosses out a giant, metal-toothed trap. Should an enemy wander too close to the trap, it clamps on, injuring and immobilizing them.'),
('Junkrat', 'Total Mayhem', 'Junkrat\'s deranged sense of humor persists past his death. If killed, he drops several live grenades.'),
('Lucio', 'Amp It Up', 'Lucio increases the volume on his speakers, boosting the effects of his songs.'),
('Lucio', 'Crossfade', 'Lucio continuously energizes himself, and nearby teammates, with music. He can switch between two songs: one amplifies movement speed, while the other regenerates health.'),
('Lucio', 'Sonic Amplifier', 'Lucio can hit his enemies with sonic projectiles or knock them back with a blast of sound.'),
('Lucio', 'Wall Ride', 'Lucio rides along a wall. This has a slight upwards angle, allowing him to ascend the wall.'),
('McCree', 'Combat Roll', 'McCree dives in the direction he\'s moving, effortlessly reloading his Peacekeeper in the process.'),
('McCree', 'Flashbang', 'McCree heaves a blinding grenade that explodes shortly after it leaves his hand. The blast staggers enemies in a small radius.'),
('McCree', 'Peacekeeper', 'McCree fires off a round from his trusty six-shooter. He can fan the Peacekeeper\'s hammer to swiftly unload the entire cylinder.'),
('Mei', 'Cryo-Freeze', 'Mei instantly surrounds herself with a block of thick ice. She heals and ignores damage while encased, but cannot move or use abilities.'),
('Mei', 'Endothermic Blaster', 'Mei\'s blaster unleashes a concentrated, short-range stream of frost that damages, slows, and ultimately freezes enemies in place. Mei can also use her blaster to shoot icicle-like projectiles at medium range.'),
('Mei', 'Ice Wall', 'Mei generates an enormous ice wall that obstructs lines of sight, stops movement, and blocks attacks.'),
('Mercy', 'Angelic Descent', 'Propelled by her Valkyrie suit, Mercy slows the speed of her descent from great heights.'),
('Mercy', 'Caduceus Blaster', 'Mercy shoots a round from her sidearm.'),
('Mercy', 'Caduceus Staff', 'Mercy engages one of two beams that connect to an ally. By maintaining the beams, she can either restore that ally\'s health or increase the amount of damage they deal.'),
('Mercy', 'Guardian Angel', 'Mercy flies towards a targeted ally, allowing her to reach them quickly and provide assistance in crucial moments.'),
('Mercy', 'Regeneration', 'Mercy automatically heals over time.'),
('Mercy', 'Resurrect', 'Mercy radiates restorative power, bringing nearby dead allies back into the fight with full health.'),
('Moira', 'Biotic Grasp', 'Using her left hand, Moira expends biotic energy to heal allies in front of her. Her right hand fires a long-range beam weapon that saps enemies\' health, healing Moira and replenishing her biotic energy.'),
('Moira', 'Biotic Orb', 'Moira launches a rebounding biotic sphere; she can choose between a regeneration effect that heals the allies it passes through, or a decay effect that deals damage to enemies.'),
('Moira', 'Fade', 'Disappear, move faster, and become invulnerable, but you cannot shoot.'),
('Orisa', 'Fortify', 'Orisa temporarily reduces damage she takes, and cannot be affected by action-impairing effects.'),
('Orisa', 'Fusion Driver', 'Orisa\'s automatic projectile cannon delivers sustained damage, but slows her movement while she fires it.'),
('Orisa', 'Halt!', 'Orisa launches a graviton charge which she can detonate, slowing nearby enemies and pulling them towards the explosion.'),
('Orisa', 'Protective Barrier', 'Orisa throws out a stationary barrier that can protect her and her allies from enemy fire.'),
('Pharah', 'Concussive Blast', 'Pharah looses a wrist rocket that knocks back any enemies it strikes.'),
('Pharah', 'Jump Jet', 'Propelled by her suit\'s thrusters, Pharah soars high into the air.'),
('Pharah', 'Rocket Launcher', 'Pharah\'s primary weapon launches rockets that deal significant damage in a wide blast radius.'),
('Reaper', 'Hellfire Shotguns', 'Reaper tears enemies apart with twin shotguns.'),
('Reaper', 'Shadow Step', 'After marking a destination, Reaper disappears and reappears at that location.'),
('Reaper', 'Wraith Form', 'Reaper becomes a shadow for a short period of time. While in this form, he takes no damage and is able to pass through enemies, but cannot fire his weapons or use other abilities.'),
('Reinhardt', 'Barrier Field', 'Reinhardt projects a broad, forward-facing energy barrier, which can absorb substantial damage before it is destroyed. Although Reinhardt can protect himself and his companions behind the barrier, he cannot attack while sustaining it.'),
('Reinhardt', 'Charge', 'Reinhardt charges forth in a straight line, pinning the first enemy in his path and knocking others aside. If he collides with a wall, the foe he\'s carrying suffers extreme damage.'),
('Reinhardt', 'Fire Strike', 'By whipping his Rocket Hammer forward, Reinhardt slings a flaming projectile which pierces and damages any enemies it touches.'),
('Reinhardt', 'Rocket Hammer', 'Reinhardt\'s Rocket Hammer is an exemplary melee weapon, able to deal punishing damage in a wide arc with every swing.'),
('Roadhog', 'Chain Hook', 'Roadhog hurls his chain at a target; if it catches, he yanks them into close range.'),
('Roadhog', 'Scrap Gun', 'Roadhog\'s Scrap Gun fires short-range blasts of shrapnel with a wide spread. Alternatively, it can launch a shrapnel ball that detonates farther away, scattering metal fragments from the point of impact.'),
('Roadhog', 'Take A Breather', 'Roadhog restores a chunk of his health over a brief period of time.'),
('Soldier 76', 'Biotic Field', 'Soldier: 76 plants a biotic emitter on the ground. Its energy projection restores health to 76 and any of his squadmates within the field.'),
('Soldier 76', 'Heavy Pulse Rifle', 'Soldier: 76\'s rifle remains particularly steady while unloading fully-automatic pulse fire.'),
('Soldier 76', 'Helix Rockets', 'Tiny rockets spiral out of Soldier: 76\'s Pulse Rifle in a single burst. The rockets\' explosion damages enemies in a small radius.'),
('Soldier 76', 'Sprint', 'Whether he needs to evade a firefight or get back into one, Soldier: 76 can rush ahead in a burst of speed. His sprint ends if he takes an action other than charging forward.'),
('Sombra', 'Hack', 'Sombra hacks enemies to temporarily stop them from using their abilities, or hacks first aid kits to make them useless to her opponents.'),
('Sombra', 'Machine Pistol', 'Sombra\'s fully-automatic machine pistol fires in a short-range spread.'),
('Sombra', 'Stealth', 'Sombra becomes invisible for a short period of time, during which her speed is boosted considerably. Attacking, using offensive abilities, or taking damage disables her camouflage.'),
('Sombra', 'Translocator', 'Sombra tosses out a translocator beacon. She can instantly return to the beacon\'s location while it is active (including when it\'s in mid-flight).'),
('Symmetra', 'Photon Barrier', 'Symmetra projects a moving barrier that absorbs damage as it travels forward.'),
('Symmetra', 'Photon projector', 'Symmetra\'s weapon emits a short-range beam that homes in on a nearby enemy, dealing continuous damage that increases the longer it is connected. The projector can also release a charged energy ball that deals high damage.'),
('Symmetra', 'Sentry Turret', 'Symmetra sets up a small turret that automatically fires speed-reducing blasts at the nearest enemy within range. Several turrets can be built on the battlefield at once.'),
('Torbjorn', 'Armor Pack', 'Torbjorn deploys an armor upgrade; either he or his allies can pick it up to absorb some damage.'),
('Torbjorn', 'Build Turret', 'Torbjorn constructs an enemy-tracking auto-cannon. He can use his Forge Hammer to repair or upgrade it, increasing its health and adding a second cannon barrel and a rocket launcher.'),
('Torbjorn', 'Forge Hammer', 'Torbjorn uses his multipurpose hammer to build, upgrade and repair turrets. In a pinch, it can also be swung as a weapon.'),
('Torbjorn', 'Rivet Gun', 'Torbjorn fires rivets at long range, or ejects molten metal from his gun in a short, close-range burst.'),
('Torbjorn', 'Scrap Collector', 'Collect scrap to gain resources.'),
('Tracer', 'Blink', 'Tracer zips horizontally through space in the direction she\'s moving, and reappears several yards away. She stores up to three charges of the blink ability and generates more every few seconds.'),
('Tracer', 'Pulse Pistols', 'Tracer rapid-fires both of her pistols.'),
('Tracer', 'Recall', 'Tracer bounds backward in time, returning her health, ammo and position on the map to precisely where they were a few seconds before.'),
('Widowmaker', 'Grappling Hook', 'Widowmaker launches a grappling hook towards the location she\'s aiming at - when the hook connects with a scalable surface, she\'s quickly drawn towards it, allowing her to expand her view of the battlefield and evade or flank targets.'),
('Widowmaker', 'Venom Mine', 'Widowmaker adheres a swiftly-arming venom mine to nearly any surface. When a target wanders within range of the mine\'s motion trigger, it explodes, delivering poison gas to any enemies in the vicinity.'),
('Widowmaker', 'Widow\'s Kiss', 'Widowmaker\'s versatile sniper rifle is ideal for scope-aimed shots at distant targets. Should targets close to medium range, the rifle can also be fired in fully-automatic mode.'),
('Winston', 'Barrier Projection', 'Winston\'s barrier projector extends a bubble-shaped field that absorbs damage until it\'s destroyed. Allies protected by the barrier can return fire from within it.'),
('Winston', 'Jump Pack', 'Assisted by his energy pack, Winston lunges through the air, dealing significant damage and staggering nearby enemies when he lands.'),
('Winston', 'Tesla Cannon', 'Winston\'s weapon fires a short-range electric barrage for as long as he holds down the trigger.'),
('Zarya', 'Energy', 'Damage blocked increases Particle Cannon damage.'),
('Zarya', 'Particle Barrier', 'The Particle Cannon can emit a personal barrier that shields Zarya against incoming attacks, redirecting their energy to enhance her weapon\'s damage and the width of its beam.'),
('Zarya', 'Particle Cannon', 'Zarya\'s mighty Particle Cannon unleashes a short-range beam of destructive energy. Alternatively, Zarya can lob an explosive charge to strike multiple opponents.'),
('Zarya', 'Projected Barrier', 'Zarya surrounds one of her teammates with an energy barrier that simultaneously absorbs fire and boosts the power of her Particle Cannon.'),
('Zenyatta', 'Orb of Destruction', 'Zenyatta casts an orb over the shoulder of a targeted ally. So long as Zenyatta maintains line of sight, the orb slowly restores health to his ally. Only one ally can receive the orb\'s benefit at a time.'),
('Zenyatta', 'Orb of Discord', 'Attaching the orb of discord to an opponent amplifies the amount of damage they receive for as long as Zenyatta maintains line of sight. Only one opponent can suffer the orb\'s effects at a time.'),
('Zenyatta', 'Orb of Harmony', 'Zenyatta casts an orb over the shoulder of a targeted ally. So long as Zenyatta maintains line of sight, the orb slowly restores health to his ally. Only one ally can receive the orb\'s benefit at a time.');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `PageID` varchar(255) NOT NULL,
  `Author` varchar(255) DEFAULT NULL,
  `Comment` varchar(255) DEFAULT NULL,
  `post_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`PageID`, `Author`, `Comment`, `post_time`) VALUES
('Ana', 'Daniel', 'Ana is a really great character!', '2017-11-29 21:54:26'),
('Lijiang Tower', 'Jeff Kaplan', 'Lijiang Tower is my favorite map!', '2017-11-29 21:55:13'),
('Bastion', 'Bastion', 'Beep Boop', '2017-11-29 21:57:02');

-- --------------------------------------------------------

--
-- Table structure for table `heroes`
--

CREATE TABLE `heroes` (
  `Hero` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Role` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Bio` text CHARACTER SET utf8 NOT NULL,
  `Health` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Armor` int(11) NOT NULL,
  `Shield` int(11) NOT NULL,
  `Difficulty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `heroes`
--

INSERT INTO `heroes` (`Hero`, `Role`, `Bio`, `Health`, `Armor`, `Shield`, `Difficulty`) VALUES
('Ana', 'Support', 'Ana\'s versatile arsenal allows her to affect heroes all over the battlefield. Her Biotic Rifle rounds and Biotic Grenades heal allies and damage or impair enemies; her sidearm tranquilizes key targets, and Nano Boost gives one of her comrades a considerable increase in power.', '200', 0, 0, 3),
('Bastion', 'Defense', 'Repair protocols and the ability to transform between stationary Assault, mobile Recon and devastating Tank configurations provide Bastion with a high probability of victory.', '200', 100, 0, 1),
('D.Va', 'Tank', 'D.Va\'s mech is nimble and powerful-its twin Fusion Cannons blast away with autofire at short range, and she can use its Boosters to barrel over enemies and obstacles, or deflect attacks with her projectile-dismantling Defense Matrix.', '400', 200, 0, 2),
('Doomfist', 'Offense', 'Doomfist\'s cybernetics make him a highly-mobile, powerful frontline fighter. In addition to dealing ranged damage with his Hand Cannon, Doomfist can slam the ground, knock enemies into the air and off balance, or charge into the fray with his Rocket Punch. When facing a tightly packed group, Doomfist leaps out of view, then crashes down to earth with a spectacular Meteor Strike.', '250', 0, 0, 3),
('Genji', 'Offense', 'Genji flings precise and deadly Shuriken at his targets, and uses his technologically-advanced katana to deflect projectiles or deliver a Swift Strike that cuts down enemies.', '200', 0, 0, 3),
('Hanzo', 'Defense', 'Hanzo\'s versatile arrows can reveal his enemies or fragment to strike multiple targets. He can scale walls to fire his bow from on high, or summon a titanic spirit dragon.', '200', 0, 0, 3),
('Junkrat', 'Defense', 'Junkrat\'s area-denying armaments include a Frag Launcher that lobs bouncing grenades, Concussion Mines that send enemies flying, and Steel Traps that stop foes dead in their tracks.', '200', 0, 0, 2),
('Lucio', 'Support', 'On the battlefield, Lucio\'s cutting-edge Sonic Amplifier buffets enemies with projectiles and knocks foes back with blasts of sound. His songs can both heal his team or boost their movement speed, and he can switch between tracks on the fly.', '200', 0, 0, 2),
('McCree', 'Offense', 'Armed with his Peacekeeper revolver, McCree takes out targets with deadeye precision and dives out of danger with eagle-like speed.', '200', 0, 0, 2),
('Mei', 'Defense', 'Mei\'s weather-altering devices slow opponents and protect locations. Her Endothermic Blaster unleashes damaging icicles and frost streams, and she can Cryo-Freeze herself to guard against counterattacks, or obstruct the opposing team\'s movements with an Ice Wall.', '250', 0, 0, 3),
('Mercy', 'Support', 'Mercy\'s Valkyrie Suit helps keep her close to teammates like a guardian angel; healing, resurrecting or strengthening them with the beams emanating from her Caduceus Staff.', '200', 0, 0, 1),
('Moira', 'Support', 'Moira\'s biotic abilities enable her to contribute healing or damage in any crisis. While Biotic Grasp gives Moira short-range options, her Biotic Orbs contribute longer-range, hands-off damage and healing; she can also Fade to escape groups or remain close to allies in need of support. Once she\'s charged Coalescence, Moira can save multiple allies from elimination at once or finish off weakened enemies.', '200', 0, 0, 2),
('Orisa', 'Tank', 'Orisa serves as the central anchor of her team, and defends her teammates from the frontline with a protective barrier. She can attack from long range, fortify her own defenses, launch graviton charges to slow and move enemies, and deploy a Supercharger to boost the damage output of multiple allies at once.', '200', 200, 0, 2),
('Pharah', 'Offense', 'Soaring through the air in her combat armor, and armed with a launcher that lays down high-explosive rockets, Pharah is a force to be reckoned with.', '200', 0, 0, 1),
('Reaper', 'Offense', 'Hellfire Shotguns, the ghostly ability to become immune to damage, and the power to step between shadows make Reaper one of the deadliest beings on Earth.', '250', 0, 0, 1),
('Reinhardt', 'Tank', 'Clad in powered armor and swinging his hammer, Reinhardt leads a rocket-propelled charge across the battleground and defends his squadmates with a massive energy barrier.', '300', 200, 0, 1),
('Roadhog', 'Tank', 'Roadhog uses his signature Chain Hook to pull his enemies close before shredding them with blasts from his Scrap Gun. He\'s hardy enough to withstand tremendous damage, and can recover his health with a short breather.', '600', 0, 0, 1),
('Soldier 76', 'Offense', 'Armed with cutting-edge weaponry, including an experimental pulse rifle that\'s capable of firing spirals of high-powered Helix Rockets, Soldier: 76 has the speed and support know-how of a highly trained warrior.', '200', 0, 0, 1),
('Sombra', 'Offense', 'Stealth and debilitating attacks make Sombra a powerful infiltrator. Her hacking can disrupt her enemies, ensuring they\'re easier to take out, while her EMP provides the upper hand against multiple foes at once. Sombra\'s ability to Translocate and camouflage herself makes her a hard target to pin down.', '200', 0, 0, 3),
('Symmetra', 'Support', 'Symmetra utilizes her light-bending Photon Projector to dispatch adversaries, shield her associates, construct teleportation pads and deploy particle-blasting Sentry Turrets.', '100', 0, 100, 2),
('Torbjorn', 'Defense', 'Torbjorn\'s extensive arsenal includes a rivet gun and hammer, as well as a personal forge that he can use to build upgradeable turrets and dole out protective armor packs.', '200', 0, 0, 2),
('Tracer', 'Offense', 'Toting twin pulse pistols, energy-based time bombs, and rapid-fire banter, Tracer is able to \"blink\" through space and rewind her personal timeline as she battles to right wrongs the world over.', '150', 0, 0, 2),
('Widowmaker', 'Defense', 'Widowmaker equips herself with whatever it takes to eliminate her targets, including mines that dispense poisonous gas, a visor that grants her squad infra-sight, and a powerful sniper rifle that can fire in fully-automatic mode.', '200', 0, 0, 2),
('Winston', 'Tank', 'Winston wields impressive inventions--a jump pack, electricity-blasting Tesla Cannon, portable shield projector and more--with literal gorilla strength.', '400', 100, 0, 2),
('Zarya', 'Tank', 'Deploying powerful personal barriers that convert incoming damage into energy for her massive Particle Cannon, Zarya is an invaluable asset on the front lines of any battle.', '200', 0, 200, 3),
('Zenyatta', 'Support', 'Zenyatta calls upon orbs of harmony and discord to heal his teammates and weaken his opponents, all while pursuing a transcendent state of immunity to damage.', '50', 0, 150, 3);

-- --------------------------------------------------------

--
-- Table structure for table `maps`
--

CREATE TABLE `maps` (
  `Map` text CHARACTER SET utf8,
  `Description` text CHARACTER SET utf8,
  `Type` text CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `maps`
--

INSERT INTO `maps` (`Map`, `Description`, `Type`) VALUES
('Hanamura', 'Hanamura is a well-preserved village of unassuming shops and quiet streets known mostly for its idyllic cherry blossom festival every spring. But to those who know its history, Hanamura is the ancestral home of the Shimada ninja clan, which had grown over the centuries to become a powerful criminal organization. As its neighboring cities expanded, Hanamura was encircled, and eventually, it was incorporated as a district within a larger city. For now, the imposing compound of the Shimada family lies empty, but that peace may soon be broken.', 'Assault'),
('Horizon Lunar Colony', 'Built as a first step towards humanity\'s renewed exploration of space, the Horizon Lunar Colony\'s goal was to examine the effects of prolonged extraterrestrial habitation-on human and ape alike. The scientists\' research proved incredibly promising...until, suddenly, all contact and communications with the base were lost.', 'Assault'),
('Temple of Anubis', 'Nestled among the ancient ruins of the Giza Plateau on the outskirts of Cairo, the Temple of Anubis is one of many new excavations in the area. While most believe that the site is of interest for archaeological reasons, it also hides the entrance to a research facility that extends deep beneath the earth. The facility is alleged to house an artificial intelligence, but the whole truth is known only to a select few. Not even the agents of Helix Security International, who guard the facility, know what they\'re protecting.', 'Assault'),
('Volskaya Industries', 'Russia was one of the countries hit hardest by the Omnic Crisis, but during the rebuilding progress, it rode the wave of the mechanized labor industry\'s revitalization and entered a period of rapid growth. However, after recent attacks from the long-dormant Siberian Omnium, Russia has returned to war footing, guarding its sparkling cities with the massive human-piloted Svyatogor mechs developed and produced by Volskaya Industries.', 'Assault'),
('Dorado', 'It is Festival de la Luz in Dorado, an annual celebration of the end of the Omnic Crisis and the period of darkness - both figurative and literal - that engulfed Mexico when the Omnics destroyed much of the country\'s power grid and infrastructure. But there is a new dawn, as LumeriCo and its CEO, war hero and former president Guillermo Portero, are unveiling a string of fusion plants that promise to deliver clean, free energy to the Mexican people.', 'Escort'),
('Junkertown', 'Constructed from the remains of a destroyed omnium, Junkertown is now the home to a band of lawless scavengers known as the Junkers, led by their cutthroat Queen. When they aren\'t pillaging the omnium\'s skeleton for anything of value, the Junkers blow off steam in the Scrapyard--a massive gladiatorial arena whose combatants fight for glory, riches...and to survive.', 'Escort'),
('Route 66', 'Though the travelers and road trippers who used to cross the US on historic Route 66 are gone, the Main Street of America still stands, a testament to a simpler time. The gas stations, roadside shops, and cafes have gone into disuse, and the fabled Deadlock Gorge is mostly seen from the comfort of transcontinental train cars. But amid the fading monuments of that earlier era, the outlaws of the Deadlock Gang are planning their biggest heist yet.', 'Escort'),
('Watchpoint Gibraltar', 'At its height, Overwatch maintained numerous bases around the world, each with its own purpose: peacekeeping, scientific research, or in the case of Watchpoint: Gibraltar, providing an orbital launch facility. The base was mothballed along with the rest of Overwatch\'s installations, but there have been recent reports of activity within the perimeter. Could this indicate the presence of former Overwatch agents, or is this the work of organizations with more nefarious intentions?', 'Escort'),
('Eichenwalde', 'The forest has slowly begun overtaking the abandoned village of Eichenwalde, but the scars will never completely fade. During the Omnic Crisis, Eichenwalde was the site of a key battle. General Balderich von Adler took a handful of crusaders to the village in an effort to outflank the omnic army. Balderich\'s soldiers were able to break down the enemy forces, giving the German military an opportunity to push back, but the Crusaders didn\'t make it out of the battle. General Balderich finally collapsed in the castle\'s great hall.', 'Hybrid'),
('Hollywood', 'Welcome to the glitz and glamour of Hollywood, California, where palm trees and fancy cars line the streets, and movie stars, directors, and high-powered studio executives rub shoulders for a chat and drink at Galand\'s. Down the street from the Mandarin Theatre, Goldshire Studios\' omnic film auteur Hal-Fred Glitchbot has created his two latest films, They Came From Beyond The Moon and Six-Gun Killer, to varying amounts of critical and commercial acclaim. However, even Tinseltown has been gripped by anti-omnic sentiment, and the outspoken director has become a prime target in the escalating conflict.', 'Hybrid'),
('Kings Row', 'King\'s Row is an upscale, cosmopolitan neighborhood of London, but just beneath its peaceful surface, tensions between omnics and humans are running high. While much of modern England was built on the backs of omnic laborers, they have been denied the basic rights that humans have, with most omnics forced to live in the dense, claustrophobic city beneath the city, known by some as \"the Underworld\". Of greater concern is that recent demonstrations by pro-omnic rights protesters have resulted in violent clashes with the police, and a solution is nowhere in sight.', 'Hybrid'),
('Numbani', 'Known as the \"City of Harmony\", Numbani is one of the few places where omnics and humans live as equals. This collaboration has led to the creation of one of the world\'s greatest and most technologically advanced cities in the short time since its establishment after the end of the Omnic Crisis. As part of this year\'s Unity Day festivities celebrating the city\'s founding, the gauntlet of the infamous Doomfist is being exhibited at the Numbani Heritage Museum.', 'Hybrid'),
('Ilios', 'Situated atop a small island rising from the Aegean Sea, Ilios is a postcard-perfect Mediterranean town, with a bustling harbourside, winding paths for rambling hillside strolls, and gorgeous vistas. It is the ideal vacation stop for people looking for a place to relax, or for those interested in exploring the ruins scattered at the top of the island, where many artifacts and relics of the ancient world have been recently unearthed.', 'Control'),
('Lijiang Tower', 'Lijiang Tower was built in the heart of a modern Chinese metropolis, its busy streets lined with stores, gardens, restaurants, and famous night markets, where foods from around the region are available at all hours. The tower itself is home to one of the leading companies in China\'s state-of-the-art space industry, Lucheng Interstellar, an organization with a long pioneering history that is currently pushing the boundaries of space exploration.', 'Control'),
('Nepal', 'Years ago, a group of omnic robots experienced what they described as a spiritual awakening. They abandoned their preprogrammed lives to establish a monastery high in the Himalayas of Nepal, where like-minded omnics could gather to meditate on the nature of their existence. Led by their spiritual leader, Tekhartha Mondatta, they took over the ruins of an ancient monastery and turned it into the home of the Shambali, a place where omnics and humans alike make pilgrimages in the hopes of finding a greater truth.', 'Control'),
('Oasis', 'Oasis is one of the world\'s most advanced cities, a shining jewel rising from the Arabian Desert. A monument to human ingenuity and invention, researchers and academics from around the region came together to found a city dedicated to scientific progress without restraints. The city and its inhabitants are governed by the Ministries, a collection of brilliant minds who possess many secrets that have attracted the interest of powerful organizations from around the world.', 'Control'),
('Black Forest', 'On the outskirts of Eichenwalde, the misty Black Forest map wraps around a long-overlooked battlefield dotted with the wreckage of Bastion units.', 'Arena'),
('Castillo', 'Castillo is an old fort looking out over Dorado\'s bay. It\'s the location of Calaveras, a bar frequented by questionable patrons; a graffitied Los Muertos hangout; and Sombra\'s hacking den.', 'Arena'),
('Ecopoint Antarctica', 'Bundle up for a journey to Ecopoint: Antarctica, the former Overwatch installation where climatologist Mei-Ling Zhou was once stationed. While researching severe weather anomalies in the region, the station was hit by an intense polar storm. Running out of options and low on supplies, the team decided to cryogenically freeze themselves until the storm passed. They believed that it would only be for a few months, but Mei awoke nearly a decade later.', 'Arena'),
('Necropolis', 'Ana Amari has made Necropolis her personal hideout--and an impromptu field base where she can keep an eye on things.', 'Arena');

-- --------------------------------------------------------

--
-- Table structure for table `ultimates`
--

CREATE TABLE `ultimates` (
  `Hero` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Ability` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ultimates`
--

INSERT INTO `ultimates` (`Hero`, `Ability`, `Description`) VALUES
('Ana', 'Nano Boost', 'After Ana hits one of her allies with a combat boost, they deal more damage, and take less damage from enemies\' attacks.'),
('Doomfist', 'Meteor Strike', 'Doomfist leaps into the sky, then crashes to the ground, dealing significant damage.'),
('Genji', 'Dragonblade', 'Genji brandishes his katana for a brief period of time. Until he sheathes his sword, Genji can deliver killing strikes to any targets within his reach.'),
('McCree', 'Deadeye', 'Focus. Mark. Draw. McCree takes a few precious moments to aim; when he\'s ready to fire, he shoots every enemy in his line of sight. The weaker his targets are, the faster he\'ll line up a killshot.'),
('Pharah', 'Barrage', 'Pharah directs a continuous salvo of mini-rockets to destroy groups of enemies.'),
('Reaper', 'Death Blossom', 'In a blur of motion, Reaper empties both Hellfire Shotguns at breakneck speed, dealing massive damage to all nearby enemies.'),
('Soldier 76', 'Tactical Visor', 'Soldier: 76\'s pinpoint targeting visor \"locks\" his aim on the threat closest to his crosshairs. If an enemy leaves his line of sight, Soldier: 76 can quickly switch to another target.'),
('Sombra', 'EMP', 'Sombra discharges electromagnetic energy in a wide radius, destroying enemy barriers and shields and hacking all opponents caught in the blast.'),
('Tracer', 'Pulse Bomb', 'Tracer lobs a large bomb that adheres to any surface or unfortunate opponent it lands on. After a brief delay, the bomb explodes, dealing high damage to all enemies within its blast radius.'),
('Bastion', 'Configuration: Tank', 'In Tank mode, Bastion extends wheeled treads and a powerful long-range cannon. The cannon\'s explosive shells demolish targets in a wide blast radius, but Bastion can only remain in this mode for a limited time.'),
('Hanzo', 'Dragonstrike', 'Hanzo summons a Spirit Dragon which travels through the air in a line. It passes through walls in its way, devouring any enemies it encounters.'),
('Junkrat', 'Rip-Tire', 'Junkrat revs up a motorized tire bomb and sends it rolling across the battlefield, climbing over walls and obstacles. He can remotely detonate the RIP-Tire to deal serious damage to enemies caught in the blast, or just wait for it to explode on its own.'),
('Mei', 'Blizzard', 'Mei deploys a weather-modification drone that emits gusts of wind and snow in a wide area. Enemies caught in the blizzard are slowed and take damage; those who linger too long are frozen solid.'),
('Mercy', 'Valkyrie', 'Valkyrie unleashes the full power of Mercy\'s Valkyrie Suit, enhancing her weapons and abilities for 20 seconds.'),
('Moira', 'Coalescence', 'Moira channels a long-range beam that both heals allies and bypasses barriers to damage her enemies. While channeling this ability, Moira\'s movement speed increases greatly, but she cannot perform any other actions.'),
('Orisa', 'Supercharger', 'Orisa deploys a device to increase damage by 50% inflicted by allies within its line of sight.'),
('Torbjorn', 'Molten Core', 'After overheating his personal forge, Torbjorn gains a significant amount of armor. He also attacks (and builds and repairs turrets) far faster than normal.'),
('Widowmaker', 'Infra-Sight', 'Widowmaker\'s recon visor allows her to see the heat signatures of her targets through walls and objects for a moderate amount of time. This enhanced vision is shared with her allies.'),
('D.Va', 'Self-Destruct', 'D.Va ejects from her mech and sets its reactor to explode, dealing massive damage to nearby opponents.'),
('Reinhardt', 'Earthshatter', 'Reinhardt forcefully slams his rocket hammer into the ground, knocking down and damaging all enemies in front of him.'),
('Roadhog', 'Whole Hog', 'After cramming a top-loader onto his Scrap Gun, Roadhog pours in ammo. For a short time, he can crank out a stream of shrapnel that knocks back enemies.'),
('Winston', 'Primal Rage', 'Winston embraces his animal nature, significantly boosting his health and making him very difficult to kill, strengthening his melee attack, and allowing him to use his Jump Pack ability more frequently.'),
('Zarya', 'Graviton Surge', 'Zarya launches a gravity bomb that draws in enemy combatants and deals damage while they\'re trapped'),
('Lucio', 'Sound Barrier', 'Protective waves radiate out from Lucio\'s Sonic Amplifier, briefly providing him and nearby allies with personal shields'),
('Symmetra', 'Teleport / Shield Generator', 'Symmetra places a teleporter exit pad at her current location, and connects it to a teleporter entry pad at her team\'s starting point. Symmetra deploys a wide-radius generator that provides increased shielding to her entire team.'),
('Zenyatta', 'Transcendence', 'Zenyatta enters a state of heightened existence for a short period of time. While transcendent, Zenyatta cannot use abilities or weapons, but is immune to damage, moves twice as fast, and automatically restores his health and that of nearby allies.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abilities`
--
ALTER TABLE `abilities`
  ADD UNIQUE KEY `Hero` (`Hero`,`Ability`,`Description`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD UNIQUE KEY `postid` (`PageID`,`Author`,`Comment`);

--
-- Indexes for table `heroes`
--
ALTER TABLE `heroes`
  ADD UNIQUE KEY `Hero` (`Hero`,`Role`);

--
-- Indexes for table `maps`
--
ALTER TABLE `maps`
  ADD UNIQUE KEY `Map` (`Map`(3),`Description`(3),`Type`(3));

--
-- Indexes for table `ultimates`
--
ALTER TABLE `ultimates`
  ADD UNIQUE KEY `Hero` (`Hero`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
