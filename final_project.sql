-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2017 at 03:05 AM
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
('McCree', 'Combat Roll', 'McCree dives in the direction he\'s moving, effortlessly reloading his Peacekeeper in the process.'),
('McCree', 'Flashbang', 'McCree heaves a blinding grenade that explodes shortly after it leaves his hand. The blast staggers enemies in a small radius.'),
('McCree', 'Peacekeeper', 'McCree fires off a round from his trusty six-shooter. He can fan the Peacekeeper\'s hammer to swiftly unload the entire cylinder.'),
('Pharah', 'Concussive Blast', 'Pharah looses a wrist rocket that knocks back any enemies it strikes.'),
('Pharah', 'Jump Jet', 'Propelled by her suit\'s thrusters, Pharah soars high into the air.'),
('Pharah', 'Rocket Launcher', 'Pharah\'s primary weapon launches rockets that deal significant damage in a wide blast radius.'),
('Reaper', 'Hellfire Shotguns', 'Reaper tears enemies apart with twin shotguns.'),
('Reaper', 'Shadow Step', 'After marking a destination, Reaper disappears and reappears at that location.'),
('Reaper', 'Wraith Form', 'Reaper becomes a shadow for a short period of time. While in this form, he takes no damage and is able to pass through enemies, but cannot fire his weapons or use other abilities.'),
('Soldier 76', 'Biotic Field', 'Soldier: 76 plants a biotic emitter on the ground. Its energy projection restores health to 76 and any of his squadmates within the field.'),
('Soldier 76', 'Heavy Pulse Rifle', 'Soldier: 76\'s rifle remains particularly steady while unloading fully-automatic pulse fire.'),
('Soldier 76', 'Helix Rockets', 'Tiny rockets spiral out of Soldier: 76\'s Pulse Rifle in a single burst. The rockets\' explosion damages enemies in a small radius.'),
('Soldier 76', 'Sprint', 'Whether he needs to evade a firefight or get back into one, Soldier: 76 can rush ahead in a burst of speed. His sprint ends if he takes an action other than charging forward.'),
('Sombra', 'Hack', 'Sombra hacks enemies to temporarily stop them from using their abilities, or hacks first aid kits to make them useless to her opponents.'),
('Sombra', 'Machine Pistol', 'Sombra\'s fully-automatic machine pistol fires in a short-range spread.'),
('Sombra', 'Stealth', 'Sombra becomes invisible for a short period of time, during which her speed is boosted considerably. Attacking, using offensive abilities, or taking damage disables her camouflage.'),
('Sombra', 'Translocator', 'Sombra tosses out a translocator beacon. She can instantly return to the beacon\'s location while it is active (including when it\'s in mid-flight).'),
('Tracer', 'Blink', 'Tracer zips horizontally through space in the direction she\'s moving, and reappears several yards away. She stores up to three charges of the blink ability and generates more every few seconds.'),
('Tracer', 'Pulse Pistols', 'Tracer rapid-fires both of her pistols.'),
('Tracer', 'Recall', 'Tracer bounds backward in time, returning her health, ammo and position on the map to precisely where they were a few seconds before.');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `PageID` varchar(255) NOT NULL,
  `Author` varchar(255) DEFAULT NULL,
  `Comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`PageID`, `Author`, `Comment`) VALUES
('Ana', 'Daniel', 'This should show up for you guys (i hope)'),
('Ana', 'if it doesnt', 'then oops'),
('Bastion', 'Bastion', 'beep boop');

-- --------------------------------------------------------

--
-- Table structure for table `heroes`
--

CREATE TABLE `heroes` (
  `Hero` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Role` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `heroes`
--

INSERT INTO `heroes` (`Hero`, `Role`) VALUES
('Ana', 'Support'),
('Bastion', 'Defense'),
('D.Va', 'Tank'),
('Doomfist', 'Offense'),
('Genji', 'Offense'),
('Hanzo', 'Defense'),
('Junkrat', 'Defense'),
('Lucio', 'Support'),
('McCree', 'Offense'),
('Mei', 'Defense'),
('Mercy', 'Support'),
('Moira', 'Support'),
('Orisa', 'Tank'),
('Pharah', 'Offense'),
('Reaper', 'Offense'),
('Reinhardt', 'Tank'),
('Roadhog', 'Tank'),
('Soldier 76', 'Offense'),
('Sombra', 'Offense'),
('Symmetra', 'Support'),
('Torbjorn', 'Defense'),
('Tracer', 'Offense'),
('Widowmaker', 'Defense'),
('Winston', 'Tank'),
('Zarya', 'Tank'),
('Zenyatta', 'Support');

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
('Junkrat', 'Rip-Tire', 'Junkrat revs up a motorized tire bomb and sends it rolling across the battlefield, climbing over walls and obstacles. He can remotely detonate the RIP-Tire to deal serious damage to enemies caught in the blast, or just wait for it to explode on its own.');

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
-- Indexes for table `ultimates`
--
ALTER TABLE `ultimates`
  ADD UNIQUE KEY `Hero` (`Hero`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
