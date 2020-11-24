-- phpMyAdmin SQL Dump
-- version 4.6.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 18, 2018 at 01:23 AM
-- Server version: 5.6.28
-- PHP Version: 5.5.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `World Cup`
--

-- --------------------------------------------------------

--
-- Table structure for table `COUNTRY`
--

CREATE TABLE `COUNTRY` (
  `Name` varchar(50) NOT NULL,
  `Population` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COUNTRY`
--

INSERT INTO `COUNTRY` (`Name`, `Population`) VALUES
('Argentina', 43850000),
('Australia', 24860000),
('Brazil', 209000000),
('England', 55268100),
('France', 67118648),
('Germany', 82695000),
('Iceland', 330000),
('Italy', 60551416),
('Russia ', 144500000),
('Spain', 46572028),
('Sweden', 10067744),
('Uruguay', 3444006);

-- --------------------------------------------------------

--
-- Table structure for table `CUSTOMER`
--

CREATE TABLE `CUSTOMER` (
  `ID` varchar(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `CountryName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CUSTOMER`
--

INSERT INTO `CUSTOMER` (`ID`, `Name`, `Email`, `CountryName`) VALUES
('C12', 'Oliver', 'WOliver@gmail.com', 'Italy'),
('C34', 'William', 'William_BB@gmail.com', 'Argentina'),
('C35', 'Charlie', 'Charlie_CH@gmail.com', 'Uruguay'),
('C66', 'Damian', 'Damian_Chen@gmail.co', 'England'),
('C78', 'Joe', 'Joe_YI@gmail.com', 'Brazil');

-- --------------------------------------------------------

--
-- Table structure for table `ELIMINATIONGAME`
--

CREATE TABLE `ELIMINATIONGAME` (
  `ID` int(11) NOT NULL,
  `Stage` int(11) NOT NULL,
  `HomePenalties` int(11) NOT NULL,
  `AwayPenalties` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ELIMINATIONGAME`
--

INSERT INTO `ELIMINATIONGAME` (`ID`, `Stage`, `HomePenalties`, `AwayPenalties`) VALUES
(12312, 1, 5, 3),
(12332, 1, 8, 9),
(12343, 1, 4, 5),
(21313, 1, 8, 6),
(21314, 1, 7, 9);

-- --------------------------------------------------------

--
-- Table structure for table `GOALS`
--

CREATE TABLE `GOALS` (
  `PlayerID` int(11) NOT NULL,
  `MatchID` int(11) NOT NULL,
  `Count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `GOALS`
--

INSERT INTO `GOALS` (`PlayerID`, `MatchID`, `Count`) VALUES
(2, 21314, 0),
(3, 12332, 3),
(3, 12343, 0),
(4, 12354, 2),
(5, 12312, 1);

-- --------------------------------------------------------

--
-- Table structure for table `HOMECLUB`
--

CREATE TABLE `HOMECLUB` (
  `Name` varchar(25) NOT NULL,
  `Country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `HOMECLUB`
--

INSERT INTO `HOMECLUB` (`Name`, `Country`) VALUES
('Manchester United', 'Argentina'),
('English club', 'Australia'),
('Chelsea FC', 'Brazil'),
('FC Bayern', 'England'),
('AL Hilal Riad', 'France'),
('Manchester City', 'Germany'),
('FC Barrcelona', 'Italy'),
('Tottenham', 'Sweden'),
('Juventus', 'Uruguay');

-- --------------------------------------------------------

--
-- Table structure for table `MATCHS`
--

CREATE TABLE `MATCHS` (
  `ID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `Stadium` varchar(50) NOT NULL,
  `HomeYear` int(4) NOT NULL,
  `HomeTeamID` int(11) NOT NULL,
  `AwayYear` int(4) NOT NULL,
  `AwayTeamID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `MATCHS`
--

INSERT INTO `MATCHS` (`ID`, `Date`, `Time`, `Stadium`, `HomeYear`, `HomeTeamID`, `AwayYear`, `AwayTeamID`) VALUES
(12312, '2018-12-07', '22:00:00', 'Saint Petersburg', 2014, 125, 2014, 126),
(12332, '2018-04-07', '01:00:00', 'Sochi', 2014, 126, 2014, 146),
(12343, '2018-02-07', '02:00:00', 'Ekaterinburg', 2010, 127, 2010, 136),
(12345, '2018-08-07', '04:00:00', 'Luzhniki Stadium', 2018, 123, 2018, 124),
(12354, '2018-07-07', '00:00:00', 'Moscow', 2018, 124, 2018, 135),
(21313, '2018-11-30', '23:00:00', 'Ekaterinburg', 2018, 135, 2018, 123),
(21314, '2018-06-29', '05:00:00', 'Moscow', 2010, 134, 2010, 127),
(25634, '2018-04-30', '02:00:00', 'Saint Petersburg', 2018, 135, 2018, 234);

-- --------------------------------------------------------

--
-- Table structure for table `MEMBER`
--

CREATE TABLE `MEMBER` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `MEMBER`
--

INSERT INTO `MEMBER` (`ID`, `Name`) VALUES
(1, 'Aaron'),
(2, 'Abdul'),
(3, 'Padgett'),
(4, 'Fabian'),
(5, 'Tom'),
(6, 'Malcolm'),
(7, 'Paul'),
(8, 'Jack'),
(9, 'Harry'),
(10, 'James');

-- --------------------------------------------------------

--
-- Table structure for table `PLAYER`
--

CREATE TABLE `PLAYER` (
  `ID` int(11) NOT NULL,
  `Position` varchar(50) NOT NULL,
  `HomeClubName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PLAYER`
--

INSERT INTO `PLAYER` (`ID`, `Position`, `HomeClubName`) VALUES
(1, 'right back', 'Manchester United'),
(2, 'goalkeeper', 'FC Bayern'),
(3, 'left back', 'Manchester City'),
(4, 'sweeper', 'Tottenham'),
(5, 'stopper', 'English club'),
(6, 'left midfielder', 'Juventus'),
(10, 'right back', 'FC Bayern');

-- --------------------------------------------------------

--
-- Table structure for table `POOLGAME`
--

CREATE TABLE `POOLGAME` (
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `POOLGAME`
--

INSERT INTO `POOLGAME` (`ID`) VALUES
(12312),
(12332),
(12343),
(12345),
(12354);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q1`
-- (See below for the actual view)
--
CREATE TABLE `Q1` (
`ID` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q2`
-- (See below for the actual view)
--
CREATE TABLE `Q2` (
`ID` int(11)
,`Name` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q3`
-- (See below for the actual view)
--
CREATE TABLE `Q3` (
`ID` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q4`
-- (See below for the actual view)
--
CREATE TABLE `Q4` (
`ID` int(11)
,`Name` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q5`
-- (See below for the actual view)
--
CREATE TABLE `Q5` (
`TeamID` int(11)
,`Number` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q6`
-- (See below for the actual view)
--
CREATE TABLE `Q6` (
`Name` varchar(50)
,`Sum` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q7`
-- (See below for the actual view)
--
CREATE TABLE `Q7` (
`MatchID` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q8`
-- (See below for the actual view)
--
CREATE TABLE `Q8` (
`PlayerID` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q9`
-- (See below for the actual view)
--
CREATE TABLE `Q9` (
`Name` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q10`
-- (See below for the actual view)
--
CREATE TABLE `Q10` (
`Name` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `SAVES`
--

CREATE TABLE `SAVES` (
  `PlayerID` int(11) NOT NULL,
  `MatchID` int(11) NOT NULL,
  `Count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SAVES`
--

INSERT INTO `SAVES` (`PlayerID`, `MatchID`, `Count`) VALUES
(1, 12312, 1),
(2, 12354, 1),
(3, 12332, 1),
(5, 12312, 2),
(6, 12332, 2);

-- --------------------------------------------------------

--
-- Table structure for table `SUPPORTSTAFF`
--

CREATE TABLE `SUPPORTSTAFF` (
  `ID` int(11) NOT NULL,
  `Role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SUPPORTSTAFF`
--

INSERT INTO `SUPPORTSTAFF` (`ID`, `Role`) VALUES
(1, 'technical direction'),
(3, 'Treasurer'),
(4, 'Head Medical Trainer'),
(5, 'Junior Coach'),
(6, 'Medical Trainer');

-- --------------------------------------------------------

--
-- Table structure for table `TEAM`
--

CREATE TABLE `TEAM` (
  `Year` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `Country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TEAM`
--

INSERT INTO `TEAM` (`Year`, `ID`, `Country`) VALUES
(2010, 136, 'Argentina'),
(2018, 123, 'Australia'),
(2018, 333, 'Australia'),
(2018, 785, 'Australia'),
(2014, 125, 'Brazil'),
(2002, 425, 'France'),
(2006, 356, 'France'),
(2010, 127, 'France'),
(2014, 146, 'France'),
(2018, 143, 'France'),
(2002, 741, 'Germany'),
(2006, 655, 'Germany'),
(2010, 134, 'Germany'),
(2014, 452, 'Germany'),
(2018, 456, 'Germany'),
(2018, 234, 'Iceland'),
(2018, 124, 'Italy'),
(2014, 126, 'Spain'),
(2018, 135, 'Uruguay');

-- --------------------------------------------------------

--
-- Table structure for table `TEAMMEMBER`
--

CREATE TABLE `TEAMMEMBER` (
  `Year` int(11) NOT NULL,
  `TeamID` int(11) NOT NULL,
  `MemberID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TEAMMEMBER`
--

INSERT INTO `TEAMMEMBER` (`Year`, `TeamID`, `MemberID`) VALUES
(2010, 134, 2),
(2018, 123, 2),
(2014, 126, 3),
(2018, 124, 3),
(2014, 125, 6),
(2018, 124, 10),
(2018, 785, 10);

-- --------------------------------------------------------

--
-- Table structure for table `TICKET`
--

CREATE TABLE `TICKET` (
  `MatchID` int(11) NOT NULL,
  `Ticket#` varchar(11) NOT NULL,
  `CustomerID` varchar(11) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TICKET`
--

INSERT INTO `TICKET` (`MatchID`, `Ticket#`, `CustomerID`, `Price`) VALUES
(12332, 'T123456', 'C34', 365),
(12332, 'T123465', 'C35', 145),
(12332, 'T128963', 'C12', 222),
(12343, 'T147852', 'C66', 256),
(12345, 'T258963', 'C12', 452),
(12354, 'T258741', 'C78', 312),
(21313, 'T398741', 'C78', 214);

-- --------------------------------------------------------

--
-- Table structure for table `TOURNAMENT`
--

CREATE TABLE `TOURNAMENT` (
  `Year` int(11) NOT NULL,
  `Country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TOURNAMENT`
--

INSERT INTO `TOURNAMENT` (`Year`, `Country`) VALUES
(2014, 'Brazil'),
(2002, 'England'),
(2006, 'France'),
(2018, 'Italy'),
(2010, 'Spain');

-- --------------------------------------------------------

--
-- Structure for view `Q1`
--
DROP TABLE IF EXISTS `Q1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Q1`  AS  select `P`.`ID` AS `ID` from ((`PLAYER` `P` join `TEAM` `T`) join `TEAMMEMBER` `TM`) where ((`T`.`Country` = 'Australia') and (`TM`.`Year` = '2018') and (`P`.`ID` = `TM`.`MemberID`) and (`TM`.`TeamID` = `T`.`ID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `Q2`
--
DROP TABLE IF EXISTS `Q2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Q2`  AS  select distinct `PLAYER`.`ID` AS `ID`,`MEMBER`.`Name` AS `Name` from ((`PLAYER` join `GOALS`) join `MEMBER`) where (((not(`PLAYER`.`ID` in (select `GOALS`.`PlayerID` from `GOALS`))) or ((`GOALS`.`Count` = '0') and (`PLAYER`.`ID` = `GOALS`.`PlayerID`))) and (`PLAYER`.`ID` = `MEMBER`.`ID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `Q3`
--
DROP TABLE IF EXISTS `Q3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Q3`  AS  select distinct `M`.`ID` AS `ID` from (((`TOURNAMENT` `TN` join `POOLGAME` `P`) join `TEAM` `T`) join `MATCHS` `M`) where ((`TN`.`Year` = `T`.`Year`) and (`TN`.`Country` = `T`.`Country`) and (`P`.`ID` = `M`.`ID`) and ((`T`.`ID` = `M`.`HomeTeamID`) or (`T`.`ID` = `M`.`AwayTeamID`)) and (`M`.`HomeYear` = `TN`.`Year`)) ;

-- --------------------------------------------------------

--
-- Structure for view `Q4`
--
DROP TABLE IF EXISTS `Q4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Q4`  AS  select distinct `P`.`ID` AS `ID`,`M`.`Name` AS `Name` from ((((`PLAYER` `P` join `HOMECLUB` `H`) join `TEAMMEMBER` `TM`) join `TEAM` `T`) join `MEMBER` `M`) where ((`P`.`ID` = `TM`.`MemberID`) and (`TM`.`TeamID` = `T`.`ID`) and (`TM`.`Year` = `T`.`Year`) and (`T`.`Country` = 'Australia') and (`P`.`HomeClubName` = `H`.`Name`) and (`H`.`Country` = 'England') and (`M`.`ID` = `P`.`ID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `Q5`
--
DROP TABLE IF EXISTS `Q5`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Q5`  AS  select `T`.`TeamID` AS `TeamID`,count(0) AS `Number` from ((`SUPPORTSTAFF` `S` join `MEMBER` `M`) join `TEAMMEMBER` `T`) where ((`S`.`ID` = `M`.`ID`) and (`T`.`Year` = 2018) and (`T`.`MemberID` = `M`.`ID`)) group by `T`.`TeamID` order by `T`.`TeamID` ;

-- --------------------------------------------------------

--
-- Structure for view `Q6`
--
DROP TABLE IF EXISTS `Q6`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Q6`  AS  select `M`.`Name` AS `Name`,sum(`S`.`Count`) AS `Sum` from (`SAVES` `S` join `MEMBER` `M`) where (`M`.`ID` = `S`.`PlayerID`) group by `S`.`PlayerID` ;

-- --------------------------------------------------------

--
-- Structure for view `Q7`
--
DROP TABLE IF EXISTS `Q7`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Q7`  AS  select `T`.`MatchID` AS `MatchID` from `TICKET` `T` group by `T`.`MatchID` having count(0) >= all (select count(0) from `TICKET` group by `TICKET`.`MatchID`) ;

-- --------------------------------------------------------

--
-- Structure for view `Q8`
--
DROP TABLE IF EXISTS `Q8`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Q8`  AS  select `G`.`PlayerID` AS `PlayerID` from (`GOALS` `G` join `ELIMINATIONGAME` `E`) where (`E`.`ID` = `G`.`MatchID`) group by `G`.`PlayerID` having sum(`G`.`Count`) >= all (select sum(`G`.`Count`) from (`GOALS` `G` join `ELIMINATIONGAME` `E`) where (`E`.`ID` = `G`.`MatchID`) group by `G`.`PlayerID`) ;

-- --------------------------------------------------------

--
-- Structure for view `Q9`
--
DROP TABLE IF EXISTS `Q9`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Q9`  AS  select `COUNTRY`.`Name` AS `Name` from `COUNTRY` where (not(exists(select `TOURNAMENT`.`Country` from `TOURNAMENT` where (not(exists(select `TEAM`.`Country` from `TEAM` where ((`TOURNAMENT`.`Year` = `TEAM`.`Year`) and (`TEAM`.`Country` = `COUNTRY`.`Name`)))))))) ;

-- --------------------------------------------------------

--
-- Structure for view `Q10`
--
DROP TABLE IF EXISTS `Q10`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Q10`  AS  select distinct `MM`.`Name` AS `Name` from (((((`MATCHS` `M` join `GOALS` `G`) join `PLAYER` `P`) join `TEAMMEMBER` `TM`) join `TEAM` `T`) join `MEMBER` `MM`) where ((`M`.`ID` = (select `M`.`ID` from (`MATCHS` `M` join `TEAM` `T`) where ((`T`.`Country` = 'Iceland') and ((`T`.`ID` = `M`.`HomeTeamID`) or (`T`.`ID` = `M`.`AwayTeamID`))))) and (`P`.`ID` = `G`.`PlayerID`) and (`G`.`PlayerID` = `MM`.`ID`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `COUNTRY`
--
ALTER TABLE `COUNTRY`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `CUSTOMER`
--
ALTER TABLE `CUSTOMER`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ELIMINATIONGAME`
--
ALTER TABLE `ELIMINATIONGAME`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `GOALS`
--
ALTER TABLE `GOALS`
  ADD PRIMARY KEY (`PlayerID`,`MatchID`),
  ADD KEY `MatchID` (`MatchID`);

--
-- Indexes for table `HOMECLUB`
--
ALTER TABLE `HOMECLUB`
  ADD PRIMARY KEY (`Name`),
  ADD KEY `Country` (`Country`);

--
-- Indexes for table `MATCHS`
--
ALTER TABLE `MATCHS`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `HomeYear` (`HomeYear`,`HomeTeamID`,`AwayYear`,`AwayTeamID`),
  ADD KEY `AwayYear` (`AwayYear`,`AwayTeamID`);

--
-- Indexes for table `MEMBER`
--
ALTER TABLE `MEMBER`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `PLAYER`
--
ALTER TABLE `PLAYER`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `HomeClubName` (`HomeClubName`);

--
-- Indexes for table `POOLGAME`
--
ALTER TABLE `POOLGAME`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `SAVES`
--
ALTER TABLE `SAVES`
  ADD PRIMARY KEY (`PlayerID`,`MatchID`),
  ADD KEY `MatchID` (`MatchID`);

--
-- Indexes for table `SUPPORTSTAFF`
--
ALTER TABLE `SUPPORTSTAFF`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `TEAM`
--
ALTER TABLE `TEAM`
  ADD PRIMARY KEY (`Year`,`ID`),
  ADD KEY `Country` (`Country`);

--
-- Indexes for table `TEAMMEMBER`
--
ALTER TABLE `TEAMMEMBER`
  ADD PRIMARY KEY (`Year`,`TeamID`,`MemberID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `TICKET`
--
ALTER TABLE `TICKET`
  ADD PRIMARY KEY (`MatchID`,`Ticket#`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `TOURNAMENT`
--
ALTER TABLE `TOURNAMENT`
  ADD PRIMARY KEY (`Year`),
  ADD KEY `Country` (`Country`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ELIMINATIONGAME`
--
ALTER TABLE `ELIMINATIONGAME`
  ADD CONSTRAINT `ELIMINATIONGAME_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `MATCHS` (`ID`);

--
-- Constraints for table `GOALS`
--
ALTER TABLE `GOALS`
  ADD CONSTRAINT `GOALS_ibfk_2` FOREIGN KEY (`MatchID`) REFERENCES `MATCHS` (`ID`),
  ADD CONSTRAINT `GOALS_ibfk_3` FOREIGN KEY (`PlayerID`) REFERENCES `PLAYER` (`ID`);

--
-- Constraints for table `HOMECLUB`
--
ALTER TABLE `HOMECLUB`
  ADD CONSTRAINT `HOMECLUB_ibfk_1` FOREIGN KEY (`Country`) REFERENCES `COUNTRY` (`Name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `MATCHS`
--
ALTER TABLE `MATCHS`
  ADD CONSTRAINT `MATCHS_ibfk_1` FOREIGN KEY (`HomeYear`,`HomeTeamID`) REFERENCES `TEAM` (`Year`, `ID`),
  ADD CONSTRAINT `MATCHS_ibfk_2` FOREIGN KEY (`AwayYear`,`AwayTeamID`) REFERENCES `TEAM` (`Year`, `ID`);

--
-- Constraints for table `PLAYER`
--
ALTER TABLE `PLAYER`
  ADD CONSTRAINT `F2` FOREIGN KEY (`HomeClubName`) REFERENCES `HOMECLUB` (`Name`),
  ADD CONSTRAINT `PLAYER_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `MEMBER` (`ID`);

--
-- Constraints for table `POOLGAME`
--
ALTER TABLE `POOLGAME`
  ADD CONSTRAINT `POOLGAME_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `MATCHS` (`ID`);

--
-- Constraints for table `SAVES`
--
ALTER TABLE `SAVES`
  ADD CONSTRAINT `SAVES_ibfk_2` FOREIGN KEY (`MatchID`) REFERENCES `MATCHS` (`ID`),
  ADD CONSTRAINT `SAVES_ibfk_3` FOREIGN KEY (`PlayerID`) REFERENCES `PLAYER` (`ID`);

--
-- Constraints for table `SUPPORTSTAFF`
--
ALTER TABLE `SUPPORTSTAFF`
  ADD CONSTRAINT `SUPPORTSTAFF_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `MEMBER` (`ID`);

--
-- Constraints for table `TEAM`
--
ALTER TABLE `TEAM`
  ADD CONSTRAINT `TEAM_ibfk_1` FOREIGN KEY (`Country`) REFERENCES `COUNTRY` (`Name`),
  ADD CONSTRAINT `TEAM_ibfk_2` FOREIGN KEY (`Year`) REFERENCES `TOURNAMENT` (`Year`);

--
-- Constraints for table `TEAMMEMBER`
--
ALTER TABLE `TEAMMEMBER`
  ADD CONSTRAINT `TEAMMEMBER_ibfk_1` FOREIGN KEY (`MemberID`) REFERENCES `MEMBER` (`ID`),
  ADD CONSTRAINT `TEAMMEMBER_ibfk_2` FOREIGN KEY (`Year`,`TeamID`) REFERENCES `TEAM` (`Year`, `ID`);

--
-- Constraints for table `TICKET`
--
ALTER TABLE `TICKET`
  ADD CONSTRAINT `TICKET_ibfk_2` FOREIGN KEY (`MatchID`) REFERENCES `MATCHS` (`ID`),
  ADD CONSTRAINT `TICKET_ibfk_3` FOREIGN KEY (`CustomerID`) REFERENCES `CUSTOMER` (`ID`);

--
-- Constraints for table `TOURNAMENT`
--
ALTER TABLE `TOURNAMENT`
  ADD CONSTRAINT `TOURNAMENT_ibfk_1` FOREIGN KEY (`Country`) REFERENCES `COUNTRY` (`Name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
