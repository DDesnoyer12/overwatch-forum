-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2018 at 12:41 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

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
  `ability_description` varchar(512) CHARACTER SET utf8 NOT NULL,
  `ability_one` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ability_two` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ability_three` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ability_four` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ability_five` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ability_six` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ability_seven` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ability_eight` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ability_nine` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ability_ten` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `abilities`
--

INSERT INTO `abilities` (`ability_id`, `ability_hero`, `ability_name`, `ability_description`, `ability_one`, `ability_two`, `ability_three`, `ability_four`, `ability_five`, `ability_six`, `ability_seven`, `ability_eight`, `ability_nine`, `ability_ten`) VALUES
(1, 1, 'Biotic Rifle (Unscoped Mode)', 'Ana\'s rifle shoots darts that can restore health to her allies or deal ongoing damage to her enemies. She can use the rifle\'s scope to zoom in on targets and make highly accurate shots.', 'Ammo: 10 rounds per clip', 'Reload Time: 1.5-second reload', 'Damage: 70 damage', 'Healing: 75 healing', 'Fire Rate: 1.25 shots per second', 'Projectile Speed: 85.5 m/s', 'Duration: Lasts 0.85 seconds', 'Headshots: No', NULL, NULL),
(2, 1, 'Biotic Rifle (Scoped Mode)', 'Ana\'s rifle shoots darts that can restore health to her allies or deal ongoing damage to her enemies. She can use the rifle\'s scope to zoom in on targets and make highly accurate shots.', 'Ammo:   10 rounds per clip', 'Reload Time: 1.5-second reload', 'Movement Speed:  1.9 m/s', 'Damage: 70 damage', 'Healing: 75 healing', 'Fire Rate: 1.25 shots per second', 'Scope Time: 0.25 scope in, 0.15 scope out', 'Duration: Lasts 0.85 seconds', 'Headshots: No', NULL),
(3, 1, 'Sleep Dart', 'Ana fires a dart from her sidearm, rendering an enemy unconscious (though any damage will rouse them).', 'Damage: 5', 'Sleep Duration: 5.5 seconds (or until damaged)', 'Cast Time: 0.5 seconds', 'Cooldown: 12 seconds', 'Headshots: No', NULL, NULL, NULL, NULL, NULL),
(4, 1, 'Biotic Grenade', 'Ana tosses a biotic bomb that deals damage to enemies and heals allies in a small area of effect. Affected allies briefly receive increased healing from all sources, while enemies caught in the blast cannot be healed for a few moments.', 'Damage:   60 damage to enemies', 'Splash Radius:?4 m', 'Healing: 100 healing to allies; 100 healing on self', 'Healing Buff: +50% healing to allies, or block healing to enemies; +50% healing on self', 'Duration: Lasts 4 seconds', 'Cooldown: 10-seconds', 'Headshots: No', NULL, NULL, NULL),
(5, 1, 'Nano Boost (Ultimate)', 'After Ana hits one of her allies with a combat boost, they temporarily move faster, deal more damage, and take less damage from enemies? attacks.', 'Damage increase:   50%', 'Damage mitigation:   50%', 'Movement speed:   30%', 'Duration:   8 seconds', 'Range:   40m', 'Cast time: 0.15 sec cast', NULL, NULL, NULL, NULL),
(7, 2, 'Ironclad (Passive)', 'Reduce damage taken while transformed.', 'Damage Resistance: +20%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 2, 'Configuration Recon', 'In Recon mode, Bastion is fully mobile, outfitted with a submachine gun that fires steady bursts of bullets at medium range.', 'Ammo: 25 rounds per clip', 'Reload Time: 2 seconds', 'Damage: 6 - 20 damage', 'Falloff: 26 - 50 m falloff range', 'Fire Rate: 8 shots per second\r\n', 'Headshots: Yes', NULL, NULL, NULL, NULL),
(9, 2, 'Configuration Sentry', 'In Sentry mode, Bastion is a stationary powerhouse equipped with a gatling gun capable of unleashing a hail of bullets. The gun\'s aim can be \'walked\' across multiple targets, dealing devastating damage at short to medium range.', 'Ammo: 300 rounds per clip', 'Reload Time: 2 seconds', 'Damage: 4 - 15 damage', 'Falloff: 35 - 55 m falloff range', 'Fire Rate: 35 rounds per sec', 'Headshots: No', NULL, NULL, NULL, NULL),
(10, 2, 'Self-Repair', 'Bastion restores its health; it cannot fire weapons while the repair process is in effect.', 'Healing Rate: 70 HP per second on self', 'Recharge Time: 7 seconds', 'Movement Speed: 5.5 m/s movement speed', 'Duration: 4.3 seconds or until stopped', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 2, 'Reconfigure', 'Switches between weapon configuraitons', 'Recon to sentry: 1 second', 'Sentry to recon: 0.5 seconds', 'Reload: Automatically reloads weapon', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 2, 'Configuration Tank (Ultimate)', 'In Tank mode, Bastion extends wheeled treads and a powerful long-range cannon. The cannon\'s explosive shells demolish targets in a wide blast radius, but Bastion can only remain in this mode for a limited time.', 'Fire Rate: 1 shell per second', 'Direct Hit Damage: 205', 'Splash Damage: 70 - 145', 'Splash Damage (Self): 28', 'Splash Radius: 4m', 'Projectile Speed: 44 m/s', 'Cast Time: 1.5 sec cast', 'Duration: 8 seconds', 'Headshots: No', NULL),
(13, 3, 'Inspire (Passive)', 'When Brigitte strikes an enemy with her flail, all allies within range are healed over time.', 'Healing Rate: 16 per second', 'Radius: 20 m', 'Buffer: 1.5 seconds', 'Duration: 5 seconds', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 3, 'Rocket Flail', 'Brigitte\'s melee weapon has an extended range, enabling her to strike multiple enemies with a single swing.', 'Melee Type: Ranged', 'Rounds Per Clip: Infinite', 'Damage: 35', 'Swing Rate: 2 swings per second\r\n', 'Range: 6m', '', NULL, NULL, NULL, NULL),
(15, 3, 'Barrier Shield', 'Brigitte deploys a frontal energy barrier to absorb a limited amount of damage.', 'Type: Mobile barrier', 'Barrier HP: 600', 'Barrio HP per Second: 100', 'Movement Speed: 3.85 m/s', 'Cooldown: 0 - 3 seconds', NULL, NULL, NULL, NULL, NULL),
(16, 3, 'Shield Bash', 'Once her Barrier Shield is deployed, Brigitte can dash forward to stun an enemy.', 'Type: Stunning movement', 'Damage: 50', 'Range: 6m', 'Duration: 1 second', 'Cooldown: 5 seconds', NULL, NULL, NULL, NULL, NULL),
(17, 3, 'Whip Shot', 'Brigitte throws her flail a long distance, dealing damage and knocking an enemy away from her.', 'Type: Linear projectile', 'Damage: 70', 'Projectile Speed: 40 m/s', 'Range: 20 m', 'Cooldown: 4 seconds', 'Headshots: No', NULL, NULL, NULL, NULL),
(18, 3, 'Repair Pack', 'Brigitte throws a Repair Pack that can heal an ally. Any healing over that ally\'s maximum health provides them with armor instead. This armor does get removed after some time if not destroyed.', 'Type: Healing/buffing homing projectile', 'Healing: 150 per pack', 'Armor: 75 per pack', 'Projectile Speed: 30 m/s', 'Range: 30 m', 'Duration: Lasts 5 seconds (armor)', NULL, NULL, NULL, NULL),
(19, 3, 'Rally (Ultimate)', 'Brigitte moves faster and provides all nearby allies with armor that lasts until it\'s removed by damage.', 'Type:  Transformation ultimate & Armor generation ability', 'Radius: 8 m', 'Armor: 30 per second', 'Max Armor: 150', 'Duration: 10 seconds', NULL, NULL, NULL, NULL, NULL),
(20, 4, 'Eject (Passive)', 'D.Va ejects out of her mech when it is destroyed.', 'Duration: 1 second', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 4, 'Fusion Cannons (Mech)', 'D.Va\'s mech is equipped with twin short-range rotating cannons. They lay down continuous, high-damage fire without needing to reload, but slow D.Va\'s movement while they\'re active.', 'Ammo: Infinite rounds per clip; 11 pellets per shot', 'Damage: 0.6 - 2 damage per pellet;  Max 22 bodyshot damage', 'Falloff: 10 - 20 m falloff range', '', '', '', NULL, NULL, NULL, NULL),
(22, 4, 'Defense Matrix', 'D.Va can activate this forward-facing targeting array to shoot incoming projectiles out of the air.', 'Recharge Time: 8 seconds', 'Range: 15 m range', 'Movement Speed: 5.5 m/s movement speed', 'Duration: 2 seconds or until turned off', 'Cooldown: 1 second', NULL, NULL, NULL, NULL, NULL),
(23, 4, 'Boosters', 'D.Va\'s mech launches into the air, her momentum carrying her forward. She can turn and change directions or barrel through her enemies, knocking them back.', 'Damage: 25', 'Range: 25 m', 'Movement Speed: 12.5 m/s', 'Duration: 2 seconds or until cancelled', 'Cooldown: 5 seconds', NULL, NULL, NULL, NULL, NULL),
(24, 4, 'Micro Missiles', 'D.Va\'s mech launches into the air, her momentum carrying her forward. She can turn and change directions or barrel through her enemies, knocking them back.', 'Damage: 2 - 9 per rocket; Max 162 damage per use', 'Splash Damage: 2 - 6', 'Splash Damage (Self): 6', 'Fire Rate: 11 shots per second', 'Radius: 1.5 m', 'Cast Time: 0.5 seconds', 'Duration: 1.6 seconds', 'Cooldown: 8 seconds', 'Headshots: No', NULL),
(25, 4, 'Self-Destruct (Ultimate)', 'D.Va ejects from her mech and sets its reactor to explode, dealing massive damage to nearby opponents.', 'Damage: 1000 from point of explosion (falls off from far away)', 'Splash range: 20 meters', 'Duration: 3 seconds', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 5, 'The Best Defense... (Passive)', 'Doomfist generates temporary personal shields when he deals ability damage.', 'Buff: +30 or +75 temporary shield per enemy damaged', 'Max Shield: Max 150 temporary shield', 'Decay: 3 HP per sec decay; 1.5 sec decay buffer\r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 5, 'Hand Cannon', 'Doomfist fires a short-range burst from the knuckles of his fist. Its ammunition is automatically regenerated over a short time.', 'Ammo: 4 rounds per clip', 'Reload: 0.75 second reload per round; Max 3 second reload', 'Type: Shotgun', 'Damage: 11 damage per pellet; 6 pellets per shot; Max 66 bodyshot damage', 'Fire Rate: 3.3 shots per sec', 'Headshots: Yes', NULL, NULL, NULL, NULL),
(28, 5, 'Rocket Punch', 'After charging up, Doomfist lunges forward and knocks an enemy back, dealing additional damage if they impact a wall.', 'Damage: 49 - 100 damage; Max 98 - 250 damage if a wall is hit', 'Range: 10 - 20 m', 'Charge Time: 1 second, 2 secpnd forced release', 'Cooldown: 4 seconds', NULL, NULL, NULL, NULL, NULL, NULL),
(29, 5, 'Rising Uppercut', 'Doomfist uppercuts enemies in front of him into the air.', 'Damage: 50', 'Cooldown: 7 seconds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 5, 'Seismic Slam', 'Doomfist leaps forward and smashes into the ground, knocking nearby enemies toward him.', 'Damage: 10-125 damage', 'Range: 7.5 m range', 'Duration: 1.5 seconds', 'Cooldown: 7 seconds', NULL, NULL, NULL, NULL, NULL, NULL),
(31, 5, 'Meteor Strike (Ultimate)', 'Doomfist leaps into the sky, then crashes to the ground, dealing significant damage.', 'Damage: 10 - 300', 'Radius: 7.5 m', 'Cast Time: 1 second', 'Duration: 4 seconds', NULL, NULL, NULL, NULL, NULL, NULL),
(32, 6, 'Cyber-Agility (Passive)', 'Thanks to his cybernetic abilities, Genji can climb walls and perform jumps in mid-air.\r\n\r\n', 'Ability: Climb walls\r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 6, 'Shuriken', 'Genji looses three deadly throwing stars in quick succession.\r\n\r\n', 'Ammo: 24 rounds per clip\r\n', '', '', '', '', '', '', NULL, NULL, NULL),
(34, 6, 'Fan of Blades', 'Alternatively, he can throw three shuriken in a wider spread.\r\n\r\n', 'Ammo: 24 rounds per clip\r\n', 'Reload Time: 1 second\r\n', 'Ammo: 28 damage per shuriken\r\n', 'Projectiles: 3 shuriken per shot\r\n', 'Damage: Max 84 bodyshot damage\r\n', 'Fire Rate: 1.33 shot per second; 3 rounds per shot\r\n', 'Projectile Speed: 47 m/s\r\n', 'Headshots: Yes', NULL, NULL),
(35, 6, 'Swift Strike', 'Genji darts forward, slashing with his katana and passing through foes in his path. If Genji eliminates a target, he can instantly use this ability again.\r\n\r\n', 'Damage: 50\r\n', 'Range: 15 m range\r\n', 'Movement Speed:37 m/s\r\n', 'Duration: 0.4 seconds\r\n', 'Cooldown: 8-second cooldown\r\n', 'Headshots: No', '', NULL, NULL, NULL),
(36, 6, 'Deflect', 'With lightning-quick swipes of his sword, Genji reflects an oncoming projectile and sends it rebounding towards his opponent.\r\n\r\n', 'Cooldown: 8 seconds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 6, 'Dragonblade (Ultimate)', 'Genji brandishes his katana for a brief period of time. Until he sheathes his sword, Genji can deliver killing strikes to any targets within his reach.\r\n\r\n', 'Buff Duration: 6 seconds\r\n', 'Damage: 120 per strike\r\n', 'Attack speed: 1.17 per second\r\n', 'Run speed: Increased\r\n', 'Range: 5m\r\n', NULL, NULL, NULL, NULL, NULL),
(38, 7, 'Wall Climb (Passive)', 'Jump at walls to climb at them.\r\n\r\n', 'Ability: Can climb up walls\r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 7, 'Storm Bow', 'Hanzo nocks and fires an arrow at his target.\r\n\r\n', 'Ammo: Infinite', 'Ramage: 29 - 125', 'Rate of Fire: 0.8 - 2 shots per second', 'Projectile SPeed: 26 - 86 m/s', 'Movement Speed: 3.85 m/s', 'Headshots: Yes', NULL, NULL, NULL, NULL),
(40, 7, 'Sonic Arrow', 'Hanzo launches an arrow that contains a sonar tracking device. Any enemy within its detection radius is visibly marked, making them easier for Hanzo and his allies to hunt down.\r\n\r\n', 'Damage: 29 - 125', 'Projectile Speed: 26 - 87 m/s', 'Radius: 10 m', 'Movement Speed: 3.85 m/s', 'Duration: 10 seconds', 'Cooldown: 20 seconds', 'Headshots: Yes', NULL, NULL, NULL),
(41, 7, 'Scatter Arrow', 'Hanzo shoots a fragmenting arrow that ricochets off walls and objects and can strike multiple targets at once.\r\n\r\n', 'Damage: 29 - 125; 22 - 75', 'Projectiles: 6 fragments per shot', 'Max Damage: 450 fragment damage', 'Projectile Speed: 26 - 87 m/s', 'Movement Speed: 3.85 m/s', 'Cooldown: 10 seconds', 'Headshots: Arrow does; Fragments do not', NULL, NULL, NULL),
(42, 7, 'Dragonstrike (Ultimate)', 'Hanzo summons a Spirit Dragon which travels through the air in a line. It passes through walls in its way, devouring any enemies it encounters.\r\n\r\n', 'Damage: 125 (arrow); 200 per second (dragons)', 'Range: Infinite', 'Radius: 4 m', 'Cast Time: 1.5 sec', 'Headshots: Arrow does; dragons do not', NULL, NULL, NULL, NULL, NULL),
(43, 8, 'Total Mayhem (Passive)', 'Junkrat\'s deranged sense of humor persists past his death. If killed, he drops several live grenades.\r\n\r\n', 'Damage: 60 per grenade', 'Max Damage: 300', 'Radius: 2 m splash radius', 'Projectiles: 5 grenades after dying', 'Headshots: No', NULL, NULL, NULL, NULL, NULL),
(44, 8, 'Frag Launcher', 'Junkrat\'s Frag Launcher lobs grenades a significant distance. They bounce to reach their destination, and blow up when they strike an enemy.\r\n\r\n', 'Ammo: 5 rounds per clip\r\n', 'Reload Time: 1.5 second\r\n', 'Damage: 120 direct hit; 12.5 - 80 splash damage\r\n', 'Radius: 2 m splash\r\n', 'Fire Rate: 1.66 shots per second\r\n', 'Projectile Speed: 17.5 m/s\r\n', 'Headshots: No', NULL, NULL, NULL),
(45, 8, 'Concussion Mine', 'After placing one of his homemade Concussion Mines, Junkrat can trigger it to damage enemies and send them flying… or propel himself through the air.\r\n\r\n', 'Damage: 120', 'Radius: 3 m', 'Health: 5 ', 'Ammo: 2 charges', 'Projectile Speed: 17.5 m/s', 'Duration: Lasts until detonated', 'Cooldown: 8 seconds', 'Headshots: No', NULL, NULL),
(46, 8, 'Steel Trap', 'Junkrat tosses out a giant, metal-toothed trap. Should an enemy wander too close to the trap, it clamps on, injuring and immobilizing them.\r\n\r\n', 'Damage: 80', 'Health: 100', 'Radius: 1 m', 'Duration: 3 seconds', 'Cooldown: 10 seconds', 'Headshots: No', '', NULL, NULL, NULL),
(47, 8, 'Rip-Tire (Ultimate)', 'Junkrat revs up a motorized tire bomb and sends it rolling across the battlefield, climbing over walls and obstacles. He can remotely detonate the RIP-Tire to deal serious damage to enemies caught in the blast, or just wait for it to explode on its own.\r\n', 'Damage: 60 - 100', 'Radius: 10 m', 'Projectile Speed: 13 m/s', 'Cast Time: 1.5 - 2 seconds', 'Duration: 10 seconds', '', '', NULL, NULL, NULL),
(48, 9, 'Wall Ride (Passive)', 'Jump onto a wall to ride along it.\r\n\r\n', 'Ability: Can ride along a wall\r\n', 'Movement Speed: 7.7 m/s\r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 9, 'Sonic Amplifier', 'Lucio can hit his enemies with sonic projectiles or knock them back with a blast of sound.\r\n\r\n', 'Ammo: 20 rounds per clip\r\n', 'Reload Time: 1.25 seconds\r\n', 'Damage: 20 per projectile\r\n', 'Projectiles: 4 projectiles per shot\r\n', 'Max Damage: Max 80 bodyshot damage\r\n', 'Fire Rate: 1 burst per second; 4 rounds per burst\r\n', 'Projectile Speed: 50 m/s\r\n', 'Headshots: Yes', NULL, NULL),
(50, 9, 'Soundwave ', 'Knock enemies back with a blast of sound.\r\n\r\n', 'Ammo: 20 rounds per clip (4 per shot)', 'Reload Time: 1.25 seconds', 'Damage: 25 damage', 'Range: 8m', 'Cooldown: 4 seconds', 'Headshots: No', '', '', NULL, NULL),
(51, 9, 'Crossfade', 'Lucio continuously energizes himself and nearby teammates with music. He can switch between two songs: one amplifies movement speed, while the other regenerates health.\r\n\r\n', 'Heal Rate: 16.25 HP per second; 13 HP per second on self', 'Movement Speed: +30% movement speed', 'Radius: 10 m', 'Buffer: 0.5 seconds', 'Cooldown: None', '', '', '', NULL, NULL),
(52, 9, 'Amp It Up', 'Lucio increases the volume on his speakers, boosting the effects of his songs.\r\n\r\n', 'Heal Rate: 46.8 HP per second; 35 HP per second on self', 'Movement Speed: +70% movement speed', 'Radius: 10 m', 'Duration: 3 seconds', 'Cooldown: 12 seconds', '', '', '', NULL, NULL),
(53, 9, 'Sound Barrier (Ultimate)', 'Protective waves radiate out from Lucio\'s Sonic Amplifier, briefly providing him and nearby allies with personal shields.\r\n\r\n', 'Radius: 30 m radius', 'Shield: +500 temporary shield', 'Duration: Lasts 6.25 seconds', '', '', '', '', '', NULL, NULL),
(54, 10, 'Peacekeeper (Single Shot)', 'McCree fires off a round from his trusty six-shooter.\r\n\r\n', 'Ammo: 6 per clip', 'Reload Time: 1.5 seconds', 'Damage: 20 - 70 damage', 'Falloff: 20 - 45 m', 'Fire Rate: 2 shots per second', 'Headshots: Yes', NULL, NULL, NULL, NULL),
(55, 10, 'Peacekeeper (Fan the Hammer)', 'McCree can fan the Peacekeeper\'s hammer to swiftly unload the entire cylinder.\r\n\r\n', 'Ammo: 6 rounds per clip', 'Reload Time: 1.5 seconds', 'Damage: 22 - 45 damage per bullet', 'Projectiles: 1 - 6 bullets per shot', 'Max Damage: 270', 'Falloff: 18 - 30 m', 'Headshots: No', NULL, NULL, NULL),
(56, 10, 'Combat Roll', 'McCree dives in the direction he\'s moving, effortlessly reloading his Peacekeeper in the process.\r\n\r\n', 'Range: 6 m', 'Movement Speed: 12 m/s', 'Duration: 0.5 seconds', 'Cooldown: 8 seconds', NULL, NULL, NULL, NULL, NULL, NULL),
(57, 10, 'Flashbang', 'McCree heaves a blinding grenade that explodes shortly after it leaves his hand. The blast staggers enemies in a small radius.\r\n\r\n', 'Damage: 25', 'Radius: 2 m', 'Range: 5 m', 'Buffer: 0.35 seconds', 'Duration: 0.7 seconds', 'Cooldown: 10 seconds', 'Headshots: No', NULL, NULL, NULL),
(58, 10, 'Deadeye (Ultimate)', 'Focus. Mark. Draw. McCree takes a few precious moments to aim; when he’s ready to fire, he shoots every enemy in his line of sight. The weaker his targets are, the faster he’ll line up a killshot.\r\n\r\n', 'Damage: 100 or 250 per second', 'Movement Speed: 2 m/s ', 'Cast Time: 0.2 seconds', 'Duration: 6 seconds\r\n', 'Headshots: No', NULL, NULL, NULL, NULL, NULL),
(59, 11, 'Endothermic Blaster (Freeze Spray)', 'Mei\'s blaster unleashes a concentrated, short-range stream of frost that damages, slows, and ultimately freezes enemies in place.\r\n\r\n', 'Ammo: 200 rounds', 'Reload Time: 1.5 seconds', 'Damage: 2.25 per round\r\n', 'Damage Rate: 45 per second\r\n', 'Fire Rate: 20 rounds per second\r\n', 'Projectile Speed: 20 m/s\r\n', 'Range: 10 m range\r\n', 'Time to Freeze Enemy: 1.5 seconds\r\n', 'Freeze Duration: 1.5 seconds (frozen), 0.5 - 1 second (slowness)\r\n', 'Headshots: No'),
(60, 11, 'Endothermic Blaster (icicle)', 'Mei can also use her blaster to shoot icicle-like projectiles at medium range.\r\n\r\n', 'Ammo: 200 rounds per clip\r\n', 'Reload time: 1.5 seconds\r\n', 'Damage: 22 - 75\r\n', 'Falloff: 36 - 55 m\r\n', 'Fire Rate: ~1.17 shots per second\r\n', 'Projectiles: 25 rounds per shot\r\n', 'Projectile Speed: 120 m/s\r\n', 'Charge Time: ~0.38 seconds\r\n', 'Headshots: No', NULL),
(61, 11, 'Ice Wall', 'Mei generates an enormous ice wall that obstructs lines of sight, stops movement, and blocks attacks.\r\n\r\n', 'Range: 35 m ', 'Duration: 4.5 seconds or until broken', 'Cooldown: 10 seconds', '', '', '', '', '', '', NULL),
(62, 11, 'Blizzard (Ultimate)', 'Mei deploys a weather-modification drone that emits gusts of wind and snow in a wide area. Enemies caught in the blizzard are slowed and take damage; those who linger too long are frozen solid.\r\n\r\n', 'Damage Rate: 20 per second', 'Max Damage: 100 per enemy', 'Radius: 10 m', 'Cast Time: 1.5 seconds', 'Duration: 5 seconds', '', '', '', '', NULL),
(63, 12, 'Angelic Descent (Passive)', 'Propelled by her Valkyrie suit, Mercy slows the speed of her descent from great heights.\r\n\r\n', 'Ability: Hold down the jump button to slow descent in the air\r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 12, 'Regeneration (Passive)', 'Mercy automatically heals over time.\r\n\r\n', 'Heal Rate: 20 healing per second\r\n', 'Buffer: 1 sec\r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 12, 'Caduceus Staff', 'Mercy engages one of two beams that connect to an ally. By maintaining the beams, she can either restore that ally\'s health or increase the amount of damage they deal.\r\n\r\n', 'Healing Rate: 60 healing per second\r\n', 'Damage Boost: +30% damage dealt\r\n', 'Range: 15 (30) m\r\n', 'Radius: 10 m radius\r\n', 'Duration: Until manually disconnected, or 2 seconds after blocked\r\n\r\n', NULL, NULL, NULL, NULL, NULL),
(66, 12, 'Caduceus Blaster', 'Mercy shoots a round from her sidearm. It\'s best reserved for emergency personal defense.\r\n\r\n', 'Ammo: 20 rounds per clip\r\n', 'Reload Time: 1 second\r\n', 'Damage: 20\r\n', 'Fire Rate: 5 shots per second\r\n', 'Projectile Speed: 40 (80) m/s\r\n', 'Headshots: Yes', NULL, NULL, NULL, NULL),
(67, 12, 'Guardian Angel', 'Mercy flies towards a targeted ally, allowing her to reach them quickly and provide assistance in crucial moments.\r\n\r\n', 'Range: 30 meters\r\n', 'Cooldown: 1.5 seconds\r\n\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 12, 'Resurrect', 'Mercy radiates restorative power, bringing nearby dead allies back into the fight with full health.\r\n\r\n', 'Range: 5m', 'Movement Speed: 1.375 m/s\r\n', 'Cast Time: 1.75 sec\r\n', 'Duration: 2.25 seconds\r\n', 'Cooldown: 30-seconds\r\n\r\n', NULL, NULL, NULL, NULL, NULL),
(69, 12, 'Valkyrie (Ultimate)', 'Valkyrie unleashes the full power of Mercy\'s Valkyrie Suit, enhancing her weapons and abilities for 20 seconds.\r\n\r\n', 'Movement Speed: 9 m/s', 'Duration: 20 seconds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 13, 'Biotic Grasp', 'Using her left hand, Moira expends biotic energy to heal allies in front of her. Her right hand fires a long-range beam weapon that saps enemies’ health, healing Moira and replenishing her biotic energy.', 'Primary fire: Regeneration', 'Secondary fire: Decay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 13, 'Fade', 'Disappear, move faster, and become invulnerable, but you cannot shoot.', 'Movement Speed:   18.75 m/s', 'Duration: Lasts 0.8 seconds', 'Cooldown: 6-seconds', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 13, 'Biotic Orb', 'Moira launches a rebounding biotic sphere; she can choose between a regeneration effect that heals the allies it passes through, or a decay effect that deals damage to enemies.', 'Damage Rate:   50 per second', 'Max Damage: 200', 'Healing Rate: 75 per second', 'Max Healing: 300', 'Projectile Speed: 20 (5.5) m/s', 'Cooldown: 10-seconds', NULL, NULL, NULL, NULL),
(73, 13, 'Coalescence (Ultimate Ability)', 'Damage Rate:    70 per second', 'Range: 30 m', 'Healing Rate: 140 per second', 'Movement Speed: 9 m/s', 'Cast Time: 0.5 sec', 'Duration: Lasts 8 seconds', 'Headshot: No', NULL, NULL, NULL, NULL),
(74, 14, 'Fusion Driver', 'Orisa’s automatic projectile cannon delivers sustained damage, but slows her movement while she fires it.', 'Ammo:   150 rounds per clip', 'Reload Time: 2.66-second', 'Damage:  11', 'Fire Rate:  12.5 rounds per sec', 'Projectile Speed:  72 m/s', 'Movement Speed:  2.75 m/s movement speed', 'Headshot: Yes', NULL, NULL, NULL),
(75, 14, 'Halt!', 'Orisa launches a graviton charge which she can detonate, slowing nearby enemies and pulling them towards the explosion.', 'Projectile Speed:    20 m/s', 'Radius: 7.5 m radius', 'Cast Time: 0.33 seconds', 'Duration: Lasts 0.45 seconds', 'Cooldown: 8-seconds', NULL, NULL, NULL, NULL, NULL),
(76, 14, 'Fortify', 'Orisa temporarily reduces damage she takes, and cannot be affected by action-impairing effects.', 'Buff: +50% damage resistance', 'Duration: Lasts 4 seconds', 'Cooldown: 10-seconds', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 14, 'Protective Barrier', 'Orisa throws out a stationary barrier that can protect her and her allies from enemy fire.', 'Barrier HP:   900', 'Projectile Speed: 19 m/s', 'Duration: Lasts 20 seconds', 'Cooldown: 8-seconds', NULL, NULL, NULL, NULL, NULL, NULL),
(78, 14, 'Supercharger (Ultimate Ability)', 'Orisa deploys a device to increase damage by 50% inflicted by allies within its line of sight.', 'Damage Buff: +50% damage dealt', 'Radius: 25 m radius', 'Cast Time: 1 sec cast', 'Duration: Lasts 16 seconds', NULL, NULL, NULL, NULL, NULL, NULL),
(79, 15, 'Hover Jets', 'Pharah hovers in mid-air.', 'Recharge Time:  2 seconds', 'Movement Speed: 5.5 m/s', 'Duration: 2 seconds or until stopped', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 15, 'Rocket Launcher', 'Pharah’s primary weapon launches rockets that deal significant damage in a wide blast radius.', 'Ammo:  6 rounds per clip', 'Reload Time:  1-second', 'Damage:  120 direct hit; 20 – 80 splash damage; 10 – 40 splash self damage', 'Radius:  3 m splash', 'Fire Rate:  1.11 shots per second', 'Projectile Speed:  28.5 m/s', 'Headshot: No; Can inflict self damage; Can inflict self knockback', NULL, NULL, NULL),
(81, 15, 'Concussive Blast', 'Pharah looses a wrist rocket that knocks back any enemies it strikes.', 'Radius:  8 m splash', 'Projectile Speed: 57 m/s', 'Cooldown: 12-seconds', 'Headshot: No', NULL, NULL, NULL, NULL, NULL, NULL),
(82, 15, 'Jump Jet', 'Propelled by her suit’s thrusters, Pharah soars high into the air.', 'Range:  ~25 m', 'Movement Speed:  ~20 m/s', 'Cooldown:  10-seconds', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 15, 'Barrage (Ultimate Ability)', 'Pharah directs a continuous salvo of mini-rockets to destroy groups of enemies.', 'Fire Rate:   30 rockets per second', 'Damage: 40 per rocket', 'Max Damage: Max 3600 per use', 'Projectile Speed: 28.5 m/s', 'Duration: 3 seconds', 'Headshot: No', NULL, NULL, NULL, NULL),
(84, 16, 'The Reaping (Passive)', 'Reaper steals health from his enemies as he damages them.', 'Effect:  20% of damage done restored as HP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 16, 'Hellfire Shotguns', 'Reaper can collect Soul Globes to regain health.', 'Ammo:  8 rounds per clip', 'Reload TIme:  1.5-seconds', 'Damage:  2 – 7 per pellet', 'Projectiles:   20 pellets per shot', 'Max Damage:  140 bodyshot damage', 'Range:  11 – 20 m', 'Fire Rate:  2 shots per second', 'Headshot: Yes', NULL, NULL),
(86, 16, 'Wraith Form', 'Reaper becomes a shadow for a short period of time. While in this form, he takes no damage and is able to pass through enemies, but cannot fire his weapons or use other abilities.', 'Movement Speed:   7.1 m/s', 'Duration: 3 seconds', 'Cooldown: 8-seconds', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 16, 'Shadow Step', 'After marking a destination, Reaper disappears and reappears at that location.', 'Range:  35 m', 'Duration:  Lasts 2 seconds', 'Cooldown:  10-seconds', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 16, 'Death Blossom (Ultimate)', 'In a blur of motion, Reaper empties both Hellfire Shotguns at breakneck speed, dealing massive damage to all nearby enemies.', 'Damage Rate:   170 damage per sec', 'Max Damage:  510 per enemy', 'Radius: 8 m', 'Movement Speed: 3 m/s', 'Duration: 3 seconds', 'Headshot: No', NULL, NULL, NULL, NULL),
(89, 17, 'Rocket Hammer', 'Reinhardt’s Rocket Hammer is an exemplary melee weapon, able to deal punishing damage in a wide arc with every swing.', 'Ammo: Unlimited rounds per clip', 'Damage:  75', 'Fire Rate:  1.1 swings per sec', 'Range:  5 m range', NULL, NULL, NULL, NULL, NULL, NULL),
(90, 17, 'Barrier Field', 'Reinhardt projects a broad, forward-facing energy barrier, which can absorb substantial damage before it is destroyed. Though Reinhardt can protect himself and his companions behind the barrier, he cannot attack while sustaining it.', 'Shield Health:    2000 barrier HP', 'Shield Health Regen: 200 barrier HP per sec', 'Movement Speed: 2.75 m/s', 'Cooldown: 0 or 5-second', NULL, NULL, NULL, NULL, NULL, NULL),
(91, 17, 'Charge', 'Reinhardt charges forth in a straight line, pinning the first enemy in his path and knocking others aside. If he collides with a wall, the foe he’s carrying suffers extreme damage.', 'Damage:   0, 50 or 300', 'Range: 55 m', 'Movement Speed: 16.66 m/s', 'Cooldown: 10-seconds', NULL, NULL, NULL, NULL, NULL, NULL),
(92, 17, 'Fire Strike', 'By whipping his Rocket Hammer forward, Reinhardt slings a flaming projectile which pierces and damages any enemies it touches.', 'Damage:   100', 'Projectile Speed:  26.66 m/s', 'Cooldown: 6-seconds', 'Headshot: No', NULL, NULL, NULL, NULL, NULL, NULL),
(93, 17, 'Earthshatter (Ultimate)', 'Reinhardt forcefully slams his Rocket Hammer into the ground, knocking down and damaging all enemies in front of him.', 'Damage:   50 per enemy', 'Range: 2 m, 20 m', 'Duration: 2.5 seconds', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 18, 'Scrap Gun Blast', 'Roadhog’s Scrap Gun fires short-range blasts of shrapnel with a wide spread.', 'Ammo:   5 rounds per clip', 'Reload time:   1.5 seconds', 'Damage: 1.3 – 6 per fragment', 'Projectiles: 25 fragments per shot', 'Max Damage:  150 bodyshot', 'Falloff:  11 – 20 m', 'Fire Rate:  1.3 shots per second', 'Projectile Speed:  57 m/s', 'Headshot: Yes', NULL),
(95, 18, 'Shrapnel Ball (Alternate Fire)', 'Alternatively, it can launch a shrapnel ball that detonates farther away, scattering metal fragments from the point of impact.', 'Ammo:   5 rounds per clip', 'Reload time:   1.5 seconds', 'Damage: 50;  1.3 – 6 per fragment', 'Projectiles:  25 fragments per shot', 'Max Damage:  150 bodyshot', 'Falloff: 20 – 29 m', 'Fire Rate: 1.3 shots per second', 'Projectile Speed: 57 m/s', 'Range: 9 m', 'Headshot: Yes'),
(96, 18, 'Chain Hook', 'Roadhog hurls his chain at a target; if it catches, he yanks them into close range.', 'Damage:   30', 'Projectile Speed:  40 m/s', 'Range:  20 m', 'Cooldown:  8-second', 'Headshot: No', NULL, NULL, NULL, NULL, NULL),
(97, 18, 'Take A Breather', 'Roadhog restores a chunk of his health over a brief period of time.', 'Healing Rate:  300 healing per second on self', 'Damage Resistance: +50%', 'Cast Time: 0.6 seconds; 0.4 seconds recovery', 'Duration: 1 second (healing), 2 seconds (total)', 'Cooldown: 8-seconds', NULL, NULL, NULL, NULL, NULL),
(98, 18, 'Whole Hog (Ultimate)', 'After cramming a top-loader onto his Scrap Gun, Roadhog pours in ammo. For a short time, he can crank out a stream of shrapnel that knocks back enemies.', 'Damage:  109.5 per shot', 'Max Damage:  4928 bodyshot per use', 'Movement Speed: 2.5 m/s', 'Cast Time: 0.5 sec', 'Duration: 6 seconds', 'Headshot: Yes', NULL, NULL, NULL, NULL),
(99, 19, 'Heavy Pulse Rifle', 'Soldier: 76’s rifle remains particularly steady while unloading fully-automatic pulse fire.', 'Ammo:   25 rounds per clip', 'Reload Time:  1.5-second', 'Damage:  5 – 19', 'Falloff:  30 – 55 m', 'Fire Rate:  8.66 shots per second', 'Headshot: Yes', NULL, NULL, NULL, NULL),
(100, 19, 'Helix Rockets', 'Tiny rockets spiral out of Soldier: 76’s Pulse Rifle in a single burst. The rockets’ explosion damages enemies in a small radius.', 'Damage:    120', 'Splash Damage:  80; 40 splash self damage', 'Radius:   2 m', 'Projectile Speed:  40 m/s', 'Cooldown:  8-second', 'Headshot: No', NULL, NULL, NULL, NULL),
(101, 19, 'Sprint', 'Whether he needs to evade a firefight or get back into one, Soldier: 76 can rush ahead in a burst of speed. His sprint ends if he takes an action other than charging forward.', 'Movement Speed:   8.33 m/s', 'Duration: Lasts until stopped', 'Cooldown: 0-second', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 19, 'Biotic Field', 'Soldier: 76 plants a biotic emitter on the ground. Its energy projection restores health to 76 and any of his squadmates within the field.', 'Heal Rate:   40 HP per second', 'Radius: 5 m', 'Duration: 5 seconds', 'Cooldown: 15-seconds', NULL, NULL, NULL, NULL, NULL, NULL),
(103, 19, 'Tactical Visor (Ultimate Ability)', 'Soldier: 76’s pinpoint targeting visor “locks” his aim on the threat closest to his crosshairs. If an enemy leaves his line of sight, Soldier: 76 can quickly switch to another target.', 'Duration:   Lasts 6 seconds', 'Reload Time:  0.75 sec', 'Headshot: No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 20, 'Opportunist (Passive)', 'Sombra detects critically injured enemies through walls. This effect becomes active on an enemy if they fall below half health.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 20, 'Machine Pistol', 'Sombra’s fully-automatic machine pistol fires in a short-range spread.', 'Ammo:   60 rounds per clip', 'Reload Time: 1.5-second reload', 'Damage: 2.4 – 8 damage', 'Faloff Damange: 15 – 25 m falloff range', 'Fire Rate: 20 shots per second', 'Headshot: Yes', NULL, NULL, NULL, NULL),
(106, 20, 'Hack', 'Sombra hacks enemies to temporarily stop them from using their abilities, or hacks first aid kits to spawn faster and make them useless to her opponents. Taking damage interrupts the hacking.', 'Range:   15 m', 'Cast Time:  0.8 seconds', 'Duration:  Lasts 6, 20, 10, or 60 seconds', 'Cooldown:  8-seconds', NULL, NULL, NULL, NULL, NULL, NULL),
(107, 20, 'Stealth', 'Sombra becomes invisible for a short period of time, during which her speed is boosted considerably. Attacking, using offensive abilities, or taking damage disables her camouflage.', 'Movement Speed:   8.8 m/s', 'Cast Time: 0.7 seconds cloaking/uncloaking', 'Duration: 6 seconds or until interrupted', 'Cooldown: 6-second', NULL, NULL, NULL, NULL, NULL, NULL),
(108, 20, 'Translocator', 'Sombra tosses out a translocator beacon. She can instantly return to the beacon’s location while it is active you can only have one beacon at a time. (including when it’s in mid-flight).', 'Projectile Speed: 19 m/s', 'Cast Time: ~0.7 seconds', 'Duration: 15 seconds or until used/replaced', 'Cooldown: 4-second cooldown', NULL, NULL, NULL, NULL, NULL, NULL),
(109, 20, 'EMP (Ultimate Ability)', 'Sombra discharges electromagnetic energy in a wide radius, destroying enemy barriers and shields and hacking all opponents caught in the blast.', 'Damage Radius:    15 m radius', 'Cast Time: 0.5 sec', 'Duration: Lasts 6 seconds', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 21, 'Photon Beam', 'Symmetra’s weapon emits a short-range beam that homes in on a nearby enemy, dealing continuous damage that increases the longer it is connected.', 'Ammo:   100 rounds per clip', 'Reload time:   1.8 second', 'Damage: 7.5/15/30 per hit', 'Damage Rate: 30/60/120 per second', 'Hit Rate: 4 hits per second', 'Fire Rate: 7 rounds per second', 'Range: 7 or 9.5 m', 'Headshot: No', NULL, NULL),
(111, 21, 'Energy Ball (Alternate Fire)', 'The projector can also release a charged energy ball that deals high damage.', 'Ammo:   100 rounds per clip', 'Reload time:   1.8 second', 'Damage: 25 – 125 damage', 'Fire Rate: 0.44 – 1.54 shots per second', 'Projectiles: 4 – 20 rounds per shot', 'Projectile Speed: 10 m/s', 'Headshot: No', NULL, NULL, NULL),
(112, 21, 'Sentry Turret', 'Symmetra sets up a small turret that automatically fires speed-reducing blasts at the nearest enemy within range. Several turrets can be built on the battlefield at once.', 'Turrets Storage:   6', 'Max Turrets on Field: 6', 'Cast Time: 1.5 seconds', 'Cooldown: 10-seconds', 'Turret Health: 1 HP', 'Turret Damage Rate: 30 or 25.5 per second', 'Movement Speed: -20%', 'Range: 10 m range', 'Duration: Lasts until destroyed or replaced', 'Headshot: No'),
(113, 21, 'Photon Barrier', 'Symmetra projects a moving barrier that absorbs damage as it travels forward.', 'Shield:   1000 barrier HP', 'Projectile Speed: 5.5 m/s', 'Duration: Lasts until destroyed', 'Cooldown: 10-second', NULL, NULL, NULL, NULL, NULL, NULL),
(114, 21, 'Teleporter (Ultimate)', 'Symmetra places a teleporter exit pad at her current location, and connects it to a teleporter entry pad at her team’s starting point. Allies can travel through the entry pad to the exit pad instantly, enabling them to return to the fight swiftly after being defeated.', 'Duration:   Lasts until destroyed or depleted of charges', 'Number of uses:   6 charges', 'Cast time:   2 seconds', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 21, 'Shield Generator (Ultimate)', 'Symmetra deploys a wide-radius generator that provides increased shielding to her entire team.', 'Radius:  50 m', 'Buff: +75 shields', 'Cast Time: 2 sec', 'Duration: Lasts until destroyed, 5 sec', NULL, NULL, NULL, NULL, NULL, NULL),
(116, 22, 'Scrap Collector (Passive)', 'Torbjörn can collect scrap from enemies or allies that die on the battlefield.', 'Ability:  +2 scrap per second, +15 scrap per pickup; Max 200 scrap', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 22, 'Rivet Gun Shot', 'Torbjörn fires rivets at long range', 'Ammo:   18 rounds per clip', 'Reload time:   2 seconds', 'Damage: 70 per shot', 'Fire Rate: 1.67 shot per second', 'Projectiles: 1 round per shot', 'Projectile Speed: ~55 m/s', 'Headshot: Yes', NULL, NULL, NULL),
(118, 22, 'Rivet Gun Burst (Alternate Fire)', 'Torbjörn ejects molten metal from his gun in a short, close-range burst.', 'Ammo:   18  rounds per clip', 'Reload time:   2 seconds', 'Damage: 6 – 15 per pellet', 'Projectiles: 10 pellets per shot', 'Max Damage:  150 bodyshot', 'Falloff: 7 – 20 m', 'Fire Rate: 1.25 shots per second\r\n3 rounds per shot', 'Projectile Speed: ~80 m/s', 'Headshot: Yes', NULL),
(119, 22, 'Forge Hammer (Alternate Weapon)', 'Torbjörn uses his multipurpose hammer to build, upgrade and repair turrets. In a pinch, it can also be swung as a weapon.', 'Damage: 55 per swing', 'Healing: 50 per swing', 'Fire Rate: 1.25 swings per second', 'Headshot: No', NULL, NULL, NULL, NULL, NULL, NULL),
(120, 22, 'Build Turret', 'Torbjörn constructs an enemy-tracking autocannon. He can use his Forge Hammer to repair or upgrade it, increasing its health and adding a second cannon barrel and a rocket launcher.', 'Deploy Time:  3 seconds', 'Cooldown: 8-seconds', 'Turret Health: 150, 300, or 800 HP', 'Turret Damage: 14 per rounds, 14 per rocket', 'Turret Fire Rate: 2, 4, 5 rounds per second; 4 rockets per second', 'Turret Range: 40 m', 'Turret Ammo: ∞', 'Duration: Lasts until destroyed or replaced', 'Headshot: No', NULL),
(121, 22, 'Armor Pack', 'Torbjörn deploys an armor upgrade; either he or his allies can pick it up to absorb some damage.', 'Armor:   +75 temporary per pack', 'Scrap: 50 per pack', 'Cooldown: 0-second cooldown', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 22, 'Molten Core (Ultimate)', 'After overheating his personal forge, Torbjörn gains a significant amount of armor and scrap. He also attacks (and builds and repairs turrets) far faster than normal.', 'Attack Speed::   +50% attack speed', 'Armor: +300', 'Duration: 12 seconds', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 23, 'Pulse Pistols', 'Tracer rapid-fires both of her pistols.', 'Ammo:  40 rounds per clip', 'Reload Time: 1-second', 'Damage: 1.5 – 6 per round', 'Projectiles:  2 rounds per shot', 'Max Damage:  12 bodyshot', 'Falloff: 11 – 30 m', 'Fire Rate: 20 shots per second', 'Headshot: Yes', NULL, NULL),
(124, 23, 'Blink', 'Tracer zips horizontally through space in the direction she’s moving, and reappears several yards away. She stores up to three charges of the blink ability and generates more every few seconds.', 'Charges:   3', 'Range: 7.8 m', 'Cooldown: 3-second', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 23, 'Recall', 'Tracer bounds backward in time, returning her health, ammo and position on the map to precisely where they were a few seconds before.', 'Duration:   1.25 seconds', 'Cooldown:   12 seconds', 'Ability:   Returns health lost during the last 3 seconds', 'Ability:   Returns you to position from 3 seconds ago', NULL, NULL, NULL, NULL, NULL, NULL),
(126, 23, 'Pulse Bomb (Ultimate)', 'Tracer lobs a large bomb that adheres to any surface or unfortunate opponent it lands on. After a brief delay, the bomb explodes, dealing high damage to all enemies within its blast radius.', 'Damage:   400', 'Radius: 3 m', 'Duration: 1 second', 'Headshot: No', NULL, NULL, NULL, NULL, NULL, NULL),
(127, 24, 'Widow’s Kiss (Automatic)', 'Widowmaker’s rifle can be shot in fully-automatic mode allowing her to effectively shoot targets from close to medium range.', 'Ammo:   30 rounds per clip', 'Reload time:   1.5 seconds', 'Damage: 13 per shot', 'Fire Rate: 10 shots per second\r\n1 round per shot', 'Headshot: Yes', NULL, NULL, NULL, NULL, NULL),
(128, 24, 'Widow’s Kiss (Scoped, Alternate fire)', 'Widowmaker’s versatile sniper rifle is ideal for scope-aimed shots at distant targets.', 'Ammo:   30 rounds per clip', 'Reload time:   1.5 seconds', 'Movement Speed: 1.9 m/s', 'Damage: 12 – 120', 'Fire Rate: 1 uncharged shot per 0.45 seconds – 1 fully charged shot per 1.2 seconds - 3 rounds per shot', 'Charge Time: 0.75 second charging, 0.45 second buffer, 0.33 second scope in/out', 'Headshot: Yes', NULL, NULL, NULL),
(129, 24, 'Grappling Hook', 'Widowmaker launches a grappling hook towards the location she’s aiming at – when the hook connects with a scalable surface, she’s quickly drawn towards it, allowing her to expand her view of the battlefield and evade or flank targets.', 'Projectile Speed:    20 m/s', 'Range: 20 m', 'Movement Speed: 16 m/s', 'Cooldown: 8-seconds', NULL, NULL, NULL, NULL, NULL, NULL),
(130, 24, 'Venom Mine', 'Widowmaker adheres a swiftly-arming venom mine to nearly any surface. When a target wanders within range of the mine’s motion trigger, it explodes, delivering poison gas to any enemies in the vicinity.', 'Damage:   15 per second', 'Max Damage:  75 total\r\n5 HP', 'Projectile Speed: 19 m/s', 'Radius: 3 m', 'Duration: Lasts until destroyed, 5 seconds', 'Cooldown: 15-second cooldown', NULL, NULL, NULL, NULL),
(131, 24, 'Infra-Sight (Ultimate)', 'Widowmaker’s recon visor allows her to see the heat signatures of her targets through walls and objects for a moderate amount of time. This enhanced vision is shared with her allies.', 'Cast Time:   0.5 sec cast', 'Duration: 15.5 seconds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 25, 'Tesla Cannon', 'Winston’s weapon fires a short-range electric barrage for as long as he holds down the trigger.', 'Ammo:   100 rounds per clip', 'Reload Time: 1.5-second', 'Damage: 3 per round', 'Damage Rate:  60 damage per second', 'Fire Rate: 20 rounds per second', 'Range: 8 m', 'Radius: 6 m', 'Headshot: No', NULL, NULL),
(133, 25, 'Jump Pack', 'Assisted by his energy pack, Winston lunges through the air, dealing significant damage and staggering nearby enemies when he lands.', 'Splash damage:   1 and 45 – 1 damage', 'Range: 20 m', 'Radius: 5 m', 'Cooldown: 6 or 2-second', NULL, NULL, NULL, NULL, NULL, NULL),
(134, 25, 'Barrier Projector', 'Winston’s barrier projector extends a bubble-shaped field that absorbs damage until it’s destroyed. Allies protected by the barrier can return fire from within it.', 'Barrier:  600 HP', 'Radius: 5 m', 'Duration: 5 seconds or until destroyed', 'Cooldown: 13-second', NULL, NULL, NULL, NULL, NULL, NULL),
(135, 25, 'Primal Rage (Ultimate)', 'Winston embraces his animal nature, significantly boosting his health and making him very difficult to kill, strengthening his melee attack, and allowing him to use his Jump Pack ability more frequently. While raging, Winston can only make melee and Jump Pack attacks.', 'Health Buff:  +500 maximum health; health and armor fully replenished', 'Melee Rate: 1.55 swings per second', 'Damage: 40 per swing', 'Range: 4 m', 'Movement Speed: 7.15 m/s', 'Duration: Lasts 10 seconds', NULL, NULL, NULL, NULL),
(136, 26, 'Energy (Passive)', 'Damage blocked increases Particle Cannon damage.', 'Particle Cannon Damage:  +1% per point; Max +100% Particle Cannon damage\r\n+1 Energy per 5 barrier HP damage; -2 Energy per sec', 'Buffer: 2 sec decay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 26, 'Particle Energy Beam', 'Zarya’s mighty Particle Cannon unleashes a short-range beam of destructive energy.', 'Ammo:   100 rounds per clip', 'Reload time:   1.5 seconds', 'Damage: 4.75 – 9.5 per round', 'Damage Rate: 95 – 190 per second', 'Fire Rate: 20 rounds per second', 'Projectiles: 1 round per shot', 'Range: 15 m', 'Headshot: No', NULL, NULL),
(138, 26, 'Particle Explosive Charge (Alternate fire)', 'Alternatively, Zarya can lob an explosive charge to strike multiple opponents.', 'Ammo:   100 rounds per clip', 'Reload time:   1.5 seconds', 'Damage: 46 – 92 per shot', 'Splash Damage: 45 – 90 splash; 23.5 – 47 splash self damage', 'Radius: 2 – 3 m', 'Fire Rate: 1 shot per second', 'Projectiles: 25 rounds per shot', 'Projectile Speed: 23.5 m/s projectile speed', 'Headshot: No', NULL),
(139, 26, 'Particle Barrier', 'The Particle Cannon can emit a personal barrier that shields Zarya against incoming attacks, redirecting their energy to enhance her weapon’s damage and the width of its beam.', 'Barrier Health:   200', 'Duration: 2 seconds or until destroyed', 'Cooldown: 10-second', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 26, 'Projected Barrier', 'Zarya surrounds one of her teammates with an energy barrier that simultaneously absorbs fire and boosts the power of her Particle Cannon.', 'Barrier Health:   200', 'Range: 30 m', 'Duration: 2 seconds', 'Cooldown: 8-second', NULL, NULL, NULL, NULL, NULL, NULL),
(141, 26, 'Graviton Surge (Ultimate)', 'Zarya launches a gravity bomb that draws in enemy combatants and deals damage while they’re trapped.', 'Damage Rate:   5.5 per sec', 'Max Damage:  22 damage per enemy', 'Radius: 8 m', 'Duration: 4 seconds', 'Headshot: No', NULL, NULL, NULL, NULL, NULL),
(142, 27, 'Orb of Destruction (Singular Orb)', 'Zenyatta projects his destructive energy orbs individually.', 'Ammo:  20 rounds per clip', 'Reload time:  2 seconds', 'Damage: 46', 'Fire Rate: 2.5 shots per second', 'Projectile Speed: 60 m/s projectile speed', 'Headshot: Yes', NULL, NULL, NULL, NULL),
(143, 27, 'Orb of Destruction (Orb Volley)', 'Zenyatta projects his destructive energy orbs in a rapid-fire volley after a few seconds spent gathering power.', 'Ammo:  20 rounds per clip', 'Reload time:  2 seconds', 'Damage: 46 per orb', 'Projectiles: 1 – 5 orbs per shot', 'Max Damage: 230 bodyshot', 'Fire Rate: 5 orbs in 0.4 seconds\r\n1 – 5 rounds per burst', 'Projectile Speed: 60 m/s\r\n0.4 – 2 and up to 3 seconds charging, 0.6 seconds buffer', 'Headshot: Yes', NULL, NULL),
(144, 27, 'Orb of Harmony', 'Zenyatta casts an orb over the shoulder of a targeted ally. So long as Zenyatta maintains line of sight, the orb slowly restores health to his ally. Only one ally can receive the orb’s benefit at a time.', 'Healing:  30 HP per second', 'Projectile Speed: 120 m/s', 'Range: 40 m', 'Duration: 3 seconds or until target is changed', 'Cooldown: none', NULL, NULL, NULL, NULL, NULL),
(145, 27, 'Orb of Discord', 'Attaching the orb of discord to an opponent amplifies the amount of damage they receive for as long as Zenyatta maintains line of sight. Only one opponent can suffer the orb’s effects at a time.', 'Damage Resistance Debuff:   -30% resistance', 'Projectile Speed: 120 m/s', 'Range: 40 m', 'Duration: 3 seconds or until target is changed', 'Cooldown: none', NULL, NULL, NULL, NULL, NULL),
(146, 27, 'Transcendence (Ultimate)', 'Zenyatta enters a state of heightened existence for a short period of time. While transcendent, Zenyatta cannot use abilities or weapons, but is immune to damage and automatically restores his health and that of nearby allies.', 'Radius:  10 m', 'Heal Rate: 300 healing per second', 'Movement Speed: 11 m/s', 'Duration: 6 seconds', NULL, NULL, NULL, NULL, NULL, NULL);

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
  `topc_subject` varchar(255) NOT NULL,
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
  `user_pass` varchar(16) NOT NULL,
  `user_email` varchar(16) NOT NULL,
  `user_date` datetime NOT NULL,
  `user_level` int(8) NOT NULL,
  `user_icon` int(8) NOT NULL
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `heroes`
--
ALTER TABLE `heroes`
  MODIFY `hero_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `maps`
--
ALTER TABLE `maps`
  MODIFY `map_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `topic_id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(8) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `abilities`
--
ALTER TABLE `abilities`
  ADD CONSTRAINT `abilities_ibfk_1` FOREIGN KEY (`ability_hero`) REFERENCES `heroes` (`hero_id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
