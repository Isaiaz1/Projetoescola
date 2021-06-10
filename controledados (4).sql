-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 10-Jun-2021 às 03:57
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `controledados`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `NOME` varchar(100) NOT NULL,
  `SERIE` int(10) NOT NULL,
  `RA` int(10) NOT NULL,
  `DATADENASCIMENTO` varchar(10) NOT NULL,
  `TELEFONE` varchar(15) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `ENDERECO` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`NOME`, `SERIE`, `RA`, `DATADENASCIMENTO`, `TELEFONE`, `EMAIL`, `ENDERECO`) VALUES
('isaiaz', 3, 1, '22/08/2009', '2354677', 'isa@isa', 'rua das jonataaaaaaaaaaaaaas'),
('gio', 4, 2, '12/03', '12346', 'gio@', 'rua'),
('henrique', 2, 3, '22/09/2008', '19989862', 'pedro@ajjkskj', 'ruaaa'),
('andre', 3, 4, '21092000', '28389489', 'andre@', 'rua 3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `escola`
--

CREATE TABLE `escola` (
  `IDESCOLA` int(50) NOT NULL,
  `NOME` varchar(100) NOT NULL,
  `ENDERECO` varchar(100) NOT NULL,
  `TELEFONE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fatura`
--

CREATE TABLE `fatura` (
  `RA` int(50) NOT NULL,
  `STATUSFATURA` varchar(100) NOT NULL,
  `VALORPENDENCIA` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `fatura`
--

INSERT INTO `fatura` (`RA`, `STATUSFATURA`, `VALORPENDENCIA`) VALUES
(1, '0', 0),
(2, '0', 445),
(4, 'não paga', 34556),
(6, 'paga', 0),
(23, '0', 234);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensalidades`
--

CREATE TABLE `mensalidades` (
  `RA` int(50) NOT NULL,
  `STATUSFATURA` tinyint(1) NOT NULL,
  `MES` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `NOME` varchar(100) NOT NULL,
  `SERIE` int(50) NOT NULL,
  `IDPROFESSOR` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`NOME`, `SERIE`, `IDPROFESSOR`) VALUES
('Georgia silva', 2, 1),
('Georgia mascarenhas', 9, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `responsavel`
--

CREATE TABLE `responsavel` (
  `NOME` varchar(100) NOT NULL,
  `SERIE` int(50) NOT NULL,
  `TELEFONE` varchar(100) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `ENDERECO` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `responsavel`
--

INSERT INTO `responsavel` (`NOME`, `SERIE`, `TELEFONE`, `EMAIL`, `ENDERECO`) VALUES
('pedro ', 6, '12456767', 'pedro@hemrique', 'rua da aaaaa'),
('andrea', 4, '1498', 'andrea@kk', 'rua 34');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `ID_USUARIO` int(11) NOT NULL,
  `USUARIO` varchar(80) NOT NULL,
  `SENHA` varchar(50) NOT NULL,
  `USUARIO1` varchar(100) NOT NULL,
  `SENHA1` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`ID_USUARIO`, `USUARIO`, `SENHA`, `USUARIO1`, `SENHA1`) VALUES
(1, 'gustavo', '1234', '', ''),
(2, 'isaias', '54321', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`RA`);

--
-- Indexes for table `escola`
--
ALTER TABLE `escola`
  ADD PRIMARY KEY (`IDESCOLA`);

--
-- Indexes for table `fatura`
--
ALTER TABLE `fatura`
  ADD PRIMARY KEY (`RA`);

--
-- Indexes for table `mensalidades`
--
ALTER TABLE `mensalidades`
  ADD PRIMARY KEY (`RA`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`IDPROFESSOR`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_USUARIO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aluno`
--
ALTER TABLE `aluno`
  MODIFY `RA` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `escola`
--
ALTER TABLE `escola`
  MODIFY `IDESCOLA` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fatura`
--
ALTER TABLE `fatura`
  MODIFY `RA` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `mensalidades`
--
ALTER TABLE `mensalidades`
  MODIFY `RA` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `IDPROFESSOR` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID_USUARIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
