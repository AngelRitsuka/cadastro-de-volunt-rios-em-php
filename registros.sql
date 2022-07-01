-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Jul-2022 às 01:07
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cadastros`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `registros`
--

CREATE TABLE `registros` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `celular` varchar(50) NOT NULL,
  `idade` enum('afirmativo','negativo') NOT NULL,
  `genero` enum('feminino','masculino','outro') NOT NULL,
  `atividade` enum('Evento_esporadico','Atividade_rotineira') NOT NULL,
  `dias` enum('domingo','segunda','terça','quarta','quinta','sexta','sabado') NOT NULL,
  `horario` enum('manha','tarde','noite') NOT NULL,
  `lugares` enum('religiao','cuidador','cuidador_crianças','animais','Alimentos_e_Roupas') NOT NULL,
  `contato` enum('formas_de_contato_telefone','formas_de_contato_wpp','formas_de_contato_email') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `registros`
--

INSERT INTO `registros` (`id`, `nome`, `email`, `celular`, `idade`, `genero`, `atividade`, `dias`, `horario`, `lugares`, `contato`) VALUES
(2, 'ENOCK OLEGÁRIO DA SILVA JUNIOR', 'enockjunior2018@gmail.com', '11942197259', 'afirmativo', 'masculino', 'Evento_esporadico', 'domingo', 'manha', 'cuidador', 'formas_de_contato_wpp'),
(4, 'ANGÉLICA OLEGÁRIO DA SILVA', 'angelicajobandstuffs@gmail.com', '+5511943819014', 'afirmativo', 'feminino', 'Evento_esporadico', 'quarta', 'tarde', 'animais', 'formas_de_contato_wpp'),
(5, 'MARIA SENHORA SANTOS SILVA', 'misaelricx3@gmail.com', '1195777-9887', 'afirmativo', 'feminino', 'Atividade_rotineira', 'terça', 'manha', 'Alimentos_e_Roupas', 'formas_de_contato_telefone'),
(6, 'LUIZ DOMINGUES DE FARIA', '', '11937760973', 'afirmativo', 'masculino', 'Atividade_rotineira', 'domingo', 'manha', 'Alimentos_e_Roupas', 'formas_de_contato_telefone'),
(7, 'CLAUDIO APARECIDO DE FARIA', '', '11956470330', 'afirmativo', 'masculino', 'Evento_esporadico', 'sabado', 'manha', 'animais', 'formas_de_contato_wpp'),
(8, 'EUNICE DORO', 'eunice.doro@gmail.com', '11996210510', 'afirmativo', 'feminino', 'Evento_esporadico', 'terça', 'tarde', 'cuidador_crianças', 'formas_de_contato_wpp'),
(9, 'MARIA DE LOURDES SOUZA', 'malucruz5523@gmail.com', '11992579090', 'afirmativo', 'feminino', 'Evento_esporadico', 'segunda', 'tarde', 'cuidador', 'formas_de_contato_wpp'),
(10, 'ACIR GOMES DA CRUZ', 'acircruz1944@gmail.com', '11982368587', 'afirmativo', 'masculino', 'Evento_esporadico', 'quarta', 'manha', 'cuidador', 'formas_de_contato_wpp');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `registros`
--
ALTER TABLE `registros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
