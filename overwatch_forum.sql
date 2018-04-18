-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2018 at 02:52 AM
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
-- Database: `overwatch_forum`
--

-- --------------------------------------------------------

--
-- Table structure for table `abilities`
--

CREATE TABLE `abilities` (
  `ability_id` int(8) NOT NULL,
  `ability_hero` int(8) NOT NULL,
  `ability_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ability_description` varchar(512) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `abilities`
--

INSERT INTO `abilities` (`ability_id`, `ability_hero`, `ability_name`, `ability_description`) VALUES
(1, 1, 'Biotic Rifle (Unscoped Mode)', 'Ana\'s rifle shoots darts that can restore health to her allies or deal ongoing damage to her enemies. She can use the rifle\'s scope to zoom in on targets and make highly accurate shots.'),
(2, 1, 'Biotic Rifle (Scoped Mode)', 'Ana\'s rifle shoots darts that can restore health to her allies or deal ongoing damage to her enemies. She can use the rifle\'s scope to zoom in on targets and make highly accurate shots.'),
(3, 1, 'Sleep Dart', 'Ana fires a dart from her sidearm, rendering an enemy unconscious (though any damage will rouse them).'),
(4, 1, 'Biotic Grenade', 'Ana tosses a biotic bomb that deals damage to enemies and heals allies in a small area of effect. Affected allies briefly receive increased healing from all sources, while enemies caught in the blast cannot be healed for a few moments.'),
(5, 1, 'Nano Boost (Ultimate)', 'After Ana hits one of her allies with a combat boost, they temporarily move faster, deal more damage, and take less damage from enemies? attacks.'),
(7, 2, 'Ironclad (Passive)', 'Reduce damage taken while transformed.'),
(8, 2, 'Configuration Recon', 'In Recon mode, Bastion is fully mobile, outfitted with a submachine gun that fires steady bursts of bullets at medium range.'),
(9, 2, 'Configuration Sentry', 'In Sentry mode, Bastion is a stationary powerhouse equipped with a gatling gun capable of unleashing a hail of bullets. The gun\'s aim can be \'walked\' across multiple targets, dealing devastating damage at short to medium range.'),
(10, 2, 'Self-Repair', 'Bastion restores its health; it cannot fire weapons while the repair process is in effect.'),
(11, 2, 'Reconfigure', 'Switches between weapon configuraitons'),
(12, 2, 'Configuration Tank (Ultimate)', 'In Tank mode, Bastion extends wheeled treads and a powerful long-range cannon. The cannon\'s explosive shells demolish targets in a wide blast radius, but Bastion can only remain in this mode for a limited time.'),
(13, 3, 'Inspire (Passive)', 'When Brigitte strikes an enemy with her flail, all allies within range are healed over time.'),
(14, 3, 'Rocket Flail', 'Brigitte\'s melee weapon has an extended range, enabling her to strike multiple enemies with a single swing.'),
(15, 3, 'Barrier Shield', 'Brigitte deploys a frontal energy barrier to absorb a limited amount of damage.'),
(16, 3, 'Shield Bash', 'Once her Barrier Shield is deployed, Brigitte can dash forward to stun an enemy.'),
(17, 3, 'Whip Shot', 'Brigitte throws her flail a long distance, dealing damage and knocking an enemy away from her.'),
(18, 3, 'Repair Pack', 'Brigitte throws a Repair Pack that can heal an ally. Any healing over that ally\'s maximum health provides them with armor instead. This armor does get removed after some time if not destroyed.'),
(19, 3, 'Rally (Ultimate)', 'Brigitte moves faster and provides all nearby allies with armor that lasts until it\'s removed by damage.'),
(20, 4, 'Eject (Passive)', 'D.Va ejects out of her mech when it is destroyed.'),
(21, 4, 'Fusion Cannons (Mech)', 'D.Va\'s mech is equipped with twin short-range rotating cannons. They lay down continuous, high-damage fire without needing to reload, but slow D.Va\'s movement while they\'re active.'),
(22, 4, 'Defense Matrix', 'D.Va can activate this forward-facing targeting array to shoot incoming projectiles out of the air.'),
(23, 4, 'Boosters', 'D.Va\'s mech launches into the air, her momentum carrying her forward. She can turn and change directions or barrel through her enemies, knocking them back.'),
(24, 4, 'Micro Missiles', 'D.Va\'s mech launches into the air, her momentum carrying her forward. She can turn and change directions or barrel through her enemies, knocking them back.'),
(25, 4, 'Self-Destruct (Ultimate)', 'D.Va ejects from her mech and sets its reactor to explode, dealing massive damage to nearby opponents.'),
(26, 5, 'The Best Defense... (Passive)', 'Doomfist generates temporary personal shields when he deals ability damage.'),
(27, 5, 'Hand Cannon', 'Doomfist fires a short-range burst from the knuckles of his fist. Its ammunition is automatically regenerated over a short time.'),
(28, 5, 'Rocket Punch', 'After charging up, Doomfist lunges forward and knocks an enemy back, dealing additional damage if they impact a wall.'),
(29, 5, 'Rising Uppercut', 'Doomfist uppercuts enemies in front of him into the air.'),
(30, 5, 'Seismic Slam', 'Doomfist leaps forward and smashes into the ground, knocking nearby enemies toward him.'),
(31, 5, 'Meteor Strike (Ultimate)', 'Doomfist leaps into the sky, then crashes to the ground, dealing significant damage.'),
(32, 6, 'Cyber-Agility (Passive)', 'Thanks to his cybernetic abilities, Genji can climb walls and perform jumps in mid-air.\r\n\r\n'),
(33, 6, 'Shuriken', 'Genji looses three deadly throwing stars in quick succession.\r\n\r\n'),
(34, 6, 'Fan of Blades', 'Alternatively, he can throw three shuriken in a wider spread.\r\n\r\n'),
(35, 6, 'Swift Strike', 'Genji darts forward, slashing with his katana and passing through foes in his path. If Genji eliminates a target, he can instantly use this ability again.\r\n\r\n'),
(36, 6, 'Deflect', 'With lightning-quick swipes of his sword, Genji reflects an oncoming projectile and sends it rebounding towards his opponent.\r\n\r\n'),
(37, 6, 'Dragonblade (Ultimate)', 'Genji brandishes his katana for a brief period of time. Until he sheathes his sword, Genji can deliver killing strikes to any targets within his reach.\r\n\r\n'),
(38, 7, 'Wall Climb (Passive)', 'Jump at walls to climb at them.\r\n\r\n'),
(39, 7, 'Storm Bow', 'Hanzo nocks and fires an arrow at his target.\r\n\r\n'),
(40, 7, 'Sonic Arrow', 'Hanzo launches an arrow that contains a sonar tracking device. Any enemy within its detection radius is visibly marked, making them easier for Hanzo and his allies to hunt down.\r\n\r\n'),
(41, 7, 'Scatter Arrow', 'Hanzo shoots a fragmenting arrow that ricochets off walls and objects and can strike multiple targets at once.\r\n\r\n'),
(42, 7, 'Dragonstrike (Ultimate)', 'Hanzo summons a Spirit Dragon which travels through the air in a line. It passes through walls in its way, devouring any enemies it encounters.\r\n\r\n'),
(43, 8, 'Total Mayhem (Passive)', 'Junkrat\'s deranged sense of humor persists past his death. If killed, he drops several live grenades.\r\n\r\n'),
(44, 8, 'Frag Launcher', 'Junkrat\'s Frag Launcher lobs grenades a significant distance. They bounce to reach their destination, and blow up when they strike an enemy.\r\n\r\n'),
(45, 8, 'Concussion Mine', 'After placing one of his homemade Concussion Mines, Junkrat can trigger it to damage enemies and send them flying… or propel himself through the air.\r\n\r\n'),
(46, 8, 'Steel Trap', 'Junkrat tosses out a giant, metal-toothed trap. Should an enemy wander too close to the trap, it clamps on, injuring and immobilizing them.\r\n\r\n'),
(47, 8, 'Rip-Tire (Ultimate)', 'Junkrat revs up a motorized tire bomb and sends it rolling across the battlefield, climbing over walls and obstacles. He can remotely detonate the RIP-Tire to deal serious damage to enemies caught in the blast, or just wait for it to explode on its own.\r\n'),
(48, 9, 'Wall Ride (Passive)', 'Jump onto a wall to ride along it.\r\n\r\n'),
(49, 9, 'Sonic Amplifier', 'Lucio can hit his enemies with sonic projectiles or knock them back with a blast of sound.\r\n\r\n'),
(50, 9, 'Soundwave ', 'Knock enemies back with a blast of sound.\r\n\r\n'),
(51, 9, 'Crossfade', 'Lucio continuously energizes himself and nearby teammates with music. He can switch between two songs: one amplifies movement speed, while the other regenerates health.\r\n\r\n'),
(52, 9, 'Amp It Up', 'Lucio increases the volume on his speakers, boosting the effects of his songs.\r\n\r\n'),
(53, 9, 'Sound Barrier (Ultimate)', 'Protective waves radiate out from Lucio\'s Sonic Amplifier, briefly providing him and nearby allies with personal shields.\r\n\r\n'),
(54, 10, 'Peacekeeper (Single Shot)', 'McCree fires off a round from his trusty six-shooter.\r\n\r\n'),
(55, 10, 'Peacekeeper (Fan the Hammer)', 'McCree can fan the Peacekeeper\'s hammer to swiftly unload the entire cylinder.\r\n\r\n'),
(56, 10, 'Combat Roll', 'McCree dives in the direction he\'s moving, effortlessly reloading his Peacekeeper in the process.\r\n\r\n'),
(57, 10, 'Flashbang', 'McCree heaves a blinding grenade that explodes shortly after it leaves his hand. The blast staggers enemies in a small radius.\r\n\r\n'),
(58, 10, 'Deadeye (Ultimate)', 'Focus. Mark. Draw. McCree takes a few precious moments to aim; when he’s ready to fire, he shoots every enemy in his line of sight. The weaker his targets are, the faster he’ll line up a killshot.\r\n\r\n'),
(59, 11, 'Endothermic Blaster (Freeze Spray)', 'Mei\'s blaster unleashes a concentrated, short-range stream of frost that damages, slows, and ultimately freezes enemies in place.\r\n\r\n'),
(60, 11, 'Endothermic Blaster (icicle)', 'Mei can also use her blaster to shoot icicle-like projectiles at medium range.\r\n\r\n'),
(61, 11, 'Ice Wall', 'Mei generates an enormous ice wall that obstructs lines of sight, stops movement, and blocks attacks.\r\n\r\n'),
(62, 11, 'Blizzard (Ultimate)', 'Mei deploys a weather-modification drone that emits gusts of wind and snow in a wide area. Enemies caught in the blizzard are slowed and take damage; those who linger too long are frozen solid.\r\n\r\n'),
(63, 12, 'Angelic Descent (Passive)', 'Propelled by her Valkyrie suit, Mercy slows the speed of her descent from great heights.\r\n\r\n'),
(64, 12, 'Regeneration (Passive)', 'Mercy automatically heals over time.\r\n\r\n'),
(65, 12, 'Caduceus Staff', 'Mercy engages one of two beams that connect to an ally. By maintaining the beams, she can either restore that ally\'s health or increase the amount of damage they deal.\r\n\r\n'),
(66, 12, 'Caduceus Blaster', 'Mercy shoots a round from her sidearm. It\'s best reserved for emergency personal defense.\r\n\r\n'),
(67, 12, 'Guardian Angel', 'Mercy flies towards a targeted ally, allowing her to reach them quickly and provide assistance in crucial moments.\r\n\r\n'),
(68, 12, 'Resurrect', 'Mercy radiates restorative power, bringing nearby dead allies back into the fight with full health.\r\n\r\n'),
(69, 12, 'Valkyrie (Ultimate)', 'Valkyrie unleashes the full power of Mercy\'s Valkyrie Suit, enhancing her weapons and abilities for 20 seconds.\r\n\r\n'),
(70, 13, 'Biotic Grasp', 'Using her left hand, Moira expends biotic energy to heal allies in front of her. Her right hand fires a long-range beam weapon that saps enemies’ health, healing Moira and replenishing her biotic energy.'),
(71, 13, 'Fade', 'Disappear, move faster, and become invulnerable, but you cannot shoot.'),
(72, 13, 'Biotic Orb', 'Moira launches a rebounding biotic sphere; she can choose between a regeneration effect that heals the allies it passes through, or a decay effect that deals damage to enemies.'),
(73, 13, 'Coalescence (Ultimate Ability)', 'Damage Rate:    70 per second'),
(74, 14, 'Fusion Driver', 'Orisa’s automatic projectile cannon delivers sustained damage, but slows her movement while she fires it.'),
(75, 14, 'Halt!', 'Orisa launches a graviton charge which she can detonate, slowing nearby enemies and pulling them towards the explosion.'),
(76, 14, 'Fortify', 'Orisa temporarily reduces damage she takes, and cannot be affected by action-impairing effects.'),
(77, 14, 'Protective Barrier', 'Orisa throws out a stationary barrier that can protect her and her allies from enemy fire.'),
(78, 14, 'Supercharger (Ultimate Ability)', 'Orisa deploys a device to increase damage by 50% inflicted by allies within its line of sight.'),
(79, 15, 'Hover Jets', 'Pharah hovers in mid-air.'),
(80, 15, 'Rocket Launcher', 'Pharah’s primary weapon launches rockets that deal significant damage in a wide blast radius.'),
(81, 15, 'Concussive Blast', 'Pharah looses a wrist rocket that knocks back any enemies it strikes.'),
(82, 15, 'Jump Jet', 'Propelled by her suit’s thrusters, Pharah soars high into the air.'),
(83, 15, 'Barrage (Ultimate Ability)', 'Pharah directs a continuous salvo of mini-rockets to destroy groups of enemies.'),
(84, 16, 'The Reaping (Passive)', 'Reaper steals health from his enemies as he damages them.'),
(85, 16, 'Hellfire Shotguns', 'Reaper can collect Soul Globes to regain health.'),
(86, 16, 'Wraith Form', 'Reaper becomes a shadow for a short period of time. While in this form, he takes no damage and is able to pass through enemies, but cannot fire his weapons or use other abilities.'),
(87, 16, 'Shadow Step', 'After marking a destination, Reaper disappears and reappears at that location.'),
(88, 16, 'Death Blossom (Ultimate)', 'In a blur of motion, Reaper empties both Hellfire Shotguns at breakneck speed, dealing massive damage to all nearby enemies.'),
(89, 17, 'Rocket Hammer', 'Reinhardt’s Rocket Hammer is an exemplary melee weapon, able to deal punishing damage in a wide arc with every swing.'),
(90, 17, 'Barrier Field', 'Reinhardt projects a broad, forward-facing energy barrier, which can absorb substantial damage before it is destroyed. Though Reinhardt can protect himself and his companions behind the barrier, he cannot attack while sustaining it.'),
(91, 17, 'Charge', 'Reinhardt charges forth in a straight line, pinning the first enemy in his path and knocking others aside. If he collides with a wall, the foe he’s carrying suffers extreme damage.'),
(92, 17, 'Fire Strike', 'By whipping his Rocket Hammer forward, Reinhardt slings a flaming projectile which pierces and damages any enemies it touches.'),
(93, 17, 'Earthshatter (Ultimate)', 'Reinhardt forcefully slams his Rocket Hammer into the ground, knocking down and damaging all enemies in front of him.'),
(94, 18, 'Scrap Gun Blast', 'Roadhog’s Scrap Gun fires short-range blasts of shrapnel with a wide spread.'),
(95, 18, 'Shrapnel Ball (Alternate Fire)', 'Alternatively, it can launch a shrapnel ball that detonates farther away, scattering metal fragments from the point of impact.'),
(96, 18, 'Chain Hook', 'Roadhog hurls his chain at a target; if it catches, he yanks them into close range.'),
(97, 18, 'Take A Breather', 'Roadhog restores a chunk of his health over a brief period of time.'),
(98, 18, 'Whole Hog (Ultimate)', 'After cramming a top-loader onto his Scrap Gun, Roadhog pours in ammo. For a short time, he can crank out a stream of shrapnel that knocks back enemies.'),
(99, 19, 'Heavy Pulse Rifle', 'Soldier: 76’s rifle remains particularly steady while unloading fully-automatic pulse fire.'),
(100, 19, 'Helix Rockets', 'Tiny rockets spiral out of Soldier: 76’s Pulse Rifle in a single burst. The rockets’ explosion damages enemies in a small radius.'),
(101, 19, 'Sprint', 'Whether he needs to evade a firefight or get back into one, Soldier: 76 can rush ahead in a burst of speed. His sprint ends if he takes an action other than charging forward.'),
(102, 19, 'Biotic Field', 'Soldier: 76 plants a biotic emitter on the ground. Its energy projection restores health to 76 and any of his squadmates within the field.'),
(103, 19, 'Tactical Visor (Ultimate Ability)', 'Soldier: 76’s pinpoint targeting visor “locks” his aim on the threat closest to his crosshairs. If an enemy leaves his line of sight, Soldier: 76 can quickly switch to another target.'),
(104, 20, 'Opportunist (Passive)', 'Sombra detects critically injured enemies through walls. This effect becomes active on an enemy if they fall below half health.'),
(105, 20, 'Machine Pistol', 'Sombra’s fully-automatic machine pistol fires in a short-range spread.'),
(106, 20, 'Hack', 'Sombra hacks enemies to temporarily stop them from using their abilities, or hacks first aid kits to spawn faster and make them useless to her opponents. Taking damage interrupts the hacking.'),
(107, 20, 'Stealth', 'Sombra becomes invisible for a short period of time, during which her speed is boosted considerably. Attacking, using offensive abilities, or taking damage disables her camouflage.'),
(108, 20, 'Translocator', 'Sombra tosses out a translocator beacon. She can instantly return to the beacon’s location while it is active you can only have one beacon at a time. (including when it’s in mid-flight).'),
(109, 20, 'EMP (Ultimate Ability)', 'Sombra discharges electromagnetic energy in a wide radius, destroying enemy barriers and shields and hacking all opponents caught in the blast.'),
(110, 21, 'Photon Beam', 'Symmetra’s weapon emits a short-range beam that homes in on a nearby enemy, dealing continuous damage that increases the longer it is connected.'),
(111, 21, 'Energy Ball (Alternate Fire)', 'The projector can also release a charged energy ball that deals high damage.'),
(112, 21, 'Sentry Turret', 'Symmetra sets up a small turret that automatically fires speed-reducing blasts at the nearest enemy within range. Several turrets can be built on the battlefield at once.'),
(113, 21, 'Photon Barrier', 'Symmetra projects a moving barrier that absorbs damage as it travels forward.'),
(114, 21, 'Teleporter (Ultimate)', 'Symmetra places a teleporter exit pad at her current location, and connects it to a teleporter entry pad at her team’s starting point. Allies can travel through the entry pad to the exit pad instantly, enabling them to return to the fight swiftly after being defeated.'),
(115, 21, 'Shield Generator (Ultimate)', 'Symmetra deploys a wide-radius generator that provides increased shielding to her entire team.'),
(116, 22, 'Scrap Collector (Passive)', 'Torbjörn can collect scrap from enemies or allies that die on the battlefield.'),
(117, 22, 'Rivet Gun Shot', 'Torbjörn fires rivets at long range'),
(118, 22, 'Rivet Gun Burst (Alternate Fire)', 'Torbjörn ejects molten metal from his gun in a short, close-range burst.'),
(119, 22, 'Forge Hammer (Alternate Weapon)', 'Torbjörn uses his multipurpose hammer to build, upgrade and repair turrets. In a pinch, it can also be swung as a weapon.'),
(120, 22, 'Build Turret', 'Torbjörn constructs an enemy-tracking autocannon. He can use his Forge Hammer to repair or upgrade it, increasing its health and adding a second cannon barrel and a rocket launcher.'),
(121, 22, 'Armor Pack', 'Torbjörn deploys an armor upgrade; either he or his allies can pick it up to absorb some damage.'),
(122, 22, 'Molten Core (Ultimate)', 'After overheating his personal forge, Torbjörn gains a significant amount of armor and scrap. He also attacks (and builds and repairs turrets) far faster than normal.'),
(123, 23, 'Pulse Pistols', 'Tracer rapid-fires both of her pistols.'),
(124, 23, 'Blink', 'Tracer zips horizontally through space in the direction she’s moving, and reappears several yards away. She stores up to three charges of the blink ability and generates more every few seconds.'),
(125, 23, 'Recall', 'Tracer bounds backward in time, returning her health, ammo and position on the map to precisely where they were a few seconds before.'),
(126, 23, 'Pulse Bomb (Ultimate)', 'Tracer lobs a large bomb that adheres to any surface or unfortunate opponent it lands on. After a brief delay, the bomb explodes, dealing high damage to all enemies within its blast radius.'),
(127, 24, 'Widow’s Kiss (Automatic)', 'Widowmaker’s rifle can be shot in fully-automatic mode allowing her to effectively shoot targets from close to medium range.'),
(128, 24, 'Widow’s Kiss (Scoped, Alternate fire)', 'Widowmaker’s versatile sniper rifle is ideal for scope-aimed shots at distant targets.'),
(129, 24, 'Grappling Hook', 'Widowmaker launches a grappling hook towards the location she’s aiming at – when the hook connects with a scalable surface, she’s quickly drawn towards it, allowing her to expand her view of the battlefield and evade or flank targets.'),
(130, 24, 'Venom Mine', 'Widowmaker adheres a swiftly-arming venom mine to nearly any surface. When a target wanders within range of the mine’s motion trigger, it explodes, delivering poison gas to any enemies in the vicinity.'),
(131, 24, 'Infra-Sight (Ultimate)', 'Widowmaker’s recon visor allows her to see the heat signatures of her targets through walls and objects for a moderate amount of time. This enhanced vision is shared with her allies.'),
(132, 25, 'Tesla Cannon', 'Winston’s weapon fires a short-range electric barrage for as long as he holds down the trigger.'),
(133, 25, 'Jump Pack', 'Assisted by his energy pack, Winston lunges through the air, dealing significant damage and staggering nearby enemies when he lands.'),
(134, 25, 'Barrier Projector', 'Winston’s barrier projector extends a bubble-shaped field that absorbs damage until it’s destroyed. Allies protected by the barrier can return fire from within it.'),
(135, 25, 'Primal Rage (Ultimate)', 'Winston embraces his animal nature, significantly boosting his health and making him very difficult to kill, strengthening his melee attack, and allowing him to use his Jump Pack ability more frequently. While raging, Winston can only make melee and Jump Pack attacks.'),
(136, 26, 'Energy (Passive)', 'Damage blocked increases Particle Cannon damage.'),
(137, 26, 'Particle Energy Beam', 'Zarya’s mighty Particle Cannon unleashes a short-range beam of destructive energy.'),
(138, 26, 'Particle Explosive Charge (Alternate fire)', 'Alternatively, Zarya can lob an explosive charge to strike multiple opponents.'),
(139, 26, 'Particle Barrier', 'The Particle Cannon can emit a personal barrier that shields Zarya against incoming attacks, redirecting their energy to enhance her weapon’s damage and the width of its beam.'),
(140, 26, 'Projected Barrier', 'Zarya surrounds one of her teammates with an energy barrier that simultaneously absorbs fire and boosts the power of her Particle Cannon.'),
(141, 26, 'Graviton Surge (Ultimate)', 'Zarya launches a gravity bomb that draws in enemy combatants and deals damage while they’re trapped.'),
(142, 27, 'Orb of Destruction (Singular Orb)', 'Zenyatta projects his destructive energy orbs individually.'),
(143, 27, 'Orb of Destruction (Orb Volley)', 'Zenyatta projects his destructive energy orbs in a rapid-fire volley after a few seconds spent gathering power.'),
(144, 27, 'Orb of Harmony', 'Zenyatta casts an orb over the shoulder of a targeted ally. So long as Zenyatta maintains line of sight, the orb slowly restores health to his ally. Only one ally can receive the orb’s benefit at a time.'),
(145, 27, 'Orb of Discord', 'Attaching the orb of discord to an opponent amplifies the amount of damage they receive for as long as Zenyatta maintains line of sight. Only one opponent can suffer the orb’s effects at a time.'),
(146, 27, 'Transcendence (Ultimate)', 'Zenyatta enters a state of heightened existence for a short period of time. While transcendent, Zenyatta cannot use abilities or weapons, but is immune to damage and automatically restores his health and that of nearby allies.');

-- --------------------------------------------------------

--
-- Table structure for table `ability_stats`
--

CREATE TABLE `ability_stats` (
  `stat_id` int(8) NOT NULL,
  `ability_id` int(8) NOT NULL,
  `ability_stat` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `ability_stats`
--

INSERT INTO `ability_stats` (`stat_id`, `ability_id`, `ability_stat`) VALUES
(1, 1, 'Ammo: 10 rounds per clip'),
(2, 2, 'Ammo:   10 rounds per clip'),
(3, 3, 'Damage: 5'),
(4, 4, 'Damage:   60 damage to enemies'),
(5, 5, 'Damage increase:   50%'),
(6, 7, 'Damage Resistance: +20%'),
(7, 8, 'Ammo: 25 rounds per clip'),
(8, 9, 'Ammo: 300 rounds per clip'),
(9, 10, 'Healing Rate: 70 HP per second on self'),
(10, 11, 'Recon to sentry: 1 second'),
(11, 12, 'Fire Rate: 1 shell per second'),
(12, 13, 'Healing Rate: 16 per second'),
(13, 14, 'Melee Type: Ranged'),
(14, 15, 'Type: Mobile barrier'),
(15, 16, 'Type: Stunning movement'),
(16, 17, 'Type: Linear projectile'),
(17, 18, 'Type: Healing/buffing homing projectile'),
(18, 19, 'Type:  Transformation ultimate & Armor generation ability'),
(19, 20, 'Duration: 1 second'),
(20, 21, 'Ammo: Infinite rounds per clip; 11 pellets per shot'),
(21, 22, 'Recharge Time: 8 seconds'),
(22, 23, 'Damage: 25'),
(23, 24, 'Damage: 2 - 9 per rocket; Max 162 damage per use'),
(24, 25, 'Damage: 1000 from point of explosion (falls off from far away)'),
(25, 26, 'Buff: +30 or +75 temporary shield per enemy damaged'),
(26, 27, 'Ammo: 4 rounds per clip'),
(27, 28, 'Damage: 49 - 100 damage; Max 98 - 250 damage if a wall is hit'),
(28, 29, 'Damage: 50'),
(29, 30, 'Damage: 10-125 damage'),
(30, 31, 'Damage: 10 - 300'),
(31, 32, 'Ability: Climb walls\r\n\r\n'),
(32, 33, 'Ammo: 24 rounds per clip\r\n'),
(33, 34, 'Ammo: 24 rounds per clip\r\n'),
(34, 35, 'Damage: 50\r\n'),
(35, 36, 'Cooldown: 8 seconds'),
(36, 37, 'Buff Duration: 6 seconds\r\n'),
(37, 38, 'Ability: Can climb up walls\r\n\r\n'),
(38, 39, 'Ammo: Infinite'),
(39, 40, 'Damage: 29 - 125'),
(40, 41, 'Damage: 29 - 125; 22 - 75'),
(41, 42, 'Damage: 125 (arrow); 200 per second (dragons)'),
(42, 43, 'Damage: 60 per grenade'),
(43, 44, 'Ammo: 5 rounds per clip\r\n'),
(44, 45, 'Damage: 120'),
(45, 46, 'Damage: 80'),
(46, 47, 'Damage: 60 - 100'),
(47, 48, 'Ability: Can ride along a wall\r\n'),
(48, 49, 'Ammo: 20 rounds per clip\r\n'),
(49, 50, 'Ammo: 20 rounds per clip (4 per shot)'),
(50, 51, 'Heal Rate: 16.25 HP per second; 13 HP per second on self'),
(51, 52, 'Heal Rate: 46.8 HP per second; 35 HP per second on self'),
(52, 53, 'Radius: 30 m radius'),
(53, 54, 'Ammo: 6 per clip'),
(54, 55, 'Ammo: 6 rounds per clip'),
(55, 56, 'Range: 6 m'),
(56, 57, 'Damage: 25'),
(57, 58, 'Damage: 100 or 250 per second'),
(58, 59, 'Ammo: 200 rounds'),
(59, 60, 'Ammo: 200 rounds per clip\r\n'),
(60, 61, 'Range: 35 m '),
(61, 62, 'Damage Rate: 20 per second'),
(62, 63, 'Ability: Hold down the jump button to slow descent in the air\r\n\r\n'),
(63, 64, 'Heal Rate: 20 healing per second\r\n'),
(64, 65, 'Healing Rate: 60 healing per second\r\n'),
(65, 66, 'Ammo: 20 rounds per clip\r\n'),
(66, 67, 'Range: 30 meters\r\n'),
(67, 68, 'Range: 5m'),
(68, 69, 'Movement Speed: 9 m/s'),
(69, 70, 'Primary fire: Regeneration'),
(70, 71, 'Movement Speed:   18.75 m/s'),
(71, 72, 'Damage Rate:   50 per second'),
(72, 73, 'Range: 30 m'),
(73, 74, 'Ammo:   150 rounds per clip'),
(74, 75, 'Projectile Speed:    20 m/s'),
(75, 76, 'Buff: +50% damage resistance'),
(76, 77, 'Barrier HP:   900'),
(77, 78, 'Damage Buff: +50% damage dealt'),
(78, 79, 'Recharge Time:  2 seconds'),
(79, 80, 'Ammo:  6 rounds per clip'),
(80, 81, 'Radius:  8 m splash'),
(81, 82, 'Range:  ~25 m'),
(82, 83, 'Fire Rate:   30 rockets per second'),
(83, 84, 'Effect:  20% of damage done restored as HP'),
(84, 85, 'Ammo:  8 rounds per clip'),
(85, 86, 'Movement Speed:   7.1 m/s'),
(86, 87, 'Range:  35 m'),
(87, 88, 'Damage Rate:   170 damage per sec'),
(88, 89, 'Ammo: Unlimited rounds per clip'),
(89, 90, 'Shield Health:    2000 barrier HP'),
(90, 91, 'Damage:   0, 50 or 300'),
(91, 92, 'Damage:   100'),
(92, 93, 'Damage:   50 per enemy'),
(93, 94, 'Ammo:   5 rounds per clip'),
(94, 95, 'Ammo:   5 rounds per clip'),
(95, 96, 'Damage:   30'),
(96, 97, 'Healing Rate:  300 healing per second on self'),
(97, 98, 'Damage:  109.5 per shot'),
(98, 99, 'Ammo:   25 rounds per clip'),
(99, 100, 'Damage:    120'),
(100, 101, 'Movement Speed:   8.33 m/s'),
(101, 102, 'Heal Rate:   40 HP per second'),
(102, 103, 'Duration:   Lasts 6 seconds'),
(103, 104, ''),
(104, 105, 'Ammo:   60 rounds per clip'),
(105, 106, 'Range:   15 m'),
(106, 107, 'Movement Speed:   8.8 m/s'),
(107, 108, 'Projectile Speed: 19 m/s'),
(108, 109, 'Damage Radius:    15 m radius'),
(109, 110, 'Ammo:   100 rounds per clip'),
(110, 111, 'Ammo:   100 rounds per clip'),
(111, 112, 'Turrets Storage:   6'),
(112, 113, 'Shield:   1000 barrier HP'),
(113, 114, 'Duration:   Lasts until destroyed or depleted of charges'),
(114, 115, 'Radius:  50 m'),
(115, 116, 'Ability:  +2 scrap per second, +15 scrap per pickup; Max 200 scrap'),
(116, 117, 'Ammo:   18 rounds per clip'),
(117, 118, 'Ammo:   18  rounds per clip'),
(118, 119, 'Damage: 55 per swing'),
(119, 120, 'Deploy Time:  3 seconds'),
(120, 121, 'Armor:   +75 temporary per pack'),
(121, 122, 'Attack Speed::   +50% attack speed'),
(122, 123, 'Ammo:  40 rounds per clip'),
(123, 124, 'Charges:   3'),
(124, 125, 'Duration:   1.25 seconds'),
(125, 126, 'Damage:   400'),
(126, 127, 'Ammo:   30 rounds per clip'),
(127, 128, 'Ammo:   30 rounds per clip'),
(128, 129, 'Projectile Speed:    20 m/s'),
(129, 130, 'Damage:   15 per second'),
(130, 131, 'Cast Time:   0.5 sec cast'),
(131, 132, 'Ammo:   100 rounds per clip'),
(132, 133, 'Splash damage:   1 and 45 – 1 damage'),
(133, 134, 'Barrier:  600 HP'),
(134, 135, 'Health Buff:  +500 maximum health; health and armor fully replenished'),
(135, 136, 'Particle Cannon Damage:  +1% per point; Max +100% Particle Cannon damage\r\n+1 Energy per 5 barrier HP damage; -2 Energy per sec'),
(136, 137, 'Ammo:   100 rounds per clip'),
(137, 138, 'Ammo:   100 rounds per clip'),
(138, 139, 'Barrier Health:   200'),
(139, 140, 'Barrier Health:   200'),
(140, 141, 'Damage Rate:   5.5 per sec'),
(141, 142, 'Ammo:  20 rounds per clip'),
(142, 143, 'Ammo:  20 rounds per clip'),
(143, 144, 'Healing:  30 HP per second'),
(144, 145, 'Damage Resistance Debuff:   -30% resistance'),
(145, 146, 'Radius:  10 m'),
(256, 1, 'Reload Time: 1.5-second reload'),
(257, 2, 'Reload Time: 1.5-second reload'),
(258, 3, 'Sleep Duration: 5.5 seconds (or until damaged)'),
(259, 4, 'Splash Radius:?4 m'),
(260, 5, 'Damage mitigation:   50%'),
(261, 8, 'Reload Time: 2 seconds'),
(262, 9, 'Reload Time: 2 seconds'),
(263, 10, 'Recharge Time: 7 seconds'),
(264, 11, 'Sentry to recon: 0.5 seconds'),
(265, 12, 'Direct Hit Damage: 205'),
(266, 13, 'Radius: 20 m'),
(267, 14, 'Rounds Per Clip: Infinite'),
(268, 15, 'Barrier HP: 600'),
(269, 16, 'Damage: 50'),
(270, 17, 'Damage: 70'),
(271, 18, 'Healing: 150 per pack'),
(272, 19, 'Radius: 8 m'),
(273, 21, 'Damage: 0.6 - 2 damage per pellet;  Max 22 bodyshot damage'),
(274, 22, 'Range: 15 m range'),
(275, 23, 'Range: 25 m'),
(276, 24, 'Splash Damage: 2 - 6'),
(277, 25, 'Splash range: 20 meters'),
(278, 26, 'Max Shield: Max 150 temporary shield'),
(279, 27, 'Reload: 0.75 second reload per round; Max 3 second reload'),
(280, 28, 'Range: 10 - 20 m'),
(281, 29, 'Cooldown: 7 seconds'),
(282, 30, 'Range: 7.5 m range'),
(283, 31, 'Radius: 7.5 m'),
(284, 33, ''),
(285, 34, 'Reload Time: 1 second\r\n'),
(286, 35, 'Range: 15 m range\r\n'),
(287, 37, 'Damage: 120 per strike\r\n'),
(288, 39, 'Ramage: 29 - 125'),
(289, 40, 'Projectile Speed: 26 - 87 m/s'),
(290, 41, 'Projectiles: 6 fragments per shot'),
(291, 42, 'Range: Infinite'),
(292, 43, 'Max Damage: 300'),
(293, 44, 'Reload Time: 1.5 second\r\n'),
(294, 45, 'Radius: 3 m'),
(295, 46, 'Health: 100'),
(296, 47, 'Radius: 10 m'),
(297, 48, 'Movement Speed: 7.7 m/s\r\n\r\n'),
(298, 49, 'Reload Time: 1.25 seconds\r\n'),
(299, 50, 'Reload Time: 1.25 seconds'),
(300, 51, 'Movement Speed: +30% movement speed'),
(301, 52, 'Movement Speed: +70% movement speed'),
(302, 53, 'Shield: +500 temporary shield'),
(303, 54, 'Reload Time: 1.5 seconds'),
(304, 55, 'Reload Time: 1.5 seconds'),
(305, 56, 'Movement Speed: 12 m/s'),
(306, 57, 'Radius: 2 m'),
(307, 58, 'Movement Speed: 2 m/s '),
(308, 59, 'Reload Time: 1.5 seconds'),
(309, 60, 'Reload time: 1.5 seconds\r\n'),
(310, 61, 'Duration: 4.5 seconds or until broken'),
(311, 62, 'Max Damage: 100 per enemy'),
(312, 64, 'Buffer: 1 sec\r\n\r\n'),
(313, 65, 'Damage Boost: +30% damage dealt\r\n'),
(314, 66, 'Reload Time: 1 second\r\n'),
(315, 67, 'Cooldown: 1.5 seconds\r\n\r\n'),
(316, 68, 'Movement Speed: 1.375 m/s\r\n'),
(317, 69, 'Duration: 20 seconds'),
(318, 70, 'Secondary fire: Decay'),
(319, 71, 'Duration: Lasts 0.8 seconds'),
(320, 72, 'Max Damage: 200'),
(321, 73, 'Healing Rate: 140 per second'),
(322, 74, 'Reload Time: 2.66-second'),
(323, 75, 'Radius: 7.5 m radius'),
(324, 76, 'Duration: Lasts 4 seconds'),
(325, 77, 'Projectile Speed: 19 m/s'),
(326, 78, 'Radius: 25 m radius'),
(327, 79, 'Movement Speed: 5.5 m/s'),
(328, 80, 'Reload Time:  1-second'),
(329, 81, 'Projectile Speed: 57 m/s'),
(330, 82, 'Movement Speed:  ~20 m/s'),
(331, 83, 'Damage: 40 per rocket'),
(332, 85, 'Reload TIme:  1.5-seconds'),
(333, 86, 'Duration: 3 seconds'),
(334, 87, 'Duration:  Lasts 2 seconds'),
(335, 88, 'Max Damage:  510 per enemy'),
(336, 89, 'Damage:  75'),
(337, 90, 'Shield Health Regen: 200 barrier HP per sec'),
(338, 91, 'Range: 55 m'),
(339, 92, 'Projectile Speed:  26.66 m/s'),
(340, 93, 'Range: 2 m, 20 m'),
(341, 94, 'Reload time:   1.5 seconds'),
(342, 95, 'Reload time:   1.5 seconds'),
(343, 96, 'Projectile Speed:  40 m/s'),
(344, 97, 'Damage Resistance: +50%'),
(345, 98, 'Max Damage:  4928 bodyshot per use'),
(346, 99, 'Reload Time:  1.5-second'),
(347, 100, 'Splash Damage:  80; 40 splash self damage'),
(348, 101, 'Duration: Lasts until stopped'),
(349, 102, 'Radius: 5 m'),
(350, 103, 'Reload Time:  0.75 sec'),
(351, 105, 'Reload Time: 1.5-second reload'),
(352, 106, 'Cast Time:  0.8 seconds'),
(353, 107, 'Cast Time: 0.7 seconds cloaking/uncloaking'),
(354, 108, 'Cast Time: ~0.7 seconds'),
(355, 109, 'Cast Time: 0.5 sec'),
(356, 110, 'Reload time:   1.8 second'),
(357, 111, 'Reload time:   1.8 second'),
(358, 112, 'Max Turrets on Field: 6'),
(359, 113, 'Projectile Speed: 5.5 m/s'),
(360, 114, 'Number of uses:   6 charges'),
(361, 115, 'Buff: +75 shields'),
(362, 117, 'Reload time:   2 seconds'),
(363, 118, 'Reload time:   2 seconds'),
(364, 119, 'Healing: 50 per swing'),
(365, 120, 'Cooldown: 8-seconds'),
(366, 121, 'Scrap: 50 per pack'),
(367, 122, 'Armor: +300'),
(368, 123, 'Reload Time: 1-second'),
(369, 124, 'Range: 7.8 m'),
(370, 125, 'Cooldown:   12 seconds'),
(371, 126, 'Radius: 3 m'),
(372, 127, 'Reload time:   1.5 seconds'),
(373, 128, 'Reload time:   1.5 seconds'),
(374, 129, 'Range: 20 m'),
(375, 130, 'Max Damage:  75 total\r\n5 HP'),
(376, 131, 'Duration: 15.5 seconds'),
(377, 132, 'Reload Time: 1.5-second'),
(378, 133, 'Range: 20 m'),
(379, 134, 'Radius: 5 m'),
(380, 135, 'Melee Rate: 1.55 swings per second'),
(381, 136, 'Buffer: 2 sec decay'),
(382, 137, 'Reload time:   1.5 seconds'),
(383, 138, 'Reload time:   1.5 seconds'),
(384, 139, 'Duration: 2 seconds or until destroyed'),
(385, 140, 'Range: 30 m'),
(386, 141, 'Max Damage:  22 damage per enemy'),
(387, 142, 'Reload time:  2 seconds'),
(388, 143, 'Reload time:  2 seconds'),
(389, 144, 'Projectile Speed: 120 m/s'),
(390, 145, 'Projectile Speed: 120 m/s'),
(391, 146, 'Heal Rate: 300 healing per second'),
(511, 1, 'Damage: 70 damage'),
(512, 2, 'Movement Speed:  1.9 m/s'),
(513, 3, 'Cast Time: 0.5 seconds'),
(514, 4, 'Healing: 100 healing to allies; 100 healing on self'),
(515, 5, 'Movement speed:   30%'),
(516, 8, 'Damage: 6 - 20 damage'),
(517, 9, 'Damage: 4 - 15 damage'),
(518, 10, 'Movement Speed: 5.5 m/s movement speed'),
(519, 11, 'Reload: Automatically reloads weapon'),
(520, 12, 'Splash Damage: 70 - 145'),
(521, 13, 'Buffer: 1.5 seconds'),
(522, 14, 'Damage: 35'),
(523, 15, 'Barrio HP per Second: 100'),
(524, 16, 'Range: 6m'),
(525, 17, 'Projectile Speed: 40 m/s'),
(526, 18, 'Armor: 75 per pack'),
(527, 19, 'Armor: 30 per second'),
(528, 21, 'Falloff: 10 - 20 m falloff range'),
(529, 22, 'Movement Speed: 5.5 m/s movement speed'),
(530, 23, 'Movement Speed: 12.5 m/s'),
(531, 24, 'Splash Damage (Self): 6'),
(532, 25, 'Duration: 3 seconds'),
(533, 26, 'Decay: 3 HP per sec decay; 1.5 sec decay buffer\r\n\r\n'),
(534, 27, 'Type: Shotgun'),
(535, 28, 'Charge Time: 1 second, 2 secpnd forced release'),
(536, 30, 'Duration: 1.5 seconds'),
(537, 31, 'Cast Time: 1 second'),
(538, 33, ''),
(539, 34, 'Ammo: 28 damage per shuriken\r\n'),
(540, 35, 'Movement Speed:37 m/s\r\n'),
(541, 37, 'Attack speed: 1.17 per second\r\n'),
(542, 39, 'Rate of Fire: 0.8 - 2 shots per second'),
(543, 40, 'Radius: 10 m'),
(544, 41, 'Max Damage: 450 fragment damage'),
(545, 42, 'Radius: 4 m'),
(546, 43, 'Radius: 2 m splash radius'),
(547, 44, 'Damage: 120 direct hit; 12.5 - 80 splash damage\r\n'),
(548, 45, 'Health: 5 '),
(549, 46, 'Radius: 1 m'),
(550, 47, 'Projectile Speed: 13 m/s'),
(551, 49, 'Damage: 20 per projectile\r\n'),
(552, 50, 'Damage: 25 damage'),
(553, 51, 'Radius: 10 m'),
(554, 52, 'Radius: 10 m'),
(555, 53, 'Duration: Lasts 6.25 seconds'),
(556, 54, 'Damage: 20 - 70 damage'),
(557, 55, 'Damage: 22 - 45 damage per bullet'),
(558, 56, 'Duration: 0.5 seconds'),
(559, 57, 'Range: 5 m'),
(560, 58, 'Cast Time: 0.2 seconds'),
(561, 59, 'Damage: 2.25 per round\r\n'),
(562, 60, 'Damage: 22 - 75\r\n'),
(563, 61, 'Cooldown: 10 seconds'),
(564, 62, 'Radius: 10 m'),
(565, 65, 'Range: 15 (30) m\r\n'),
(566, 66, 'Damage: 20\r\n'),
(567, 68, 'Cast Time: 1.75 sec\r\n'),
(568, 71, 'Cooldown: 6-seconds'),
(569, 72, 'Healing Rate: 75 per second'),
(570, 73, 'Movement Speed: 9 m/s'),
(571, 74, 'Damage:  11'),
(572, 75, 'Cast Time: 0.33 seconds'),
(573, 76, 'Cooldown: 10-seconds'),
(574, 77, 'Duration: Lasts 20 seconds'),
(575, 78, 'Cast Time: 1 sec cast'),
(576, 79, 'Duration: 2 seconds or until stopped'),
(577, 80, 'Damage:  120 direct hit; 20 – 80 splash damage; 10 – 40 splash self damage'),
(578, 81, 'Cooldown: 12-seconds'),
(579, 82, 'Cooldown:  10-seconds'),
(580, 83, 'Max Damage: Max 3600 per use'),
(581, 85, 'Damage:  2 – 7 per pellet'),
(582, 86, 'Cooldown: 8-seconds'),
(583, 87, 'Cooldown:  10-seconds'),
(584, 88, 'Radius: 8 m'),
(585, 89, 'Fire Rate:  1.1 swings per sec'),
(586, 90, 'Movement Speed: 2.75 m/s'),
(587, 91, 'Movement Speed: 16.66 m/s'),
(588, 92, 'Cooldown: 6-seconds'),
(589, 93, 'Duration: 2.5 seconds'),
(590, 94, 'Damage: 1.3 – 6 per fragment'),
(591, 95, 'Damage: 50;  1.3 – 6 per fragment'),
(592, 96, 'Range:  20 m'),
(593, 97, 'Cast Time: 0.6 seconds; 0.4 seconds recovery'),
(594, 98, 'Movement Speed: 2.5 m/s'),
(595, 99, 'Damage:  5 – 19'),
(596, 100, 'Radius:   2 m'),
(597, 101, 'Cooldown: 0-second'),
(598, 102, 'Duration: 5 seconds'),
(599, 103, 'Headshot: No'),
(600, 105, 'Damage: 2.4 – 8 damage'),
(601, 106, 'Duration:  Lasts 6, 20, 10, or 60 seconds'),
(602, 107, 'Duration: 6 seconds or until interrupted'),
(603, 108, 'Duration: 15 seconds or until used/replaced'),
(604, 109, 'Duration: Lasts 6 seconds'),
(605, 110, 'Damage: 7.5/15/30 per hit'),
(606, 111, 'Damage: 25 – 125 damage'),
(607, 112, 'Cast Time: 1.5 seconds'),
(608, 113, 'Duration: Lasts until destroyed'),
(609, 114, 'Cast time:   2 seconds'),
(610, 115, 'Cast Time: 2 sec'),
(611, 117, 'Damage: 70 per shot'),
(612, 118, 'Damage: 6 – 15 per pellet'),
(613, 119, 'Fire Rate: 1.25 swings per second'),
(614, 120, 'Turret Health: 150, 300, or 800 HP'),
(615, 121, 'Cooldown: 0-second cooldown'),
(616, 122, 'Duration: 12 seconds'),
(617, 123, 'Damage: 1.5 – 6 per round'),
(618, 124, 'Cooldown: 3-second'),
(619, 125, 'Ability:   Returns health lost during the last 3 seconds'),
(620, 126, 'Duration: 1 second'),
(621, 127, 'Damage: 13 per shot'),
(622, 128, 'Movement Speed: 1.9 m/s'),
(623, 129, 'Movement Speed: 16 m/s'),
(624, 130, 'Projectile Speed: 19 m/s'),
(625, 132, 'Damage: 3 per round'),
(626, 133, 'Radius: 5 m'),
(627, 134, 'Duration: 5 seconds or until destroyed'),
(628, 135, 'Damage: 40 per swing'),
(629, 137, 'Damage: 4.75 – 9.5 per round'),
(630, 138, 'Damage: 46 – 92 per shot'),
(631, 139, 'Cooldown: 10-second'),
(632, 140, 'Duration: 2 seconds'),
(633, 141, 'Radius: 8 m'),
(634, 142, 'Damage: 46'),
(635, 143, 'Damage: 46 per orb'),
(636, 144, 'Range: 40 m'),
(637, 145, 'Range: 40 m'),
(638, 146, 'Movement Speed: 11 m/s'),
(766, 1, 'Healing: 75 healing'),
(767, 2, 'Damage: 70 damage'),
(768, 3, 'Cooldown: 12 seconds'),
(769, 4, 'Healing Buff: +50% healing to allies, or block healing to enemies; +50% healing on self'),
(770, 5, 'Duration:   8 seconds'),
(771, 8, 'Falloff: 26 - 50 m falloff range'),
(772, 9, 'Falloff: 35 - 55 m falloff range'),
(773, 10, 'Duration: 4.3 seconds or until stopped'),
(774, 12, 'Splash Damage (Self): 28'),
(775, 13, 'Duration: 5 seconds'),
(776, 14, 'Swing Rate: 2 swings per second\r\n'),
(777, 15, 'Movement Speed: 3.85 m/s'),
(778, 16, 'Duration: 1 second'),
(779, 17, 'Range: 20 m'),
(780, 18, 'Projectile Speed: 30 m/s'),
(781, 19, 'Max Armor: 150'),
(782, 21, ''),
(783, 22, 'Duration: 2 seconds or until turned off'),
(784, 23, 'Duration: 2 seconds or until cancelled'),
(785, 24, 'Fire Rate: 11 shots per second'),
(786, 27, 'Damage: 11 damage per pellet; 6 pellets per shot; Max 66 bodyshot damage'),
(787, 28, 'Cooldown: 4 seconds'),
(788, 30, 'Cooldown: 7 seconds'),
(789, 31, 'Duration: 4 seconds'),
(790, 33, ''),
(791, 34, 'Projectiles: 3 shuriken per shot\r\n'),
(792, 35, 'Duration: 0.4 seconds\r\n'),
(793, 37, 'Run speed: Increased\r\n'),
(794, 39, 'Projectile SPeed: 26 - 86 m/s'),
(795, 40, 'Movement Speed: 3.85 m/s'),
(796, 41, 'Projectile Speed: 26 - 87 m/s'),
(797, 42, 'Cast Time: 1.5 sec'),
(798, 43, 'Projectiles: 5 grenades after dying'),
(799, 44, 'Radius: 2 m splash\r\n'),
(800, 45, 'Ammo: 2 charges'),
(801, 46, 'Duration: 3 seconds'),
(802, 47, 'Cast Time: 1.5 - 2 seconds'),
(803, 49, 'Projectiles: 4 projectiles per shot\r\n'),
(804, 50, 'Range: 8m'),
(805, 51, 'Buffer: 0.5 seconds'),
(806, 52, 'Duration: 3 seconds'),
(807, 53, ''),
(808, 54, 'Falloff: 20 - 45 m'),
(809, 55, 'Projectiles: 1 - 6 bullets per shot'),
(810, 56, 'Cooldown: 8 seconds'),
(811, 57, 'Buffer: 0.35 seconds'),
(812, 58, 'Duration: 6 seconds\r\n'),
(813, 59, 'Damage Rate: 45 per second\r\n'),
(814, 60, 'Falloff: 36 - 55 m\r\n'),
(815, 61, ''),
(816, 62, 'Cast Time: 1.5 seconds'),
(817, 65, 'Radius: 10 m radius\r\n'),
(818, 66, 'Fire Rate: 5 shots per second\r\n'),
(819, 68, 'Duration: 2.25 seconds\r\n'),
(820, 72, 'Max Healing: 300'),
(821, 73, 'Cast Time: 0.5 sec'),
(822, 74, 'Fire Rate:  12.5 rounds per sec'),
(823, 75, 'Duration: Lasts 0.45 seconds'),
(824, 77, 'Cooldown: 8-seconds'),
(825, 78, 'Duration: Lasts 16 seconds'),
(826, 80, 'Radius:  3 m splash'),
(827, 81, 'Headshot: No'),
(828, 83, 'Projectile Speed: 28.5 m/s'),
(829, 85, 'Projectiles:   20 pellets per shot'),
(830, 88, 'Movement Speed: 3 m/s'),
(831, 89, 'Range:  5 m range'),
(832, 90, 'Cooldown: 0 or 5-second'),
(833, 91, 'Cooldown: 10-seconds'),
(834, 92, 'Headshot: No'),
(835, 94, 'Projectiles: 25 fragments per shot'),
(836, 95, 'Projectiles:  25 fragments per shot'),
(837, 96, 'Cooldown:  8-second'),
(838, 97, 'Duration: 1 second (healing), 2 seconds (total)'),
(839, 98, 'Cast Time: 0.5 sec'),
(840, 99, 'Falloff:  30 – 55 m'),
(841, 100, 'Projectile Speed:  40 m/s'),
(842, 102, 'Cooldown: 15-seconds'),
(843, 105, 'Faloff Damange: 15 – 25 m falloff range'),
(844, 106, 'Cooldown:  8-seconds'),
(845, 107, 'Cooldown: 6-second'),
(846, 108, 'Cooldown: 4-second cooldown'),
(847, 110, 'Damage Rate: 30/60/120 per second'),
(848, 111, 'Fire Rate: 0.44 – 1.54 shots per second'),
(849, 112, 'Cooldown: 10-seconds'),
(850, 113, 'Cooldown: 10-second'),
(851, 115, 'Duration: Lasts until destroyed, 5 sec'),
(852, 117, 'Fire Rate: 1.67 shot per second'),
(853, 118, 'Projectiles: 10 pellets per shot'),
(854, 119, 'Headshot: No'),
(855, 120, 'Turret Damage: 14 per rounds, 14 per rocket'),
(856, 123, 'Projectiles:  2 rounds per shot'),
(857, 125, 'Ability:   Returns you to position from 3 seconds ago'),
(858, 126, 'Headshot: No'),
(859, 127, 'Fire Rate: 10 shots per second\r\n1 round per shot'),
(860, 128, 'Damage: 12 – 120'),
(861, 129, 'Cooldown: 8-seconds'),
(862, 130, 'Radius: 3 m'),
(863, 132, 'Damage Rate:  60 damage per second'),
(864, 133, 'Cooldown: 6 or 2-second'),
(865, 134, 'Cooldown: 13-second'),
(866, 135, 'Range: 4 m'),
(867, 137, 'Damage Rate: 95 – 190 per second'),
(868, 138, 'Splash Damage: 45 – 90 splash; 23.5 – 47 splash self damage'),
(869, 140, 'Cooldown: 8-second'),
(870, 141, 'Duration: 4 seconds'),
(871, 142, 'Fire Rate: 2.5 shots per second'),
(872, 143, 'Projectiles: 1 – 5 orbs per shot'),
(873, 144, 'Duration: 3 seconds or until target is changed'),
(874, 145, 'Duration: 3 seconds or until target is changed'),
(875, 146, 'Duration: 6 seconds'),
(893, 1, 'Fire Rate: 1.25 shots per second'),
(894, 2, 'Healing: 75 healing'),
(895, 3, 'Headshots: No'),
(896, 4, 'Duration: Lasts 4 seconds'),
(897, 5, 'Range:   40m'),
(898, 8, 'Fire Rate: 8 shots per second\r\n'),
(899, 9, 'Fire Rate: 35 rounds per sec'),
(900, 12, 'Splash Radius: 4m'),
(901, 14, 'Range: 6m'),
(902, 15, 'Cooldown: 0 - 3 seconds'),
(903, 16, 'Cooldown: 5 seconds'),
(904, 17, 'Cooldown: 4 seconds'),
(905, 18, 'Range: 30 m'),
(906, 19, 'Duration: 10 seconds'),
(907, 21, ''),
(908, 22, 'Cooldown: 1 second'),
(909, 23, 'Cooldown: 5 seconds'),
(910, 24, 'Radius: 1.5 m'),
(911, 27, 'Fire Rate: 3.3 shots per sec'),
(912, 33, ''),
(913, 34, 'Damage: Max 84 bodyshot damage\r\n'),
(914, 35, 'Cooldown: 8-second cooldown\r\n'),
(915, 37, 'Range: 5m\r\n'),
(916, 39, 'Movement Speed: 3.85 m/s'),
(917, 40, 'Duration: 10 seconds'),
(918, 41, 'Movement Speed: 3.85 m/s'),
(919, 42, 'Headshots: Arrow does; dragons do not'),
(920, 43, 'Headshots: No'),
(921, 44, 'Fire Rate: 1.66 shots per second\r\n'),
(922, 45, 'Projectile Speed: 17.5 m/s'),
(923, 46, 'Cooldown: 10 seconds'),
(924, 47, 'Duration: 10 seconds'),
(925, 49, 'Max Damage: Max 80 bodyshot damage\r\n'),
(926, 50, 'Cooldown: 4 seconds'),
(927, 51, 'Cooldown: None'),
(928, 52, 'Cooldown: 12 seconds'),
(929, 53, ''),
(930, 54, 'Fire Rate: 2 shots per second'),
(931, 55, 'Max Damage: 270'),
(932, 57, 'Duration: 0.7 seconds'),
(933, 58, 'Headshots: No'),
(934, 59, 'Fire Rate: 20 rounds per second\r\n'),
(935, 60, 'Fire Rate: ~1.17 shots per second\r\n'),
(936, 61, ''),
(937, 62, 'Duration: 5 seconds'),
(938, 65, 'Duration: Until manually disconnected, or 2 seconds after blocked\r\n\r\n'),
(939, 66, 'Projectile Speed: 40 (80) m/s\r\n'),
(940, 68, 'Cooldown: 30-seconds\r\n\r\n'),
(941, 72, 'Projectile Speed: 20 (5.5) m/s'),
(942, 73, 'Duration: Lasts 8 seconds'),
(943, 74, 'Projectile Speed:  72 m/s'),
(944, 75, 'Cooldown: 8-seconds'),
(945, 80, 'Fire Rate:  1.11 shots per second'),
(946, 83, 'Duration: 3 seconds'),
(947, 85, 'Max Damage:  140 bodyshot damage'),
(948, 88, 'Duration: 3 seconds'),
(949, 94, 'Max Damage:  150 bodyshot'),
(950, 95, 'Max Damage:  150 bodyshot'),
(951, 96, 'Headshot: No'),
(952, 97, 'Cooldown: 8-seconds'),
(953, 98, 'Duration: 6 seconds'),
(954, 99, 'Fire Rate:  8.66 shots per second'),
(955, 100, 'Cooldown:  8-second'),
(956, 105, 'Fire Rate: 20 shots per second'),
(957, 110, 'Hit Rate: 4 hits per second'),
(958, 111, 'Projectiles: 4 – 20 rounds per shot'),
(959, 112, 'Turret Health: 1 HP'),
(960, 117, 'Projectiles: 1 round per shot'),
(961, 118, 'Max Damage:  150 bodyshot'),
(962, 120, 'Turret Fire Rate: 2, 4, 5 rounds per second; 4 rockets per second'),
(963, 123, 'Max Damage:  12 bodyshot'),
(964, 127, 'Headshot: Yes'),
(965, 128, 'Fire Rate: 1 uncharged shot per 0.45 seconds – 1 fully charged shot per 1.2 seconds - 3 rounds per shot'),
(966, 130, 'Duration: Lasts until destroyed, 5 seconds'),
(967, 132, 'Fire Rate: 20 rounds per second'),
(968, 135, 'Movement Speed: 7.15 m/s'),
(969, 137, 'Fire Rate: 20 rounds per second'),
(970, 138, 'Radius: 2 – 3 m'),
(971, 141, 'Headshot: No'),
(972, 142, 'Projectile Speed: 60 m/s projectile speed'),
(973, 143, 'Max Damage: 230 bodyshot'),
(974, 144, 'Cooldown: none'),
(975, 145, 'Cooldown: none'),
(1020, 1, 'Projectile Speed: 85.5 m/s'),
(1021, 2, 'Fire Rate: 1.25 shots per second'),
(1022, 4, 'Cooldown: 10-seconds'),
(1023, 5, 'Cast time: 0.15 sec cast'),
(1024, 8, 'Headshots: Yes'),
(1025, 9, 'Headshots: No'),
(1026, 12, 'Projectile Speed: 44 m/s'),
(1027, 14, ''),
(1028, 17, 'Headshots: No'),
(1029, 18, 'Duration: Lasts 5 seconds (armor)'),
(1030, 21, ''),
(1031, 24, 'Cast Time: 0.5 seconds'),
(1032, 27, 'Headshots: Yes'),
(1033, 33, ''),
(1034, 34, 'Fire Rate: 1.33 shot per second; 3 rounds per shot\r\n'),
(1035, 35, 'Headshots: No'),
(1036, 39, 'Headshots: Yes'),
(1037, 40, 'Cooldown: 20 seconds'),
(1038, 41, 'Cooldown: 10 seconds'),
(1039, 44, 'Projectile Speed: 17.5 m/s\r\n'),
(1040, 45, 'Duration: Lasts until detonated'),
(1041, 46, 'Headshots: No'),
(1042, 47, ''),
(1043, 49, 'Fire Rate: 1 burst per second; 4 rounds per burst\r\n'),
(1044, 50, 'Headshots: No'),
(1045, 51, ''),
(1046, 52, ''),
(1047, 53, ''),
(1048, 54, 'Headshots: Yes'),
(1049, 55, 'Falloff: 18 - 30 m'),
(1050, 57, 'Cooldown: 10 seconds'),
(1051, 59, 'Projectile Speed: 20 m/s\r\n'),
(1052, 60, 'Projectiles: 25 rounds per shot\r\n'),
(1053, 61, ''),
(1054, 62, ''),
(1055, 66, 'Headshots: Yes'),
(1056, 72, 'Cooldown: 10-seconds'),
(1057, 73, 'Headshot: No'),
(1058, 74, 'Movement Speed:  2.75 m/s movement speed'),
(1059, 80, 'Projectile Speed:  28.5 m/s'),
(1060, 83, 'Headshot: No'),
(1061, 85, 'Range:  11 – 20 m'),
(1062, 88, 'Headshot: No'),
(1063, 94, 'Falloff:  11 – 20 m'),
(1064, 95, 'Falloff: 20 – 29 m'),
(1065, 98, 'Headshot: Yes'),
(1066, 99, 'Headshot: Yes'),
(1067, 100, 'Headshot: No'),
(1068, 105, 'Headshot: Yes'),
(1069, 110, 'Fire Rate: 7 rounds per second'),
(1070, 111, 'Projectile Speed: 10 m/s'),
(1071, 112, 'Turret Damage Rate: 30 or 25.5 per second'),
(1072, 117, 'Projectile Speed: ~55 m/s'),
(1073, 118, 'Falloff: 7 – 20 m'),
(1074, 120, 'Turret Range: 40 m'),
(1075, 123, 'Falloff: 11 – 30 m'),
(1076, 128, 'Charge Time: 0.75 second charging, 0.45 second buffer, 0.33 second scope in/out'),
(1077, 130, 'Cooldown: 15-second cooldown'),
(1078, 132, 'Range: 8 m'),
(1079, 135, 'Duration: Lasts 10 seconds'),
(1080, 137, 'Projectiles: 1 round per shot'),
(1081, 138, 'Fire Rate: 1 shot per second'),
(1082, 142, 'Headshot: Yes'),
(1083, 143, 'Fire Rate: 5 orbs in 0.4 seconds\r\n1 – 5 rounds per burst'),
(1147, 1, 'Duration: Lasts 0.85 seconds'),
(1148, 2, 'Scope Time: 0.25 scope in, 0.15 scope out'),
(1149, 4, 'Headshots: No'),
(1150, 12, 'Cast Time: 1.5 sec cast'),
(1151, 24, 'Duration: 1.6 seconds'),
(1152, 33, ''),
(1153, 34, 'Projectile Speed: 47 m/s\r\n'),
(1154, 35, ''),
(1155, 40, 'Headshots: Yes'),
(1156, 41, 'Headshots: Arrow does; Fragments do not'),
(1157, 44, 'Headshots: No'),
(1158, 45, 'Cooldown: 8 seconds'),
(1159, 46, ''),
(1160, 47, ''),
(1161, 49, 'Projectile Speed: 50 m/s\r\n'),
(1162, 50, ''),
(1163, 51, ''),
(1164, 52, ''),
(1165, 53, ''),
(1166, 55, 'Headshots: No'),
(1167, 57, 'Headshots: No'),
(1168, 59, 'Range: 10 m range\r\n'),
(1169, 60, 'Projectile Speed: 120 m/s\r\n'),
(1170, 61, ''),
(1171, 62, ''),
(1172, 74, 'Headshot: Yes'),
(1173, 80, 'Headshot: No; Can inflict self damage; Can inflict self knockback'),
(1174, 85, 'Fire Rate:  2 shots per second'),
(1175, 94, 'Fire Rate:  1.3 shots per second'),
(1176, 95, 'Fire Rate: 1.3 shots per second'),
(1177, 110, 'Range: 7 or 9.5 m'),
(1178, 111, 'Headshot: No'),
(1179, 112, 'Movement Speed: -20%'),
(1180, 117, 'Headshot: Yes'),
(1181, 118, 'Fire Rate: 1.25 shots per second\r\n3 rounds per shot'),
(1182, 120, 'Turret Ammo: ∞'),
(1183, 123, 'Fire Rate: 20 shots per second'),
(1184, 128, 'Headshot: Yes'),
(1185, 132, 'Radius: 6 m'),
(1186, 137, 'Range: 15 m'),
(1187, 138, 'Projectiles: 25 rounds per shot'),
(1188, 143, 'Projectile Speed: 60 m/s\r\n0.4 – 2 and up to 3 seconds charging, 0.6 seconds buffer'),
(1210, 1, 'Headshots: No'),
(1211, 2, 'Duration: Lasts 0.85 seconds'),
(1212, 12, 'Duration: 8 seconds'),
(1213, 24, 'Cooldown: 8 seconds'),
(1214, 34, 'Headshots: Yes'),
(1215, 45, 'Headshots: No'),
(1216, 49, 'Headshots: Yes'),
(1217, 50, ''),
(1218, 51, ''),
(1219, 52, ''),
(1220, 53, ''),
(1221, 59, 'Time to Freeze Enemy: 1.5 seconds\r\n'),
(1222, 60, 'Charge Time: ~0.38 seconds\r\n'),
(1223, 61, ''),
(1224, 62, ''),
(1225, 85, 'Headshot: Yes'),
(1226, 94, 'Projectile Speed:  57 m/s'),
(1227, 95, 'Projectile Speed: 57 m/s'),
(1228, 110, 'Headshot: No'),
(1229, 112, 'Range: 10 m range'),
(1230, 118, 'Projectile Speed: ~80 m/s'),
(1231, 120, 'Duration: Lasts until destroyed or replaced'),
(1232, 123, 'Headshot: Yes'),
(1233, 132, 'Headshot: No'),
(1234, 137, 'Headshot: No'),
(1235, 138, 'Projectile Speed: 23.5 m/s projectile speed'),
(1236, 143, 'Headshot: Yes'),
(1241, 2, 'Headshots: No'),
(1242, 12, 'Headshots: No'),
(1243, 24, 'Headshots: No'),
(1244, 59, 'Freeze Duration: 1.5 seconds (frozen), 0.5 - 1 second (slowness)\r\n'),
(1245, 60, 'Headshots: No'),
(1246, 61, ''),
(1247, 62, ''),
(1248, 94, 'Headshot: Yes'),
(1249, 95, 'Range: 9 m'),
(1250, 112, 'Duration: Lasts until destroyed or replaced'),
(1251, 118, 'Headshot: Yes'),
(1252, 120, 'Headshot: No'),
(1253, 138, 'Headshot: No'),
(1256, 59, 'Headshots: No'),
(1257, 95, 'Headshot: Yes'),
(1258, 112, 'Headshot: No');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(8) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `cat_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `heroes`
--

CREATE TABLE `heroes` (
  `hero_id` int(8) NOT NULL,
  `hero_name` varchar(30) NOT NULL,
  `hero_class` varchar(30) NOT NULL,
  `hero_health` int(8) NOT NULL,
  `hero_armor` int(8) NOT NULL,
  `hero_shield` int(8) NOT NULL,
  `hero_difficulty` int(8) NOT NULL,
  `hero_tier` int(8) NOT NULL,
  `hero_name_real` varchar(255) NOT NULL,
  `hero_age` int(8) NOT NULL,
  `hero_occupation` varchar(255) NOT NULL,
  `hero_bop` varchar(255) NOT NULL,
  `hero_affiliation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `heroes`
--

INSERT INTO `heroes` (`hero_id`, `hero_name`, `hero_class`, `hero_health`, `hero_armor`, `hero_shield`, `hero_difficulty`, `hero_tier`, `hero_name_real`, `hero_age`, `hero_occupation`, `hero_bop`, `hero_affiliation`) VALUES
(1, 'Ana', 'Support', 200, 0, 0, 3, 3, 'Ana Amari', 60, 'Second in Command, Overwatch (formerly), Bounty Hunter', 'Cairo, Egypt', 'Formerly Overwatch'),
(2, 'Bastion', 'Defense', 200, 100, 0, 1, 5, 'SST Laboratories Siege Automaton E54', 30, 'Battle Automaton', 'Unknown', 'None'),
(3, 'Brigitte', 'Support', 200, 50, 0, 1, 5, 'Brigitte Lindholm', 23, 'Engineer; Adventurer', 'Formerly Gothenburg, Sweden', 'None'),
(4, 'D.Va', 'Tank', 400, 200, 0, 2, 1, 'Hana Song', 19, 'Former pro gamer, Mech pilot', 'Busan, South Korea', 'Mobile Exo-Force of the Korean Army'),
(5, 'Doomfist', 'Offense', 250, 0, 0, 3, 3, 'Akande Ogundimu', 45, 'Mercenary, Talon council member', 'Oyo, Nigeria', 'Talon'),
(6, 'Genji', 'Offense', 200, 0, 0, 3, 3, 'Genji Shimada', 35, 'Adventurer', 'Shambali Monastery, Nepal', 'Formerly Shimada Clan and Overwatch'),
(7, 'Hanzo', 'Defense', 200, 0, 0, 3, 3, 'Hanzo Shimada', 38, 'Mercenary, Assassin', 'Formerly Hanamura, Japan', 'Shimada Clan'),
(8, 'Junkrat', 'Defense', 200, 0, 0, 2, 2, 'Jamison Fawkes', 25, 'Anarchist, Thief, Demolitionist, Mercenary, Scavenger', 'Junkertown, Australia', 'Formerly Junkers'),
(9, 'Lucio', 'Support', 200, 0, 0, 3, 1, 'Lucio Correia dos Santos', 26, 'DJ, Freedom Fighter', 'Rio de Janeiro, Brazil', 'None'),
(10, 'McCree', 'Offense', 200, 0, 0, 2, 3, 'Jesse McCree', 37, 'Bounty Hunter', 'Santa Fe, New Mexico, USA', 'Formerly Overwatch'),
(11, 'Mei', 'Defense', 250, 0, 0, 3, 4, 'Mei-Ling Zhou', 31, 'Climatologist, Adventurer', 'ormerly Xi’an, China', 'Formerly Overwatch'),
(12, 'Mercy', 'Support', 200, 0, 0, 1, 2, 'Angela Ziegler', 34, 'Field Medic, First Responder', 'Zürich, Switzerland', 'Formerly Overwatch'),
(13, 'Moira', 'Support', 200, 0, 0, 2, 1, 'Moira O’Deorain', 48, 'Geneticist; Talon council member; Oasis Minister of Genetics', 'Dublin, Ireland; Oasis, Iraq', 'Talon; The Ministries;'),
(14, 'Orisa', 'Tank', 200, 200, 0, 2, 2, 'Orisa', 1, 'Guardian Robot', 'Numbani', 'Unknown'),
(15, 'Pharah', 'Offense', 200, 0, 0, 1, 3, 'Fareeha Amari', 32, 'Security Chief', 'Giza, Egypt', 'Helix Security International'),
(16, 'Reaper', 'Offense', 250, 0, 0, 1, 3, 'Gabriel Reyes', 58, 'Mercenary', 'Unknown', 'Unknown'),
(17, 'Reinhardt', 'Tank', 300, 200, 0, 1, 2, 'Reinhardt Wilhelm', 61, 'Adventurer', 'Stuttgart, Germany', 'Formerly Overwatch'),
(18, 'Roadhog', 'Tank', 600, 0, 0, 1, 3, 'Mako Rutledge', 48, 'Formerly Enforcer, Bodyguard', 'Formerly Junkertown, Australia', 'Junkers'),
(19, 'Soldier 76', 'Offense', 200, 0, 0, 1, 2, 'Jack Morrison', 55, 'Vigilante', 'Unknown', 'Formerly Overwatch'),
(20, 'Sombra', 'Offense', 200, 0, 0, 3, 5, 'Olivia Colomar', 30, 'Hacker; Terrorist', 'Castillo, Mexico', 'Talon'),
(21, 'Symmetra', 'Support', 100, 0, 100, 2, 5, 'Satya Vaswan', 28, 'Architect', 'Utopaea, India', ' Vishkar Corporation'),
(22, 'Torbjorn', 'Defense', 200, 0, 0, 2, 5, 'Torbjorn Lindholm', 57, 'Weapons Designer', 'Gothenburg, Sweden', 'Formerly Overwatch'),
(23, 'Tracer', 'Offense', 150, 0, 0, 2, 3, 'Lena Oxton', 26, 'Adventurer', 'London, England', 'Formerly Overwatch'),
(24, 'Widowmaker', 'Defense', 200, 0, 0, 2, 4, 'Amelie Lacroix', 33, 'Assassin', 'Annecy, France', 'Talon'),
(25, 'Winston', 'Tank', 400, 100, 0, 2, 1, 'Winston', 29, 'Scientist, Adventurer', 'Formerly Horizon Lunar Colony', 'Formerly Overwatch'),
(26, 'Zarya', 'Tank', 200, 0, 200, 3, 2, 'Aleksandra Zaranova', 28, 'Soldier', 'Krasnoyarsk Front, Russia', 'Russian Defense Forces'),
(27, 'Zenyatta', 'Support', 50, 0, 150, 3, 2, 'Tekhartha Zenyatta', 20, 'Wandering Guru, Adventurer', 'Formerly Shambali Monastery, Nepal', 'Formerly The Shambali');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `like_id` int(8) NOT NULL,
  `user_id` int(8) NOT NULL,
  `post_id` int(8) NOT NULL,
  `like_or_dislike` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `maps`
--

CREATE TABLE `maps` (
  `map_id` int(8) NOT NULL,
  `map_name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `map_description` varchar(1024) CHARACTER SET utf8 NOT NULL,
  `map_type` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maps`
--

INSERT INTO `maps` (`map_id`, `map_name`, `map_description`, `map_type`) VALUES
(1, 'Hanamura', 'Hanamura is a well-preserved village of unassuming shops and quiet streets known mostly for its idyllic cherry blossom festival every spring. But to those who know its history, Hanamura is the ancestral home of the Shimada ninja clan, which had grown over the centuries to become a powerful criminal organization. As its neighboring cities expanded, Hanamura was encircled, and eventually, it was incorporated as a district within a larger city. For now, the imposing compound of the Shimada family lies empty, but that peace may soon be broken.', 'Assault'),
(2, 'Horizon Lunar Colony', 'Built as a first step towards humanity\'s renewed exploration of space, the Horizon Lunar Colony\'s goal was to examine the effects of prolonged extraterrestrial habitation-on human and ape alike. The scientists\' research proved incredibly promising...until, suddenly, all contact and communications with the base were lost.', 'Assault'),
(3, 'Temple of Anubis', 'Nestled among the ancient ruins of the Giza Plateau on the outskirts of Cairo, the Temple of Anubis is one of many new excavations in the area. While most believe that the site is of interest for archaeological reasons, it also hides the entrance to a research facility that extends deep beneath the earth. The facility is alleged to house an artificial intelligence, but the whole truth is known only to a select few. Not even the agents of Helix Security International, who guard the facility, know what they\'re protecting.', 'Assault'),
(4, 'Volskaya Industries', 'Russia was one of the countries hit hardest by the Omnic Crisis, but during the rebuilding progress, it rode the wave of the mechanized labor industry\'s revitalization and entered a period of rapid growth. However, after recent attacks from the long-dormant Siberian Omnium, Russia has returned to war footing, guarding its sparkling cities with the massive human-piloted Svyatogor mechs developed and produced by Volskaya Industries.', 'Assault'),
(5, 'Dorado', 'It is Festival de la Luz in Dorado, an annual celebration of the end of the Omnic Crisis and the period of darkness - both figurative and literal - that engulfed Mexico when the Omnics destroyed much of the country\'s power grid and infrastructure. But there is a new dawn, as LumeriCo and its CEO, war hero and former president Guillermo Portero, are unveiling a string of fusion plants that promise to deliver clean, free energy to the Mexican people.', 'Escort'),
(6, 'Junkertown', 'Constructed from the remains of a destroyed omnium, Junkertown is now the home to a band of lawless scavengers known as the Junkers, led by their cutthroat Queen. When they aren\'t pillaging the omnium\'s skeleton for anything of value, the Junkers blow off steam in the Scrapyard--a massive gladiatorial arena whose combatants fight for glory, riches...and to survive.', 'Escort'),
(7, 'Route 66', 'Though the travelers and road trippers who used to cross the US on historic Route 66 are gone, the Main Street of America still stands, a testament to a simpler time. The gas stations, roadside shops, and cafes have gone into disuse, and the fabled Deadlock Gorge is mostly seen from the comfort of transcontinental train cars. But amid the fading monuments of that earlier era, the outlaws of the Deadlock Gang are planning their biggest heist yet.', 'Escort'),
(8, 'Watchpoint Gibraltar', 'At its height, Overwatch maintained numerous bases around the world, each with its own purpose: peacekeeping, scientific research, or in the case of Watchpoint: Gibraltar, providing an orbital launch facility. The base was mothballed along with the rest of Overwatch\'s installations, but there have been recent reports of activity within the perimeter. Could this indicate the presence of former Overwatch agents, or is this the work of organizations with more nefarious intentions?', 'Escort'),
(9, 'Eichenwalde', 'The forest has slowly begun overtaking the abandoned village of Eichenwalde, but the scars will never completely fade. During the Omnic Crisis, Eichenwalde was the site of a key battle. General Balderich von Adler took a handful of crusaders to the village in an effort to outflank the omnic army. Balderich\'s soldiers were able to break down the enemy forces, giving the German military an opportunity to push back, but the Crusaders didn\'t make it out of the battle. General Balderich finally collapsed in the castle\'s great hall.', 'Hybrid'),
(10, 'Hollywood', 'Welcome to the glitz and glamour of Hollywood, California, where palm trees and fancy cars line the streets, and movie stars, directors, and high-powered studio executives rub shoulders for a chat and drink at Galand\'s. Down the street from the Mandarin Theatre, Goldshire Studios\' omnic film auteur Hal-Fred Glitchbot has created his two latest films, They Came From Beyond The Moon and Six-Gun Killer, to varying amounts of critical and commercial acclaim. However, even Tinseltown has been gripped by anti-omnic sentiment, and the outspoken director has become a prime target in the escalating conflict.', 'Hybrid'),
(11, 'Kings Row', 'King\'s Row is an upscale, cosmopolitan neighborhood of London, but just beneath its peaceful surface, tensions between omnics and humans are running high. While much of modern England was built on the backs of omnic laborers, they have been denied the basic rights that humans have, with most omnics forced to live in the dense, claustrophobic city beneath the city, known by some as \"the Underworld\". Of greater concern is that recent demonstrations by pro-omnic rights protesters have resulted in violent clashes with the police, and a solution is nowhere in sight.', 'Hybrid'),
(12, 'Numbani', 'Known as the \"City of Harmony\", Numbani is one of the few places where omnics and humans live as equals. This collaboration has led to the creation of one of the world\'s greatest and most technologically advanced cities in the short time since its establishment after the end of the Omnic Crisis. As part of this year\'s Unity Day festivities celebrating the city\'s founding, the gauntlet of the infamous Doomfist is being exhibited at the Numbani Heritage Museum.', 'Hybrid'),
(13, 'Ilios', 'Situated atop a small island rising from the Aegean Sea, Ilios is a postcard-perfect Mediterranean town, with a bustling harbourside, winding paths for rambling hillside strolls, and gorgeous vistas. It is the ideal vacation stop for people looking for a place to relax, or for those interested in exploring the ruins scattered at the top of the island, where many artifacts and relics of the ancient world have been recently unearthed.', 'Control'),
(14, 'Lijiang Tower', 'Lijiang Tower was built in the heart of a modern Chinese metropolis, its busy streets lined with stores, gardens, restaurants, and famous night markets, where foods from around the region are available at all hours. The tower itself is home to one of the leading companies in China\'s state-of-the-art space industry, Lucheng Interstellar, an organization with a long pioneering history that is currently pushing the boundaries of space exploration.', 'Control'),
(15, 'Nepal', 'Years ago, a group of omnic robots experienced what they described as a spiritual awakening. They abandoned their preprogrammed lives to establish a monastery high in the Himalayas of Nepal, where like-minded omnics could gather to meditate on the nature of their existence. Led by their spiritual leader, Tekhartha Mondatta, they took over the ruins of an ancient monastery and turned it into the home of the Shambali, a place where omnics and humans alike make pilgrimages in the hopes of finding a greater truth.', 'Control'),
(16, 'Oasis', 'Oasis is one of the world\'s most advanced cities, a shining jewel rising from the Arabian Desert. A monument to human ingenuity and invention, researchers and academics from around the region came together to found a city dedicated to scientific progress without restraints. The city and its inhabitants are governed by the Ministries, a collection of brilliant minds who possess many secrets that have attracted the interest of powerful organizations from around the world.', 'Control'),
(17, 'Black Forest', 'On the outskirts of Eichenwalde, the misty Black Forest map wraps around a long-overlooked battlefield dotted with the wreckage of Bastion units.', 'Arena'),
(18, 'Castillo', 'Castillo is an old fort looking out over Dorado\'s bay. It\'s the location of Calaveras, a bar frequented by questionable patrons; a graffitied Los Muertos hangout; and Sombra\'s hacking den.', 'Arena'),
(19, 'Ecopoint Antarctica', 'Bundle up for a journey to Ecopoint: Antarctica, the former Overwatch installation where climatologist Mei-Ling Zhou was once stationed. While researching severe weather anomalies in the region, the station was hit by an intense polar storm. Running out of options and low on supplies, the team decided to cryogenically freeze themselves until the storm passed. They believed that it would only be for a few months, but Mei awoke nearly a decade later.', 'Arena'),
(20, 'Necropolis', 'Ana Amari has made Necropolis her personal hideout--and an impromptu field base where she can keep an eye on things.', 'Arena');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(8) NOT NULL,
  `post_content` text NOT NULL,
  `post_date` datetime NOT NULL,
  `post_topic` int(8) NOT NULL,
  `post_by` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `topic_id` int(8) NOT NULL,
  `topic_subject` varchar(255) NOT NULL,
  `topic_date` datetime NOT NULL,
  `topic_cat` int(8) NOT NULL,
  `topic_by` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(8) NOT NULL,
  `user_name` varchar(16) NOT NULL,
  `user_pass` char(40) NOT NULL,
  `user_email` varchar(16) NOT NULL,
  `user_date` datetime NOT NULL,
  `user_level` int(8) NOT NULL,
  `user_icon` int(8) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abilities`
--
ALTER TABLE `abilities`
  ADD PRIMARY KEY (`ability_id`),
  ADD KEY `ability_hero` (`ability_hero`);

--
-- Indexes for table `ability_stats`
--
ALTER TABLE `ability_stats`
  ADD PRIMARY KEY (`stat_id`),
  ADD KEY `ability_stats_idbk_1` (`ability_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `cat_name_unique` (`cat_name`);

--
-- Indexes for table `heroes`
--
ALTER TABLE `heroes`
  ADD PRIMARY KEY (`hero_id`),
  ADD UNIQUE KEY `hero_name_unique` (`hero_name`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`like_id`),
  ADD KEY `likes_ibfk_1` (`user_id`),
  ADD KEY `likes_ibfk_2` (`post_id`);

--
-- Indexes for table `maps`
--
ALTER TABLE `maps`
  ADD PRIMARY KEY (`map_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `post_topic` (`post_topic`),
  ADD KEY `post_by` (`post_by`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`topic_id`),
  ADD KEY `topic_cat` (`topic_cat`),
  ADD KEY `topic_by` (`topic_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name_unique` (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abilities`
--
ALTER TABLE `abilities`
  MODIFY `ability_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;
--
-- AUTO_INCREMENT for table `ability_stats`
--
ALTER TABLE `ability_stats`
  MODIFY `stat_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1259;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `heroes`
--
ALTER TABLE `heroes`
  MODIFY `hero_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `like_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `maps`
--
ALTER TABLE `maps`
  MODIFY `map_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `topic_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `abilities`
--
ALTER TABLE `abilities`
  ADD CONSTRAINT `abilities_ibfk_1` FOREIGN KEY (`ability_hero`) REFERENCES `heroes` (`hero_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ability_stats`
--
ALTER TABLE `ability_stats`
  ADD CONSTRAINT `ability_stats_ibfk_1` FOREIGN KEY (`ability_id`) REFERENCES `abilities` (`ability_id`),
  ADD CONSTRAINT `ability_stats_idbk_1` FOREIGN KEY (`ability_id`) REFERENCES `abilities` (`ability_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`post_topic`) REFERENCES `topics` (`topic_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`post_by`) REFERENCES `users` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `topics_ibfk_1` FOREIGN KEY (`topic_cat`) REFERENCES `categories` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `topics_ibfk_2` FOREIGN KEY (`topic_by`) REFERENCES `users` (`user_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
