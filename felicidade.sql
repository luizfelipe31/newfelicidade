-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 13-Jun-2021 às 06:17
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `felicidade`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `description` varchar(200) NOT NULL DEFAULT '0',
  `logo` varchar(200) DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `accounts`
--

INSERT INTO `accounts` (`id`, `description`, `logo`, `status`) VALUES
(1, 'A&G Software', 'images/2020/12/logo-exemple.jpg', 1),
(2, 'EMPRESA LTDA', '0', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `apportionments`
--

CREATE TABLE `apportionments` (
  `id` int(11) NOT NULL,
  `cod` binary(36) NOT NULL DEFAULT uuid(),
  `property` int(11) NOT NULL DEFAULT 0,
  `city_hall_cod` varchar(250) DEFAULT NULL,
  `city_hall_percent` decimal(10,2) DEFAULT NULL,
  `light_cod` varchar(250) DEFAULT NULL,
  `light_percent` decimal(10,2) DEFAULT NULL,
  `water_and_sewage_cod` varchar(250) DEFAULT NULL,
  `water_and_sewage_percent` decimal(10,2) DEFAULT NULL,
  `fire_department_cod` varchar(250) DEFAULT NULL,
  `fire_department_percent` decimal(10,2) DEFAULT NULL,
  `gas_cod` varchar(250) DEFAULT NULL,
  `gas_percent` decimal(10,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `apportionments`
--

INSERT INTO `apportionments` (`id`, `cod`, `property`, `city_hall_cod`, `city_hall_percent`, `light_cod`, `light_percent`, `water_and_sewage_cod`, `water_and_sewage_percent`, `fire_department_cod`, `fire_department_percent`, `gas_cod`, `gas_percent`, `status`, `account_id`, `created_at`, `updated_at`) VALUES
(1, 0x30346531356261302d346134302d313165622d616665372d373466303664663066636462, 9, NULL, NULL, NULL, NULL, '45', '50.00', NULL, NULL, NULL, NULL, 2, 1, '2020-12-30 01:40:40', '2021-01-03 22:12:41'),
(2, 0x30346564353164612d346134302d313165622d616665372d373466303664663066636462, 10, NULL, NULL, NULL, NULL, '45', '50.00', NULL, NULL, NULL, NULL, 1, 1, '2020-12-30 01:40:40', '2020-12-30 01:40:40'),
(3, 0x36383363393363662d346134322d313165622d616665372d373466303664663066636462, 9, NULL, NULL, NULL, NULL, NULL, NULL, '45', '50.00', NULL, NULL, 2, 1, '2020-12-30 01:57:46', '2021-01-03 22:12:41'),
(4, 0x36383437623435322d346134322d313165622d616665372d373466303664663066636462, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '45', '50.00', 2, 1, '2020-12-30 01:57:46', '2021-01-03 22:12:41'),
(5, 0x36383465346630652d346134322d313165622d616665372d373466303664663066636462, 10, NULL, NULL, NULL, NULL, NULL, NULL, '45', '50.00', NULL, NULL, 1, 1, '2020-12-30 01:57:46', '2020-12-30 01:57:46'),
(6, 0x36383562386238322d346134322d313165622d616665372d373466303664663066636462, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '45', '50.00', 3, 1, '2020-12-30 01:57:46', '2020-12-31 02:49:26'),
(7, 0x31383431666638392d346164362d313165622d383966652d373466303664663066636462, 12, NULL, NULL, NULL, NULL, NULL, NULL, '12345', '33.33', NULL, NULL, 1, 1, '2020-12-30 19:34:56', '2020-12-31 01:47:25'),
(8, 0x31383464626664352d346164362d313165622d383966652d373466303664663066636462, 13, NULL, NULL, NULL, NULL, NULL, NULL, '12345', '33.33', NULL, NULL, 1, 1, '2020-12-30 19:34:56', '2020-12-31 01:47:27'),
(9, 0x31383533313437352d346164362d313165622d383966652d373466303664663066636462, 14, NULL, NULL, NULL, NULL, NULL, NULL, '12345', '33.33', NULL, NULL, 1, 1, '2020-12-30 19:34:56', '2020-12-31 01:47:28'),
(10, 0x63626163353665622d346231322d313165622d386538632d373466303664663066636462, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '45', '49.00', 2, 1, '2020-12-31 02:49:26', '2021-01-03 22:12:41'),
(11, 0x63626164336163652d346231322d313165622d386538632d373466303664663066636462, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '45', '51.00', 3, 1, '2020-12-31 02:49:26', '2020-12-31 02:52:39'),
(12, 0x33656439373961322d346231332d313165622d386538632d373466303664663066636462, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '45', '50.00', 2, 1, '2020-12-31 02:52:39', '2021-01-03 22:12:41'),
(13, 0x33656462656134352d346231332d313165622d386538632d373466303664663066636462, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '45', '50.00', 3, 1, '2020-12-31 02:52:39', '2020-12-31 02:53:40'),
(14, 0x36326465313062632d346231332d313165622d386538632d373466303664663066636462, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '45', '50.00', 2, 1, '2020-12-31 02:53:40', '2021-01-03 22:12:41'),
(15, 0x36326465613035332d346231332d313165622d386538632d373466303664663066636462, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '45', '50.00', 3, 1, '2020-12-31 02:53:40', '2020-12-31 02:55:17'),
(16, 0x39643035363164382d346231332d313165622d386538632d373466303664663066636462, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '45', '50.00', 1, 1, '2020-12-31 02:55:17', '2021-01-03 22:45:47'),
(17, 0x39643037653264392d346231332d313165622d386538632d373466303664663066636462, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '45', '50.00', 1, 1, '2020-12-31 02:55:17', '2021-01-03 22:45:48');

-- --------------------------------------------------------

--
-- Estrutura da tabela `banks`
--

CREATE TABLE `banks` (
  `id` int(11) NOT NULL,
  `cod` binary(36) NOT NULL DEFAULT uuid(),
  `account_id` int(11) NOT NULL DEFAULT 0,
  `description` varchar(100) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `banks`
--

INSERT INTO `banks` (`id`, `cod`, `account_id`, `description`, `created_at`, `updated_at`) VALUES
(7, 0x62376262626264642d333864382d313165622d626137622d373466303664663066636462, 1, 'Itaú', '2020-12-07 22:08:24', '2020-12-07 22:08:24'),
(8, 0x30663863316361302d333864392d313165622d626137622d373466303664663066636462, 1, 'Neon', '2020-12-07 22:10:51', '2020-12-07 22:10:51'),
(9, 0x36623633626535632d636239612d313165622d396336662d356363643562623862373938, 1, 'Bradesco', '2021-06-12 16:22:45', '2021-06-12 16:22:45'),
(10, 0x38653735346131632d636239612d313165622d396336662d356363643562623862373938, 1, 'C6 Bank', '2021-06-12 16:23:44', '2021-06-12 16:23:44'),
(17, 0x64626333326664302d636263612d313165622d396336662d356363643562623862373938, 1, 'teste', '2021-06-12 22:09:30', '2021-06-12 22:09:30');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` int(11) NOT NULL,
  `cod` binary(36) NOT NULL DEFAULT uuid(),
  `bank` varchar(50) NOT NULL,
  `type_account` varchar(20) DEFAULT NULL,
  `agency` varchar(20) DEFAULT NULL,
  `number_account` varchar(20) DEFAULT NULL,
  `pix` varchar(50) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `bank_accounts`
--

INSERT INTO `bank_accounts` (`id`, `cod`, `bank`, `type_account`, `agency`, `number_account`, `pix`, `account_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 0x36666334313966662d636233362d313165622d613663632d356363643562623862373938, '9', '7', '4550', '12131', '', 1, 1, '2020-11-30 19:59:30', '2021-06-13 04:12:19'),
(6, 0x36613837646263332d636263662d313165622d396336662d356363643562623862373938, '7', '7', '6090', '183960', '', 1, 1, '2021-06-12 22:42:08', '2021-06-13 03:37:34');

-- --------------------------------------------------------

--
-- Estrutura da tabela `billets`
--

CREATE TABLE `billets` (
  `id` int(11) NOT NULL,
  `cod` binary(36) NOT NULL DEFAULT uuid(),
  `remittance_bank` int(11) DEFAULT NULL,
  `contract` int(11) NOT NULL,
  `nosso_numero` text DEFAULT NULL,
  `due_date` date NOT NULL,
  `issue_date` date DEFAULT NULL,
  `status` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `billet_invoices`
--

CREATE TABLE `billet_invoices` (
  `id` int(11) NOT NULL,
  `billet` int(11) NOT NULL,
  `invoice` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `cod` binary(36) NOT NULL DEFAULT uuid(),
  `description` varchar(250) NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categories`
--

INSERT INTO `categories` (`id`, `cod`, `description`, `account_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 0x36323565343865342d376338642d313165622d623365362d356363643562623862373938, 'Aluguel', NULL, 1, '2021-03-04 02:00:25', NULL),
(2, 0x36386564653163382d376338642d313165622d623365362d356363643562623862373938, 'Condomínio', NULL, 1, '2021-03-04 02:00:36', NULL),
(3, 0x38333662666663362d376338642d313165622d623365362d356363643562623862373938, 'IPTU', NULL, 1, '2021-03-04 02:01:21', NULL),
(4, 0x39616131623432632d376338642d313165622d623365362d356363643562623862373938, 'Repasse', NULL, 1, '2021-03-04 02:02:00', NULL),
(5, 0x61646231613366332d376338642d313165622d623365362d356363643562623862373938, 'Água', NULL, 1, '2021-03-04 02:02:32', NULL),
(6, 0x62326330623566652d376338642d313165622d623365362d356363643562623862373938, 'Luz', NULL, 1, '2021-03-04 02:02:40', NULL),
(7, 0x63623637366632332d376338642d313165622d623365362d356363643562623862373938, 'Gás', NULL, 1, '2021-03-04 02:03:22', NULL),
(8, 0x65363566316335312d376338642d313165622d623365362d356363643562623862373938, 'Bombeiro', NULL, 1, '2021-03-04 02:04:07', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `civil_status`
--

CREATE TABLE `civil_status` (
  `id` int(11) NOT NULL,
  `cod` binary(36) NOT NULL DEFAULT uuid(),
  `account_id` int(11) NOT NULL DEFAULT 0,
  `description` varchar(100) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `civil_status`
--

INSERT INTO `civil_status` (`id`, `cod`, `account_id`, `description`, `created_at`, `updated_at`) VALUES
(7, 0x63363135323264312d336134632d313165622d613537652d373466303664663066636462, 1, 'Solteiro', '2020-12-09 18:31:38', '2020-12-09 18:31:38');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `cod` binary(36) NOT NULL DEFAULT uuid(),
  `client_cod` varchar(50) DEFAULT NULL,
  `person` varchar(50) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `email_secundary` varchar(150) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `cel` varchar(20) DEFAULT NULL,
  `photo` varchar(250) DEFAULT NULL,
  `first_name` varchar(150) DEFAULT NULL,
  `last_name` varchar(150) DEFAULT NULL,
  `document` varchar(15) DEFAULT NULL,
  `document_secundary` varchar(15) DEFAULT NULL,
  `document_secundary_complement` varchar(20) DEFAULT NULL,
  `shipping_date` datetime DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `datebirth` datetime DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `place_of_birth` varchar(50) DEFAULT NULL,
  `civil_status` varchar(50) DEFAULT NULL,
  `mother_name` varchar(150) DEFAULT NULL,
  `father_name` varchar(150) DEFAULT NULL,
  `profession` varchar(50) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `another_income` varchar(50) DEFAULT NULL,
  `income` decimal(10,2) DEFAULT NULL,
  `company_name` varchar(150) DEFAULT NULL,
  `company_document` varchar(150) DEFAULT NULL,
  `municipal_registration` varchar(100) DEFAULT NULL,
  `state_registration` varchar(100) DEFAULT NULL,
  `zipcode` varchar(150) DEFAULT NULL,
  `street` varchar(150) DEFAULT NULL,
  `number` varchar(150) DEFAULT NULL,
  `complement` varchar(150) DEFAULT NULL,
  `district` varchar(150) DEFAULT NULL,
  `state` varchar(150) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `name_spouse` varchar(150) DEFAULT NULL,
  `document_spouse` varchar(15) DEFAULT NULL,
  `document_secundary_spouse` varchar(15) DEFAULT NULL,
  `document_secundary_complement_spouse` varchar(20) DEFAULT NULL,
  `shipping_date_spouse` datetime DEFAULT NULL,
  `genre_spouse` varchar(50) DEFAULT NULL,
  `datebirth_spouse` datetime DEFAULT NULL,
  `nationality_spouse` varchar(50) DEFAULT NULL,
  `place_of_birth_spouse` varchar(50) DEFAULT NULL,
  `profession_spouse` varchar(50) DEFAULT NULL,
  `email_spouse` varchar(150) DEFAULT NULL,
  `phone_spouse` varchar(20) DEFAULT NULL,
  `cel_spouse` varchar(20) DEFAULT NULL,
  `name_partner` varchar(150) DEFAULT NULL,
  `document_partner` varchar(15) DEFAULT NULL,
  `document_secundary_partner` varchar(15) DEFAULT NULL,
  `document_secundary_complement_partner` varchar(20) DEFAULT NULL,
  `phone_partner` varchar(20) DEFAULT NULL,
  `shipping_date_partner` datetime DEFAULT NULL,
  `genre_partner` varchar(50) DEFAULT NULL,
  `datebirth_partner` datetime DEFAULT NULL,
  `nationality_partner` varchar(50) DEFAULT NULL,
  `place_of_birth_partner` varchar(50) DEFAULT NULL,
  `civil_status_partner` varchar(50) DEFAULT NULL,
  `email_partner` varchar(150) DEFAULT NULL,
  `cel_partner` varchar(20) DEFAULT NULL,
  `zipcode_partner` varchar(150) DEFAULT NULL,
  `street_partner` varchar(150) DEFAULT NULL,
  `number_partner` varchar(150) DEFAULT NULL,
  `complement_partner` varchar(150) DEFAULT NULL,
  `district_partner` varchar(150) DEFAULT NULL,
  `state_partner` varchar(150) DEFAULT NULL,
  `city_partner` varchar(150) DEFAULT NULL,
  `bank` varchar(20) DEFAULT NULL,
  `type_account` varchar(20) DEFAULT NULL,
  `agency` varchar(50) DEFAULT NULL,
  `number_account` varchar(50) DEFAULT NULL,
  `pix` varchar(100) DEFAULT NULL,
  `lessor` int(11) NOT NULL,
  `lessee` int(11) NOT NULL,
  `beneficiary` int(11) NOT NULL,
  `surety` int(11) NOT NULL,
  `procurator` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clients`
--

INSERT INTO `clients` (`id`, `cod`, `client_cod`, `person`, `email`, `email_secundary`, `phone`, `cel`, `photo`, `first_name`, `last_name`, `document`, `document_secundary`, `document_secundary_complement`, `shipping_date`, `genre`, `datebirth`, `nationality`, `place_of_birth`, `civil_status`, `mother_name`, `father_name`, `profession`, `salary`, `company`, `another_income`, `income`, `company_name`, `company_document`, `municipal_registration`, `state_registration`, `zipcode`, `street`, `number`, `complement`, `district`, `state`, `city`, `name_spouse`, `document_spouse`, `document_secundary_spouse`, `document_secundary_complement_spouse`, `shipping_date_spouse`, `genre_spouse`, `datebirth_spouse`, `nationality_spouse`, `place_of_birth_spouse`, `profession_spouse`, `email_spouse`, `phone_spouse`, `cel_spouse`, `name_partner`, `document_partner`, `document_secundary_partner`, `document_secundary_complement_partner`, `phone_partner`, `shipping_date_partner`, `genre_partner`, `datebirth_partner`, `nationality_partner`, `place_of_birth_partner`, `civil_status_partner`, `email_partner`, `cel_partner`, `zipcode_partner`, `street_partner`, `number_partner`, `complement_partner`, `district_partner`, `state_partner`, `city_partner`, `bank`, `type_account`, `agency`, `number_account`, `pix`, `lessor`, `lessee`, `beneficiary`, `surety`, `procurator`, `account_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 0x300000000000000000000000000000000000000000000000000000000000000000000000, NULL, '', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, '2020-11-30 19:59:30', NULL),
(6, 0x34373338376562622d333462322d313165622d613061322d373466303664663066636462, NULL, 'natural_person', '', '', '', '', NULL, 'Luiz Felipe', 'Azevedo', '14179893789', '', 'without information', NULL, 'without information', NULL, 'without information', 'without information', 'without information', 'Sem Informação', 'Sem Informação', 'without information', '0.00', '', 'without information', '0.00', NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', 'without information', NULL, 'without information', NULL, 'without information', 'without information', 'without information', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'without information', 'without information', '', '', NULL, 1, 0, 0, 0, 0, 1, 1, '2020-12-03 02:59:19', '2020-12-03 02:59:19'),
(21, 0x30613765613937612d333531392d313165622d613061322d373466303664663066636462, '', 'legal_person', 'aegsotware@gmail.com', '', '', '', 'images/2020/12/client-0a7ea97a-3519-11eb-a0a2-74f06df0fcdb.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a&#38;gsoftware', '99999999999999', '', '', '20730400', 'Rua Dionísio Fernandes', '297', 'apto 406 bloco 1', 'Engenho de Dentro', 'RJ', 'Rio de Janeiro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'without information', '', NULL, 'without information', NULL, 'without information', 'without information', NULL, '', '', '', '', '', '', '', '', '', 'without information', 'without information', '', '', '', 1, 0, 0, 0, 1, 1, 1, '2020-12-14 19:36:25', '2020-12-20 18:13:43'),
(22, 0x31656539323934342d333561302d313165622d613061322d373466303664663066636462, '1234', 'natural_person', 'aguinaldo@gmail.com', '', '(21)2222-2222', '(21)99999-9999', 'images/2020/12/aguinaldo-dos-santos.jpg', 'Aguinaldo', 'Dos Santos', '22222222222', '217896315', 'without information', '2015-05-15 00:00:00', 'without information', '1989-07-09 00:00:00', 'without information', 'without information', 'without information', 'Regina Dos Santos', 'Raimundo Dos Santos', 'without information', '2500.00', 'aegsoftware', 'without information', '1200.00', NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', 'Camila Dos Santos Lucio', '99999999999', '21212121212', 'without information', '1995-05-06 00:00:00', 'without information', '1987-05-05 00:00:00', 'without information', 'without information', 'without information', 'camila@gmail.com', '(21)2222-2222', '(21)99999-9999', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'without information', 'without information', '123456', '123456', NULL, 0, 1, 0, 0, 0, 1, 1, '2020-12-03 19:45:43', '2020-12-03 19:45:43'),
(23, 0x36613232313335652d333830332d313165622d626137622d373466303664663066636462, '', 'legal_person', 'okotechti@gmail.com', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Okotech', '22222222222222', '123456', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Luiz Felipe Azevedo', '14179893789', '24198915', 'without information', '', '2015-05-15 00:00:00', 'without information', '1989-07-09 00:00:00', 'without information', 'without information', NULL, 'luizfelipe31@gmail.com', '(21)97610-3214', '20730400', 'Rua Dionísio Fernandes', '297', 'apartamento 406 bloco 1', 'Engenho de Dentro', 'RJ', 'Rio de Janeiro', 'without information', 'without information', '', '', NULL, 1, 0, 0, 0, 0, 1, 1, '2020-12-06 20:41:28', '2020-12-06 20:41:28'),
(24, 0x39333936363637362d336134622d313165622d613537652d373466303664663066636462, '', 'natural_person', '', '', '', '', NULL, 'Astolfo', 'Da Silva', '14516545646', '', 'without information', NULL, 'without information', NULL, 'without information', 'without information', 'without information', 'Sem Informação', 'Sem Informação', 'without information', '0.00', '', 'without information', '0.00', NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', 'without information', NULL, 'without information', NULL, 'without information', 'without information', 'without information', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'without information', 'without information', '', '', NULL, 1, 1, 1, 1, 1, 1, 1, '2020-12-09 18:23:03', '2020-12-09 18:23:03'),
(25, 0x66613331336165662d336134622d313165622d613537652d373466303664663066636462, '', 'natural_person', '', '', '', '', NULL, 'Priscilla', 'Alcântara', '65446464645', '', 'without information', NULL, '8', NULL, 'without information', 'without information', 'without information', 'Sem Informação', 'Sem Informação', 'without information', '0.00', '', 'without information', '0.00', NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', 'without information', NULL, 'without information', NULL, 'without information', 'without information', 'without information', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'without information', 'without information', '', '', NULL, 1, 0, 0, 0, 0, 1, 1, '2020-12-09 18:25:56', '2020-12-09 18:25:56'),
(26, 0x31616533356362302d336134632d313165622d613537652d373466303664663066636462, '', 'natural_person', '', '', '', '', NULL, 'Barbara', 'Figueiredo', '65464546466', '', 'without information', NULL, 'without information', NULL, '6', '7', 'without information', 'Sem Informação', 'Sem Informação', 'without information', '0.00', '', 'without information', '0.00', NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', 'without information', NULL, 'without information', NULL, 'without information', 'without information', 'without information', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'without information', 'without information', '', '', NULL, 0, 1, 0, 0, 0, 1, 1, '2020-12-09 18:26:50', '2020-12-09 18:26:50'),
(27, 0x35653532646132382d336134632d313165622d613537652d373466303664663066636462, '', 'natural_person', '', '', '', '', NULL, 'Diego', 'Albuquerque', '23131231312', '', 'without information', NULL, 'without information', NULL, 'without information', 'without information', 'without information', 'Sem Informação', 'Sem Informação', 'without information', '0.00', '', 'without information', '0.00', NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', 'without information', NULL, 'without information', NULL, 'without information', 'without information', 'without information', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'without information', 'without information', '', '', NULL, 0, 0, 1, 0, 0, 1, 1, '2020-12-09 18:28:44', '2020-12-09 18:28:44'),
(28, 0x39313134356437632d336134632d313165622d613537652d373466303664663066636462, '', 'natural_person', '', '', '', '', NULL, 'Antonio Augusto', 'Machado', '89764646545', '', 'without information', NULL, 'without information', NULL, 'without information', 'without information', 'without information', 'Sem Informação', 'Sem Informação', 'without information', '0.00', '', 'without information', '0.00', NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', 'without information', NULL, 'without information', NULL, 'without information', 'without information', 'without information', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'without information', 'without information', '', '', NULL, 0, 0, 0, 1, 0, 1, 1, '2020-12-09 18:30:09', '2020-12-09 18:30:09'),
(29, 0x63613736656532642d336134632d313165622d613537652d373466303664663066636462, '', 'legal_person', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bolos&#38;CIA', '56446454646556', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'without information', '', NULL, '1', NULL, 'without information', 'without information', NULL, '', '', '', '', '', '', '', '', '', 'without information', 'without information', '', '', NULL, 1, 0, 0, 0, 1, 1, 1, '2020-12-09 18:31:45', '2020-12-09 18:31:45'),
(30, 0x30633763356234382d336134642d313165622d613537652d373466303664663066636462, '', 'natural_person', '', '', '', '', NULL, 'Fernando', 'Souza', '32164654546', '', 'without information', NULL, 'without information', NULL, 'without information', 'without information', 'without information', 'Sem Informação', 'Sem Informação', 'without information', '0.00', '', 'without information', '0.00', NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', 'without information', NULL, 'without information', NULL, 'without information', 'without information', 'without information', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'without information', 'without information', '', '', NULL, 0, 1, 0, 0, 0, 1, 1, '2020-12-09 18:33:36', '2020-12-09 18:33:36'),
(31, 0x35393561343531362d336136342d313165622d613537652d373466303664663066636462, '', 'natural_person', 'luizfelipe31@gmail.com', 'luizcompleto@gmail.com', '(21)2592-6330', '(21)97610-3214', NULL, 'Luiz Felipe', 'Completo', '65465465465', '65456546546', '3', '2015-05-15 00:00:00', '1', '1989-07-09 00:00:00', '6', '7', '7', 'Sem Informação', 'Sem Informação', '7', '1900.00', 'Skyserver', '8', '1200.00', NULL, NULL, NULL, NULL, '20730400', 'Rua Dionísio Fernandes', '297', 'apartamento 406 bloco 1', 'Engenho de Dentro', 'RJ', 'Rio de Janeiro', 'Lidia Carvalho', '56454646546', '6565656545', '3', '1995-05-05 00:00:00', '8', '1991-04-18 00:00:00', '6', '7', '7', 'lidia@gmail.com', '(21)2655-6565', '(21)92569-4566', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', '7', '6090', '18892-8', NULL, 1, 0, 0, 0, 0, 1, 1, '2020-12-09 21:20:23', '2020-12-09 21:20:23'),
(32, 0x64356365623761342d336232392d313165622d613537652d373466303664663066636462, '12', 'legal_person', 'testerepresentante@gmail.com', '', '(21)2154-4545', '(21)94546-5656', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TesteRepresentanteCIA', '56465454546466', '123456', '1234', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Luiz Felipe Azevedo', '14179893789', '241989185', '3', '(21)2592-6330', '2015-05-15 00:00:00', '1', '1989-07-09 00:00:00', '6', '7', NULL, 'luizfelipe31@gmail.com', '(21)97610-3214', '20730400', 'Rua Dionísio Fernandes', '297', 'apto 406 bl1', 'Engenho de Dentro', 'RJ', 'Rio de Janeiro', 'without information', 'without information', '', '', NULL, 1, 1, 0, 0, 0, 1, 1, '2020-12-10 20:54:06', '2020-12-10 20:54:06'),
(34, 0x30396363383834352d336233352d313165622d613537652d373466303664663066636462, '', 'natural_person', '', '', '', '', NULL, 'Teste', 'Pix', '54646546456', '', 'without information', NULL, 'without information', NULL, 'without information', 'without information', 'without information', 'Sem Informação', 'Sem Informação', 'without information', '0.00', '', 'without information', '0.00', NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', 'without information', NULL, 'without information', NULL, 'without information', 'without information', 'without information', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8', '6', '4545', '0006454545', '123456', 0, 0, 1, 0, 0, 1, 1, '2020-12-10 22:14:18', '2020-12-10 22:14:18');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contracts`
--

CREATE TABLE `contracts` (
  `id` int(11) NOT NULL,
  `cod` binary(36) NOT NULL DEFAULT uuid(),
  `contract_cod` varchar(250) DEFAULT NULL,
  `property` int(11) NOT NULL DEFAULT 0,
  `realtor` int(11) DEFAULT NULL,
  `lease_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `commission` decimal(10,2) NOT NULL DEFAULT 0.00,
  `readjustment_type` varchar(20) NOT NULL,
  `lease_term` char(2) NOT NULL DEFAULT '',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `renovation` varchar(20) NOT NULL,
  `due_date` int(11) NOT NULL DEFAULT 0,
  `paymento_form` varchar(50) NOT NULL,
  `date_next_readjustment` date DEFAULT NULL,
  `procurator_status` int(11) DEFAULT NULL,
  `guarantee` varchar(20) DEFAULT NULL,
  `surety` int(11) DEFAULT NULL,
  `security_deposit` decimal(10,2) DEFAULT NULL,
  `portion_deposit` int(11) DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `contract_upload` varchar(255) DEFAULT NULL,
  `contract_upload2` varchar(255) DEFAULT NULL,
  `contract_upload3` varchar(255) DEFAULT NULL,
  `contract_upload4` varchar(255) DEFAULT NULL,
  `contract_upload5` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `closing_date` date DEFAULT NULL,
  `automatic_billing` int(11) NOT NULL,
  `contract_situation` varchar(50) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `contracts`
--

INSERT INTO `contracts` (`id`, `cod`, `contract_cod`, `property`, `realtor`, `lease_price`, `commission`, `readjustment_type`, `lease_term`, `start_date`, `end_date`, `renovation`, `due_date`, `paymento_form`, `date_next_readjustment`, `procurator_status`, `guarantee`, `surety`, `security_deposit`, `portion_deposit`, `terms`, `contract_upload`, `contract_upload2`, `contract_upload3`, `contract_upload4`, `contract_upload5`, `note`, `closing_date`, `automatic_billing`, `contract_situation`, `status`, `account_id`, `created_at`, `updated_at`) VALUES
(4, 0x33656266363735312d373935652d313165622d613866342d356363643562623862373938, NULL, 9, 5, '1320.00', '10.00', 'IPCA', '30', '2021-02-27', '2023-08-26', 'automatic', 5, 'money', '2022-03-01', 1, 'security_deposit', 0, '1.20', 3, '&#60;ul&#62;&#10;&#9;&#60;li&#62;teste&#60;/li&#62;&#10;&#9;&#60;li&#62;&#60;em&#62;teste&#60;/em&#62;&#60;/li&#62;&#10;&#9;&#60;li&#62;&#60;em&#62;&#60;strong&#62;teste&#60;/strong&#62;&#60;/em&#62;&#60;/li&#62;&#10;&#60;/ul&#62;&#10;', 'images/2021/02/contract-f93445e3c3d781a7fa78994bde931c70.jpg', 'files/2021/02/contract-36df0449d6c9ba5516434b551f5f20c2.pdf', NULL, NULL, NULL, '', NULL, 1, 'active', 1, 1, '2021-03-27 20:31:56', '2021-03-27 21:00:52'),
(5, 0x34643162313661352d376430312d313165622d613962662d356363643562623862373938, '1234', 11, 0, '1200.00', '10.00', 'IPCA', '30', '2021-03-04', '2023-09-03', 'automatic', 6, 'money', '2022-03-01', 1, '', 0, '0.00', 0, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 'active', 1, 1, '2021-03-04 15:50:10', '2021-03-04 15:50:10'),
(6, 0x61666635613365342d383035302d313165622d383961662d356363643562623862373938, '', 14, 5, '1980.00', '10.00', 'IPCA', '30', '2020-03-08', '2022-09-07', 'automatic', 10, 'bank_deposit', '2022-03-01', 0, '', 0, '0.00', 0, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 'active', 1, 1, '2021-03-08 20:56:01', '2021-03-27 21:00:53'),
(7, 0x34613337353465372d383065652d313165622d396166372d356363643562623862373938, '', 12, 5, '1320.00', '10.00', 'IGPM', '30', '2020-02-03', '2022-08-02', 'automatic', 5, 'money', '2022-03-01', 0, '', 0, '0.00', 0, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 'active', 1, 1, '2021-03-09 15:45:05', '2021-03-27 21:00:53'),
(8, 0x36386139373738332d393139612d313165622d616539652d356363643562623862373938, '', 13, 5, '1500.00', '8.50', 'IPCA', '30', '2018-10-01', '2021-04-30', 'renewed', 5, 'bank_deposit', '2019-10-01', 0, '', 0, '0.00', 0, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 'active', 1, 1, '2021-05-31 00:12:54', '2021-06-07 00:56:55'),
(9, 0x64386337616663622d633731622d313165622d613565362d356363643562623862373938, '', 16, 2, '1500.00', '8.00', 'IPCA', '30', '2021-06-06', '2023-12-05', 'automatic', 5, 'money', '2022-06-01', 1, '', 0, '0.00', 0, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 'active', 1, 1, '2021-06-06 23:06:39', '2021-06-06 23:06:39'),
(10, 0x31623432393838642d633731632d313165622d613565362d356363643562623862373938, '', 10, 0, '1200.00', '10.00', 'IPCA', '30', '2021-06-06', '2023-12-05', 'manual', 5, 'money', '2022-06-01', 0, '', 0, '0.00', 0, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 'active', 1, 1, '2021-06-06 23:08:31', '2021-06-06 23:08:31');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contract_historics`
--

CREATE TABLE `contract_historics` (
  `id` int(11) NOT NULL,
  `cod` binary(36) NOT NULL DEFAULT uuid(),
  `contract` int(11) NOT NULL,
  `lease_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `commission` decimal(10,2) NOT NULL DEFAULT 0.00,
  `readjustment_type` varchar(20) NOT NULL,
  `lease_term` char(2) NOT NULL DEFAULT '',
  `due_date` int(11) NOT NULL DEFAULT 0,
  `paymento_form` varchar(50) NOT NULL,
  `date_next_readjustment` date DEFAULT NULL,
  `status_historic` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `contract_historics`
--

INSERT INTO `contract_historics` (`id`, `cod`, `contract`, `lease_price`, `commission`, `readjustment_type`, `lease_term`, `due_date`, `paymento_form`, `date_next_readjustment`, `status_historic`, `status`, `account_id`, `created_at`, `updated_at`) VALUES
(3, 0x33656365353136642d373935652d313165622d613866342d356363643562623862373938, 4, '1200.00', '10.00', 'IPCA', '30', 5, 'money', '2021-03-01', 4, 1, 1, '2021-03-27 20:31:18', '2021-03-27 20:31:18'),
(4, 0x34643164386136362d376430312d313165622d613962662d356363643562623862373938, 5, '1200.00', '10.00', 'IPCA', '30', 6, 'money', '2022-03-01', 4, 1, 1, '2021-03-04 15:50:10', '2021-03-04 15:50:10'),
(5, 0x62303033313031612d383035302d313165622d383961662d356363643562623862373938, 6, '1800.00', '10.00', 'IPCA', '30', 10, 'bank_deposit', '2021-03-01', 4, 1, 1, '2021-03-08 20:56:01', '2021-03-08 20:56:01'),
(6, 0x34613463323337612d383065652d313165622d396166372d356363643562623862373938, 7, '1200.00', '10.00', 'IGPM', '30', 5, 'money', '2021-02-01', 4, 1, 1, '2021-03-09 15:44:10', '2021-03-09 15:44:10'),
(8, 0x38333634376263322d386633662d313165622d393636652d356363643562623862373938, 4, '1320.00', '10.00', 'IPCA', '30', 5, 'money', '2022-03-01', 2, 1, 1, '2021-03-27 21:00:52', '2021-03-27 21:00:52'),
(9, 0x38336464613262622d386633662d313165622d393636652d356363643562623862373938, 6, '1980.00', '10.00', 'IPCA', '30', 10, 'bank_deposit', '2022-03-01', 2, 1, 1, '2021-03-27 21:00:53', '2021-03-27 21:00:53'),
(10, 0x38336465336135652d386633662d313165622d393636652d356363643562623862373938, 7, '1320.00', '10.00', 'IGPM', '30', 5, 'money', '2022-03-01', 2, 1, 1, '2021-03-27 21:00:53', '2021-03-27 21:00:53'),
(11, 0x36386236393233612d393139612d313165622d616539652d356363643562623862373938, 8, '1500.00', '8.50', 'IPCA', '30', 5, 'bank_deposit', '2019-10-01', 4, 1, 1, '2021-03-30 20:56:33', '2021-03-30 20:56:33'),
(12, 0x64386366363534662d633731622d313165622d613565362d356363643562623862373938, 9, '1500.00', '8.00', 'IPCA', '30', 5, 'money', '2022-06-01', 4, 1, 1, '2021-06-06 23:06:39', '2021-06-06 23:06:39'),
(13, 0x31623539313032662d633731632d313165622d613565362d356363643562623862373938, 10, '1200.00', '10.00', 'IPCA', '30', 5, 'money', '2022-06-01', 4, 1, 1, '2021-06-06 23:08:31', '2021-06-06 23:08:31'),
(14, 0x34303833323761322d633732622d313165622d613565362d356363643562623862373938, 8, '1500.00', '8.50', 'IPCA', '30', 5, 'bank_deposit', '2019-10-01', 1, 1, 1, '2021-06-07 00:56:55', '2021-06-07 00:56:55');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contract_lessees`
--

CREATE TABLE `contract_lessees` (
  `id` int(11) NOT NULL,
  `cod` binary(36) NOT NULL DEFAULT uuid(),
  `contract` int(11) NOT NULL DEFAULT 0,
  `lessee` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `account_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `contract_lessees`
--

INSERT INTO `contract_lessees` (`id`, `cod`, `contract`, `lessee`, `status`, `account_id`, `created_at`, `updated_at`) VALUES
(5, 0x33656363643363622d373935652d313165622d613866342d356363643562623862373938, 4, 26, 1, 1, '2021-02-28 00:45:25', '2021-02-28 00:45:25'),
(6, 0x33656364373662372d373935652d313165622d613866342d356363643562623862373938, 4, 30, 1, 1, '2021-02-28 00:45:25', '2021-02-28 00:45:25'),
(7, 0x34643163643937352d376430312d313165622d613962662d356363643562623862373938, 5, 32, 1, 1, '2021-03-04 15:50:10', '2021-03-04 15:50:10'),
(8, 0x62303030326662302d383035302d313165622d383961662d356363643562623862373938, 6, 30, 1, 1, '2021-03-08 20:56:01', '2021-03-08 20:56:01'),
(9, 0x34613438346665392d383065652d313165622d396166372d356363643562623862373938, 7, 26, 1, 1, '2021-03-09 15:44:10', '2021-03-09 15:44:10'),
(10, 0x36386231623438622d393139612d313165622d616539652d356363643562623862373938, 8, 30, 1, 1, '2021-03-30 20:56:33', '2021-03-30 20:56:33'),
(11, 0x64386365613333372d633731622d313165622d613565362d356363643562623862373938, 9, 32, 1, 1, '2021-06-06 23:06:39', '2021-06-06 23:06:39'),
(12, 0x31623534613966312d633731632d313165622d613565362d356363643562623862373938, 10, 24, 1, 1, '2021-06-06 23:08:31', '2021-06-06 23:08:31'),
(13, 0x31623538613032342d633731632d313165622d613565362d356363643562623862373938, 10, 26, 1, 1, '2021-06-06 23:08:31', '2021-06-06 23:08:31');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contract_procurators`
--

CREATE TABLE `contract_procurators` (
  `id` int(11) NOT NULL,
  `cod` binary(36) NOT NULL DEFAULT uuid(),
  `contract` int(11) NOT NULL,
  `procurator` int(11) NOT NULL,
  `date_procuration` date DEFAULT NULL,
  `upload_procuration` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `contract_procurators`
--

INSERT INTO `contract_procurators` (`id`, `cod`, `contract`, `procurator`, `date_procuration`, `upload_procuration`, `status`, `account_id`, `created_at`, `updated_at`) VALUES
(2, 0x33656430306565632d373935652d313165622d613866342d356363643562623862373938, 4, 24, '2021-02-27', 'files/2021/02/procuration-1cc0ec2527e2580610451efd40bd111f.pdf', 1, 1, '2021-02-28 00:45:25', '2021-02-28 00:45:25'),
(3, 0x34643165333232632d376430312d313165622d613962662d356363643562623862373938, 5, 29, NULL, NULL, 1, 1, '2021-03-04 15:50:10', '2021-03-04 15:50:10'),
(4, 0x64386432396537662d633731622d313165622d613565362d356363643562623862373938, 9, 21, NULL, NULL, 1, 1, '2021-06-06 23:06:39', '2021-06-06 23:06:39'),
(5, 0x64386434376433372d633731622d313165622d613565362d356363643562623862373938, 9, 24, NULL, NULL, 1, 1, '2021-06-06 23:06:39', '2021-06-06 23:06:39');

-- --------------------------------------------------------

--
-- Estrutura da tabela `document_secundary_complements`
--

CREATE TABLE `document_secundary_complements` (
  `id` int(11) NOT NULL,
  `cod` binary(36) NOT NULL DEFAULT uuid(),
  `account_id` int(11) NOT NULL DEFAULT 0,
  `description` varchar(100) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `document_secundary_complements`
--

INSERT INTO `document_secundary_complements` (`id`, `cod`, `account_id`, `description`, `created_at`, `updated_at`) VALUES
(3, 0x61653235666265392d333733312d313165622d613465642d373466303664663066636462, 1, 'Detran', '2020-12-05 19:40:08', '2020-12-05 19:40:08'),
(8, 0x62323830653663362d346435302d313165622d393434622d373466303664663066636462, 1, 'teste', '2021-01-02 23:17:35', '2021-01-02 23:17:35');

-- --------------------------------------------------------

--
-- Estrutura da tabela `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `cod` binary(36) NOT NULL DEFAULT uuid(),
  `account_id` int(11) NOT NULL DEFAULT 0,
  `description` varchar(100) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `genres`
--

INSERT INTO `genres` (`id`, `cod`, `account_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 0x36626230363066302d333831372d313165622d626137622d373466303664663066636462, 1, 'Masculino', '2020-12-06 23:04:41', '2020-12-06 23:04:41'),
(8, 0x66306363353364322d336134622d313165622d613537652d373466303664663066636462, 1, 'Feminino', '2020-12-09 18:25:40', '2020-12-09 18:25:40');

-- --------------------------------------------------------

--
-- Estrutura da tabela `guarantees`
--

CREATE TABLE `guarantees` (
  `id` int(11) NOT NULL,
  `cod` binary(36) NOT NULL DEFAULT uuid(),
  `description` varchar(100) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT 0,
  `account_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `historics`
--

CREATE TABLE `historics` (
  `id` int(11) NOT NULL,
  `cod` binary(36) NOT NULL DEFAULT uuid(),
  `description` varchar(100) NOT NULL DEFAULT '0',
  `account_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `historics`
--

INSERT INTO `historics` (`id`, `cod`, `description`, `account_id`, `created_at`, `updated_at`) VALUES
(3, 0x66343061326464372d346434392d313165622d393434622d373466303664663066636462, 'teste', 1, '2021-01-02 22:29:19', '2021-01-02 22:29:19'),
(4, 0x65663562383361362d346434642d313165622d393434622d373466303664663066636462, 'teste2', 1, '2021-01-02 22:57:49', '2021-01-02 22:57:49'),
(5, 0x32366630393034622d346434652d313165622d393434622d373466303664663066636462, 'teste3', 1, '2021-01-02 22:59:22', '2021-01-02 22:59:22'),
(8, 0x32363237616138662d346435312d313165622d393434622d373466303664663066636462, 'obra2', 1, '2021-01-02 23:20:49', '2021-01-02 23:20:49');

-- --------------------------------------------------------

--
-- Estrutura da tabela `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `cod` binary(36) NOT NULL DEFAULT uuid(),
  `value` decimal(10,2) NOT NULL,
  `operation` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `wallet` int(11) NOT NULL,
  `reference_date` varchar(10) NOT NULL DEFAULT '',
  `due_date` date NOT NULL,
  `contract` int(11) DEFAULT NULL,
  `property` int(11) DEFAULT NULL,
  `lessor` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `fixed` int(11) DEFAULT NULL,
  `recurrent` int(11) DEFAULT NULL,
  `status_comission` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `invoices`
--

INSERT INTO `invoices` (`id`, `cod`, `value`, `operation`, `category`, `wallet`, `reference_date`, `due_date`, `contract`, `property`, `lessor`, `note`, `fixed`, `recurrent`, `status_comission`, `status`, `account_id`, `created_at`, `updated_at`) VALUES
(1, 0x36356330623237362d383035332d313165622d383961662d356363643562623862373938, '1200.00', 1, 1, 1, '02/2021', '2021-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(2, 0x36356331373730662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2021', '2021-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:52'),
(3, 0x36356332636230342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2021', '2021-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:52'),
(4, 0x36356333373864342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2021', '2021-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(5, 0x36356333666534322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2021', '2021-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(6, 0x36356334356230632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2021', '2021-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(7, 0x36356334613161642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2021', '2021-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(8, 0x36356335383539372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2021', '2021-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(9, 0x36356335646535652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2021', '2021-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(10, 0x36356336326436322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2021', '2021-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(11, 0x36356336373131382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2021', '2022-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(12, 0x36356336616231332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2022', '2022-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(13, 0x36356337303838382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2022', '2022-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(14, 0x36356337613335302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2022', '2022-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(15, 0x36356338316464652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2022', '2022-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(16, 0x36356338356264392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2022', '2022-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(17, 0x36356338393733622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2022', '2022-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(18, 0x36356338653633392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2022', '2022-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(19, 0x36356339323961332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2022', '2022-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(20, 0x36356339363636352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2022', '2022-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(21, 0x36356339613935382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2022', '2022-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(22, 0x36356361383138372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2022', '2022-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(23, 0x36356361636633642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2022', '2023-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(24, 0x36356362306266332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2023', '2023-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(25, 0x36356362363863382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2023', '2023-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(26, 0x36356362613365362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2023', '2023-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(27, 0x36356362653532382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2023', '2023-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(28, 0x36356363323162332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2023', '2023-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(29, 0x36356363636139322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2023', '2023-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(30, 0x36356364356663632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2023', '2023-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(31, 0x36356364396164392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2023', '2023-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(32, 0x36356364643332322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2023', '2023-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(33, 0x36356365313461612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2023', '2023-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(34, 0x36356365353366662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2023', '2023-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(35, 0x36356365393731332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2023', '2024-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(36, 0x36356366303537312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2024', '2024-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(37, 0x36356366636430352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2024', '2024-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(38, 0x36356430303661652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2024', '2024-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(39, 0x36356430343731632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2024', '2024-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(40, 0x36356430383032362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2024', '2024-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(41, 0x36356430626431392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2024', '2024-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(42, 0x36356430666162352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2024', '2024-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(43, 0x36356431333237632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2024', '2024-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(44, 0x36356431613466372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2024', '2024-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(45, 0x36356432333338612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2024', '2024-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(46, 0x36356432366532382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2024', '2024-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(47, 0x36356432613563612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2024', '2025-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(48, 0x36356432646366622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2025', '2025-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(49, 0x36356433313534302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2025', '2025-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(50, 0x36356433346232652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2025', '2025-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(51, 0x36356433383931342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2025', '2025-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(52, 0x36356433633232382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2025', '2025-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(53, 0x36356434353663352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2025', '2025-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(54, 0x36356434643036632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2025', '2025-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(55, 0x36356435306235662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2025', '2025-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(56, 0x36356435343366382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2025', '2025-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(57, 0x36356435386632352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2025', '2025-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(58, 0x36356435633362662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2025', '2025-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(59, 0x36356435663636372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2025', '2026-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(60, 0x36356436326531392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2026', '2026-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(61, 0x36356436363638612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2026', '2026-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(62, 0x36356437316662642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2026', '2026-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(63, 0x36356437363339612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2026', '2026-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(64, 0x36356437396334612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2026', '2026-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(65, 0x36356437643565612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2026', '2026-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(66, 0x36356438313131322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2026', '2026-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(67, 0x36356438346366362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2026', '2026-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(68, 0x36356438383636342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2026', '2026-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(69, 0x36356438633132312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2026', '2026-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(70, 0x36356438663662302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2026', '2026-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(71, 0x36356439623233302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2026', '2027-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(72, 0x36356439663163392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2027', '2027-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(73, 0x36356461326263392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2027', '2027-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(74, 0x36356461363130362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2027', '2027-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(75, 0x36356461393962392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2027', '2027-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(76, 0x36356461643136642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2027', '2027-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(77, 0x36356462306465382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2027', '2027-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(78, 0x36356462343564362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2027', '2027-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(79, 0x36356462376236302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2027', '2027-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(80, 0x36356463333963382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2027', '2027-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(81, 0x36356463396264352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2027', '2027-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(82, 0x36356463663335652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2027', '2027-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(83, 0x36356464356230662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2027', '2028-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(84, 0x36356464616461312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2028', '2028-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(85, 0x36356465303833312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2028', '2028-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(86, 0x36356465623766612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2028', '2028-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(87, 0x36356466303132662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2028', '2028-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(88, 0x36356466346232612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2028', '2028-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(89, 0x36356466393031362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2028', '2028-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(90, 0x36356466646366372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2028', '2028-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(91, 0x36356632343634372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2028', '2028-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(92, 0x36356633316637322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2028', '2028-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(93, 0x36356633636639322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2028', '2028-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(94, 0x36356634363365392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2028', '2028-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(95, 0x36356634636430382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2028', '2029-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(96, 0x36356635333534382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2029', '2029-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(97, 0x36356635373165392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2029', '2029-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(98, 0x36356635616462622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2029', '2029-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(99, 0x36356635653734332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2029', '2029-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(100, 0x36356636316563622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2029', '2029-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(101, 0x36356636353665382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2029', '2029-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(102, 0x36356636393434652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2029', '2029-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(103, 0x36356636636364312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2029', '2029-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(104, 0x36356637303431312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2029', '2029-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(105, 0x36356637343631342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2029', '2029-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(106, 0x36356637386138392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2029', '2029-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(107, 0x36356637643963302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2029', '2030-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(108, 0x36356638313664322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2030', '2030-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(109, 0x36356638353330642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2030', '2030-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(110, 0x36356638393766642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2030', '2030-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(111, 0x36356638636336612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2030', '2030-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(112, 0x36356639303431352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2030', '2030-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(113, 0x36356639333834382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2030', '2030-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(114, 0x36356639373032612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2030', '2030-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(115, 0x36356639616336632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2030', '2030-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(116, 0x36356639653336652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2030', '2030-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(117, 0x36356661333865392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2030', '2030-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(118, 0x36356661373661312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2030', '2030-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(119, 0x36356661616431652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2030', '2031-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(120, 0x36356661653634322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2031', '2031-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(121, 0x36356662323332662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2031', '2031-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(122, 0x36356662356233632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2031', '2031-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(123, 0x36356662393236332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2031', '2031-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(124, 0x36356662636331372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2031', '2031-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(125, 0x36356663303935622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2031', '2031-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(126, 0x36356663343563662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2031', '2031-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(127, 0x36356663376366322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2031', '2031-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(128, 0x36356663643939642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2031', '2031-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(129, 0x36356664313234662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2031', '2031-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(130, 0x36356664346165642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2031', '2031-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:25', '2021-03-27 21:00:53'),
(131, 0x36356664383537382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2031', '2032-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(132, 0x36356664626339662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2032', '2032-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(133, 0x36356665306165652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2032', '2032-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(134, 0x36356665343738322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2032', '2032-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(135, 0x36356665383437652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2032', '2032-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(136, 0x36356665626433642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2032', '2032-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(137, 0x36356665663537322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2032', '2032-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(138, 0x36356666346338652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2032', '2032-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(139, 0x36356666393734312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2032', '2032-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(140, 0x36356666643530362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2032', '2032-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(141, 0x36363030306434312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2032', '2032-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(142, 0x36363030343432652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2032', '2032-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(143, 0x36363036316334332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2032', '2033-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(144, 0x36363036383234342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2033', '2033-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(145, 0x36363036653563342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2033', '2033-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(146, 0x36363037343661392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2033', '2033-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(147, 0x36363037383338632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2033', '2033-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(148, 0x36363037623965332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2033', '2033-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(149, 0x36363037656434612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2033', '2033-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(150, 0x36363038333435372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2033', '2033-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(151, 0x36363038366263372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2033', '2033-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(152, 0x36363038613432312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2033', '2033-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(153, 0x36363038646663372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2033', '2033-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(154, 0x36363039313763312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2033', '2033-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(155, 0x36363039363132382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2033', '2034-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(156, 0x36363039623034652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2034', '2034-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(157, 0x36363039656261622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2034', '2034-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(158, 0x36363061323233612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2034', '2034-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(159, 0x36363061363066332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2034', '2034-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(160, 0x36363061393930612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2034', '2034-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(161, 0x36363061643561642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2034', '2034-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(162, 0x36363062306535642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2034', '2034-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(163, 0x36363062346334662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2034', '2034-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(164, 0x36363062383433612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2034', '2034-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(165, 0x36363062623962362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2034', '2034-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(166, 0x36363063313839642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2034', '2034-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(167, 0x36363063353462632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2034', '2035-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(168, 0x36363063386266662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2035', '2035-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(169, 0x36363063643066302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2035', '2035-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(170, 0x36363064306633652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2035', '2035-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(171, 0x36363064346363312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2035', '2035-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(172, 0x36363064383831332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2035', '2035-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(173, 0x36363064633037362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2035', '2035-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(174, 0x36363065303836302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2035', '2035-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(175, 0x36363065336433352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2035', '2035-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(176, 0x36363065613036622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2035', '2035-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(177, 0x36363065653063662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2035', '2035-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(178, 0x36363066313966382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2035', '2035-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(179, 0x36363066353464662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2035', '2036-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(180, 0x36363066386163332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2036', '2036-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(181, 0x36363066633361392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2036', '2036-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(182, 0x36363066666230372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2036', '2036-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(183, 0x36363130333231392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2036', '2036-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(184, 0x36363130366237362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2036', '2036-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(185, 0x36363130613434382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2036', '2036-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(186, 0x36363130646230652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2036', '2036-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(187, 0x36363131333635632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2036', '2036-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(188, 0x36363131373165632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2036', '2036-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(189, 0x36363131616331312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2036', '2036-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(190, 0x36363131653266372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2036', '2036-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(191, 0x36363132316461302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2036', '2037-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(192, 0x36363132353338322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2037', '2037-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(193, 0x36363132383762642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2037', '2037-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(194, 0x36363132626466642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2037', '2037-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(195, 0x36363132666135372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2037', '2037-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(196, 0x36363133333236642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2037', '2037-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(197, 0x36363133373532362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2037', '2037-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(198, 0x36363133643030662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2037', '2037-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(199, 0x36363134306131342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2037', '2037-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(200, 0x36363134343137372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2037', '2037-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(201, 0x36363134373934622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2037', '2037-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(202, 0x36363134616637622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2037', '2037-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(203, 0x36363134653764382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2037', '2038-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(204, 0x36363135323465382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2038', '2038-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(205, 0x36363135356231372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2038', '2038-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(206, 0x36363135393462362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2038', '2038-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(207, 0x36363135636161302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2038', '2038-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(208, 0x36363136313630352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2038', '2038-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(209, 0x36363136363235372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2038', '2038-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(210, 0x36363136623562382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2038', '2038-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(211, 0x36363136656430332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2038', '2038-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(212, 0x36363137323439382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2038', '2038-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(213, 0x36363137353866622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2038', '2038-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(214, 0x36363137393131392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2038', '2038-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(215, 0x36363137633437652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2038', '2039-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(216, 0x36363137666561632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2039', '2039-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(217, 0x36363138333833332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2039', '2039-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(218, 0x36363138366338362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2039', '2039-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(219, 0x36363138626636392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2039', '2039-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(220, 0x36363138666462382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2039', '2039-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(221, 0x36363139333463642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2039', '2039-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(222, 0x36363139366463612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2039', '2039-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(223, 0x36363139616564352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2039', '2039-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(224, 0x36363139653637642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2039', '2039-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(225, 0x36363161316530382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2039', '2039-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(226, 0x36363161353337312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2039', '2039-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(227, 0x36363161383864652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2039', '2040-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(228, 0x36363161633563312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2040', '2040-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(229, 0x36363161666262632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2040', '2040-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(230, 0x36363162363435342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2040', '2040-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(231, 0x36363162396361332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2040', '2040-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(232, 0x36363162643333392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2040', '2040-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(233, 0x36363163306262312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2040', '2040-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(234, 0x36363163343365612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2040', '2040-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(235, 0x36363163373865372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2040', '2040-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(236, 0x36363163623731642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2040', '2040-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53');
INSERT INTO `invoices` (`id`, `cod`, `value`, `operation`, `category`, `wallet`, `reference_date`, `due_date`, `contract`, `property`, `lessor`, `note`, `fixed`, `recurrent`, `status_comission`, `status`, `account_id`, `created_at`, `updated_at`) VALUES
(237, 0x36363163663033382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2040', '2040-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(238, 0x36363164323936352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2040', '2040-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(239, 0x36363164356631612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2040', '2041-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(240, 0x36363164623539332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2041', '2041-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(241, 0x36363164666630652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2041', '2041-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(242, 0x36363165336161302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2041', '2041-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(243, 0x36363165386163312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2041', '2041-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(244, 0x36363165633462312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2041', '2041-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(245, 0x36363165666262362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2041', '2041-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(246, 0x36363166326533322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2041', '2041-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(247, 0x36363166363235352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2041', '2041-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(248, 0x36363166396131362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2041', '2041-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(249, 0x36363166643261662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2041', '2041-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(250, 0x36363230303930372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2041', '2041-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(251, 0x36363230353934332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2041', '2042-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(252, 0x36363230393336352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2042', '2042-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(253, 0x36363230633939652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2042', '2042-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(254, 0x36363231303037342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2042', '2042-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(255, 0x36363231343131322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2042', '2042-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(256, 0x36363231376165642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2042', '2042-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(257, 0x36363231623434332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2042', '2042-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(258, 0x36363231656165392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2042', '2042-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(259, 0x36363232323630642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2042', '2042-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(260, 0x36363232366439612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2042', '2042-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(261, 0x36363232613465342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2042', '2042-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(262, 0x36363233303932612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2042', '2042-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(263, 0x36363233343631392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2042', '2043-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(264, 0x36363233376532312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2043', '2043-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(265, 0x36363233623733312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2043', '2043-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(266, 0x36363233663438392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2043', '2043-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(267, 0x36363234326532392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2043', '2043-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(268, 0x36363234363832612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2043', '2043-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(269, 0x36363234396662382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2043', '2043-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(270, 0x36363234646634312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2043', '2043-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(271, 0x36363235313638372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2043', '2043-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(272, 0x36363235356561662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2043', '2043-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(273, 0x36363235613035312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2043', '2043-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(274, 0x36363235643838362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2043', '2043-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(275, 0x36363236313338662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2043', '2044-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(276, 0x36363236356638632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2044', '2044-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(277, 0x36363236393834312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2044', '2044-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(278, 0x36363236643064332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2044', '2044-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(279, 0x36363237303937632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2044', '2044-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(280, 0x36363237346630302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2044', '2044-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(281, 0x36363237383963622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2044', '2044-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(282, 0x36363237633466612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2044', '2044-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(283, 0x36363238313630312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2044', '2044-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(284, 0x36363238346538352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2044', '2044-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(285, 0x36363238393434352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2044', '2044-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(286, 0x36363238636438632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2044', '2044-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(287, 0x36363239303931612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2044', '2045-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(288, 0x36363239336638352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2045', '2045-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(289, 0x36363239373966392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2045', '2045-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(290, 0x36363239623165312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2045', '2045-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(291, 0x36363239656162662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2045', '2045-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(292, 0x36363261323733622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2045', '2045-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(293, 0x36363261383635652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2045', '2045-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(294, 0x36363261633366392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2045', '2045-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(295, 0x36363261666336322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2045', '2045-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(296, 0x36363262333261622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2045', '2045-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(297, 0x36363262366261632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2045', '2045-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(298, 0x36363262613266342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2045', '2045-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(299, 0x36363262653634352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2045', '2046-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(300, 0x36363263316266362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2046', '2046-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(301, 0x36363263353538652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2046', '2046-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(302, 0x36363263386430652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2046', '2046-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(303, 0x36363263633435332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2046', '2046-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(304, 0x36363264323033302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2046', '2046-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(305, 0x36363264356334632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2046', '2046-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(306, 0x36363264393365362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2046', '2046-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(307, 0x36363264643135302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2046', '2046-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(308, 0x36363265306131632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2046', '2046-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(309, 0x36363265356536642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2046', '2046-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(310, 0x36363265393537372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2046', '2046-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(311, 0x36363265636137392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2046', '2047-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(312, 0x36363266303032392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2047', '2047-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(313, 0x36363266333566632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2047', '2047-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(314, 0x36363266373965342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2047', '2047-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(315, 0x36363266633164622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2047', '2047-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(316, 0x36363266666333332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2047', '2047-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(317, 0x36363330333334642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2047', '2047-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(318, 0x36363330366361372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2047', '2047-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(319, 0x36363330616366352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2047', '2047-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(320, 0x36363330653537342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2047', '2047-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(321, 0x36363331323931352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2047', '2047-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(322, 0x36363331356462382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2047', '2047-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(323, 0x36363331393565342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2047', '2048-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(324, 0x36363331636230322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2048', '2048-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(325, 0x36363332323531382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2048', '2048-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(326, 0x36363332363566392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2048', '2048-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(327, 0x36363332396565302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2048', '2048-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(328, 0x36363332643363362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2048', '2048-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(329, 0x36363333306361392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2048', '2048-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(330, 0x36363333343564362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2048', '2048-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(331, 0x36363333383461342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2048', '2048-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(332, 0x36363333626533642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2048', '2048-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(333, 0x36363333663263332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2048', '2048-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(334, 0x36363334333034652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2048', '2048-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(335, 0x36363334363661332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2048', '2049-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(336, 0x36363334633334652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2049', '2049-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(337, 0x36363334666663622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2049', '2049-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(338, 0x36363335333732372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2049', '2049-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(339, 0x36363335373232652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2049', '2049-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(340, 0x36363335616337372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2049', '2049-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(341, 0x36363335653463622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2049', '2049-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(342, 0x36363336316238662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2049', '2049-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(343, 0x36363336363436622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2049', '2049-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(344, 0x36363336396164622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2049', '2049-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(345, 0x36363336643133342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2049', '2049-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(346, 0x36363337306465302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2049', '2049-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(347, 0x36363337363161302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2049', '2050-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(348, 0x36363337393635662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2050', '2050-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(349, 0x36363337643638322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2050', '2050-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(350, 0x36363338323534662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2050', '2050-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(351, 0x36363338366234392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2050', '2050-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(352, 0x36363338623837662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2050', '2050-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(353, 0x36363338666265362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2050', '2050-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(354, 0x36363339333639392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2050', '2050-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(355, 0x36363339373533362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2050', '2050-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(356, 0x36363339643231392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2050', '2050-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(357, 0x36363361306266392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2050', '2050-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(358, 0x36363361343235652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2050', '2050-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(359, 0x36363361376465302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2050', '2051-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(360, 0x36363361623635612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2051', '2051-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(361, 0x36363361656438382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2051', '2051-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(362, 0x36363362326166302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2051', '2051-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(363, 0x36363362363237322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2051', '2051-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(364, 0x36363362393866302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2051', '2051-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(365, 0x36363362643237622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2051', '2051-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(366, 0x36363363303864322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2051', '2051-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(367, 0x36363363366562342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2051', '2051-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(368, 0x36363363616639352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2051', '2051-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(369, 0x36363363653865322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2051', '2051-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(370, 0x36363364323035332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2051', '2051-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(371, 0x36363364353662372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2051', '2052-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(372, 0x36363364386331642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2052', '2052-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(373, 0x36363364633632612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2052', '2052-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(374, 0x36363364666338332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2052', '2052-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(375, 0x36363365333566622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2052', '2052-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(376, 0x36363365376635382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2052', '2052-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(377, 0x36363365646166372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2052', '2052-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(378, 0x36363366316131312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2052', '2052-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(379, 0x36363366353132632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2052', '2052-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(380, 0x36363366383536392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2052', '2052-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(381, 0x36363366633037352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2052', '2052-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(382, 0x36363366663964662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2052', '2052-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(383, 0x36363430333065322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2052', '2053-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(384, 0x36363430363637372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2053', '2053-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(385, 0x36363430396464302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2053', '2053-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(386, 0x36363430643337662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2053', '2053-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(387, 0x36363431306139662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2053', '2053-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(388, 0x36363431373231332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2053', '2053-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(389, 0x36363431623631342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2053', '2053-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(390, 0x36363431656665632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2053', '2053-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(391, 0x36363432323731302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2053', '2053-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(392, 0x36363432363061642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2053', '2053-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(393, 0x36363432396439312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2053', '2053-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(394, 0x36363432646364332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2053', '2053-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(395, 0x36363433313438662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2053', '2054-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(396, 0x36363433346261382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2054', '2054-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(397, 0x36363433383061322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2054', '2054-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(398, 0x36363433643764612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2054', '2054-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(399, 0x36363434323234382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2054', '2054-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(400, 0x36363434363561652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2054', '2054-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(401, 0x36363434396337312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2054', '2054-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(402, 0x36363434643330362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2054', '2054-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(403, 0x36363435306533372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2054', '2054-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(404, 0x36363435343433382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2054', '2054-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(405, 0x36363435376565322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2054', '2054-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(406, 0x36363435623762392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2054', '2054-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(407, 0x36363435663263642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2054', '2055-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(408, 0x36363436323937612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2055', '2055-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(409, 0x36363436393962342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2055', '2055-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(410, 0x36363436643530632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2055', '2055-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(411, 0x36363437313061652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2055', '2055-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(412, 0x36363437343735302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2055', '2055-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(413, 0x36363437376632612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2055', '2055-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(414, 0x36363437623237372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2055', '2055-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(415, 0x36363437653832312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2055', '2055-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(416, 0x36363438316530642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2055', '2055-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(417, 0x36363438353661612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2055', '2055-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(418, 0x36363438396362642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2055', '2055-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(419, 0x36363438663338342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2055', '2056-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(420, 0x36363439333736322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2056', '2056-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(421, 0x36363439373030392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2056', '2056-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(422, 0x36363439613861332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2056', '2056-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(423, 0x36363439653162372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2056', '2056-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(424, 0x36363461313666322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2056', '2056-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(425, 0x36363461353531652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2056', '2056-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(426, 0x36363461393231302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2056', '2056-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(427, 0x36363461636136382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2056', '2056-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(428, 0x36363462303336632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2056', '2056-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(429, 0x36363462336161322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2056', '2056-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(430, 0x36363462396162622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2056', '2056-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(431, 0x36363462643535322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2056', '2057-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(432, 0x36363463323039632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2057', '2057-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(433, 0x36363463353831612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2057', '2057-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(434, 0x36363463393034322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2057', '2057-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(435, 0x36363463633530612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2057', '2057-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(436, 0x36363463666265372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2057', '2057-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(437, 0x36363464336533352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2057', '2057-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(438, 0x36363464386163302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2057', '2057-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(439, 0x36363466373237342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2057', '2057-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(440, 0x36363532303165382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2057', '2057-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(441, 0x36363532393166332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2057', '2057-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(442, 0x36363532643131632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2057', '2057-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(443, 0x36363533333534352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2057', '2058-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(444, 0x36363533376266302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2058', '2058-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(445, 0x36363533633135312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2058', '2058-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(446, 0x36363533666561332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2058', '2058-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(447, 0x36363534343133392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2058', '2058-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(448, 0x36363534376439612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2058', '2058-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(449, 0x36363534626136382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2058', '2058-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(450, 0x36363534663963372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2058', '2058-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(451, 0x36363535336663372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2058', '2058-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(452, 0x36363535376164652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2058', '2058-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(453, 0x36363535653337332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2058', '2058-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(454, 0x36363536323163312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2058', '2058-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(455, 0x36363536356163382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2058', '2059-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(456, 0x36363536393938352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2059', '2059-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(457, 0x36363536656261322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2059', '2059-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(458, 0x36363537323633302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2059', '2059-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(459, 0x36363537356339622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2059', '2059-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(460, 0x36363537393430642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2059', '2059-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(461, 0x36363537636336622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2059', '2059-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(462, 0x36363538303433382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2059', '2059-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(463, 0x36363538363736382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2059', '2059-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(464, 0x36363538613230382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2059', '2059-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(465, 0x36363538643934302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2059', '2059-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(466, 0x36363539316363312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2059', '2059-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(467, 0x36363539353530342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2059', '2060-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(468, 0x36363539386563352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2060', '2060-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(469, 0x36363539633862312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2060', '2060-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(470, 0x36363539666662622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2060', '2060-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(471, 0x36363561343765662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2060', '2060-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53');
INSERT INTO `invoices` (`id`, `cod`, `value`, `operation`, `category`, `wallet`, `reference_date`, `due_date`, `contract`, `property`, `lessor`, `note`, `fixed`, `recurrent`, `status_comission`, `status`, `account_id`, `created_at`, `updated_at`) VALUES
(472, 0x36363561376566382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2060', '2060-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(473, 0x36363561643735302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2060', '2060-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(474, 0x36363562306536332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2060', '2060-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(475, 0x36363562343561642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2060', '2060-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(476, 0x36363562383237322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2060', '2060-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(477, 0x36363562623738662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2060', '2060-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(478, 0x36363562656532372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2060', '2060-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(479, 0x36363563323565302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2060', '2061-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(480, 0x36363563356263312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2061', '2061-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(481, 0x36363563393739312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2061', '2061-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(482, 0x36363563643637302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2061', '2061-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(483, 0x36363564306565382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2061', '2061-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(484, 0x36363564363330342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2061', '2061-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(485, 0x36363564396233652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2061', '2061-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(486, 0x36363564643139652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2061', '2061-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(487, 0x36363565306634352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2061', '2061-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(488, 0x36363565346361382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2061', '2061-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(489, 0x36363565383539662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2061', '2061-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(490, 0x36363565626335392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2061', '2061-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(491, 0x36363565663436322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2061', '2062-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(492, 0x36363566323965382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2062', '2062-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(493, 0x36363566363532612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2062', '2062-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(494, 0x36363566396337372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2062', '2062-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(495, 0x36363630303237362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2062', '2062-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(496, 0x36363630333738342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2062', '2062-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(497, 0x36363630386666652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2062', '2062-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(498, 0x36363630636338382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2062', '2062-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(499, 0x36363631303531652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2062', '2062-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(500, 0x36363631336363632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2062', '2062-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(501, 0x36363631373538382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2062', '2062-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(502, 0x36363631616264362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2062', '2062-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(503, 0x36363631653462392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2062', '2063-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(504, 0x36363632343039652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2063', '2063-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(505, 0x36363632396364382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2063', '2063-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(506, 0x36363632646239622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2063', '2063-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(507, 0x36363633313534312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2063', '2063-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(508, 0x36363633353031392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2063', '2063-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(509, 0x36363633383662362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2063', '2063-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(510, 0x36363633626430322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2063', '2063-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(511, 0x36363633663335342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2063', '2063-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(512, 0x36363634323961342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2063', '2063-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(513, 0x36363634363335352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2063', '2063-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(514, 0x36363634396430342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2063', '2063-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(515, 0x36363634666637622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2063', '2064-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(516, 0x36363635336436392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2064', '2064-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(517, 0x36363635373466362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2064', '2064-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(518, 0x36363635616363372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2064', '2064-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(519, 0x36363635653839622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2064', '2064-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(520, 0x36363636316530632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2064', '2064-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(521, 0x36363636353563322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2064', '2064-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(522, 0x36363636386139622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2064', '2064-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(523, 0x36363636633232372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2064', '2064-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(524, 0x36363636663963612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2064', '2064-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(525, 0x36363637333230352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2064', '2064-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(526, 0x36363637393634312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2064', '2064-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(527, 0x36363637636565382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2064', '2065-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(528, 0x36363638303533622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2065', '2065-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(529, 0x36363638336538362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2065', '2065-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(530, 0x36363638373735382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2065', '2065-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(531, 0x36363638616664392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2065', '2065-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(532, 0x36363638656531362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2065', '2065-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(533, 0x36363639323666612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2065', '2065-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(534, 0x36363639356139332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2065', '2065-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(535, 0x36363639393339332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2065', '2065-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(536, 0x36363639656236392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2065', '2065-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(537, 0x36363661333733332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2065', '2065-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(538, 0x36363661383739652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2065', '2065-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(539, 0x36363661626361372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2065', '2066-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(540, 0x36363661663634622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2066', '2066-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(541, 0x36363662326339622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2066', '2066-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(542, 0x36363662363234372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2066', '2066-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(543, 0x36363662393562352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2066', '2066-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(544, 0x36363662643061662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2066', '2066-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(545, 0x36363663313031322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2066', '2066-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(546, 0x36363663343639612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2066', '2066-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(547, 0x36363663393933342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2066', '2066-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(548, 0x36363663643337312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2066', '2066-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(549, 0x36363664306533632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2066', '2066-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(550, 0x36363664343439612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2066', '2066-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(551, 0x36363664376261362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2066', '2067-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(552, 0x36363664623362312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2067', '2067-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(553, 0x36363664663061322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2067', '2067-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(554, 0x36363665323763662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2067', '2067-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(555, 0x36363665356430322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2067', '2067-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(556, 0x36363665396535342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2067', '2067-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(557, 0x36363665643736612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2067', '2067-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(558, 0x36363666333539372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2067', '2067-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(559, 0x36363666366466372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2067', '2067-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(560, 0x36363666613332302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2067', '2067-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(561, 0x36363666643966342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2067', '2067-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(562, 0x36363730313235632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2067', '2067-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(563, 0x36363730343863352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2067', '2068-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(564, 0x36363730383438342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2068', '2068-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(565, 0x36363730633264392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2068', '2068-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(566, 0x36363730663963652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2068', '2068-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(567, 0x36363731333232392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2068', '2068-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(568, 0x36363731363964302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2068', '2068-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(569, 0x36363731633330302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2068', '2068-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(570, 0x36363731666638612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2068', '2068-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(571, 0x36363732346163612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2068', '2068-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(572, 0x36363732383138372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2068', '2068-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(573, 0x36363732623732302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2068', '2068-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(574, 0x36363732656538382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2068', '2068-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(575, 0x36363733323636392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2068', '2069-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(576, 0x36363733356266372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2069', '2069-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(577, 0x36363733393561622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2069', '2069-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(578, 0x36363733643162372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2069', '2069-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(579, 0x36363734316630382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2069', '2069-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(580, 0x36363734363534342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2069', '2069-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(581, 0x36363734613031642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2069', '2069-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(582, 0x36363734643430352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2069', '2069-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(583, 0x36363735306136362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2069', '2069-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(584, 0x36363735343631332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2069', '2069-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(585, 0x36363735376638612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2069', '2069-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(586, 0x36363735626232652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2069', '2069-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(587, 0x36363735663434362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2069', '2070-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(588, 0x36363736323938382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2070', '2070-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(589, 0x36363736356564352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2070', '2070-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(590, 0x36363736623164322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2070', '2070-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(591, 0x36363736666138372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2070', '2070-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(592, 0x36363737333139322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2070', '2070-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(593, 0x36363737363636312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2070', '2070-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(594, 0x36363737613063362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2070', '2070-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(595, 0x36363737646534612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2070', '2070-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(596, 0x36363738313932322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2070', '2070-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(597, 0x36363738353233622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2070', '2070-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(598, 0x36363738383966352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2070', '2070-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(599, 0x36363738626565332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2070', '2071-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(600, 0x36363738663362372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2071', '2071-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(601, 0x36363739346264392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2071', '2071-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(602, 0x36363739386164632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2071', '2071-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(603, 0x36363739633738632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2071', '2071-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(604, 0x36363761316665382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2071', '2071-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(605, 0x36363761353666652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2071', '2071-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(606, 0x36363761386135362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2071', '2071-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(607, 0x36363761633132322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2071', '2071-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(608, 0x36363761663832362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2071', '2071-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(609, 0x36363762326435312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2071', '2071-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(610, 0x36363762363665642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2071', '2071-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(611, 0x36363762616564322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2071', '2072-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(612, 0x36363762663939622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2072', '2072-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(613, 0x36363763333131332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2072', '2072-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(614, 0x36363763363663662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2072', '2072-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(615, 0x36363763613232612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2072', '2072-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(616, 0x36363763646330302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2072', '2072-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(617, 0x36363764313331642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2072', '2072-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(618, 0x36363764343961342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2072', '2072-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(619, 0x36363764383165632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2072', '2072-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(620, 0x36363764623838612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2072', '2072-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(621, 0x36363764656338302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2072', '2072-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(622, 0x36363765323530352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2072', '2072-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(623, 0x36363765383533642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2072', '2073-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(624, 0x36363765626635302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2073', '2073-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(625, 0x36363765663935612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2073', '2073-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(626, 0x36363766336336352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2073', '2073-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(627, 0x36363766373561312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2073', '2073-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(628, 0x36363766616334312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2073', '2073-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(629, 0x36363766656137302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2073', '2073-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(630, 0x36363830323330352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2073', '2073-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(631, 0x36363830356365312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2073', '2073-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(632, 0x36363830393632302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2073', '2073-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(633, 0x36363830656537612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2073', '2073-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(634, 0x36363831326239622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2073', '2073-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(635, 0x36363831366437642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2073', '2074-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(636, 0x36363831613830342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2074', '2074-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(637, 0x36363831663666372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2074', '2074-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(638, 0x36363832326139662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2074', '2074-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(639, 0x36363832356564312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2074', '2074-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(640, 0x36363832393261392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2074', '2074-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(641, 0x36363832636263392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2074', '2074-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(642, 0x36363833303461632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2074', '2074-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(643, 0x36363833336466662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2074', '2074-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(644, 0x36363833393436372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2074', '2074-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(645, 0x36363833653666302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2074', '2074-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(646, 0x36363834326239642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2074', '2074-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(647, 0x36363834386362372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2074', '2075-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(648, 0x36363834643237642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2075', '2075-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(649, 0x36363835306338662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2075', '2075-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(650, 0x36363835343836302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2075', '2075-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(651, 0x36363835383632352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2075', '2075-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(652, 0x36363835633834612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2075', '2075-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(653, 0x36363836323866322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2075', '2075-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(654, 0x36363836356664322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2075', '2075-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(655, 0x36363836393433312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2075', '2075-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(656, 0x36363836633830312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2075', '2075-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(657, 0x36363837303133392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2075', '2075-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(658, 0x36363837333635662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2075', '2075-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(659, 0x36363837373062322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2075', '2076-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(660, 0x36363837613839332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2076', '2076-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(661, 0x36363837646638312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2076', '2076-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(662, 0x36363838313330352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2076', '2076-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(663, 0x36363838346464332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2076', '2076-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(664, 0x36363838613966352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2076', '2076-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(665, 0x36363838653733332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2076', '2076-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(666, 0x36363839323139322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2076', '2076-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(667, 0x36363839353734342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2076', '2076-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(668, 0x36363839393338612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2076', '2076-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(669, 0x36363839633934322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2076', '2076-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(670, 0x36363839666437332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2076', '2076-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(671, 0x36363861343531332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2076', '2077-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(672, 0x36363861376230362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2077', '2077-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(673, 0x36363861623233382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2077', '2077-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(674, 0x36363862313263622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2077', '2077-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(675, 0x36363862346531342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2077', '2077-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(676, 0x36363862376633332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2077', '2077-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(677, 0x36363862633137382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2077', '2077-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(678, 0x36363863303137622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2077', '2077-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(679, 0x36363863336131632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2077', '2077-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(680, 0x36363863373137662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2077', '2077-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(681, 0x36363863613963322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2077', '2077-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(682, 0x36363863653035362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2077', '2077-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(683, 0x36363864313632642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2077', '2078-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(684, 0x36363864353264332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2078', '2078-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(685, 0x36363864626532362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2078', '2078-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(686, 0x36363864666139612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2078', '2078-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(687, 0x36363865333063352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2078', '2078-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(688, 0x36363865363738652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2078', '2078-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(689, 0x36363865396633612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2078', '2078-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(690, 0x36363865643633652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2078', '2078-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(691, 0x36363866313438332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2078', '2078-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(692, 0x36363866346363392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2078', '2078-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(693, 0x36363866383331612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2078', '2078-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(694, 0x36363866626330612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2078', '2078-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(695, 0x36363930306136352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2078', '2079-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(696, 0x36363930356137632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2079', '2079-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(697, 0x36363930393665622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2079', '2079-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(698, 0x36363930636337652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2079', '2079-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(699, 0x36363931303462642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2079', '2079-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(700, 0x36363931336161612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2079', '2079-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(701, 0x36363931373432342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2079', '2079-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(702, 0x36363931613933652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2079', '2079-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(703, 0x36363931646638632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2079', '2079-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(704, 0x36363932333432622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2079', '2079-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(705, 0x36363932363965362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2079', '2079-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(706, 0x36363932633133642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2079', '2079-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53');
INSERT INTO `invoices` (`id`, `cod`, `value`, `operation`, `category`, `wallet`, `reference_date`, `due_date`, `contract`, `property`, `lessor`, `note`, `fixed`, `recurrent`, `status_comission`, `status`, `account_id`, `created_at`, `updated_at`) VALUES
(707, 0x36363932666235652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2079', '2080-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(708, 0x36363933333232302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2080', '2080-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(709, 0x36363933363563612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2080', '2080-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(710, 0x36363933396633302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2080', '2080-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(711, 0x36363933643861382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2080', '2080-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(712, 0x36363934306662642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2080', '2080-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(713, 0x36363934343564362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2080', '2080-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(714, 0x36363934383035352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2080', '2080-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(715, 0x36363934623364622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2080', '2080-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(716, 0x36363934653837352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2080', '2080-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(717, 0x36363935343734312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2080', '2080-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(718, 0x36363935383736382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2080', '2080-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(719, 0x36363935626565632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2080', '2081-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:26', '2021-03-27 21:00:53'),
(720, 0x36363935663432342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2081', '2081-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(721, 0x36363936323864362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2081', '2081-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(722, 0x36363936363162392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2081', '2081-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(723, 0x36363936393632362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2081', '2081-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(724, 0x36363936643337302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2081', '2081-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(725, 0x36363937306234392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2081', '2081-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(726, 0x36363937343332652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2081', '2081-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(727, 0x36363937376264362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2081', '2081-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(728, 0x36363937643436322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2081', '2081-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(729, 0x36363938313066312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2081', '2081-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(730, 0x36363938346637322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2081', '2081-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(731, 0x36363938383561332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2081', '2082-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(732, 0x36363938626435312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2082', '2082-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(733, 0x36363938663438322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2082', '2082-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(734, 0x36363939326137612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2082', '2082-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(735, 0x36363939363164322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2082', '2082-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(736, 0x36363939393962312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2082', '2082-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(737, 0x36363939643532302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2082', '2082-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(738, 0x36363961323665652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2082', '2082-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(739, 0x36363961373964342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2082', '2082-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(740, 0x36363961616534662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2082', '2082-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(741, 0x36363961653235362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2082', '2082-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(742, 0x36363962313633662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2082', '2082-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(743, 0x36363962346462302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2082', '2083-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(744, 0x36363962383462652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2083', '2083-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(745, 0x36363962626661632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2083', '2083-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(746, 0x36363962666364322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2083', '2083-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(747, 0x36363963333566382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2083', '2083-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(748, 0x36363963373338312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2083', '2083-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(749, 0x36363963633230632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2083', '2083-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(750, 0x36363964313039312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2083', '2083-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(751, 0x36363964346162372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2083', '2083-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(752, 0x36363964386165372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2083', '2083-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(753, 0x36363964633536362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2083', '2083-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(754, 0x36363964666466332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2083', '2083-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(755, 0x36363965333930642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2083', '2084-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(756, 0x36363965373431312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2084', '2084-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(757, 0x36363965616237622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2084', '2084-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(758, 0x36363965656435652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2084', '2084-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(759, 0x36363966323735642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2084', '2084-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(760, 0x36363966383238352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2084', '2084-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(761, 0x36363966626638342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2084', '2084-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(762, 0x36363966666231382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2084', '2084-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(763, 0x36366130333331362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2084', '2084-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(764, 0x36366130373161652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2084', '2084-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(765, 0x36366130616235302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2084', '2084-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(766, 0x36366130653030392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2084', '2084-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(767, 0x36366131313663622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2084', '2085-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(768, 0x36366131353265302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2085', '2085-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(769, 0x36366131386230362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2085', '2085-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(770, 0x36366131643136312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2085', '2085-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(771, 0x36366132326262642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2085', '2085-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(772, 0x36366132356665382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2085', '2085-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(773, 0x36366132396161302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2085', '2085-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(774, 0x36366132643566662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2085', '2085-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(775, 0x36366133313330322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2085', '2085-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(776, 0x36366133353235332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2085', '2085-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(777, 0x36366133383833342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2085', '2085-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(778, 0x36366133626535352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2085', '2085-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(779, 0x36366133663433352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2085', '2086-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(780, 0x36366134323966632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2086', '2086-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(781, 0x36366134383431642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2086', '2086-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(782, 0x36366134633332662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2086', '2086-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(783, 0x36366134666238362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2086', '2086-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(784, 0x36366135333765322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2086', '2086-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(785, 0x36366135373033352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2086', '2086-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(786, 0x36366135616135362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2086', '2086-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(787, 0x36366135656438322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2086', '2086-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(788, 0x36366136326164362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2086', '2086-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(789, 0x36366136363462612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2086', '2086-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(790, 0x36366136396464662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2086', '2086-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(791, 0x36366136653539622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2086', '2087-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(792, 0x36366137326530302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2087', '2087-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(793, 0x36366137363731312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2087', '2087-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(794, 0x36366137613334632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2087', '2087-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(795, 0x36366137646239392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2087', '2087-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(796, 0x36366138313537372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2087', '2087-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(797, 0x36366138346436632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2087', '2087-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(798, 0x36366138383636382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2087', '2087-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(799, 0x36366138626434322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2087', '2087-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(800, 0x36366138666133612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2087', '2087-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(801, 0x36366139333733332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2087', '2087-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(802, 0x36366139393636302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2087', '2087-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(803, 0x36366139656364652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2087', '2088-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(804, 0x36366161323633312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2088', '2088-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(805, 0x36366161356363622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2088', '2088-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(806, 0x36366161393534322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2088', '2088-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(807, 0x36366161636335652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2088', '2088-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(808, 0x36366162303362652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2088', '2088-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(809, 0x36366162333832662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2088', '2088-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(810, 0x36366162366461392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2088', '2088-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(811, 0x36366162613636652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2088', '2088-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(812, 0x36366162646233622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2088', '2088-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(813, 0x36366163343931662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2088', '2088-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(814, 0x36366163383233332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2088', '2088-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(815, 0x36366163623834362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2088', '2089-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(816, 0x36366163663133392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2089', '2089-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(817, 0x36366164323966642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2089', '2089-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(818, 0x36366164363230382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2089', '2089-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(819, 0x36366164396437352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2089', '2089-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(820, 0x36366164643237392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2089', '2089-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(821, 0x36366165303635352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2089', '2089-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(822, 0x36366165336135392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2089', '2089-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(823, 0x36366165383166332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2089', '2089-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(824, 0x36366165636338662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2089', '2089-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(825, 0x36366166303465342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2089', '2089-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(826, 0x36366166336634642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2089', '2089-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(827, 0x36366166373761342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2089', '2090-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(828, 0x36366166623562642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2090', '2090-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(829, 0x36366166656363652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2090', '2090-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(830, 0x36366230323639342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2090', '2090-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(831, 0x36366230356466342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2090', '2090-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(832, 0x36366230396132652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2090', '2090-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(833, 0x36366230643361312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2090', '2090-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(834, 0x36366231326366382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2090', '2090-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(835, 0x36366231366438632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2090', '2090-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(836, 0x36366231613562312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2090', '2090-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(837, 0x36366231656537622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2090', '2090-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(838, 0x36366232323464622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2090', '2090-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(839, 0x36366232356439392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2090', '2091-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(840, 0x36366232393565302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2091', '2091-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(841, 0x36366232636130622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2091', '2091-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(842, 0x36366233303233352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2091', '2091-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(843, 0x36366233333863622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2091', '2091-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(844, 0x36366233373234322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2091', '2091-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(845, 0x36366233643432642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2091', '2091-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(846, 0x36366234306339612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2091', '2091-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(847, 0x36366234343638352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2091', '2091-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(848, 0x36366234376436302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2091', '2091-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(849, 0x36366234623436392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2091', '2091-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(850, 0x36366234656434342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2091', '2091-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(851, 0x36366235323433372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2091', '2092-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(852, 0x36366235363036652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2092', '2092-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(853, 0x36366235396536322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2092', '2092-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(854, 0x36366235643534342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2092', '2092-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(855, 0x36366236313661632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2092', '2092-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(856, 0x36366236366235642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2092', '2092-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(857, 0x36366236613438312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2092', '2092-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(858, 0x36366236646639622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2092', '2092-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(859, 0x36366237313761642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2092', '2092-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(860, 0x36366237346534372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2092', '2092-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(861, 0x36366237383532382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2092', '2092-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(862, 0x36366237626538322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2092', '2092-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(863, 0x36366237663963332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2092', '2093-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(864, 0x36366238333638312d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2093', '2093-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(865, 0x36366238366365662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2093', '2093-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(866, 0x36366238633038392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2093', '2093-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(867, 0x36366238666638652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2093', '2093-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(868, 0x36366239333637612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2093', '2093-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(869, 0x36366239366261622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2093', '2093-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(870, 0x36366239623437322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2093', '2093-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(871, 0x36366239663261392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2093', '2093-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(872, 0x36366261323936362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2093', '2093-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(873, 0x36366261356635332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2093', '2093-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(874, 0x36366261393439382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2093', '2093-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(875, 0x36366261636166352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2093', '2094-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(876, 0x36366261666336392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2094', '2094-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(877, 0x36366262353461632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2094', '2094-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(878, 0x36366262393264622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2094', '2094-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(879, 0x36366262636130622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2094', '2094-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(880, 0x36366263303334352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2094', '2094-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(881, 0x36366263336437612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2094', '2094-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(882, 0x36366263373431642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2094', '2094-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(883, 0x36366263616539612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2094', '2094-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(884, 0x36366263656165652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2094', '2094-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(885, 0x36366264323464612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2094', '2094-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(886, 0x36366264356135632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2094', '2094-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(887, 0x36366264386638652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2094', '2095-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(888, 0x36366264653633362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2095', '2095-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(889, 0x36366265323135322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2095', '2095-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(890, 0x36366265356234362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2095', '2095-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(891, 0x36366265393166362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2095', '2095-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(892, 0x36366265636365332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2095', '2095-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(893, 0x36366266303439392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2095', '2095-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(894, 0x36366266333935632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2095', '2095-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(895, 0x36366266366536612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2095', '2095-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(896, 0x36366266613634642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2095', '2095-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(897, 0x36366266653061632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2095', '2095-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(898, 0x36366330316134382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2095', '2095-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(899, 0x36366330373564632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2095', '2096-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(900, 0x36366330616637322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2096', '2096-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(901, 0x36366330653636372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2096', '2096-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(902, 0x36366331316265342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2096', '2096-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(903, 0x36366331356233352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2096', '2096-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(904, 0x36366331623736372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2096', '2096-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(905, 0x36366331656133392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2096', '2096-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(906, 0x36366332323337382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2096', '2096-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(907, 0x36366332353764632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2096', '2096-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(908, 0x36366332386637302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2096', '2096-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(909, 0x36366332636362322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2096', '2096-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(910, 0x36366333323365302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2096', '2096-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(911, 0x36366333356530612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2096', '2097-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(912, 0x36366333613130622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2097', '2097-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(913, 0x36366333646665392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2097', '2097-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(914, 0x36366334313630382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2097', '2097-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(915, 0x36366334346335362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2097', '2097-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(916, 0x36366334386162322d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2097', '2097-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(917, 0x36366334633036362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2097', '2097-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(918, 0x36366334663938632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2097', '2097-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(919, 0x36366335326639632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2097', '2097-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(920, 0x36366335383739342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2097', '2097-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(921, 0x36366335633564332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2097', '2097-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(922, 0x36366336303936342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2097', '2097-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(923, 0x36366336343464342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2097', '2098-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(924, 0x36366336376263342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2098', '2098-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(925, 0x36366336623139612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2098', '2098-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(926, 0x36366336656231642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2098', '2098-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(927, 0x36366337323065332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2098', '2098-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(928, 0x36366337353764662d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2098', '2098-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(929, 0x36366337393466652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2098', '2098-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(930, 0x36366337636532382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2098', '2098-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(931, 0x36366338323838642d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2098', '2098-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(932, 0x36366338363533622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2098', '2098-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(933, 0x36366338396464382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2098', '2098-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(934, 0x36366338643561652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2098', '2098-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(935, 0x36366339313265362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2098', '2099-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(936, 0x36366339346339392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2099', '2099-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(937, 0x36366339383630352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2099', '2099-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(938, 0x36366339636438392d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2099', '2099-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(939, 0x36366361303166372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2099', '2099-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(940, 0x36366361333739362d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2099', '2099-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(941, 0x36366361386534332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2099', '2099-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53');
INSERT INTO `invoices` (`id`, `cod`, `value`, `operation`, `category`, `wallet`, `reference_date`, `due_date`, `contract`, `property`, `lessor`, `note`, `fixed`, `recurrent`, `status_comission`, `status`, `account_id`, `created_at`, `updated_at`) VALUES
(942, 0x36366361636431302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2099', '2099-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(943, 0x36366361666437632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2099', '2099-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(944, 0x36366362333331622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2099', '2099-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(945, 0x36366362366133372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2099', '2099-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(946, 0x36366362613335652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2099', '2099-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(947, 0x36366362643936352d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2099', '2100-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(948, 0x36366363323264342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2100', '2100-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(949, 0x36366363356235652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '02/2100', '2100-03-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(950, 0x36366363393165632d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '03/2100', '2100-04-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(951, 0x36366363633763332d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '04/2100', '2100-05-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(952, 0x36366364313433382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '05/2100', '2100-06-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(953, 0x36366364353433622d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '06/2100', '2100-07-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(954, 0x36366364386362652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '07/2100', '2100-08-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(955, 0x36366364633861652d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '08/2100', '2100-09-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(956, 0x36366364666662372d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '09/2100', '2100-10-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(957, 0x36366365333566302d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '10/2100', '2100-11-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(958, 0x36366365366264382d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '11/2100', '2100-12-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(959, 0x36366365613366342d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '12/2100', '2101-01-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53'),
(960, 0x36366365646132612d383035332d313165622d383961662d356363643562623862373938, '1320.00', 1, 1, 1, '01/2101', '2101-02-05', 4, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2021-03-08 21:15:27', '2021-03-27 21:00:53');

-- --------------------------------------------------------

--
-- Estrutura da tabela `levels`
--

CREATE TABLE `levels` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `client_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `levels`
--

INSERT INTO `levels` (`id`, `description`, `client_id`, `status`) VALUES
(1, 'admin', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `log`
--

INSERT INTO `log` (`id`, `account_id`, `user`, `ip`, `description`, `created_at`, `updated_at`) VALUES
(111, 1, 1, '::1', 'Inclusão do usuário Francisco Araujo Filho', '2020-09-01 02:27:35', '2020-09-01 02:27:35'),
(112, 1, 1, '::1', 'Alteração do usuário Francisco Araujo Filho', '2020-09-01 02:52:21', '2020-09-01 02:52:21'),
(113, 1, 1, '::1', 'Alteração do usuário Francisco Araujo Filho', '2020-09-02 17:41:44', '2020-09-02 17:41:44'),
(114, 1, 1, '::1', 'Alteração do usuário Francisco Araujo Filho', '2020-09-02 17:43:15', '2020-09-02 17:43:15'),
(115, 1, 1, '::1', 'Alteração do usuário Francisco Araujo Filho', '2020-09-02 20:24:12', '2020-09-02 20:24:12'),
(116, 1, 2, '::1', 'Alteração do usuário Francisco Araujo Filho', '2020-09-02 20:27:37', '2020-09-02 20:27:37'),
(117, 1, 2, '::1', 'Alteração do usuário Francisco Araujo Filho', '2020-09-02 20:28:37', '2020-09-02 20:28:37'),
(118, 1, 2, '::1', 'Alteração do usuário Francisco Araujo Filho', '2020-09-02 20:52:07', '2020-09-02 20:52:07'),
(119, 1, 2, '::1', 'Alteração do usuário Francisco Araujo Filho', '2020-09-02 20:52:30', '2020-09-02 20:52:30'),
(120, 1, 1, '::1', 'UsuárioLuiz Felipe Azevedo logou no sistema', '2020-09-02 22:59:29', '2020-09-02 22:59:29'),
(121, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-09-02 23:02:04', '2020-09-02 23:02:04'),
(122, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-09-02 23:02:13', '2020-09-02 23:02:13'),
(123, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-09-03 16:25:46', '2020-09-03 16:25:46'),
(124, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-09-29 15:37:47', '2020-09-29 15:37:47'),
(125, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-09-29 18:39:13', '2020-09-29 18:39:13'),
(126, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-09-30 21:38:38', '2020-09-30 21:38:38'),
(127, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-09-30 21:38:56', '2020-09-30 21:38:56'),
(128, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-09-30 23:30:45', '2020-09-30 23:30:45'),
(129, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-09-30 23:30:56', '2020-09-30 23:30:56'),
(130, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-09-30 23:36:52', '2020-09-30 23:36:52'),
(131, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-09-30 23:36:58', '2020-09-30 23:36:58'),
(132, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-09-30 23:44:32', '2020-09-30 23:44:32'),
(133, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-09-30 23:44:42', '2020-09-30 23:44:42'),
(134, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-09-30 23:45:19', '2020-09-30 23:45:19'),
(135, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-09-30 23:45:24', '2020-09-30 23:45:24'),
(136, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-09-30 23:46:19', '2020-09-30 23:46:19'),
(137, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-09-30 23:46:24', '2020-09-30 23:46:24'),
(138, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-09-30 23:47:23', '2020-09-30 23:47:23'),
(139, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-09-30 23:47:28', '2020-09-30 23:47:28'),
(140, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-09-30 23:48:10', '2020-09-30 23:48:10'),
(141, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-09-30 23:48:15', '2020-09-30 23:48:15'),
(142, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-09-30 23:48:43', '2020-09-30 23:48:43'),
(143, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-09-30 23:48:48', '2020-09-30 23:48:48'),
(144, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-09-30 23:53:52', '2020-09-30 23:53:52'),
(145, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-09-30 23:53:57', '2020-09-30 23:53:57'),
(146, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-09-30 23:54:44', '2020-09-30 23:54:44'),
(147, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-09-30 23:54:51', '2020-09-30 23:54:51'),
(148, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-09-30 23:55:12', '2020-09-30 23:55:12'),
(149, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-09-30 23:55:22', '2020-09-30 23:55:22'),
(150, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-09-30 23:56:00', '2020-09-30 23:56:00'),
(151, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-09-30 23:56:05', '2020-09-30 23:56:05'),
(152, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-09-30 23:56:29', '2020-09-30 23:56:29'),
(153, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-09-30 23:56:34', '2020-09-30 23:56:34'),
(154, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-09-30 23:57:31', '2020-09-30 23:57:31'),
(155, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-09-30 23:57:38', '2020-09-30 23:57:38'),
(156, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-09-30 23:59:05', '2020-09-30 23:59:05'),
(157, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-09-30 23:59:09', '2020-09-30 23:59:09'),
(158, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-09-30 23:59:48', '2020-09-30 23:59:48'),
(159, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-09-30 23:59:56', '2020-09-30 23:59:56'),
(160, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-10-01 00:01:19', '2020-10-01 00:01:19'),
(161, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-10-01 00:01:23', '2020-10-01 00:01:23'),
(162, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-10-01 00:02:49', '2020-10-01 00:02:49'),
(163, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-10-01 00:02:54', '2020-10-01 00:02:54'),
(164, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-10-01 00:15:44', '2020-10-01 00:15:44'),
(165, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-10-01 00:15:49', '2020-10-01 00:15:49'),
(166, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-10-01 00:18:53', '2020-10-01 00:18:53'),
(167, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-10-01 00:18:58', '2020-10-01 00:18:58'),
(168, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-10-01 02:16:49', '2020-10-01 02:16:49'),
(169, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-10-01 02:17:10', '2020-10-01 02:17:10'),
(170, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-10-01 15:28:08', '2020-10-01 15:28:08'),
(171, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-10-01 15:28:13', '2020-10-01 15:28:13'),
(172, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-10-01 15:30:20', '2020-10-01 15:30:20'),
(173, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-10-01 15:30:28', '2020-10-01 15:30:28'),
(174, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-10-01 15:31:44', '2020-10-01 15:31:44'),
(175, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-10-04 15:43:02', '2020-10-04 15:43:02'),
(176, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-10-04 15:43:33', '2020-10-04 15:43:33'),
(177, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-10-07 23:32:46', '2020-10-07 23:32:46'),
(178, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-10-08 20:23:23', '2020-10-08 20:23:23'),
(179, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-10-08 20:23:49', '2020-10-08 20:23:49'),
(180, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-10-08 21:45:58', '2020-10-08 21:45:58'),
(181, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-10-13 13:36:43', '2020-10-13 13:36:43'),
(182, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-10-15 14:32:44', '2020-10-15 14:32:44'),
(183, 1, 1, '::1', 'Inclusão do usuário Luiz Felipe', '2020-10-17 02:57:35', '2020-10-17 02:57:35'),
(184, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-10-19 13:02:36', '2020-10-19 13:02:36'),
(185, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-10-19 13:02:54', '2020-10-19 13:02:54'),
(186, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-10-19 13:03:13', '2020-10-19 13:03:13'),
(187, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-10-19 13:23:58', '2020-10-19 13:23:58'),
(188, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-10-19 13:30:43', '2020-10-19 13:30:43'),
(189, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-10-19 13:37:11', '2020-10-19 13:37:11'),
(190, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-10-19 13:37:23', '2020-10-19 13:37:23'),
(191, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-10-19 13:40:18', '2020-10-19 13:40:18'),
(192, 1, 1, '::1', 'Alteração do usuário Luiz Felipe Azevedo', '2020-10-19 13:40:32', '2020-10-19 13:40:32'),
(193, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-10-19 13:40:32', '2020-10-19 13:40:32'),
(194, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-10-19 13:49:50', '2020-10-19 13:49:50'),
(195, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-10-19 13:50:37', '2020-10-19 13:50:37'),
(196, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo saiu do sistema', '2020-10-19 13:51:39', '2020-10-19 13:51:39'),
(197, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-10-19 13:51:50', '2020-10-19 13:51:50'),
(198, 1, 1, '::1', 'Inclusão do usuário Fulano  De Tal', '2020-10-20 15:14:10', '2020-10-20 15:14:10'),
(199, 1, 1, '::1', 'Exclusão do usuário Fulano  De Tal', '2020-10-20 15:16:19', '2020-10-20 15:16:19'),
(200, 1, 1, '::1', 'Exclusão do usuário Fulano  De Tal', '2020-10-20 15:28:47', '2020-10-20 15:28:47'),
(201, 1, 1, '::1', 'Exclusão do usuário Fulano  De Tal', '2020-10-20 15:30:32', '2020-10-20 15:30:32'),
(202, 1, 1, '::1', 'Exclusão do usuário Fulano  De Tal', '2020-10-21 13:46:48', '2020-10-21 13:46:48'),
(203, 1, 1, '::1', 'Exclusão do usuário Fulano  De Tal', '2020-10-21 13:48:10', '2020-10-21 13:48:10'),
(204, 1, 1, '::1', 'Exclusão do usuário Fulano  De Tal', '2020-10-21 13:49:53', '2020-10-21 13:49:53'),
(205, 1, 1, '::1', 'Exclusão do usuário Fulano  De Tal', '2020-10-21 13:52:34', '2020-10-21 13:52:34'),
(206, 1, 1, '::1', 'Exclusão do usuário Fulano  De Tal', '2020-10-21 13:54:10', '2020-10-21 13:54:10'),
(207, 1, 1, '::1', 'Exclusão do usuário Fulano  De Tal', '2020-10-21 13:57:16', '2020-10-21 13:57:16'),
(208, 1, 1, '::1', 'Exclusão do usuário Fulano  De Tal', '2020-10-21 14:11:18', '2020-10-21 14:11:18'),
(209, 1, 1, '::1', 'Exclusão do usuário Fulano  De Tal', '2020-10-21 14:14:13', '2020-10-21 14:14:13'),
(210, 1, 1, '::1', 'Exclusão do usuário Fulano  De Tal', '2020-10-21 17:34:50', '2020-10-21 17:34:50'),
(211, 1, 1, '::1', 'Exclusão do usuário Fulano  De Tal', '2020-10-21 17:40:07', '2020-10-21 17:40:07'),
(212, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo fez login no sistema', '2020-10-22 00:45:07', '2020-10-22 00:45:07'),
(213, 1, 1, '::1', 'Alteração do usuário Luiz Felipe Azevedo', '2020-10-22 01:53:44', '2020-10-22 01:53:44'),
(214, 1, 1, '::1', 'Alteração do usuário Luiz Felipe Azevedo', '2020-10-22 01:54:40', '2020-10-22 01:54:40'),
(215, 1, 1, '::1', 'Alteração do usuário Luiz Felipe Azevedo', '2020-10-22 01:57:58', '2020-10-22 01:57:58'),
(216, 1, 1, '::1', 'Alteração do usuário Luiz Felipe Azevedo Bello', '2020-10-22 01:58:17', '2020-10-22 01:58:17'),
(217, 1, 1, '::1', 'Alteração do usuário Luiz Felipe Azevedo Bello', '2020-10-22 02:01:13', '2020-10-22 02:01:13'),
(218, 1, 1, '::1', 'Alteração do usuário Luiz Felipe Azevedo Bello', '2020-10-22 02:01:50', '2020-10-22 02:01:50'),
(219, 1, 1, '::1', 'Alteração do usuário Luiz Felipe Azevedo Bello', '2020-10-22 02:07:30', '2020-10-22 02:07:30'),
(220, 1, 1, '::1', 'Inclusão do usuário Teste Foto', '2020-10-22 02:10:17', '2020-10-22 02:10:17'),
(221, 1, 1, '::1', 'Alteração do usuário Luiz Felipe Azevedo Bello', '2020-10-22 02:21:03', '2020-10-22 02:21:03'),
(222, 1, 1, '::1', 'Alteração do usuário Luiz Felipe Azevedo Bello', '2020-10-22 02:49:03', '2020-10-22 02:49:03'),
(223, 1, 1, '::1', 'Inclusão do usuário Teste Imagem', '2020-10-22 02:57:14', '2020-10-22 02:57:14'),
(224, 1, 1, '::1', 'Alteração do usuário Luiz Felipe Azevedo Bello', '2020-10-22 02:59:10', '2020-10-22 02:59:10'),
(225, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello saiu do sistema', '2020-10-22 02:59:48', '2020-10-22 02:59:48'),
(226, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2020-10-22 03:00:41', '2020-10-22 03:00:41'),
(227, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2020-10-26 02:00:25', '2020-10-26 02:00:25'),
(228, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2020-10-28 13:02:01', '2020-10-28 13:02:01'),
(229, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2020-10-28 18:06:10', '2020-10-28 18:06:10'),
(230, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2020-10-29 13:23:12', '2020-10-29 13:23:12'),
(231, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2020-11-03 13:29:16', '2020-11-03 13:29:16'),
(232, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2020-11-10 12:39:24', '2020-11-10 12:39:24'),
(233, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2020-11-14 13:35:55', '2020-11-14 13:35:55'),
(234, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2020-11-17 12:27:01', '2020-11-17 12:27:01'),
(235, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2020-12-01 12:38:04', '2020-12-01 12:38:04'),
(236, 1, 1, '::1', 'Inclusão do cliente Luiz Felipe Azevedo', '2020-12-02 15:21:23', '2020-12-02 15:21:23'),
(237, 1, 1, '::1', 'Inclusão do cliente Luiz Felipe Azevedo', '2020-12-02 15:23:08', '2020-12-02 15:23:08'),
(238, 1, 1, '::1', 'Inclusão do cliente  ', '2020-12-03 01:39:04', '2020-12-03 01:39:04'),
(239, 1, 1, '::1', 'Inclusão do cliente  ', '2020-12-03 01:46:33', '2020-12-03 01:46:33'),
(240, 1, 1, '::1', 'Inclusão do cliente  ', '2020-12-03 02:02:20', '2020-12-03 02:02:20'),
(241, 1, 1, '::1', 'Inclusão do cliente a&#38;gsoftware', '2020-12-03 03:38:45', '2020-12-03 03:38:45'),
(242, 1, 1, '::1', 'Inclusão do cliente Aguinaldo Dos Santos', '2020-12-03 19:45:43', '2020-12-03 19:45:43'),
(243, 1, 1, '::1', 'Inclusão do cliente Okotech', '2020-12-06 20:41:28', '2020-12-06 20:41:28'),
(244, 1, 1, '::1', 'Inclusão do cliente Astolfo Da Silva', '2020-12-09 18:23:04', '2020-12-09 18:23:04'),
(245, 1, 1, '::1', 'Inclusão do cliente Priscilla Alcântara', '2020-12-09 18:25:56', '2020-12-09 18:25:56'),
(246, 1, 1, '::1', 'Inclusão do cliente Barbara Figueiredo', '2020-12-09 18:26:50', '2020-12-09 18:26:50'),
(247, 1, 1, '::1', 'Inclusão do cliente Diego Albuquerque', '2020-12-09 18:28:44', '2020-12-09 18:28:44'),
(248, 1, 1, '::1', 'Inclusão do cliente Antonio Augusto Machado', '2020-12-09 18:30:09', '2020-12-09 18:30:09'),
(249, 1, 1, '::1', 'Inclusão do cliente Bolos&#38;CIA', '2020-12-09 18:31:45', '2020-12-09 18:31:45'),
(250, 1, 1, '::1', 'Inclusão do cliente Fernando Souza', '2020-12-09 18:33:36', '2020-12-09 18:33:36'),
(251, 1, 1, '::1', 'Inclusão do cliente Luiz Felipe Completo', '2020-12-09 21:20:23', '2020-12-09 21:20:23'),
(252, 1, 1, '::1', 'Inclusão do cliente TesteRepresentanteCIA', '2020-12-10 20:54:06', '2020-12-10 20:54:06'),
(253, 1, 1, '::1', 'Inclusão do cliente Teste  Pix', '2020-12-10 22:12:27', '2020-12-10 22:12:27'),
(254, 1, 1, '::1', 'Inclusão do cliente Teste Pix', '2020-12-10 22:14:18', '2020-12-10 22:14:18'),
(255, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2020-12-13 22:10:05', '2020-12-13 22:10:05'),
(256, 1, 1, '::1', 'Exclusão do cliente a&#38;gsoftware', '2020-12-14 01:55:16', '2020-12-14 01:55:16'),
(257, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2020-12-14 16:24:07', '2020-12-14 16:24:07'),
(258, 1, 1, '::1', 'Exclusão do cliente a&#38;gsoftware', '2020-12-14 19:32:33', '2020-12-14 19:32:33'),
(259, 1, 1, '::1', 'Alteração do cliente a&#38;gsoftware', '2020-12-14 20:11:56', '2020-12-14 20:11:56'),
(260, 1, 1, '::1', 'Alteração do cliente a&#38;gsoftware', '2020-12-14 20:13:42', '2020-12-14 20:13:42'),
(261, 1, 1, '::1', 'Alteração do cliente a&#38;gsoftware', '2020-12-14 20:27:20', '2020-12-14 20:27:20'),
(262, 1, 1, '::1', 'Bloqueio do cliente a&#38;gsoftware', '2020-12-14 20:31:08', '2020-12-14 20:31:08'),
(263, 1, 1, '::1', 'Alteração do cliente a&#38;gsoftware', '2020-12-14 20:39:46', '2020-12-14 20:39:46'),
(264, 1, 1, '::1', 'Alteração do cliente a&#38;gsoftware', '2020-12-14 20:40:57', '2020-12-14 20:40:57'),
(265, 1, 1, '::1', 'Alteração do cliente a&#38;gsoftware', '2020-12-14 20:41:35', '2020-12-14 20:41:35'),
(266, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2020-12-16 13:33:13', '2020-12-16 13:33:13'),
(267, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2020-12-17 15:28:02', '2020-12-17 15:28:02'),
(268, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2020-12-18 13:06:48', '2020-12-18 13:06:48'),
(269, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2020-12-20 16:41:39', '2020-12-20 16:41:39'),
(270, 1, 1, '::1', 'Alteração do cliente a&#38;gsoftware', '2020-12-20 18:09:25', '2020-12-20 18:09:25'),
(271, 1, 1, '::1', 'Alteração do cliente a&#38;gsoftware', '2020-12-20 18:13:43', '2020-12-20 18:13:43'),
(272, 1, 1, '::1', 'Inclusão do imóvel Rua Dionísio Fernandes 297 apto 406 bloco 1 Engenho de Dentro', '2020-12-21 19:56:10', '2020-12-21 19:56:10'),
(273, 1, 1, '::1', 'Inclusão do imóvel Rua Dionísio Fernandes 297 apto 406 bloco 1 Engenho de Dentro', '2020-12-21 19:57:47', '2020-12-21 19:57:47'),
(274, 1, 1, '::1', 'Inclusão do imóvel Rua Dionísio Fernandes 297 apto 406 bloco 1 Engenho de Dentro', '2020-12-21 19:58:18', '2020-12-21 19:58:18'),
(275, 1, 1, '::1', 'Inclusão do imóvel Rua Dionísio Fernandes 297 apto 406 bloco 1 Engenho de Dentro', '2020-12-21 20:01:35', '2020-12-21 20:01:35'),
(276, 1, 1, '::1', 'Inclusão do imóvel Rua Dionísio Fernandes 297 apto 406 bloco 1 Engenho de Dentro', '2020-12-21 20:07:21', '2020-12-21 20:07:21'),
(277, 1, 1, '::1', 'Inclusão do imóvel Rua Dionísio Fernandes 297  Engenho de Dentro', '2020-12-21 20:10:08', '2020-12-21 20:10:08'),
(278, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2020-12-22 13:49:32', '2020-12-22 13:49:32'),
(279, 1, 1, '::1', 'Exclusão do imóvel Rua Dionísio Fernandes 297  Engenho de Dentro', '2020-12-22 15:08:05', '2020-12-22 15:08:05'),
(280, 1, 1, '::1', 'Inclusão do imóvel Rua Dionísio Fernandes 297 apto 504 bloco 2 Engenho de Dentro', '2020-12-22 18:07:51', '2020-12-22 18:07:51'),
(281, 1, 1, '::1', 'Alteração do usuário Fulano  De Tal', '2020-12-23 02:05:15', '2020-12-23 02:05:15'),
(282, 1, 1, '::1', 'Alteração do usuário Fulano  De Tal', '2020-12-23 02:10:49', '2020-12-23 02:10:49'),
(283, 1, 1, '::1', 'Alteração do usuário Fulano  De Tal', '2020-12-23 02:10:56', '2020-12-23 02:10:56'),
(284, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2020-12-23 14:13:48', '2020-12-23 14:13:48'),
(285, 1, 1, '::1', 'Inclusão do imóvel Rua Dionísio Fernandes 297 apto 204 bloco 2 Engenho de Dentro', '2020-12-23 20:12:04', '2020-12-23 20:12:04'),
(286, 1, 1, '::1', 'Inclusão do imóvel Rua Dionísio Fernandes 297 apto 102 bloco 1 Engenho de Dentro', '2020-12-23 20:37:56', '2020-12-23 20:37:56'),
(287, 1, 1, '::1', 'Inclusão do imóvel Rua Dionísio Fernandes 455  Engenho de Dentro', '2020-12-23 20:40:45', '2020-12-23 20:40:45'),
(288, 1, 1, '::1', 'Exclusão do imóvel Rua Dionísio Fernandes 297 apto 102 bloco 1 Engenho de Dentro', '2020-12-24 13:56:37', '2020-12-24 13:56:37'),
(289, 1, 1, '::1', 'Exclusão do imóvel Rua Dionísio Fernandes 297 apto 102 bloco 1 Engenho de Dentro', '2020-12-24 14:12:19', '2020-12-24 14:12:19'),
(290, 1, 1, '::1', 'Exclusão do imóvel Rua Dionísio Fernandes 297 apto 102 bloco 1 Engenho de Dentro', '2020-12-24 14:13:25', '2020-12-24 14:13:25'),
(291, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 102 bloco 1 Engenho de Dentro', '2020-12-24 14:20:01', '2020-12-24 14:20:01'),
(292, 1, 1, '::1', 'Exclusão do imóvel Rua Dionísio Fernandes 297 apto 102 bloco 1 Engenho de Dentro', '2020-12-24 14:20:01', '2020-12-24 14:20:01'),
(293, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 102 bloco 1 Engenho de Dentro', '2020-12-24 14:20:53', '2020-12-24 14:20:53'),
(294, 1, 1, '::1', 'Exclusão do imóvel Rua Dionísio Fernandes 297 apto 102 bloco 1 Engenho de Dentro', '2020-12-24 14:20:53', '2020-12-24 14:20:53'),
(295, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 102 bloco 1 Engenho de Dentro', '2020-12-24 14:27:06', '2020-12-24 14:27:06'),
(296, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 102 bloco 1 Engenho de Dentro', '2020-12-24 14:27:33', '2020-12-24 14:27:33'),
(297, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 102 bloco 1 Engenho de Dentro', '2020-12-24 14:29:02', '2020-12-24 14:29:02'),
(298, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 102 bloco 1 Engenho de Dentro', '2020-12-24 14:30:32', '2020-12-24 14:30:32'),
(299, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 102 bloco 1 Engenho de Dentro', '2020-12-24 14:31:33', '2020-12-24 14:31:33'),
(300, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 102 bloco 1 Engenho de Dentro', '2020-12-24 14:38:18', '2020-12-24 14:38:18'),
(301, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 204 bloco 2 Engenho de Dentro', '2020-12-24 15:16:44', '2020-12-24 15:16:44'),
(302, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 204 bloco 2 Engenho de Dentro', '2020-12-24 16:31:49', '2020-12-24 16:31:49'),
(303, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 204 bloco 2 Engenho de Dentro', '2020-12-24 16:32:51', '2020-12-24 16:32:51'),
(304, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 204 bloco 2 Engenho de Dentro', '2020-12-24 17:24:46', '2020-12-24 17:24:46'),
(305, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 204 bloco 2 Engenho de Dentro', '2020-12-24 17:25:32', '2020-12-24 17:25:32'),
(306, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 204 bloco 2 Engenho de Dentro', '2020-12-24 17:30:25', '2020-12-24 17:30:25'),
(307, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 204 bloco 2 Engenho de Dentro', '2020-12-24 17:31:14', '2020-12-24 17:31:14'),
(308, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 204 bloco 2 Engenho de Dentro', '2020-12-24 17:31:22', '2020-12-24 17:31:22'),
(309, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 204 bloco 2 Engenho de Dentro', '2020-12-24 17:31:49', '2020-12-24 17:31:49'),
(310, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 204 bloco 2 Engenho de Dentro', '2020-12-24 17:32:46', '2020-12-24 17:32:46'),
(311, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 204 bloco 2 Engenho de Dentro', '2020-12-24 17:36:14', '2020-12-24 17:36:14'),
(312, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 204 bloco 2 Engenho de Dentro', '2020-12-24 17:38:54', '2020-12-24 17:38:54'),
(313, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2020-12-27 13:21:56', '2020-12-27 13:21:56'),
(314, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 102 bloco 1 Engenho de Dentro', '2020-12-27 13:29:08', '2020-12-27 13:29:08'),
(315, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 102 bloco 1 Engenho de Dentro', '2020-12-27 13:34:25', '2020-12-27 13:34:25'),
(316, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 102 bloco 1 Engenho de Dentro', '2020-12-27 13:38:11', '2020-12-27 13:38:11'),
(317, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 102 bloco 1 Engenho de Dentro', '2020-12-27 13:44:42', '2020-12-27 13:44:42'),
(318, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 102 bloco 1 Engenho de Dentro', '2020-12-27 13:45:32', '2020-12-27 13:45:32'),
(319, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 102 bloco 1 Engenho de Dentro', '2020-12-27 13:45:59', '2020-12-27 13:45:59'),
(320, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 102 bloco 1 Engenho de Dentro', '2020-12-27 13:47:24', '2020-12-27 13:47:24'),
(321, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 102 bloco 1 Engenho de Dentro', '2020-12-27 13:48:22', '2020-12-27 13:48:22'),
(322, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 102 bloco 1 Engenho de Dentro', '2020-12-27 13:49:00', '2020-12-27 13:49:00'),
(323, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 102 bloco 1 Engenho de Dentro', '2020-12-27 14:01:09', '2020-12-27 14:01:09'),
(324, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 102 bloco 1 Engenho de Dentro', '2020-12-27 14:02:11', '2020-12-27 14:02:11'),
(325, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 102 bloco 1 Engenho de Dentro', '2020-12-27 14:03:41', '2020-12-27 14:03:41'),
(326, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 102 bloco 1 Engenho de Dentro', '2020-12-27 14:03:53', '2020-12-27 14:03:53'),
(327, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 102 bloco 1 Engenho de Dentro', '2020-12-27 14:04:35', '2020-12-27 14:04:35'),
(328, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 102 bloco 1 Engenho de Dentro', '2020-12-27 14:13:17', '2020-12-27 14:13:17'),
(329, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 102 bloco 1 Engenho de Dentro', '2020-12-27 14:17:34', '2020-12-27 14:17:34'),
(330, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 406 bloco 1 Engenho de Dentro', '2020-12-27 14:30:55', '2020-12-27 14:30:55'),
(331, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 406 bloco 1 Engenho de Dentro', '2020-12-27 14:32:46', '2020-12-27 14:32:46'),
(332, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 406 bloco 1 Engenho de Dentro', '2020-12-27 14:36:01', '2020-12-27 14:36:01'),
(333, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 406 bloco 1 Engenho de Dentro', '2020-12-27 14:36:50', '2020-12-27 14:36:50'),
(334, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 406 bloco 1 Engenho de Dentro', '2020-12-27 14:38:37', '2020-12-27 14:38:37'),
(335, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 406 bloco 1 Engenho de Dentro', '2020-12-27 14:39:12', '2020-12-27 14:39:12'),
(336, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2020-12-28 14:13:38', '2020-12-28 14:13:38'),
(337, 1, 1, '::1', 'Inclusão do Rateio 45', '2020-12-30 01:40:40', '2020-12-30 01:40:40'),
(338, 1, 1, '::1', 'Inclusão do Rateio 45', '2020-12-30 01:40:40', '2020-12-30 01:40:40'),
(339, 1, 1, '::1', 'Inclusão do Rateio Rateio de Bombeiro 45', '2020-12-30 01:57:46', '2020-12-30 01:57:46'),
(340, 1, 1, '::1', 'Inclusão do Rateio Rateio de Gás 45', '2020-12-30 01:57:46', '2020-12-30 01:57:46'),
(341, 1, 1, '::1', 'Inclusão do Rateio Rateio de Bombeiro 45', '2020-12-30 01:57:46', '2020-12-30 01:57:46'),
(342, 1, 1, '::1', 'Inclusão do Rateio Rateio de Gás 45', '2020-12-30 01:57:46', '2020-12-30 01:57:46'),
(343, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2020-12-30 14:36:59', '2020-12-30 14:36:59'),
(344, 1, 1, '::1', 'Inclusão do Rateio Rateio de Bombeiro 12345', '2020-12-30 19:34:56', '2020-12-30 19:34:56'),
(345, 1, 1, '::1', 'Inclusão do Rateio Rateio de Bombeiro 12345', '2020-12-30 19:34:56', '2020-12-30 19:34:56'),
(346, 1, 1, '::1', 'Inclusão do Rateio Rateio de Bombeiro 12345', '2020-12-30 19:34:56', '2020-12-30 19:34:56'),
(347, 1, 1, '::1', 'Alteração do Rateio Rateio de Bombeiro 12345', '2020-12-31 01:47:00', '2020-12-31 01:47:00'),
(348, 1, 1, '::1', 'Exclusão do Rateio Rateio de Bombeiro 12345', '2020-12-31 01:47:00', '2020-12-31 01:47:00'),
(349, 1, 1, '::1', 'Alteração do Rateio Rateio de Bombeiro 12345', '2020-12-31 01:47:00', '2020-12-31 01:47:00'),
(350, 1, 1, '::1', 'Exclusão do Rateio Rateio de Bombeiro 12345', '2020-12-31 01:47:00', '2020-12-31 01:47:00'),
(351, 1, 1, '::1', 'Alteração do Rateio Rateio de Bombeiro 12345', '2020-12-31 01:47:00', '2020-12-31 01:47:00'),
(352, 1, 1, '::1', 'Exclusão do Rateio Rateio de Bombeiro 12345', '2020-12-31 01:47:00', '2020-12-31 01:47:00'),
(353, 1, 1, '::1', 'Alteração do Rateio Rateio de Gás 45', '2020-12-31 02:29:28', '2020-12-31 02:29:28'),
(354, 1, 1, '::1', 'Alteração do Rateio Rateio de Gás 45', '2020-12-31 02:29:28', '2020-12-31 02:29:28'),
(355, 1, 1, '::1', 'Alteração do Rateio Rateio de Gás 45', '2020-12-31 02:49:26', '2020-12-31 02:49:26'),
(356, 1, 1, '::1', 'Alteração do Rateio Rateio de Gás 45', '2020-12-31 02:49:26', '2020-12-31 02:49:26'),
(357, 1, 1, '::1', 'Alteração do Rateio Rateio de Gás 45', '2020-12-31 02:52:39', '2020-12-31 02:52:39'),
(358, 1, 1, '::1', 'Alteração do Rateio Rateio de Gás 45', '2020-12-31 02:52:39', '2020-12-31 02:52:39'),
(359, 1, 1, '::1', 'Alteração do Rateio Rateio de Gás 45', '2020-12-31 02:53:40', '2020-12-31 02:53:40'),
(360, 1, 1, '::1', 'Alteração do Rateio Rateio de Gás 45', '2020-12-31 02:53:40', '2020-12-31 02:53:40'),
(361, 1, 1, '::1', 'Alteração do Rateio Rateio de Gás 45', '2020-12-31 02:55:17', '2020-12-31 02:55:17'),
(362, 1, 1, '::1', 'Alteração do Rateio Rateio de Gás 45', '2020-12-31 02:55:17', '2020-12-31 02:55:17'),
(363, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2020-12-31 15:21:46', '2020-12-31 15:21:46'),
(364, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-01-02 15:14:07', '2021-01-02 15:14:07'),
(365, 1, 1, '::1', 'Inclusão do Histórico de imóvel Rua Dionísio Fernandes 297 apto 406 bloco 1 Engenho de Dentro', '2021-01-02 17:38:58', '2021-01-02 17:38:58'),
(366, 1, 1, '::1', 'Inclusão do Histórico de imóvel Rua Dionísio Fernandes 297  Engenho de Dentro', '2021-01-02 17:39:30', '2021-01-02 17:39:30'),
(367, 1, 1, '::1', 'Inclusão do Histórico de imóvel Rua Dionísio Fernandes 297 apto 102 bloco 1 Engenho de Dentro', '2021-01-02 17:43:36', '2021-01-02 17:43:36'),
(368, 1, 1, '::1', 'Inclusão do Histórico de imóvel Rua Dionísio Fernandes 297 apto 406 bloco 1 Engenho de Dentro', '2021-01-03 00:01:39', '2021-01-03 00:01:39'),
(369, 1, 1, '::1', 'Inclusão do Histórico de imóvel Rua Dionísio Fernandes 297 apto 102 bloco 1 Engenho de Dentro', '2021-01-03 00:04:06', '2021-01-03 00:04:06'),
(370, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-01-03 15:51:40', '2021-01-03 15:51:40'),
(371, 1, 1, '::1', 'Exclusão do Histórico de imóvel Rua Dionísio Fernandes 297 apto 102 bloco 1 Engenho de Dentro', '2021-01-03 21:29:57', '2021-01-03 21:29:57'),
(372, 1, 1, '::1', 'Alteração do Histórico de imóvel Rua Dionísio Fernandes 297 apto 102 bloco 1 Engenho de Dentro', '2021-01-03 21:52:40', '2021-01-03 21:52:40'),
(373, 1, 1, '::1', 'Exclusão do imóvel Rua Dionísio Fernandes 297 apto 406 bloco 1 Engenho de Dentro', '2021-01-03 22:12:41', '2021-01-03 22:12:41'),
(374, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto 406 bloco 1 Engenho de Dentro', '2021-01-03 22:35:50', '2021-01-03 22:35:50'),
(375, 1, 1, '::1', 'Exclusão do imóvel Rua Dionísio Fernandes 297 apto 406 bloco 1 Engenho de Dentro', '2021-01-03 22:45:14', '2021-01-03 22:45:14'),
(376, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-01-05 14:30:17', '2021-01-05 14:30:17'),
(377, 1, 1, '::1', 'Inclusão do imóvel Rua Dionísio Fernandes 297 apto procurador Engenho de Dentro', '2021-01-06 20:09:10', '2021-01-06 20:09:10'),
(378, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto procurador Engenho de Dentro', '2021-01-07 00:07:50', '2021-01-07 00:07:50'),
(379, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto procurador Engenho de Dentro', '2021-01-07 00:09:55', '2021-01-07 00:09:55'),
(380, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto procurador Engenho de Dentro', '2021-01-07 00:11:12', '2021-01-07 00:11:12'),
(381, 1, 1, '::1', 'Inclusão do imóvel Rua Dionísio Fernandes 297 procurador 2 Engenho de Dentro', '2021-01-07 00:14:27', '2021-01-07 00:14:27'),
(382, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-01-11 11:51:00', '2021-01-11 11:51:00'),
(383, 1, 1, '::1', 'Alteração do imóvel Rua Dionísio Fernandes 297 apto procurador Engenho de Dentro', '2021-01-11 13:45:34', '2021-01-11 13:45:34'),
(384, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello saiu do sistema', '2021-01-11 15:50:25', '2021-01-11 15:50:25'),
(385, 1, 12, '::1', 'Usuário Empresa LTDA fez login no sistema', '2021-01-11 15:51:01', '2021-01-11 15:51:01'),
(386, 2, 12, '::1', 'Usuário Empresa LTDA saiu do sistema', '2021-01-11 17:11:26', '2021-01-11 17:11:26'),
(387, 1, 5, '::1', 'Usuário A&G Software fez login no sistema', '2021-01-11 17:11:39', '2021-01-11 17:11:39'),
(388, 1, 5, '::1', 'Usuário A&G Software saiu do sistema', '2021-01-11 17:12:38', '2021-01-11 17:12:38'),
(389, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-01-11 17:12:53', '2021-01-11 17:12:53'),
(390, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-01-12 11:41:27', '2021-01-12 11:41:27'),
(391, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello saiu do sistema', '2021-01-12 13:55:25', '2021-01-12 13:55:25'),
(392, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-01-12 13:56:49', '2021-01-12 13:56:49'),
(393, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-02-02 15:33:17', '2021-02-02 15:33:17'),
(394, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-02-04 19:52:21', '2021-02-04 19:52:21'),
(395, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-02-05 13:21:05', '2021-02-05 13:21:05'),
(396, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-02-12 12:11:58', '2021-02-12 12:11:58'),
(397, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-02-16 19:00:44', '2021-02-16 19:00:44'),
(398, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-02-17 10:54:17', '2021-02-17 10:54:17'),
(399, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-02-18 12:30:45', '2021-02-18 12:30:45'),
(400, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-02-19 18:34:23', '2021-02-19 18:34:23'),
(401, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-02-22 13:11:47', '2021-02-22 13:11:47'),
(402, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello saiu do sistema', '2021-02-22 13:18:45', '2021-02-22 13:18:45'),
(403, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-02-22 13:18:58', '2021-02-22 13:18:58'),
(404, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-02-27 18:17:51', '2021-02-27 18:17:51'),
(405, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-02-27 23:25:07', '2021-02-27 23:25:07'),
(406, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-02-28 15:50:47', '2021-02-28 15:50:47'),
(407, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-03-03 13:35:56', '2021-03-03 13:35:56'),
(408, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-03-04 13:52:54', '2021-03-04 13:52:54'),
(409, 1, 1, '::1', 'Inclusão do Contrato1234', '2021-03-04 15:50:10', '2021-03-04 15:50:10'),
(410, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-03-05 14:43:28', '2021-03-05 14:43:28'),
(411, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-03-06 14:44:16', '2021-03-06 14:44:16'),
(412, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-03-07 15:58:30', '2021-03-07 15:58:30'),
(413, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-03-08 13:49:09', '2021-03-08 13:49:09'),
(414, 1, 1, '::1', 'Inclusão do Contratoaff5a3e4-8050-11eb-89af-5ccd5bb8b798', '2021-03-08 20:56:01', '2021-03-08 20:56:01'),
(415, 1, 1, '::1', 'Gerar aluguel do contrato3ebf6751-795e-11eb-a8f4-5ccd5bb8b798', '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(416, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-03-09 12:46:45', '2021-03-09 12:46:45'),
(417, 1, 1, '::1', 'Inclusão do Contrato4a3754e7-80ee-11eb-9af7-5ccd5bb8b798', '2021-03-09 15:44:10', '2021-03-09 15:44:10'),
(418, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-03-10 23:11:54', '2021-03-10 23:11:54'),
(419, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-03-11 15:30:43', '2021-03-11 15:30:43'),
(420, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-03-12 13:10:58', '2021-03-12 13:10:58'),
(421, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-03-20 15:38:02', '2021-03-20 15:38:02'),
(422, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-03-21 13:45:17', '2021-03-21 13:45:17'),
(423, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-03-22 14:18:47', '2021-03-22 14:18:47'),
(424, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-03-23 23:32:54', '2021-03-23 23:32:54'),
(425, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-03-24 13:02:29', '2021-03-24 13:02:29'),
(426, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-03-25 19:44:06', '2021-03-25 19:44:06'),
(427, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-03-25 21:09:07', '2021-03-25 21:09:07'),
(428, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-03-26 21:12:51', '2021-03-26 21:12:51'),
(429, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-03-27 13:21:16', '2021-03-27 13:21:16'),
(430, 1, 1, '::1', 'Reajuste do contrato3ebf6751-795e-11eb-a8f4-5ccd5bb8b798', '2021-03-27 21:00:53', '2021-03-27 21:00:53'),
(431, 1, 1, '::1', 'Reajuste do contratoaff5a3e4-8050-11eb-89af-5ccd5bb8b798', '2021-03-27 21:00:53', '2021-03-27 21:00:53'),
(432, 1, 1, '::1', 'Reajuste do contrato4a3754e7-80ee-11eb-9af7-5ccd5bb8b798', '2021-03-27 21:00:53', '2021-03-27 21:00:53'),
(433, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-03-30 16:16:53', '2021-03-30 16:16:53'),
(434, 1, 1, '::1', 'Inclusão do Contrato68a97783-919a-11eb-ae9e-5ccd5bb8b798', '2021-03-30 20:56:33', '2021-03-30 20:56:33'),
(435, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-04-11 00:21:19', '2021-04-11 00:21:19'),
(436, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-04-12 13:44:56', '2021-04-12 13:44:56'),
(437, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-05-30 22:27:40', '2021-05-30 22:27:40'),
(438, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-06-04 15:25:53', '2021-06-04 15:25:53'),
(439, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-06-06 16:01:24', '2021-06-06 16:01:24'),
(440, 1, 1, '::1', 'Inclusão do Contratod8c7afcb-c71b-11eb-a5e6-5ccd5bb8b798', '2021-06-06 23:06:39', '2021-06-06 23:06:39'),
(441, 1, 1, '::1', 'Inclusão do Contrato1b42988d-c71c-11eb-a5e6-5ccd5bb8b798', '2021-06-06 23:08:31', '2021-06-06 23:08:31'),
(442, 1, 1, '::1', 'Renovação do Contrato 68a97783-919a-11eb-ae9e-5ccd5bb8b798', '2021-06-07 00:56:56', '2021-06-07 00:56:56'),
(443, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-06-07 16:28:03', '2021-06-07 16:28:03'),
(444, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-06-08 16:03:32', '2021-06-08 16:03:32'),
(445, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-06-10 15:23:23', '2021-06-10 15:23:23'),
(446, 1, 1, '::1', 'Inclusão da carteira teste', '2021-06-10 22:12:58', '2021-06-10 22:12:58'),
(447, 1, 1, '::1', 'Exclusão da carteira teste', '2021-06-11 04:25:02', '2021-06-11 04:25:02'),
(448, 1, 1, '::1', 'Inclusão da carteira Teste', '2021-06-11 04:29:55', '2021-06-11 04:29:55'),
(449, 1, 1, '::1', 'Alteração da carteira Teste', '2021-06-11 05:21:11', '2021-06-11 05:21:11'),
(450, 1, 1, '::1', 'Alteração da carteira Teste2', '2021-06-11 05:21:44', '2021-06-11 05:21:44'),
(451, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-06-11 14:50:10', '2021-06-11 14:50:10'),
(452, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-06-12 14:27:18', '2021-06-12 14:27:18'),
(453, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello saiu do sistema', '2021-06-12 15:32:36', '2021-06-12 15:32:36'),
(454, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-06-12 15:32:52', '2021-06-12 15:32:52'),
(455, 1, 1, '::1', 'Inclusão da conta bancária 7 - 7 - 183960', '2021-06-12 22:39:57', '2021-06-12 22:39:57'),
(456, 1, 1, '::1', 'Inclusão da conta bancária 7 - 6090 - 183960', '2021-06-12 22:42:08', '2021-06-12 22:42:08'),
(457, 1, 1, '::1', 'Exclusão da conta bancária Itaú - 6090 - 183960', '2021-06-13 03:31:59', '2021-06-13 03:31:59'),
(458, 1, 1, '::1', 'Inclusão da carteira Teste3', '2021-06-13 04:00:49', '2021-06-13 04:00:49'),
(459, 1, 1, '::1', 'Alteração da conta bancária Bradesco - Ag: 4550 - C: 12131', '2021-06-13 04:12:19', '2021-06-13 04:12:19');

-- --------------------------------------------------------

--
-- Estrutura da tabela `nationalities`
--

CREATE TABLE `nationalities` (
  `id` int(11) NOT NULL,
  `cod` binary(36) NOT NULL DEFAULT uuid(),
  `account_id` int(11) NOT NULL DEFAULT 0,
  `description` varchar(100) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `nationalities`
--

INSERT INTO `nationalities` (`id`, `cod`, `account_id`, `description`, `created_at`, `updated_at`) VALUES
(6, 0x65646365663366372d333832642d313165622d626137622d373466303664663066636462, 1, 'brasileiro', '2020-12-07 01:45:48', '2020-12-07 01:45:48'),
(8, 0x31643539373966662d636239622d313165622d396336662d356363643562623862373938, 1, 'teste', '2021-06-12 16:27:43', '2021-06-12 16:27:43');

-- --------------------------------------------------------

--
-- Estrutura da tabela `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `view` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `notifications`
--

INSERT INTO `notifications` (`id`, `image`, `title`, `link`, `view`, `created_at`, `updated_at`) VALUES
(1, 'https://www.localhost/phptest/fsphplib/themes/cafeadm/assets/images/notify.jpg', 'Existem boletos sem remessas', 'http://localhost/newfelicidade/boletos', 1, '2019-02-11 11:53:35', '2020-10-08 16:39:51');

-- --------------------------------------------------------

--
-- Estrutura da tabela `owners`
--

CREATE TABLE `owners` (
  `id` int(11) NOT NULL,
  `property` int(11) NOT NULL DEFAULT 0,
  `lessor` int(11) NOT NULL DEFAULT 0,
  `beneficiary` int(11) DEFAULT 0,
  `procurator` int(11) DEFAULT 0,
  `percent` decimal(10,2) NOT NULL DEFAULT 0.00,
  `date_start` date NOT NULL,
  `date_end` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `owners`
--

INSERT INTO `owners` (`id`, `property`, `lessor`, `beneficiary`, `procurator`, `percent`, `date_start`, `date_end`, `status`, `account_id`, `created_at`, `updated_at`) VALUES
(1, 9, 6, 0, 0, '50.00', '2020-12-21', '2020-12-27', 2, 1, '2020-12-21 20:07:21', '2020-12-27 14:36:50'),
(2, 9, 21, 0, 0, '50.00', '2020-12-21', '2020-12-27', 2, 1, '2020-12-21 20:07:21', '2020-12-27 14:30:55'),
(3, 10, 6, 0, 0, '100.00', '2020-12-21', NULL, 1, 1, '2020-12-21 20:10:08', '2020-12-21 20:10:08'),
(4, 11, 6, 27, 0, '50.00', '2020-12-22', NULL, 1, 1, '2020-12-22 18:07:51', '2020-12-22 18:07:51'),
(5, 11, 21, 0, 29, '50.00', '2020-12-22', NULL, 1, 1, '2020-12-22 18:07:51', '2020-12-24 17:37:26'),
(6, 12, 29, 0, 0, '100.00', '2020-12-23', '2020-12-24', 1, 1, '2020-12-23 20:12:04', '2020-12-27 14:16:05'),
(7, 13, 24, 0, 0, '100.00', '2020-12-23', '2020-12-27', 2, 1, '2020-12-23 20:37:56', '2020-12-27 14:02:11'),
(8, 14, 25, 0, 0, '100.00', '2020-12-23', NULL, 1, 1, '2020-12-23 20:40:45', '2020-12-23 20:40:45'),
(11, 13, 24, 27, 0, '100.00', '2020-12-27', NULL, 1, 1, '2020-12-27 14:01:10', '2020-12-27 14:01:10'),
(13, 9, 21, 0, 0, '50.00', '2020-12-27', '2020-12-27', 2, 1, '2020-12-27 14:30:55', '2020-12-27 14:32:46'),
(14, 9, 21, 0, 0, '50.00', '2020-12-27', '2020-12-27', 2, 1, '2020-12-27 14:32:46', '2020-12-27 14:36:50'),
(15, 9, 6, 0, 0, '51.00', '2020-12-27', NULL, 1, 1, '2020-12-27 14:36:50', '2020-12-27 14:36:50'),
(16, 9, 21, 0, 0, '49.00', '2020-12-27', '2020-12-27', 2, 1, '2020-12-27 14:36:50', '2020-12-27 14:39:12'),
(17, 9, 21, 0, 24, '49.00', '2020-12-27', NULL, 1, 1, '2020-12-27 14:39:12', '2020-12-27 14:39:12'),
(18, 15, 29, 0, 24, '100.00', '2021-01-06', '2021-01-06', 2, 1, '2021-01-06 20:09:22', '2021-01-07 00:07:50'),
(19, 15, 29, 0, 24, '100.00', '2021-01-06', '2021-01-11', 2, 1, '2021-01-07 00:07:50', '2021-01-11 13:45:35'),
(20, 16, 21, 0, 24, '50.00', '2021-01-06', NULL, 1, 1, '2021-01-07 00:14:27', '2021-01-07 00:14:27'),
(21, 16, 6, 0, 21, '50.00', '2021-01-06', NULL, 1, 1, '2021-01-07 00:14:27', '2021-01-07 00:14:27'),
(22, 15, 29, 0, 24, '50.00', '2021-01-11', NULL, 1, 1, '2021-01-11 13:45:35', '2021-01-11 13:45:35'),
(23, 15, 21, 0, 0, '50.00', '2021-01-11', NULL, 1, 1, '2021-01-11 13:45:35', '2021-01-11 13:45:35');

-- --------------------------------------------------------

--
-- Estrutura da tabela `place_of_births`
--

CREATE TABLE `place_of_births` (
  `id` int(11) NOT NULL,
  `cod` binary(36) NOT NULL DEFAULT uuid(),
  `account_id` int(11) NOT NULL DEFAULT 0,
  `description` varchar(100) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `place_of_births`
--

INSERT INTO `place_of_births` (`id`, `cod`, `account_id`, `description`, `created_at`, `updated_at`) VALUES
(7, 0x35633235656530622d333862632d313165622d626137622d373466303664663066636462, 1, 'carioca', '2020-12-07 18:45:24', '2020-12-07 18:45:24');

-- --------------------------------------------------------

--
-- Estrutura da tabela `professions`
--

CREATE TABLE `professions` (
  `id` int(11) NOT NULL,
  `cod` binary(36) NOT NULL DEFAULT uuid(),
  `account_id` int(11) NOT NULL DEFAULT 0,
  `description` varchar(100) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `professions`
--

INSERT INTO `professions` (`id`, `cod`, `account_id`, `description`, `created_at`, `updated_at`) VALUES
(7, 0x30376539353761372d336136332d313165622d613537652d373466303664663066636462, 1, 'Programador', '2020-12-09 21:10:57', '2020-12-09 21:10:57'),
(8, 0x35656666373365352d336136332d313165622d613537652d373466303664663066636462, 1, 'Empresário', '2020-12-09 21:13:23', '2020-12-09 21:13:23');

-- --------------------------------------------------------

--
-- Estrutura da tabela `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `cod` binary(36) NOT NULL DEFAULT uuid(),
  `properties_cod` varchar(50) DEFAULT '',
  `category` varchar(50) NOT NULL DEFAULT '',
  `type` varchar(50) NOT NULL DEFAULT '',
  `realtor` varchar(50) NOT NULL DEFAULT '',
  `lease_price` decimal(10,2) DEFAULT 0.00,
  `lease_term` varchar(50) DEFAULT '0',
  `readjustment_type` varchar(50) DEFAULT '0',
  `commission` varchar(10) DEFAULT '0',
  `zipcode` varchar(20) NOT NULL DEFAULT '0',
  `street` varchar(100) NOT NULL DEFAULT '0',
  `number` varchar(50) NOT NULL DEFAULT '0',
  `complement` varchar(50) DEFAULT '0',
  `district` varchar(50) NOT NULL DEFAULT '0',
  `state` varchar(50) NOT NULL DEFAULT '0',
  `city` varchar(50) NOT NULL DEFAULT '0',
  `total_area` varchar(50) DEFAULT '0',
  `useful_area` varchar(50) DEFAULT '0',
  `living_room` varchar(10) DEFAULT '0',
  `bedroom` varchar(10) DEFAULT '0',
  `bathroom` varchar(10) DEFAULT '0',
  `suites` varchar(10) DEFAULT '0',
  `garage` varchar(10) DEFAULT '0',
  `maid_dependence` varchar(10) DEFAULT '0',
  `kitchen` varchar(10) DEFAULT '0',
  `pool` varchar(5) DEFAULT '0',
  `grill` varchar(5) DEFAULT '0',
  `library` varchar(5) DEFAULT '0',
  `office` varchar(5) DEFAULT '0',
  `furnished` varchar(5) DEFAULT '0',
  `description` text DEFAULT NULL,
  `photo1` varchar(250) DEFAULT '',
  `photo2` varchar(250) DEFAULT '',
  `photo3` varchar(250) DEFAULT '',
  `photo4` varchar(250) DEFAULT '',
  `photo5` varchar(250) DEFAULT '',
  `photo6` varchar(250) DEFAULT '',
  `photo7` varchar(250) DEFAULT '',
  `photo8` varchar(250) DEFAULT '',
  `photo9` varchar(250) DEFAULT '',
  `photo10` varchar(250) DEFAULT '',
  `contract` varchar(10) NOT NULL DEFAULT '',
  `account_id` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `properties`
--

INSERT INTO `properties` (`id`, `cod`, `properties_cod`, `category`, `type`, `realtor`, `lease_price`, `lease_term`, `readjustment_type`, `commission`, `zipcode`, `street`, `number`, `complement`, `district`, `state`, `city`, `total_area`, `useful_area`, `living_room`, `bedroom`, `bathroom`, `suites`, `garage`, `maid_dependence`, `kitchen`, `pool`, `grill`, `library`, `office`, `furnished`, `description`, `photo1`, `photo2`, `photo3`, `photo4`, `photo5`, `photo6`, `photo7`, `photo8`, `photo9`, `photo10`, `contract`, `account_id`, `status`, `created_at`, `updated_at`) VALUES
(9, 0x32316338633037372d343363382d313165622d616337392d373466303664663066636462, '20', 'without information', 'apartment', 'without information', '1200.00', '30', 'IPCA', '10', '20730-400', 'Rua Dionísio Fernandes', '297', 'apto 406 bloco 1', 'Engenho de Dentro', 'RJ', 'Rio de Janeiro', '', '', '', '', '', '', '', '', '', 'no', 'no', 'no', 'no', 'no', '', 'images/2020/12/property-1d4fa715f3380fbfcc452f5622285347.jpg', '', '', '', '', '', '', '', '', '', 'in contrac', 1, 1, '2020-12-21 20:07:21', '2021-02-28 00:45:24'),
(10, 0x38353163616631322d343363382d313165622d616337392d373466303664663066636462, '', 'residential', 'apartment', 'without information', '1200.00', '30', 'IPCA', '10', '20730-400', 'Rua Dionísio Fernandes', '297', '', 'Engenho de Dentro', 'RJ', 'Rio de Janeiro', '', '', '', '', '', '', '', '', '', 'no', 'no', 'no', 'no', 'no', '', '', '', '', '', '', '', '', '', '', '', 'in contrac', 1, 1, '2020-12-21 20:10:08', '2021-06-06 23:08:31'),
(11, 0x39623134333035652d343438302d313165622d383466312d373466303664663066636462, '01', 'residential', 'apartment', 'without information', '1200.00', '30', 'IPCA', '10', '20730-400', 'Rua Dionísio Fernandes', '297', 'apto 504 bloco 2', 'Engenho de Dentro', 'RJ', 'Rio de Janeiro', '60', '50', '1', '2', '2', '0', '1', '0', '1', 'no', 'no', 'no', 'no', 'yes', 'Bom imóvel', 'images/2020/12/property-dab38c02a3a90b409e2ca78f736f7bcc.jpg', 'images/2020/12/property-4ed4d47ce6cc5f097f0ec32217daedb8.jpg', '', '', '', '', '', '', '', '', 'in contrac', 1, 1, '2020-12-22 18:07:51', '2021-03-04 15:50:10'),
(12, 0x31666230346239662d343535622d313165622d396538652d373466303664663066636462, '', 'without information', 'apartment', '5', '1200.00', '30', 'IGPM', '10', '20730-400', 'Rua Dionísio Fernandes', '297', 'apto 204 bloco 2', 'Engenho de Dentro', 'RJ', 'Rio de Janeiro', '60', '50', '', '', '', '', '', '', '', 'no', 'no', 'no', 'no', 'no', '', 'images/2020/12/property-45332000c41d8722905833961b697421.jpg', 'images/2020/12/property-4cc2fe79e6d5288c524be4f5aa915064.jpg', '', '', '', '', '', '', '', '', 'in contrac', 1, 1, '2020-12-23 20:12:04', '2021-03-09 15:44:10'),
(13, 0x62636532623465372d343535652d313165622d396538652d373466303664663066636462, '', 'without information', 'apartment', '5', '1500.00', '30', 'IPCA', '8.50', '20730-400', 'Rua Dionísio Fernandes', '297', 'apto 102 bloco 1', 'Engenho de Dentro', 'RJ', 'Rio de Janeiro', '60', '50', '', '', '', '', '', '', '', 'no', 'no', 'no', 'no', 'no', '', '', '', '', '', '', '', '', '', '', '', 'in contrac', 1, 1, '2020-12-23 20:37:56', '2021-03-30 20:56:33'),
(14, 0x32316162323830662d343535662d313165622d396538652d373466303664663066636462, '45', 'residential', 'house', '5', '1800.00', '30', 'IPCA', '10', '20730-400', 'Rua Dionísio Fernandes', '455', '', 'Engenho de Dentro', 'RJ', 'Rio de Janeiro', '90,00', '75,00', '', '', '', '', '', '', '', 'no', 'no', 'no', 'no', 'no', '', '', '', '', '', '', '', '', '', '', '', 'in contrac', 1, 1, '2020-12-23 20:40:45', '2021-03-08 20:56:01'),
(15, 0x30613363313934622d353035622d313165622d386433642d373466303664663066636462, '', 'commercial', 'apartment', 'without information', '1500.00', 'without information', 'IPCA', '10', '20730-400', 'Rua Dionísio Fernandes', '297', 'apto procurador', 'Engenho de Dentro', 'RJ', 'Rio de Janeiro', '65,00', '75', '', '', '', '', '', '', '', 'no', 'no', 'no', 'no', 'no', '', '', '', '', '', '', '', '', '', '', '', 'free', 1, 1, '2021-01-06 20:09:05', '2021-01-11 13:45:33'),
(16, 0x34646234623061392d353037642d313165622d386433642d373466303664663066636462, '', 'residential', 'apartment', '2', '1500.00', '30', 'IPCA', '8', '20730-400', 'Rua Dionísio Fernandes', '297', 'procurador 2', 'Engenho de Dentro', 'RJ', 'Rio de Janeiro', '', '', '', '', '', '', '', '', '', 'no', 'no', 'no', 'no', 'no', '', '', '', '', '', '', '', '', '', '', '', 'in contrac', 1, 1, '2021-01-07 00:14:27', '2021-06-06 23:06:39');

-- --------------------------------------------------------

--
-- Estrutura da tabela `property_categories`
--

CREATE TABLE `property_categories` (
  `id` int(11) NOT NULL,
  `cod` binary(36) NOT NULL DEFAULT uuid(),
  `account_id` int(11) NOT NULL DEFAULT 0,
  `description` varchar(100) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `property_categories`
--

INSERT INTO `property_categories` (`id`, `cod`, `account_id`, `description`, `created_at`, `updated_at`) VALUES
(8, 0x30353865376230382d343861362d313165622d386335662d373466303664663066636462, 1, 'Teste', '2020-12-28 00:46:00', '2020-12-28 00:46:00'),
(10, 0x34356564383430652d343861612d313165622d386335662d373466303664663066636462, 1, 'teste2', '2020-12-28 01:16:26', '2020-12-28 01:16:26'),
(11, 0x36306138353736622d343861612d313165622d386335662d373466303664663066636462, 1, 'teste3', '2020-12-28 01:17:11', '2020-12-28 01:17:11'),
(12, 0x34333233613435642d343861622d313165622d386335662d373466303664663066636462, 1, 'teste4', '2020-12-28 01:23:31', '2020-12-28 01:23:31');

-- --------------------------------------------------------

--
-- Estrutura da tabela `property_historics`
--

CREATE TABLE `property_historics` (
  `id` int(11) NOT NULL,
  `cod` binary(36) NOT NULL DEFAULT uuid(),
  `property` int(11) NOT NULL DEFAULT 0,
  `historic` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date_historic` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `account_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `property_historics`
--

INSERT INTO `property_historics` (`id`, `cod`, `property`, `historic`, `description`, `date_historic`, `status`, `account_id`, `created_at`, `updated_at`) VALUES
(4, 0x64613030393134362d346435362d313165622d393434622d373466303664663066636462, 9, 'constructions', 'teste', '2021-01-02', 1, 1, '2021-01-03 00:01:38', '2021-01-03 00:01:38'),
(5, 0x33323333383062632d346435372d313165622d393434622d373466303664663066636462, 13, '5', 'teste', '2021-01-03', 1, 1, '2021-01-03 00:04:06', '2021-01-03 21:52:40');

-- --------------------------------------------------------

--
-- Estrutura da tabela `receipts`
--

CREATE TABLE `receipts` (
  `id` int(11) NOT NULL,
  `cod` binary(36) NOT NULL DEFAULT uuid(),
  `contract` int(11) NOT NULL,
  `due_date` date NOT NULL,
  `payment_form` varchar(50) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `receipts`
--

INSERT INTO `receipts` (`id`, `cod`, `contract`, `due_date`, `payment_form`, `status`, `account_id`, `created_at`, `updated_at`) VALUES
(1, 0x36356331303334612d383035332d313165622d383961662d356363643562623862373938, 4, '2021-03-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(2, 0x36356331636231662d383035332d313165622d383961662d356363643562623862373938, 4, '2021-04-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(3, 0x36356333306665352d383035332d313165622d383961662d356363643562623862373938, 4, '2021-05-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(4, 0x36356333623034392d383035332d313165622d383961662d356363643562623862373938, 4, '2021-06-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(5, 0x36356334323066342d383035332d313165622d383961662d356363643562623862373938, 4, '2021-07-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(6, 0x36356334373430662d383035332d313165622d383961662d356363643562623862373938, 4, '2021-08-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(7, 0x36356335306433372d383035332d313165622d383961662d356363643562623862373938, 4, '2021-09-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(8, 0x36356335613833652d383035332d313165622d383961662d356363643562623862373938, 4, '2021-10-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(9, 0x36356335663932662d383035332d313165622d383961662d356363643562623862373938, 4, '2021-11-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(10, 0x36356336343466632d383035332d313165622d383961662d356363643562623862373938, 4, '2021-12-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(11, 0x36356336383433322d383035332d313165622d383961662d356363643562623862373938, 4, '2022-01-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(12, 0x36356336653036322d383035332d313165622d383961662d356363643562623862373938, 4, '2022-02-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(13, 0x36356337316565372d383035332d313165622d383961662d356363643562623862373938, 4, '2022-03-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(14, 0x36356337653466642d383035332d313165622d383961662d356363643562623862373938, 4, '2022-04-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(15, 0x36356338333164322d383035332d313165622d383961662d356363643562623862373938, 4, '2022-05-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(16, 0x36356338373130322d383035332d313165622d383961662d356363643562623862373938, 4, '2022-06-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(17, 0x36356338623665312d383035332d313165622d383961662d356363643562623862373938, 4, '2022-07-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(18, 0x36356338666537302d383035332d313165622d383961662d356363643562623862373938, 4, '2022-08-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(19, 0x36356339336432362d383035332d313165622d383961662d356363643562623862373938, 4, '2022-09-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(20, 0x36356339376531302d383035332d313165622d383961662d356363643562623862373938, 4, '2022-10-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(21, 0x36356339633433622d383035332d313165622d383961662d356363643562623862373938, 4, '2022-11-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(22, 0x36356361613635382d383035332d313165622d383961662d356363643562623862373938, 4, '2022-12-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(23, 0x36356361653433302d383035332d313165622d383961662d356363643562623862373938, 4, '2023-01-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(24, 0x36356362336135662d383035332d313165622d383961662d356363643562623862373938, 4, '2023-02-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(25, 0x36356362376464632d383035332d313165622d383961662d356363643562623862373938, 4, '2023-03-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(26, 0x36356362626261322d383035332d313165622d383961662d356363643562623862373938, 4, '2023-04-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(27, 0x36356362663863642d383035332d313165622d383961662d356363643562623862373938, 4, '2023-05-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(28, 0x36356363333739312d383035332d313165622d383961662d356363643562623862373938, 4, '2023-06-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(29, 0x36356364323334302d383035332d313165622d383961662d356363643562623862373938, 4, '2023-07-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(30, 0x36356364373437342d383035332d313165622d383961662d356363643562623862373938, 4, '2023-08-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(31, 0x36356364616438372d383035332d313165622d383961662d356363643562623862373938, 4, '2023-09-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(32, 0x36356364653835642d383035332d313165622d383961662d356363643562623862373938, 4, '2023-10-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(33, 0x36356365323938322d383035332d313165622d383961662d356363643562623862373938, 4, '2023-11-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(34, 0x36356365366134652d383035332d313165622d383961662d356363643562623862373938, 4, '2023-12-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(35, 0x36356365616331342d383035332d313165622d383961662d356363643562623862373938, 4, '2024-01-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(36, 0x36356366373466372d383035332d313165622d383961662d356363643562623862373938, 4, '2024-02-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(37, 0x36356366653164632d383035332d313165622d383961662d356363643562623862373938, 4, '2024-03-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(38, 0x36356430316532332d383035332d313165622d383961662d356363643562623862373938, 4, '2024-04-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(39, 0x36356430356265612d383035332d313165622d383961662d356363643562623862373938, 4, '2024-05-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(40, 0x36356430393330302d383035332d313165622d383961662d356363643562623862373938, 4, '2024-06-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(41, 0x36356430643064312d383035332d313165622d383961662d356363643562623862373938, 4, '2024-07-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(42, 0x36356431306430342d383035332d313165622d383961662d356363643562623862373938, 4, '2024-08-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(43, 0x36356431343430342d383035332d313165622d383961662d356363643562623862373938, 4, '2024-09-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(44, 0x36356431663164392d383035332d313165622d383961662d356363643562623862373938, 4, '2024-10-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(45, 0x36356432343765662d383035332d313165622d383961662d356363643562623862373938, 4, '2024-11-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(46, 0x36356432383034352d383035332d313165622d383961662d356363643562623862373938, 4, '2024-12-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(47, 0x36356432623935312d383035332d313165622d383961662d356363643562623862373938, 4, '2025-01-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(48, 0x36356432656664372d383035332d313165622d383961662d356363643562623862373938, 4, '2025-02-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(49, 0x36356433323739652d383035332d313165622d383961662d356363643562623862373938, 4, '2025-03-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(50, 0x36356433363063612d383035332d313165622d383961662d356363643562623862373938, 4, '2025-04-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(51, 0x36356433396262642d383035332d313165622d383961662d356363643562623862373938, 4, '2025-05-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(52, 0x36356433643830382d383035332d313165622d383961662d356363643562623862373938, 4, '2025-06-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(53, 0x36356434396331362d383035332d313165622d383961662d356363643562623862373938, 4, '2025-07-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(54, 0x36356434653561362d383035332d313165622d383961662d356363643562623862373938, 4, '2025-08-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(55, 0x36356435316561642d383035332d313165622d383961662d356363643562623862373938, 4, '2025-09-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(56, 0x36356435353764642d383035332d313165622d383961662d356363643562623862373938, 4, '2025-10-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(57, 0x36356435613165662d383035332d313165622d383961662d356363643562623862373938, 4, '2025-11-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(58, 0x36356435643464382d383035332d313165622d383961662d356363643562623862373938, 4, '2025-12-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(59, 0x36356436303832652d383035332d313165622d383961662d356363643562623862373938, 4, '2026-01-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(60, 0x36356436336665362d383035332d313165622d383961662d356363643562623862373938, 4, '2026-02-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(61, 0x36356436396632322d383035332d313165622d383961662d356363643562623862373938, 4, '2026-03-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(62, 0x36356437333933382d383035332d313165622d383961662d356363643562623862373938, 4, '2026-04-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(63, 0x36356437373661372d383035332d313165622d383961662d356363643562623862373938, 4, '2026-05-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(64, 0x36356437616638382d383035332d313165622d383961662d356363643562623862373938, 4, '2026-06-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(65, 0x36356437656161612d383035332d313165622d383961662d356363643562623862373938, 4, '2026-07-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(66, 0x36356438323466642d383035332d313165622d383961662d356363643562623862373938, 4, '2026-08-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(67, 0x36356438356637392d383035332d313165622d383961662d356363643562623862373938, 4, '2026-09-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(68, 0x36356438396334652d383035332d313165622d383961662d356363643562623862373938, 4, '2026-10-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(69, 0x36356438643266652d383035332d313165622d383961662d356363643562623862373938, 4, '2026-11-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(70, 0x36356439333463362d383035332d313165622d383961662d356363643562623862373938, 4, '2026-12-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(71, 0x36356439636131652d383035332d313165622d383961662d356363643562623862373938, 4, '2027-01-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(72, 0x36356461303635642d383035332d313165622d383961662d356363643562623862373938, 4, '2027-02-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(73, 0x36356461336537322d383035332d313165622d383961662d356363643562623862373938, 4, '2027-03-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(74, 0x36356461373263612d383035332d313165622d383961662d356363643562623862373938, 4, '2027-04-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(75, 0x36356461616333392d383035332d313165622d383961662d356363643562623862373938, 4, '2027-05-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(76, 0x36356461653461312d383035332d313165622d383961662d356363643562623862373938, 4, '2027-06-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(77, 0x36356462323163312d383035332d313165622d383961662d356363643562623862373938, 4, '2027-07-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(78, 0x36356462353865302d383035332d313165622d383961662d356363643562623862373938, 4, '2027-08-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(79, 0x36356462396266652d383035332d313165622d383961662d356363643562623862373938, 4, '2027-09-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(80, 0x36356463356630312d383035332d313165622d383961662d356363643562623862373938, 4, '2027-10-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(81, 0x36356463623762332d383035332d313165622d383961662d356363643562623862373938, 4, '2027-11-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(82, 0x36356464313261362d383035332d313165622d383961662d356363643562623862373938, 4, '2027-12-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(83, 0x36356464373732342d383035332d313165622d383961662d356363643562623862373938, 4, '2028-01-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(84, 0x36356464633839372d383035332d313165622d383961662d356363643562623862373938, 4, '2028-02-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(85, 0x36356465356438632d383035332d313165622d383961662d356363643562623862373938, 4, '2028-03-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(86, 0x36356465643230382d383035332d313165622d383961662d356363643562623862373938, 4, '2028-04-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(87, 0x36356466316239322d383035332d313165622d383961662d356363643562623862373938, 4, '2028-05-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(88, 0x36356466363236332d383035332d313165622d383961662d356363643562623862373938, 4, '2028-06-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(89, 0x36356466623832642d383035332d313165622d383961662d356363643562623862373938, 4, '2028-07-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(90, 0x36356466656462332d383035332d313165622d383961662d356363643562623862373938, 4, '2028-08-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(91, 0x36356632393730362d383035332d313165622d383961662d356363643562623862373938, 4, '2028-09-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(92, 0x36356633363231322d383035332d313165622d383961662d356363643562623862373938, 4, '2028-10-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(93, 0x36356634303536312d383035332d313165622d383961662d356363643562623862373938, 4, '2028-11-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(94, 0x36356634393134322d383035332d313165622d383961662d356363643562623862373938, 4, '2028-12-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(95, 0x36356634663433342d383035332d313165622d383961662d356363643562623862373938, 4, '2029-01-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(96, 0x36356635346135652d383035332d313165622d383961662d356363643562623862373938, 4, '2029-02-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(97, 0x36356635383562322d383035332d313165622d383961662d356363643562623862373938, 4, '2029-03-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(98, 0x36356635633033392d383035332d313165622d383961662d356363643562623862373938, 4, '2029-04-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(99, 0x36356635666139652d383035332d313165622d383961662d356363643562623862373938, 4, '2029-05-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(100, 0x36356636333239332d383035332d313165622d383961662d356363643562623862373938, 4, '2029-06-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(101, 0x36356636366330322d383035332d313165622d383961662d356363643562623862373938, 4, '2029-07-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(102, 0x36356636613762632d383035332d313165622d383961662d356363643562623862373938, 4, '2029-08-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(103, 0x36356636646662652d383035332d313165622d383961662d356363643562623862373938, 4, '2029-09-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(104, 0x36356637316462312d383035332d313165622d383961662d356363643562623862373938, 4, '2029-10-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(105, 0x36356637356138382d383035332d313165622d383961662d356363643562623862373938, 4, '2029-11-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(106, 0x36356637616530652d383035332d313165622d383961662d356363643562623862373938, 4, '2029-12-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(107, 0x36356637656665302d383035332d313165622d383961662d356363643562623862373938, 4, '2030-01-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(108, 0x36356638326631352d383035332d313165622d383961662d356363643562623862373938, 4, '2030-02-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(109, 0x36356638363631322d383035332d313165622d383961662d356363643562623862373938, 4, '2030-03-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(110, 0x36356638613965362d383035332d313165622d383961662d356363643562623862373938, 4, '2030-04-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(111, 0x36356638646633642d383035332d313165622d383961662d356363643562623862373938, 4, '2030-05-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(112, 0x36356639313532302d383035332d313165622d383961662d356363643562623862373938, 4, '2030-06-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(113, 0x36356639346137382d383035332d313165622d383961662d356363643562623862373938, 4, '2030-07-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(114, 0x36356639383665392d383035332d313165622d383961662d356363643562623862373938, 4, '2030-08-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(115, 0x36356639626663312d383035332d313165622d383961662d356363643562623862373938, 4, '2030-09-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(116, 0x36356639663639652d383035332d313165622d383961662d356363643562623862373938, 4, '2030-10-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(117, 0x36356661353033642d383035332d313165622d383961662d356363643562623862373938, 4, '2030-11-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(118, 0x36356661383931662d383035332d313165622d383961662d356363643562623862373938, 4, '2030-12-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(119, 0x36356661633033312d383035332d313165622d383961662d356363643562623862373938, 4, '2031-01-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(120, 0x36356661666330382d383035332d313165622d383961662d356363643562623862373938, 4, '2031-02-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(121, 0x36356662333536372d383035332d313165622d383961662d356363643562623862373938, 4, '2031-03-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(122, 0x36356662366461312d383035332d313165622d383961662d356363643562623862373938, 4, '2031-04-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(123, 0x36356662613636642d383035332d313165622d383961662d356363643562623862373938, 4, '2031-05-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(124, 0x36356662653165612d383035332d313165622d383961662d356363643562623862373938, 4, '2031-06-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(125, 0x36356663316336612d383035332d313165622d383961662d356363643562623862373938, 4, '2031-07-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(126, 0x36356663353835392d383035332d313165622d383961662d356363643562623862373938, 4, '2031-08-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(127, 0x36356663396231382d383035332d313165622d383961662d356363643562623862373938, 4, '2031-09-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(128, 0x36356663656436382d383035332d313165622d383961662d356363643562623862373938, 4, '2031-10-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(129, 0x36356664323533612d383035332d313165622d383961662d356363643562623862373938, 4, '2031-11-05', 'money', 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(130, 0x36356664356638332d383035332d313165622d383961662d356363643562623862373938, 4, '2031-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(131, 0x36356664393862382d383035332d313165622d383961662d356363643562623862373938, 4, '2032-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(132, 0x36356664653461632d383035332d313165622d383961662d356363643562623862373938, 4, '2032-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(133, 0x36356665323131302d383035332d313165622d383961662d356363643562623862373938, 4, '2032-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(134, 0x36356665356366612d383035332d313165622d383961662d356363643562623862373938, 4, '2032-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(135, 0x36356665393761332d383035332d313165622d383961662d356363643562623862373938, 4, '2032-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(136, 0x36356665643033662d383035332d313165622d383961662d356363643562623862373938, 4, '2032-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(137, 0x36356666303765352d383035332d313165622d383961662d356363643562623862373938, 4, '2032-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(138, 0x36356666366136612d383035332d313165622d383961662d356363643562623862373938, 4, '2032-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(139, 0x36356666616532382d383035332d313165622d383961662d356363643562623862373938, 4, '2032-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(140, 0x36356666653762632d383035332d313165622d383961662d356363643562623862373938, 4, '2032-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(141, 0x36363030316661382d383035332d313165622d383961662d356363643562623862373938, 4, '2032-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(142, 0x36363030353666382d383035332d313165622d383961662d356363643562623862373938, 4, '2032-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(143, 0x36363036336565342d383035332d313165622d383961662d356363643562623862373938, 4, '2033-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(144, 0x36363036396439662d383035332d313165622d383961662d356363643562623862373938, 4, '2033-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(145, 0x36363037303966662d383035332d313165622d383961662d356363643562623862373938, 4, '2033-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(146, 0x36363037356232302d383035332d313165622d383961662d356363643562623862373938, 4, '2033-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(147, 0x36363037393632662d383035332d313165622d383961662d356363643562623862373938, 4, '2033-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(148, 0x36363037636165322d383035332d313165622d383961662d356363643562623862373938, 4, '2033-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(149, 0x36363038306133342d383035332d313165622d383961662d356363643562623862373938, 4, '2033-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(150, 0x36363038343837372d383035332d313165622d383961662d356363643562623862373938, 4, '2033-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(151, 0x36363038376462662d383035332d313165622d383961662d356363643562623862373938, 4, '2033-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(152, 0x36363038626132652d383035332d313165622d383961662d356363643562623862373938, 4, '2033-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(153, 0x36363038663364372d383035332d313165622d383961662d356363643562623862373938, 4, '2033-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(154, 0x36363039323966642d383035332d313165622d383961662d356363643562623862373938, 4, '2033-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(155, 0x36363039383362632d383035332d313165622d383961662d356363643562623862373938, 4, '2034-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(156, 0x36363039633432342d383035332d313165622d383961662d356363643562623862373938, 4, '2034-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(157, 0x36363039666561352d383035332d313165622d383961662d356363643562623862373938, 4, '2034-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(158, 0x36363061333634322d383035332d313165622d383961662d356363643562623862373938, 4, '2034-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(159, 0x36363061373461392d383035332d313165622d383961662d356363643562623862373938, 4, '2034-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(160, 0x36363061616231642d383035332d313165622d383961662d356363643562623862373938, 4, '2034-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(161, 0x36363061653931662d383035332d313165622d383961662d356363643562623862373938, 4, '2034-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(162, 0x36363062323332612d383035332d313165622d383961662d356363643562623862373938, 4, '2034-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(163, 0x36363062356663332d383035332d313165622d383961662d356363643562623862373938, 4, '2034-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(164, 0x36363062393566642d383035332d313165622d383961662d356363643562623862373938, 4, '2034-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(165, 0x36363062643731622d383035332d313165622d383961662d356363643562623862373938, 4, '2034-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(166, 0x36363063326633632d383035332d313165622d383961662d356363643562623862373938, 4, '2034-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(167, 0x36363063363839372d383035332d313165622d383961662d356363643562623862373938, 4, '2035-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(168, 0x36363063613132632d383035332d313165622d383961662d356363643562623862373938, 4, '2035-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(169, 0x36363063653861312d383035332d313165622d383961662d356363643562623862373938, 4, '2035-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(170, 0x36363064323532302d383035332d313165622d383961662d356363643562623862373938, 4, '2035-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(171, 0x36363064363334372d383035332d313165622d383961662d356363643562623862373938, 4, '2035-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(172, 0x36363064396238342d383035332d313165622d383961662d356363643562623862373938, 4, '2035-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(173, 0x36363064643365332d383035332d313165622d383961662d356363643562623862373938, 4, '2035-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(174, 0x36363065316166662d383035332d313165622d383961662d356363643562623862373938, 4, '2035-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(175, 0x36363065346664622d383035332d313165622d383961662d356363643562623862373938, 4, '2035-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(176, 0x36363065623734312d383035332d313165622d383961662d356363643562623862373938, 4, '2035-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(177, 0x36363065663462392d383035332d313165622d383961662d356363643562623862373938, 4, '2035-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(178, 0x36363066326363622d383035332d313165622d383961662d356363643562623862373938, 4, '2035-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(179, 0x36363066363738632d383035332d313165622d383961662d356363643562623862373938, 4, '2036-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(180, 0x36363066613036372d383035332d313165622d383961662d356363643562623862373938, 4, '2036-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(181, 0x36363066643832332d383035332d313165622d383961662d356363643562623862373938, 4, '2036-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(182, 0x36363130306563322d383035332d313165622d383961662d356363643562623862373938, 4, '2036-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(183, 0x36363130343438652d383035332d313165622d383961662d356363643562623862373938, 4, '2036-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(184, 0x36363130383061322d383035332d313165622d383961662d356363643562623862373938, 4, '2036-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(185, 0x36363130623661372d383035332d313165622d383961662d356363643562623862373938, 4, '2036-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(186, 0x36363130666132342d383035332d313165622d383961662d356363643562623862373938, 4, '2036-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(187, 0x36363131346263632d383035332d313165622d383961662d356363643562623862373938, 4, '2036-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(188, 0x36363131383666632d383035332d313165622d383961662d356363643562623862373938, 4, '2036-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(189, 0x36363131626537332d383035332d313165622d383961662d356363643562623862373938, 4, '2036-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(190, 0x36363131663932332d383035332d313165622d383961662d356363643562623862373938, 4, '2036-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(191, 0x36363132333036632d383035332d313165622d383961662d356363643562623862373938, 4, '2037-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(192, 0x36363132363632362d383035332d313165622d383961662d356363643562623862373938, 4, '2037-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(193, 0x36363132396262642d383035332d313165622d383961662d356363643562623862373938, 4, '2037-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(194, 0x36363132643334382d383035332d313165622d383961662d356363643562623862373938, 4, '2037-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(195, 0x36363133306432322d383035332d313165622d383961662d356363643562623862373938, 4, '2037-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(196, 0x36363133343737332d383035332d313165622d383961662d356363643562623862373938, 4, '2037-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(197, 0x36363133613264312d383035332d313165622d383961662d356363643562623862373938, 4, '2037-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(198, 0x36363133653266352d383035332d313165622d383961662d356363643562623862373938, 4, '2037-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(199, 0x36363134316461352d383035332d313165622d383961662d356363643562623862373938, 4, '2037-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(200, 0x36363134353433342d383035332d313165622d383961662d356363643562623862373938, 4, '2037-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(201, 0x36363134386237652d383035332d313165622d383961662d356363643562623862373938, 4, '2037-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(202, 0x36363134633263632d383035332d313165622d383961662d356363643562623862373938, 4, '2037-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(203, 0x36363134666439652d383035332d313165622d383961662d356363643562623862373938, 4, '2038-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(204, 0x36363135333738362d383035332d313165622d383961662d356363643562623862373938, 4, '2038-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(205, 0x36363135366461382d383035332d313165622d383961662d356363643562623862373938, 4, '2038-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(206, 0x36363135613736652d383035332d313165622d383961662d356363643562623862373938, 4, '2038-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(207, 0x36363135646365362d383035332d313165622d383961662d356363643562623862373938, 4, '2038-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(208, 0x36363136333739642d383035332d313165622d383961662d356363643562623862373938, 4, '2038-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(209, 0x36363136386663372d383035332d313165622d383961662d356363643562623862373938, 4, '2038-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(210, 0x36363136633764612d383035332d313165622d383961662d356363643562623862373938, 4, '2038-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(211, 0x36363137303165632d383035332d313165622d383961662d356363643562623862373938, 4, '2038-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(212, 0x36363137333631652d383035332d313165622d383961662d356363643562623862373938, 4, '2038-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(213, 0x36363137366137372d383035332d313165622d383961662d356363643562623862373938, 4, '2038-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(214, 0x36363137613238632d383035332d313165622d383961662d356363643562623862373938, 4, '2038-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(215, 0x36363137643664352d383035332d313165622d383961662d356363643562623862373938, 4, '2039-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(216, 0x36363138313339662d383035332d313165622d383961662d356363643562623862373938, 4, '2039-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(217, 0x36363138343939322d383035332d313165622d383961662d356363643562623862373938, 4, '2039-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(218, 0x36363138376632652d383035332d313165622d383961662d356363643562623862373938, 4, '2039-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(219, 0x36363138643730362d383035332d313165622d383961662d356363643562623862373938, 4, '2039-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(220, 0x36363139313133382d383035332d313165622d383961662d356363643562623862373938, 4, '2039-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(221, 0x36363139343764392d383035332d313165622d383961662d356363643562623862373938, 4, '2039-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(222, 0x36363139383164392d383035332d313165622d383961662d356363643562623862373938, 4, '2039-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(223, 0x36363139633163662d383035332d313165622d383961662d356363643562623862373938, 4, '2039-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(224, 0x36363139663939662d383035332d313165622d383961662d356363643562623862373938, 4, '2039-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(225, 0x36363161333038382d383035332d313165622d383961662d356363643562623862373938, 4, '2039-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(226, 0x36363161363536662d383035332d313165622d383961662d356363643562623862373938, 4, '2039-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(227, 0x36363161396536302d383035332d313165622d383961662d356363643562623862373938, 4, '2040-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(228, 0x36363161643839632d383035332d313165622d383961662d356363643562623862373938, 4, '2040-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(229, 0x36363162326236612d383035332d313165622d383961662d356363643562623862373938, 4, '2040-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(230, 0x36363162373735662d383035332d313165622d383961662d356363643562623862373938, 4, '2040-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(231, 0x36363162616632662d383035332d313165622d383961662d356363643562623862373938, 4, '2040-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(232, 0x36363162653538632d383035332d313165622d383961662d356363643562623862373938, 4, '2040-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(233, 0x36363163316661352d383035332d313165622d383961662d356363643562623862373938, 4, '2040-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(234, 0x36363163353562662d383035332d313165622d383961662d356363643562623862373938, 4, '2040-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(235, 0x36363163386632612d383035332d313165622d383961662d356363643562623862373938, 4, '2040-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(236, 0x36363163636136652d383035332d313165622d383961662d356363643562623862373938, 4, '2040-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(237, 0x36363164303264612d383035332d313165622d383961662d356363643562623862373938, 4, '2040-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(238, 0x36363164336237392d383035332d313165622d383961662d356363643562623862373938, 4, '2040-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(239, 0x36363164373736612d383035332d313165622d383961662d356363643562623862373938, 4, '2041-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(240, 0x36363164643539372d383035332d313165622d383961662d356363643562623862373938, 4, '2041-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(241, 0x36363165313363662d383035332d313165622d383961662d356363643562623862373938, 4, '2041-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(242, 0x36363165346533332d383035332d313165622d383961662d356363643562623862373938, 4, '2041-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(243, 0x36363165396537632d383035332d313165622d383961662d356363643562623862373938, 4, '2041-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(244, 0x36363165643730362d383035332d313165622d383961662d356363643562623862373938, 4, '2041-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(245, 0x36363166306433662d383035332d313165622d383961662d356363643562623862373938, 4, '2041-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(246, 0x36363166336564352d383035332d313165622d383961662d356363643562623862373938, 4, '2041-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(247, 0x36363166373538652d383035332d313165622d383961662d356363643562623862373938, 4, '2041-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(248, 0x36363166616538662d383035332d313165622d383961662d356363643562623862373938, 4, '2041-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(249, 0x36363166653564342d383035332d313165622d383961662d356363643562623862373938, 4, '2041-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(250, 0x36363230316361342d383035332d313165622d383961662d356363643562623862373938, 4, '2041-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(251, 0x36363230366633352d383035332d313165622d383961662d356363643562623862373938, 4, '2042-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(252, 0x36363230613464392d383035332d313165622d383961662d356363643562623862373938, 4, '2042-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(253, 0x36363230646265362d383035332d313165622d383961662d356363643562623862373938, 4, '2042-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(254, 0x36363231313465362d383035332d313165622d383961662d356363643562623862373938, 4, '2042-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(255, 0x36363231353462632d383035332d313165622d383961662d356363643562623862373938, 4, '2042-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(256, 0x36363231386566382d383035332d313165622d383961662d356363643562623862373938, 4, '2042-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(257, 0x36363231633735382d383035332d313165622d383961662d356363643562623862373938, 4, '2042-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(258, 0x36363231666437382d383035332d313165622d383961662d356363643562623862373938, 4, '2042-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(259, 0x36363232333865352d383035332d313165622d383961662d356363643562623862373938, 4, '2042-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(260, 0x36363232383039342d383035332d313165622d383961662d356363643562623862373938, 4, '2042-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(261, 0x36363232643861652d383035332d313165622d383961662d356363643562623862373938, 4, '2042-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(262, 0x36363233316238382d383035332d313165622d383961662d356363643562623862373938, 4, '2042-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(263, 0x36363233353766622d383035332d313165622d383961662d356363643562623862373938, 4, '2043-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(264, 0x36363233393237642d383035332d313165622d383961662d356363643562623862373938, 4, '2043-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(265, 0x36363233636639322d383035332d313165622d383961662d356363643562623862373938, 4, '2043-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(266, 0x36363234303834662d383035332d313165622d383961662d356363643562623862373938, 4, '2043-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(267, 0x36363234343364382d383035332d313165622d383961662d356363643562623862373938, 4, '2043-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(268, 0x36363234376164352d383035332d313165622d383961662d356363643562623862373938, 4, '2043-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(269, 0x36363234623731632d383035332d313165622d383961662d356363643562623862373938, 4, '2043-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(270, 0x36363234663131652d383035332d313165622d383961662d356363643562623862373938, 4, '2043-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(271, 0x36363235323832312d383035332d313165622d383961662d356363643562623862373938, 4, '2043-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(272, 0x36363235373966652d383035332d313165622d383961662d356363643562623862373938, 4, '2043-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(273, 0x36363235623261652d383035332d313165622d383961662d356363643562623862373938, 4, '2043-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(274, 0x36363235656365642d383035332d313165622d383961662d356363643562623862373938, 4, '2043-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(275, 0x36363236323631652d383035332d313165622d383961662d356363643562623862373938, 4, '2044-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(276, 0x36363236373338662d383035332d313165622d383961662d356363643562623862373938, 4, '2044-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(277, 0x36363236613939622d383035332d313165622d383961662d356363643562623862373938, 4, '2044-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(278, 0x36363236653538352d383035332d313165622d383961662d356363643562623862373938, 4, '2044-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(279, 0x36363237323066382d383035332d313165622d383961662d356363643562623862373938, 4, '2044-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(280, 0x36363237363566302d383035332d313165622d383961662d356363643562623862373938, 4, '2044-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(281, 0x36363237396162382d383035332d313165622d383961662d356363643562623862373938, 4, '2044-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(282, 0x36363237653930312d383035332d313165622d383961662d356363643562623862373938, 4, '2044-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(283, 0x36363238323937382d383035332d313165622d383961662d356363643562623862373938, 4, '2044-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(284, 0x36363238366637632d383035332d313165622d383961662d356363643562623862373938, 4, '2044-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(285, 0x36363238613631322d383035332d313165622d383961662d356363643562623862373938, 4, '2044-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(286, 0x36363238653330662d383035332d313165622d383961662d356363643562623862373938, 4, '2044-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(287, 0x36363239316336612d383035332d313165622d383961662d356363643562623862373938, 4, '2045-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(288, 0x36363239353363642d383035332d313165622d383961662d356363643562623862373938, 4, '2045-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(289, 0x36363239386338382d383035332d313165622d383961662d356363643562623862373938, 4, '2045-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(290, 0x36363239633365322d383035332d313165622d383961662d356363643562623862373938, 4, '2045-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(291, 0x36363239666632392d383035332d313165622d383961662d356363643562623862373938, 4, '2045-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(292, 0x36363261336234342d383035332d313165622d383961662d356363643562623862373938, 4, '2045-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(293, 0x36363261396561362d383035332d313165622d383961662d356363643562623862373938, 4, '2045-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(294, 0x36363261643864322d383035332d313165622d383961662d356363643562623862373938, 4, '2045-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(295, 0x36363262306636322d383035332d313165622d383961662d356363643562623862373938, 4, '2045-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(296, 0x36363262343738352d383035332d313165622d383961662d356363643562623862373938, 4, '2045-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(297, 0x36363262376532652d383035332d313165622d383961662d356363643562623862373938, 4, '2045-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(298, 0x36363262626437622d383035332d313165622d383961662d356363643562623862373938, 4, '2045-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(299, 0x36363262663862362d383035332d313165622d383961662d356363643562623862373938, 4, '2046-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(300, 0x36363263326637382d383035332d313165622d383961662d356363643562623862373938, 4, '2046-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(301, 0x36363263363861302d383035332d313165622d383961662d356363643562623862373938, 4, '2046-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(302, 0x36363263396666662d383035332d313165622d383961662d356363643562623862373938, 4, '2046-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(303, 0x36363263646465302d383035332d313165622d383961662d356363643562623862373938, 4, '2046-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(304, 0x36363264333662312d383035332d313165622d383961662d356363643562623862373938, 4, '2046-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(305, 0x36363264373033372d383035332d313165622d383961662d356363643562623862373938, 4, '2046-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(306, 0x36363264613663342d383035332d313165622d383961662d356363643562623862373938, 4, '2046-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(307, 0x36363264653631322d383035332d313165622d383961662d356363643562623862373938, 4, '2046-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(308, 0x36363265323331322d383035332d313165622d383961662d356363643562623862373938, 4, '2046-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(309, 0x36363265373064612d383035332d313165622d383961662d356363643562623862373938, 4, '2046-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(310, 0x36363265613830662d383035332d313165622d383961662d356363643562623862373938, 4, '2046-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(311, 0x36363265646234352d383035332d313165622d383961662d356363643562623862373938, 4, '2047-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(312, 0x36363266313466612d383035332d313165622d383961662d356363643562623862373938, 4, '2047-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(313, 0x36363266343761342d383035332d313165622d383961662d356363643562623862373938, 4, '2047-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(314, 0x36363266393962612d383035332d313165622d383961662d356363643562623862373938, 4, '2047-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26');
INSERT INTO `receipts` (`id`, `cod`, `contract`, `due_date`, `payment_form`, `status`, `account_id`, `created_at`, `updated_at`) VALUES
(315, 0x36363266643564652d383035332d313165622d383961662d356363643562623862373938, 4, '2047-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(316, 0x36363330306639352d383035332d313165622d383961662d356363643562623862373938, 4, '2047-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(317, 0x36363330343466382d383035332d313165622d383961662d356363643562623862373938, 4, '2047-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(318, 0x36363330383036622d383035332d313165622d383961662d356363643562623862373938, 4, '2047-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(319, 0x36363330633035632d383035332d313165622d383961662d356363643562623862373938, 4, '2047-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(320, 0x36363330663763362d383035332d313165622d383961662d356363643562623862373938, 4, '2047-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(321, 0x36363331336164322d383035332d313165622d383961662d356363643562623862373938, 4, '2047-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(322, 0x36363331366662342d383035332d313165622d383961662d356363643562623862373938, 4, '2047-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(323, 0x36363331613762312d383035332d313165622d383961662d356363643562623862373938, 4, '2048-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(324, 0x36363331646438632d383035332d313165622d383961662d356363643562623862373938, 4, '2048-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(325, 0x36363332336534382d383035332d313165622d383961662d356363643562623862373938, 4, '2048-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(326, 0x36363332376332612d383035332d313165622d383961662d356363643562623862373938, 4, '2048-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(327, 0x36363332623161362d383035332d313165622d383961662d356363643562623862373938, 4, '2048-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(328, 0x36363332653732302d383035332d313165622d383961662d356363643562623862373938, 4, '2048-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(329, 0x36363333316561642d383035332d313165622d383961662d356363643562623862373938, 4, '2048-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(330, 0x36363333353839392d383035332d313165622d383961662d356363643562623862373938, 4, '2048-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(331, 0x36363333393835662d383035332d313165622d383961662d356363643562623862373938, 4, '2048-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(332, 0x36363333636666342d383035332d313165622d383961662d356363643562623862373938, 4, '2048-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(333, 0x36363334303762302d383035332d313165622d383961662d356363643562623862373938, 4, '2048-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(334, 0x36363334343265302d383035332d313165622d383961662d356363643562623862373938, 4, '2048-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(335, 0x36363334383533612d383035332d313165622d383961662d356363643562623862373938, 4, '2049-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(336, 0x36363334643862392d383035332d313165622d383961662d356363643562623862373938, 4, '2049-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(337, 0x36363335313334632d383035332d313165622d383961662d356363643562623862373938, 4, '2049-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(338, 0x36363335346130642d383035332d313165622d383961662d356363643562623862373938, 4, '2049-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(339, 0x36363335383562342d383035332d313165622d383961662d356363643562623862373938, 4, '2049-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(340, 0x36363335626639652d383035332d313165622d383961662d356363643562623862373938, 4, '2049-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(341, 0x36363335663739382d383035332d313165622d383961662d356363643562623862373938, 4, '2049-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(342, 0x36363336343064622d383035332d313165622d383961662d356363643562623862373938, 4, '2049-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(343, 0x36363336373439622d383035332d313165622d383961662d356363643562623862373938, 4, '2049-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(344, 0x36363336616564642d383035332d313165622d383961662d356363643562623862373938, 4, '2049-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(345, 0x36363336653266302d383035332d313165622d383961662d356363643562623862373938, 4, '2049-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(346, 0x36363337333830382d383035332d313165622d383961662d356363643562623862373938, 4, '2049-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(347, 0x36363337373430632d383035332d313165622d383961662d356363643562623862373938, 4, '2050-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(348, 0x36363337613935302d383035332d313165622d383961662d356363643562623862373938, 4, '2050-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(349, 0x36363337663630632d383035332d313165622d383961662d356363643562623862373938, 4, '2050-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(350, 0x36363338333938622d383035332d313165622d383961662d356363643562623862373938, 4, '2050-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(351, 0x36363338386134382d383035332d313165622d383961662d356363643562623862373938, 4, '2050-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(352, 0x36363338643061322d383035332d313165622d383961662d356363643562623862373938, 4, '2050-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(353, 0x36363339306564332d383035332d313165622d383961662d356363643562623862373938, 4, '2050-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(354, 0x36363339346336392d383035332d313165622d383961662d356363643562623862373938, 4, '2050-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(355, 0x36363339393233392d383035332d313165622d383961662d356363643562623862373938, 4, '2050-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(356, 0x36363339653730362d383035332d313165622d383961662d356363643562623862373938, 4, '2050-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(357, 0x36363361316538302d383035332d313165622d383961662d356363643562623862373938, 4, '2050-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(358, 0x36363361353562642d383035332d313165622d383961662d356363643562623862373938, 4, '2050-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(359, 0x36363361393163382d383035332d313165622d383961662d356363643562623862373938, 4, '2051-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(360, 0x36363361633862642d383035332d313165622d383961662d356363643562623862373938, 4, '2051-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(361, 0x36363362303036642d383035332d313165622d383961662d356363643562623862373938, 4, '2051-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(362, 0x36363362336533342d383035332d313165622d383961662d356363643562623862373938, 4, '2051-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(363, 0x36363362373535352d383035332d313165622d383961662d356363643562623862373938, 4, '2051-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(364, 0x36363362616334622d383035332d313165622d383961662d356363643562623862373938, 4, '2051-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(365, 0x36363362653433322d383035332d313165622d383961662d356363643562623862373938, 4, '2051-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(366, 0x36363363333735652d383035332d313165622d383961662d356363643562623862373938, 4, '2051-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(367, 0x36363363383237342d383035332d313165622d383961662d356363643562623862373938, 4, '2051-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(368, 0x36363363633232332d383035332d313165622d383961662d356363643562623862373938, 4, '2051-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(369, 0x36363363666230662d383035332d313165622d383961662d356363643562623862373938, 4, '2051-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(370, 0x36363364333239662d383035332d313165622d383961662d356363643562623862373938, 4, '2051-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(371, 0x36363364363866322d383035332d313165622d383961662d356363643562623862373938, 4, '2052-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(372, 0x36363364613030322d383035332d313165622d383961662d356363643562623862373938, 4, '2052-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(373, 0x36363364643862392d383035332d313165622d383961662d356363643562623862373938, 4, '2052-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(374, 0x36363365306565652d383035332d313165622d383961662d356363643562623862373938, 4, '2052-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(375, 0x36363365356436392d383035332d313165622d383961662d356363643562623862373938, 4, '2052-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(376, 0x36363365393539352d383035332d313165622d383961662d356363643562623862373938, 4, '2052-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(377, 0x36363365663065642d383035332d313165622d383961662d356363643562623862373938, 4, '2052-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(378, 0x36363366326532352d383035332d313165622d383961662d356363643562623862373938, 4, '2052-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(379, 0x36363366363334302d383035332d313165622d383961662d356363643562623862373938, 4, '2052-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(380, 0x36363366393762642d383035332d313165622d383961662d356363643562623862373938, 4, '2052-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(381, 0x36363366643362312d383035332d313165622d383961662d356363643562623862373938, 4, '2052-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(382, 0x36363430306363612d383035332d313165622d383961662d356363643562623862373938, 4, '2052-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(383, 0x36363430343262622d383035332d313165622d383961662d356363643562623862373938, 4, '2053-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(384, 0x36363430376138622d383035332d313165622d383961662d356363643562623862373938, 4, '2053-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(385, 0x36363430623037642d383035332d313165622d383961662d356363643562623862373938, 4, '2053-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(386, 0x36363430653562642d383035332d313165622d383961662d356363643562623862373938, 4, '2053-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(387, 0x36363431316361372d383035332d313165622d383961662d356363643562623862373938, 4, '2053-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(388, 0x36363431386665372d383035332d313165622d383961662d356363643562623862373938, 4, '2053-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(389, 0x36363431636161312d383035332d313165622d383961662d356363643562623862373938, 4, '2053-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(390, 0x36363432303234342d383035332d313165622d383961662d356363643562623862373938, 4, '2053-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(391, 0x36363432333939352d383035332d313165622d383961662d356363643562623862373938, 4, '2053-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(392, 0x36363432373565392d383035332d313165622d383961662d356363643562623862373938, 4, '2053-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(393, 0x36363432623038382d383035332d313165622d383961662d356363643562623862373938, 4, '2053-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(394, 0x36363432663062312d383035332d313165622d383961662d356363643562623862373938, 4, '2053-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(395, 0x36363433323665312d383035332d313165622d383961662d356363643562623862373938, 4, '2054-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(396, 0x36363433356437322d383035332d313165622d383961662d356363643562623862373938, 4, '2054-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(397, 0x36363433393338632d383035332d313165622d383961662d356363643562623862373938, 4, '2054-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(398, 0x36363433663861632d383035332d313165622d383961662d356363643562623862373938, 4, '2054-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(399, 0x36363434336238362d383035332d313165622d383961662d356363643562623862373938, 4, '2054-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(400, 0x36363434373836332d383035332d313165622d383961662d356363643562623862373938, 4, '2054-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(401, 0x36363434616530652d383035332d313165622d383961662d356363643562623862373938, 4, '2054-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(402, 0x36363434653564642d383035332d313165622d383961662d356363643562623862373938, 4, '2054-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(403, 0x36363435323038312d383035332d313165622d383961662d356363643562623862373938, 4, '2054-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(404, 0x36363435356132662d383035332d313165622d383961662d356363643562623862373938, 4, '2054-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(405, 0x36363435393438372d383035332d313165622d383961662d356363643562623862373938, 4, '2054-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(406, 0x36363435636366352d383035332d313165622d383961662d356363643562623862373938, 4, '2054-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(407, 0x36363436303535612d383035332d313165622d383961662d356363643562623862373938, 4, '2055-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(408, 0x36363436346135622d383035332d313165622d383961662d356363643562623862373938, 4, '2055-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(409, 0x36363436623039632d383035332d313165622d383961662d356363643562623862373938, 4, '2055-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(410, 0x36363436653662302d383035332d313165622d383961662d356363643562623862373938, 4, '2055-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(411, 0x36363437323161372d383035332d313165622d383961662d356363643562623862373938, 4, '2055-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(412, 0x36363437356439302d383035332d313165622d383961662d356363643562623862373938, 4, '2055-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(413, 0x36363437386664632d383035332d313165622d383961662d356363643562623862373938, 4, '2055-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(414, 0x36363437633563312d383035332d313165622d383961662d356363643562623862373938, 4, '2055-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(415, 0x36363437666161362d383035332d313165622d383961662d356363643562623862373938, 4, '2055-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(416, 0x36363438333061612d383035332d313165622d383961662d356363643562623862373938, 4, '2055-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(417, 0x36363438363833652d383035332d313165622d383961662d356363643562623862373938, 4, '2055-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(418, 0x36363438623363352d383035332d313165622d383961662d356363643562623862373938, 4, '2055-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(419, 0x36363439306433382d383035332d313165622d383961662d356363643562623862373938, 4, '2056-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(420, 0x36363439346133312d383035332d313165622d383961662d356363643562623862373938, 4, '2056-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(421, 0x36363439383532362d383035332d313165622d383961662d356363643562623862373938, 4, '2056-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(422, 0x36363439626238652d383035332d313165622d383961662d356363643562623862373938, 4, '2056-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(423, 0x36363439663437332d383035332d313165622d383961662d356363643562623862373938, 4, '2056-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(424, 0x36363461323931612d383035332d313165622d383961662d356363643562623862373938, 4, '2056-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(425, 0x36363461366437342d383035332d313165622d383961662d356363643562623862373938, 4, '2056-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(426, 0x36363461613463662d383035332d313165622d383961662d356363643562623862373938, 4, '2056-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(427, 0x36363461646339662d383035332d313165622d383961662d356363643562623862373938, 4, '2056-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(428, 0x36363462313530612d383035332d313165622d383961662d356363643562623862373938, 4, '2056-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(429, 0x36363462346666382d383035332d313165622d383961662d356363643562623862373938, 4, '2056-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(430, 0x36363462623031362d383035332d313165622d383961662d356363643562623862373938, 4, '2056-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(431, 0x36363462656162392d383035332d313165622d383961662d356363643562623862373938, 4, '2057-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(432, 0x36363463333561372d383035332d313165622d383961662d356363643562623862373938, 4, '2057-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(433, 0x36363463366239312d383035332d313165622d383961662d356363643562623862373938, 4, '2057-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(434, 0x36363463613234372d383035332d313165622d383961662d356363643562623862373938, 4, '2057-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(435, 0x36363463643836652d383035332d313165622d383961662d356363643562623862373938, 4, '2057-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(436, 0x36363464313263342d383035332d313165622d383961662d356363643562623862373938, 4, '2057-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(437, 0x36363464353735622d383035332d313165622d383961662d356363643562623862373938, 4, '2057-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(438, 0x36363464613030622d383035332d313165622d383961662d356363643562623862373938, 4, '2057-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(439, 0x36363531326238642d383035332d313165622d383961662d356363643562623862373938, 4, '2057-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(440, 0x36363532343935312d383035332d313165622d383961662d356363643562623862373938, 4, '2057-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(441, 0x36363532613663392d383035332d313165622d383961662d356363643562623862373938, 4, '2057-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(442, 0x36363532653734662d383035332d313165622d383961662d356363643562623862373938, 4, '2057-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(443, 0x36363533346566382d383035332d313165622d383961662d356363643562623862373938, 4, '2058-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(444, 0x36363533393636652d383035332d313165622d383961662d356363643562623862373938, 4, '2058-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(445, 0x36363533643532652d383035332d313165622d383961662d356363643562623862373938, 4, '2058-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(446, 0x36363534313235662d383035332d313165622d383961662d356363643562623862373938, 4, '2058-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(447, 0x36363534353436622d383035332d313165622d383961662d356363643562623862373938, 4, '2058-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(448, 0x36363534393132382d383035332d313165622d383961662d356363643562623862373938, 4, '2058-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(449, 0x36363534636638652d383035332d313165622d383961662d356363643562623862373938, 4, '2058-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(450, 0x36363535313438622d383035332d313165622d383961662d356363643562623862373938, 4, '2058-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(451, 0x36363535353261632d383035332d313165622d383961662d356363643562623862373938, 4, '2058-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(452, 0x36363535616136382d383035332d313165622d383961662d356363643562623862373938, 4, '2058-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(453, 0x36363535663731322d383035332d313165622d383961662d356363643562623862373938, 4, '2058-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(454, 0x36363536333534322d383035332d313165622d383961662d356363643562623862373938, 4, '2058-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(455, 0x36363536366463632d383035332d313165622d383961662d356363643562623862373938, 4, '2059-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(456, 0x36363536626366352d383035332d313165622d383961662d356363643562623862373938, 4, '2059-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(457, 0x36363537303061332d383035332d313165622d383961662d356363643562623862373938, 4, '2059-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(458, 0x36363537333962642d383035332d313165622d383961662d356363643562623862373938, 4, '2059-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(459, 0x36363537373037632d383035332d313165622d383961662d356363643562623862373938, 4, '2059-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(460, 0x36363537613731612d383035332d313165622d383961662d356363643562623862373938, 4, '2059-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(461, 0x36363537646536612d383035332d313165622d383961662d356363643562623862373938, 4, '2059-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(462, 0x36363538333433342d383035332d313165622d383961662d356363643562623862373938, 4, '2059-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(463, 0x36363538376331362d383035332d313165622d383961662d356363643562623862373938, 4, '2059-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(464, 0x36363538623465662d383035332d313165622d383961662d356363643562623862373938, 4, '2059-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(465, 0x36363538656538322d383035332d313165622d383961662d356363643562623862373938, 4, '2059-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(466, 0x36363539333031342d383035332d313165622d383961662d356363643562623862373938, 4, '2059-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(467, 0x36363539363861312d383035332d313165622d383961662d356363643562623862373938, 4, '2060-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(468, 0x36363539613463632d383035332d313165622d383961662d356363643562623862373938, 4, '2060-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(469, 0x36363539646232382d383035332d313165622d383961662d356363643562623862373938, 4, '2060-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(470, 0x36363561323438392d383035332d313165622d383961662d356363643562623862373938, 4, '2060-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(471, 0x36363561356230662d383035332d313165622d383961662d356363643562623862373938, 4, '2060-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(472, 0x36363561393564322d383035332d313165622d383961662d356363643562623862373938, 4, '2060-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(473, 0x36363561656261632d383035332d313165622d383961662d356363643562623862373938, 4, '2060-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(474, 0x36363562323035642d383035332d313165622d383961662d356363643562623862373938, 4, '2060-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(475, 0x36363562353731632d383035332d313165622d383961662d356363643562623862373938, 4, '2060-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(476, 0x36363562393337382d383035332d313165622d383961662d356363643562623862373938, 4, '2060-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(477, 0x36363562636163312d383035332d313165622d383961662d356363643562623862373938, 4, '2060-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(478, 0x36363563303039662d383035332d313165622d383961662d356363643562623862373938, 4, '2060-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(479, 0x36363563333863352d383035332d313165622d383961662d356363643562623862373938, 4, '2061-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(480, 0x36363563366633392d383035332d313165622d383961662d356363643562623862373938, 4, '2061-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(481, 0x36363563616535302d383035332d313165622d383961662d356363643562623862373938, 4, '2061-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(482, 0x36363563656337622d383035332d313165622d383961662d356363643562623862373938, 4, '2061-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(483, 0x36363564326134312d383035332d313165622d383961662d356363643562623862373938, 4, '2061-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(484, 0x36363564373662342d383035332d313165622d383961662d356363643562623862373938, 4, '2061-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(485, 0x36363564616531392d383035332d313165622d383961662d356363643562623862373938, 4, '2061-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(486, 0x36363564653866622d383035332d313165622d383961662d356363643562623862373938, 4, '2061-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(487, 0x36363565323431332d383035332d313165622d383961662d356363643562623862373938, 4, '2061-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(488, 0x36363565356662352d383035332d313165622d383961662d356363643562623862373938, 4, '2061-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(489, 0x36363565393836632d383035332d313165622d383961662d356363643562623862373938, 4, '2061-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(490, 0x36363565643135332d383035332d313165622d383961662d356363643562623862373938, 4, '2061-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(491, 0x36363566303561312d383035332d313165622d383961662d356363643562623862373938, 4, '2062-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(492, 0x36363566336661622d383035332d313165622d383961662d356363643562623862373938, 4, '2062-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(493, 0x36363566373766652d383035332d313165622d383961662d356363643562623862373938, 4, '2062-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(494, 0x36363566636333302d383035332d313165622d383961662d356363643562623862373938, 4, '2062-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(495, 0x36363630313534652d383035332d313165622d383961662d356363643562623862373938, 4, '2062-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(496, 0x36363630353431382d383035332d313165622d383961662d356363643562623862373938, 4, '2062-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(497, 0x36363630613733642d383035332d313165622d383961662d356363643562623862373938, 4, '2062-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(498, 0x36363630653137382d383035332d313165622d383961662d356363643562623862373938, 4, '2062-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(499, 0x36363631313762322d383035332d313165622d383961662d356363643562623862373938, 4, '2062-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(500, 0x36363631353064332d383035332d313165622d383961662d356363643562623862373938, 4, '2062-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(501, 0x36363631383838642d383035332d313165622d383961662d356363643562623862373938, 4, '2062-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(502, 0x36363631633064612d383035332d313165622d383961662d356363643562623862373938, 4, '2062-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(503, 0x36363631663766362d383035332d313165622d383961662d356363643562623862373938, 4, '2063-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(504, 0x36363632366333352d383035332d313165622d383961662d356363643562623862373938, 4, '2063-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(505, 0x36363632623261652d383035332d313165622d383961662d356363643562623862373938, 4, '2063-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(506, 0x36363632656465342d383035332d313165622d383961662d356363643562623862373938, 4, '2063-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(507, 0x36363633323961632d383035332d313165622d383961662d356363643562623862373938, 4, '2063-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(508, 0x36363633363165652d383035332d313165622d383961662d356363643562623862373938, 4, '2063-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(509, 0x36363633396261312d383035332d313165622d383961662d356363643562623862373938, 4, '2063-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(510, 0x36363633636566332d383035332d313165622d383961662d356363643562623862373938, 4, '2063-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(511, 0x36363634303562662d383035332d313165622d383961662d356363643562623862373938, 4, '2063-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(512, 0x36363634336239342d383035332d313165622d383961662d356363643562623862373938, 4, '2063-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(513, 0x36363634373764382d383035332d313165622d383961662d356363643562623862373938, 4, '2063-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(514, 0x36363634616639622d383035332d313165622d383961662d356363643562623862373938, 4, '2063-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(515, 0x36363635313636622d383035332d313165622d383961662d356363643562623862373938, 4, '2064-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(516, 0x36363635346661642d383035332d313165622d383961662d356363643562623862373938, 4, '2064-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(517, 0x36363635383734362d383035332d313165622d383961662d356363643562623862373938, 4, '2064-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(518, 0x36363635633032362d383035332d313165622d383961662d356363643562623862373938, 4, '2064-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(519, 0x36363635666162392d383035332d313165622d383961662d356363643562623862373938, 4, '2064-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(520, 0x36363636333164382d383035332d313165622d383961662d356363643562623862373938, 4, '2064-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(521, 0x36363636363830372d383035332d313165622d383961662d356363643562623862373938, 4, '2064-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(522, 0x36363636396338392d383035332d313165622d383961662d356363643562623862373938, 4, '2064-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(523, 0x36363636643735332d383035332d313165622d383961662d356363643562623862373938, 4, '2064-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(524, 0x36363637306539382d383035332d313165622d383961662d356363643562623862373938, 4, '2064-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(525, 0x36363637346162322d383035332d313165622d383961662d356363643562623862373938, 4, '2064-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(526, 0x36363637616131362d383035332d313165622d383961662d356363643562623862373938, 4, '2064-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(527, 0x36363637653036382d383035332d313165622d383961662d356363643562623862373938, 4, '2065-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(528, 0x36363638313832372d383035332d313165622d383961662d356363643562623862373938, 4, '2065-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(529, 0x36363638353262612d383035332d313165622d383961662d356363643562623862373938, 4, '2065-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(530, 0x36363638383965332d383035332d313165622d383961662d356363643562623862373938, 4, '2065-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(531, 0x36363638633465612d383035332d313165622d383961662d356363643562623862373938, 4, '2065-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(532, 0x36363639303263652d383035332d313165622d383961662d356363643562623862373938, 4, '2065-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(533, 0x36363639333763312d383035332d313165622d383961662d356363643562623862373938, 4, '2065-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(534, 0x36363639366536392d383035332d313165622d383961662d356363643562623862373938, 4, '2065-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(535, 0x36363639616432662d383035332d313165622d383961662d356363643562623862373938, 4, '2065-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(536, 0x36363661306336612d383035332d313165622d383961662d356363643562623862373938, 4, '2065-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(537, 0x36363661356438392d383035332d313165622d383961662d356363643562623862373938, 4, '2065-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(538, 0x36363661393932372d383035332d313165622d383961662d356363643562623862373938, 4, '2065-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(539, 0x36363661636566382d383035332d313165622d383961662d356363643562623862373938, 4, '2066-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(540, 0x36363662303734322d383035332d313165622d383961662d356363643562623862373938, 4, '2066-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(541, 0x36363662336564332d383035332d313165622d383961662d356363643562623862373938, 4, '2066-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(542, 0x36363662373332642d383035332d313165622d383961662d356363643562623862373938, 4, '2066-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(543, 0x36363662613734632d383035332d313165622d383961662d356363643562623862373938, 4, '2066-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(544, 0x36363662653466652d383035332d313165622d383961662d356363643562623862373938, 4, '2066-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(545, 0x36363663323333332d383035332d313165622d383961662d356363643562623862373938, 4, '2066-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(546, 0x36363663356162322d383035332d313165622d383961662d356363643562623862373938, 4, '2066-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(547, 0x36363663616565372d383035332d313165622d383961662d356363643562623862373938, 4, '2066-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(548, 0x36363663653663642d383035332d313165622d383961662d356363643562623862373938, 4, '2066-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(549, 0x36363664323037352d383035332d313165622d383961662d356363643562623862373938, 4, '2066-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(550, 0x36363664353661662d383035332d313165622d383961662d356363643562623862373938, 4, '2066-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(551, 0x36363664386539322d383035332d313165622d383961662d356363643562623862373938, 4, '2067-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(552, 0x36363664633838372d383035332d313165622d383961662d356363643562623862373938, 4, '2067-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(553, 0x36363665303331642d383035332d313165622d383961662d356363643562623862373938, 4, '2067-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(554, 0x36363665333963622d383035332d313165622d383961662d356363643562623862373938, 4, '2067-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(555, 0x36363665373862352d383035332d313165622d383961662d356363643562623862373938, 4, '2067-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(556, 0x36363665623039312d383035332d313165622d383961662d356363643562623862373938, 4, '2067-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(557, 0x36363665666533312d383035332d313165622d383961662d356363643562623862373938, 4, '2067-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(558, 0x36363666343866382d383035332d313165622d383961662d356363643562623862373938, 4, '2067-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(559, 0x36363666376662632d383035332d313165622d383961662d356363643562623862373938, 4, '2067-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(560, 0x36363666623537612d383035332d313165622d383961662d356363643562623862373938, 4, '2067-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(561, 0x36363666656538632d383035332d313165622d383961662d356363643562623862373938, 4, '2067-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(562, 0x36363730323464642d383035332d313165622d383961662d356363643562623862373938, 4, '2067-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(563, 0x36363730356266642d383035332d313165622d383961662d356363643562623862373938, 4, '2068-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(564, 0x36363730393839372d383035332d313165622d383961662d356363643562623862373938, 4, '2068-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(565, 0x36363730643638622d383035332d313165622d383961662d356363643562623862373938, 4, '2068-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(566, 0x36363731306363392d383035332d313165622d383961662d356363643562623862373938, 4, '2068-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(567, 0x36363731343462312d383035332d313165622d383961662d356363643562623862373938, 4, '2068-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(568, 0x36363731386431362d383035332d313165622d383961662d356363643562623862373938, 4, '2068-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(569, 0x36363731643837372d383035332d313165622d383961662d356363643562623862373938, 4, '2068-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(570, 0x36363732313431352d383035332d313165622d383961662d356363643562623862373938, 4, '2068-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(571, 0x36363732356364372d383035332d313165622d383961662d356363643562623862373938, 4, '2068-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(572, 0x36363732393464652d383035332d313165622d383961662d356363643562623862373938, 4, '2068-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(573, 0x36363732636133392d383035332d313165622d383961662d356363643562623862373938, 4, '2068-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(574, 0x36363732666663382d383035332d313165622d383961662d356363643562623862373938, 4, '2068-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(575, 0x36363733333964642d383035332d313165622d383961662d356363643562623862373938, 4, '2069-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(576, 0x36363733366361392d383035332d313165622d383961662d356363643562623862373938, 4, '2069-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(577, 0x36363733616338632d383035332d313165622d383961662d356363643562623862373938, 4, '2069-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(578, 0x36363733653435642d383035332d313165622d383961662d356363643562623862373938, 4, '2069-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(579, 0x36363734336364342d383035332d313165622d383961662d356363643562623862373938, 4, '2069-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(580, 0x36363734376131392d383035332d313165622d383961662d356363643562623862373938, 4, '2069-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(581, 0x36363734623237642d383035332d313165622d383961662d356363643562623862373938, 4, '2069-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(582, 0x36363734653766632d383035332d313165622d383961662d356363643562623862373938, 4, '2069-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(583, 0x36363735316664372d383035332d313165622d383961662d356363643562623862373938, 4, '2069-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(584, 0x36363735353935322d383035332d313165622d383961662d356363643562623862373938, 4, '2069-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(585, 0x36363735393332632d383035332d313165622d383961662d356363643562623862373938, 4, '2069-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(586, 0x36363735636530342d383035332d313165622d383961662d356363643562623862373938, 4, '2069-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(587, 0x36363736303635302d383035332d313165622d383961662d356363643562623862373938, 4, '2070-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(588, 0x36363736336237382d383035332d313165622d383961662d356363643562623862373938, 4, '2070-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(589, 0x36363736373065662d383035332d313165622d383961662d356363643562623862373938, 4, '2070-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(590, 0x36363736643363302d383035332d313165622d383961662d356363643562623862373938, 4, '2070-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(591, 0x36363737306437632d383035332d313165622d383961662d356363643562623862373938, 4, '2070-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(592, 0x36363737343432642d383035332d313165622d383961662d356363643562623862373938, 4, '2070-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(593, 0x36363737376131362d383035332d313165622d383961662d356363643562623862373938, 4, '2070-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(594, 0x36363737623334342d383035332d313165622d383961662d356363643562623862373938, 4, '2070-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(595, 0x36363737663262342d383035332d313165622d383961662d356363643562623862373938, 4, '2070-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(596, 0x36363738326434652d383035332d313165622d383961662d356363643562623862373938, 4, '2070-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(597, 0x36363738363463342d383035332d313165622d383961662d356363643562623862373938, 4, '2070-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(598, 0x36363738396261372d383035332d313165622d383961662d356363643562623862373938, 4, '2070-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(599, 0x36363738643136332d383035332d313165622d383961662d356363643562623862373938, 4, '2071-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(600, 0x36363739303537342d383035332d313165622d383961662d356363643562623862373938, 4, '2071-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(601, 0x36363739363364662d383035332d313165622d383961662d356363643562623862373938, 4, '2071-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(602, 0x36363739396531382d383035332d313165622d383961662d356363643562623862373938, 4, '2071-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(603, 0x36363739643964632d383035332d313165622d383961662d356363643562623862373938, 4, '2071-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(604, 0x36363761333438622d383035332d313165622d383961662d356363643562623862373938, 4, '2071-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(605, 0x36363761363765372d383035332d313165622d383961662d356363643562623862373938, 4, '2071-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(606, 0x36363761396432362d383035332d313165622d383961662d356363643562623862373938, 4, '2071-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(607, 0x36363761643361372d383035332d313165622d383961662d356363643562623862373938, 4, '2071-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(608, 0x36363762306136392d383035332d313165622d383961662d356363643562623862373938, 4, '2071-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(609, 0x36363762343137352d383035332d313165622d383961662d356363643562623862373938, 4, '2071-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(610, 0x36363762373961632d383035332d313165622d383961662d356363643562623862373938, 4, '2071-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(611, 0x36363762636565612d383035332d313165622d383961662d356363643562623862373938, 4, '2072-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(612, 0x36363763306333662d383035332d313165622d383961662d356363643562623862373938, 4, '2072-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(613, 0x36363763343330372d383035332d313165622d383961662d356363643562623862373938, 4, '2072-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(614, 0x36363763373963392d383035332d313165622d383961662d356363643562623862373938, 4, '2072-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(615, 0x36363763623666632d383035332d313165622d383961662d356363643562623862373938, 4, '2072-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(616, 0x36363763656562392d383035332d313165622d383961662d356363643562623862373938, 4, '2072-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(617, 0x36363764323632612d383035332d313165622d383961662d356363643562623862373938, 4, '2072-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(618, 0x36363764356438362d383035332d313165622d383961662d356363643562623862373938, 4, '2072-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(619, 0x36363764393335312d383035332d313165622d383961662d356363643562623862373938, 4, '2072-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(620, 0x36363764633963642d383035332d313165622d383961662d356363643562623862373938, 4, '2072-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(621, 0x36363764666538342d383035332d313165622d383961662d356363643562623862373938, 4, '2072-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(622, 0x36363765353533612d383035332d313165622d383961662d356363643562623862373938, 4, '2072-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(623, 0x36363765393833312d383035332d313165622d383961662d356363643562623862373938, 4, '2073-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(624, 0x36363765643066652d383035332d313165622d383961662d356363643562623862373938, 4, '2073-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(625, 0x36363766313135342d383035332d313165622d383961662d356363643562623862373938, 4, '2073-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(626, 0x36363766346563302d383035332d313165622d383961662d356363643562623862373938, 4, '2073-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(627, 0x36363766383765362d383035332d313165622d383961662d356363643562623862373938, 4, '2073-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26');
INSERT INTO `receipts` (`id`, `cod`, `contract`, `due_date`, `payment_form`, `status`, `account_id`, `created_at`, `updated_at`) VALUES
(628, 0x36363766633131392d383035332d313165622d383961662d356363643562623862373938, 4, '2073-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(629, 0x36363766666433312d383035332d313165622d383961662d356363643562623862373938, 4, '2073-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(630, 0x36363830333564352d383035332d313165622d383961662d356363643562623862373938, 4, '2073-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(631, 0x36363830366637362d383035332d313165622d383961662d356363643562623862373938, 4, '2073-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(632, 0x36363830616162392d383035332d313165622d383961662d356363643562623862373938, 4, '2073-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(633, 0x36363831303530612d383035332d313165622d383961662d356363643562623862373938, 4, '2073-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(634, 0x36363831343235382d383035332d313165622d383961662d356363643562623862373938, 4, '2073-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(635, 0x36363831383230392d383035332d313165622d383961662d356363643562623862373938, 4, '2074-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(636, 0x36363831623938652d383035332d313165622d383961662d356363643562623862373938, 4, '2074-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(637, 0x36363832303833302d383035332d313165622d383961662d356363643562623862373938, 4, '2074-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(638, 0x36363832336364392d383035332d313165622d383961662d356363643562623862373938, 4, '2074-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(639, 0x36363832373137372d383035332d313165622d383961662d356363643562623862373938, 4, '2074-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(640, 0x36363832613566632d383035332d313165622d383961662d356363643562623862373938, 4, '2074-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(641, 0x36363832653034632d383035332d313165622d383961662d356363643562623862373938, 4, '2074-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(642, 0x36363833313634652d383035332d313165622d383961662d356363643562623862373938, 4, '2074-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(643, 0x36363833363137362d383035332d313165622d383961662d356363643562623862373938, 4, '2074-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(644, 0x36363833623639302d383035332d313165622d383961662d356363643562623862373938, 4, '2074-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(645, 0x36363833666263642d383035332d313165622d383961662d356363643562623862373938, 4, '2074-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(646, 0x36363834346435342d383035332d313165622d383961662d356363643562623862373938, 4, '2074-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(647, 0x36363834613633622d383035332d313165622d383961662d356363643562623862373938, 4, '2075-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(648, 0x36363834653539622d383035332d313165622d383961662d356363643562623862373938, 4, '2075-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(649, 0x36363835323066332d383035332d313165622d383961662d356363643562623862373938, 4, '2075-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(650, 0x36363835356566312d383035332d313165622d383961662d356363643562623862373938, 4, '2075-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(651, 0x36363835396337302d383035332d313165622d383961662d356363643562623862373938, 4, '2075-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(652, 0x36363835666262362d383035332d313165622d383961662d356363643562623862373938, 4, '2075-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(653, 0x36363836336261332d383035332d313165622d383961662d356363643562623862373938, 4, '2075-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(654, 0x36363836373161392d383035332d313165622d383961662d356363643562623862373938, 4, '2075-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(655, 0x36363836613563302d383035332d313165622d383961662d356363643562623862373938, 4, '2075-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(656, 0x36363836643961632d383035332d313165622d383961662d356363643562623862373938, 4, '2075-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(657, 0x36363837313464362d383035332d313165622d383961662d356363643562623862373938, 4, '2075-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(658, 0x36363837343836342d383035332d313165622d383961662d356363643562623862373938, 4, '2075-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(659, 0x36363837383338632d383035332d313165622d383961662d356363643562623862373938, 4, '2076-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(660, 0x36363837626233342d383035332d313165622d383961662d356363643562623862373938, 4, '2076-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(661, 0x36363837663139302d383035332d313165622d383961662d356363643562623862373938, 4, '2076-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(662, 0x36363838323563332d383035332d313165622d383961662d356363643562623862373938, 4, '2076-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(663, 0x36363838376265612d383035332d313165622d383961662d356363643562623862373938, 4, '2076-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(664, 0x36363838633062362d383035332d313165622d383961662d356363643562623862373938, 4, '2076-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(665, 0x36363838666264302d383035332d313165622d383961662d356363643562623862373938, 4, '2076-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(666, 0x36363839333434362d383035332d313165622d383961662d356363643562623862373938, 4, '2076-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(667, 0x36363839366161382d383035332d313165622d383961662d356363643562623862373938, 4, '2076-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(668, 0x36363839613564342d383035332d313165622d383961662d356363643562623862373938, 4, '2076-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(669, 0x36363839646233312d383035332d313165622d383961662d356363643562623862373938, 4, '2076-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(670, 0x36363861323233302d383035332d313165622d383961662d356363643562623862373938, 4, '2076-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(671, 0x36363861353639392d383035332d313165622d383961662d356363643562623862373938, 4, '2077-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(672, 0x36363861386466372d383035332d313165622d383961662d356363643562623862373938, 4, '2077-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(673, 0x36363861636263302d383035332d313165622d383961662d356363643562623862373938, 4, '2077-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(674, 0x36363862323935382d383035332d313165622d383961662d356363643562623862373938, 4, '2077-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(675, 0x36363862356566612d383035332d313165622d383961662d356363643562623862373938, 4, '2077-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(676, 0x36363862393162652d383035332d313165622d383961662d356363643562623862373938, 4, '2077-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(677, 0x36363862643866382d383035332d313165622d383961662d356363643562623862373938, 4, '2077-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(678, 0x36363863313664372d383035332d313165622d383961662d356363643562623862373938, 4, '2077-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(679, 0x36363863346366382d383035332d313165622d383961662d356363643562623862373938, 4, '2077-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(680, 0x36363863383630642d383035332d313165622d383961662d356363643562623862373938, 4, '2077-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(681, 0x36363863626362392d383035332d313165622d383961662d356363643562623862373938, 4, '2077-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(682, 0x36363863663361392d383035332d313165622d383961662d356363643562623862373938, 4, '2077-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(683, 0x36363864326233642d383035332d313165622d383961662d356363643562623862373938, 4, '2078-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(684, 0x36363864366565372d383035332d313165622d383961662d356363643562623862373938, 4, '2078-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(685, 0x36363864643462312d383035332d313165622d383961662d356363643562623862373938, 4, '2078-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(686, 0x36363865306432342d383035332d313165622d383961662d356363643562623862373938, 4, '2078-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(687, 0x36363865343335642d383035332d313165622d383961662d356363643562623862373938, 4, '2078-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(688, 0x36363865376261342d383035332d313165622d383961662d356363643562623862373938, 4, '2078-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(689, 0x36363865623337642d383035332d313165622d383961662d356363643562623862373938, 4, '2078-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(690, 0x36363865653839342d383035332d313165622d383961662d356363643562623862373938, 4, '2078-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(691, 0x36363866323765632d383035332d313165622d383961662d356363643562623862373938, 4, '2078-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(692, 0x36363866356661382d383035332d313165622d383961662d356363643562623862373938, 4, '2078-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(693, 0x36363866393565652d383035332d313165622d383961662d356363643562623862373938, 4, '2078-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(694, 0x36363866636665322d383035332d313165622d383961662d356363643562623862373938, 4, '2078-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(695, 0x36363930326563652d383035332d313165622d383961662d356363643562623862373938, 4, '2079-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(696, 0x36363930366435362d383035332d313165622d383961662d356363643562623862373938, 4, '2079-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(697, 0x36363930613965362d383035332d313165622d383961662d356363643562623862373938, 4, '2079-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(698, 0x36363930646634352d383035332d313165622d383961662d356363643562623862373938, 4, '2079-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(699, 0x36363931313639642d383035332d313165622d383961662d356363643562623862373938, 4, '2079-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(700, 0x36363931346432302d383035332d313165622d383961662d356363643562623862373938, 4, '2079-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(701, 0x36363931383636312d383035332d313165622d383961662d356363643562623862373938, 4, '2079-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(702, 0x36363931626261652d383035332d313165622d383961662d356363643562623862373938, 4, '2079-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(703, 0x36363931663665372d383035332d313165622d383961662d356363643562623862373938, 4, '2079-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(704, 0x36363932343663662d383035332d313165622d383961662d356363643562623862373938, 4, '2079-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(705, 0x36363932386336362d383035332d313165622d383961662d356363643562623862373938, 4, '2079-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(706, 0x36363932643730322d383035332d313165622d383961662d356363643562623862373938, 4, '2079-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(707, 0x36363933306462312d383035332d313165622d383961662d356363643562623862373938, 4, '2080-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(708, 0x36363933343434362d383035332d313165622d383961662d356363643562623862373938, 4, '2080-02-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(709, 0x36363933373832362d383035332d313165622d383961662d356363643562623862373938, 4, '2080-03-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(710, 0x36363933623466342d383035332d313165622d383961662d356363643562623862373938, 4, '2080-04-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(711, 0x36363933656266322d383035332d313165622d383961662d356363643562623862373938, 4, '2080-05-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(712, 0x36363934323238652d383035332d313165622d383961662d356363643562623862373938, 4, '2080-06-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(713, 0x36363934356233652d383035332d313165622d383961662d356363643562623862373938, 4, '2080-07-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(714, 0x36363934393163632d383035332d313165622d383961662d356363643562623862373938, 4, '2080-08-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(715, 0x36363934633632372d383035332d313165622d383961662d356363643562623862373938, 4, '2080-09-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(716, 0x36363934666262312d383035332d313165622d383961662d356363643562623862373938, 4, '2080-10-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(717, 0x36363935363238322d383035332d313165622d383961662d356363643562623862373938, 4, '2080-11-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(718, 0x36363935396132372d383035332d313165622d383961662d356363643562623862373938, 4, '2080-12-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(719, 0x36363935643162642d383035332d313165622d383961662d356363643562623862373938, 4, '2081-01-05', 'money', 1, 1, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(720, 0x36363936303534312d383035332d313165622d383961662d356363643562623862373938, 4, '2081-02-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(721, 0x36363936336561312d383035332d313165622d383961662d356363643562623862373938, 4, '2081-03-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(722, 0x36363936373363352d383035332d313165622d383961662d356363643562623862373938, 4, '2081-04-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(723, 0x36363936616361332d383035332d313165622d383961662d356363643562623862373938, 4, '2081-05-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(724, 0x36363936653739622d383035332d313165622d383961662d356363643562623862373938, 4, '2081-06-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(725, 0x36363937316462392d383035332d313165622d383961662d356363643562623862373938, 4, '2081-07-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(726, 0x36363937353639322d383035332d313165622d383961662d356363643562623862373938, 4, '2081-08-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(727, 0x36363937393561312d383035332d313165622d383961662d356363643562623862373938, 4, '2081-09-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(728, 0x36363937656162662d383035332d313165622d383961662d356363643562623862373938, 4, '2081-10-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(729, 0x36363938323633352d383035332d313165622d383961662d356363643562623862373938, 4, '2081-11-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(730, 0x36363938363135342d383035332d313165622d383961662d356363643562623862373938, 4, '2081-12-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(731, 0x36363938393739362d383035332d313165622d383961662d356363643562623862373938, 4, '2082-01-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(732, 0x36363938643061392d383035332d313165622d383961662d356363643562623862373938, 4, '2082-02-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(733, 0x36363939303730312d383035332d313165622d383961662d356363643562623862373938, 4, '2082-03-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(734, 0x36363939336430622d383035332d313165622d383961662d356363643562623862373938, 4, '2082-04-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(735, 0x36363939373463302d383035332d313165622d383961662d356363643562623862373938, 4, '2082-05-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(736, 0x36363939616538652d383035332d313165622d383961662d356363643562623862373938, 4, '2082-06-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(737, 0x36363939663936362d383035332d313165622d383961662d356363643562623862373938, 4, '2082-07-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(738, 0x36363961343961302d383035332d313165622d383961662d356363643562623862373938, 4, '2082-08-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(739, 0x36363961386335362d383035332d313165622d383961662d356363643562623862373938, 4, '2082-09-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(740, 0x36363961633035632d383035332d313165622d383961662d356363643562623862373938, 4, '2082-10-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(741, 0x36363961663362362d383035332d313165622d383961662d356363643562623862373938, 4, '2082-11-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(742, 0x36363962323833352d383035332d313165622d383961662d356363643562623862373938, 4, '2082-12-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(743, 0x36363962363165332d383035332d313165622d383961662d356363643562623862373938, 4, '2083-01-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(744, 0x36363962393735362d383035332d313165622d383961662d356363643562623862373938, 4, '2083-02-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(745, 0x36363962643539332d383035332d313165622d383961662d356363643562623862373938, 4, '2083-03-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(746, 0x36363963306665332d383035332d313165622d383961662d356363643562623862373938, 4, '2083-04-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(747, 0x36363963346234392d383035332d313165622d383961662d356363643562623862373938, 4, '2083-05-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(748, 0x36363963383832612d383035332d313165622d383961662d356363643562623862373938, 4, '2083-06-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(749, 0x36363963653461342d383035332d313165622d383961662d356363643562623862373938, 4, '2083-07-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(750, 0x36363964323433642d383035332d313165622d383961662d356363643562623862373938, 4, '2083-08-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(751, 0x36363964356662302d383035332d313165622d383961662d356363643562623862373938, 4, '2083-09-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(752, 0x36363964396631652d383035332d313165622d383961662d356363643562623862373938, 4, '2083-10-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(753, 0x36363964643834642d383035332d313165622d383961662d356363643562623862373938, 4, '2083-11-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(754, 0x36363965313162382d383035332d313165622d383961662d356363643562623862373938, 4, '2083-12-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(755, 0x36363965346535342d383035332d313165622d383961662d356363643562623862373938, 4, '2084-01-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(756, 0x36363965383733352d383035332d313165622d383961662d356363643562623862373938, 4, '2084-02-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(757, 0x36363965633336312d383035332d313165622d383961662d356363643562623862373938, 4, '2084-03-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(758, 0x36363966303132392d383035332d313165622d383961662d356363643562623862373938, 4, '2084-04-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(759, 0x36363966346165382d383035332d313165622d383961662d356363643562623862373938, 4, '2084-05-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(760, 0x36363966393738352d383035332d313165622d383961662d356363643562623862373938, 4, '2084-06-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(761, 0x36363966643461312d383035332d313165622d383961662d356363643562623862373938, 4, '2084-07-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(762, 0x36366130306532312d383035332d313165622d383961662d356363643562623862373938, 4, '2084-08-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(763, 0x36366130343565392d383035332d313165622d383961662d356363643562623862373938, 4, '2084-09-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(764, 0x36366130383633612d383035332d313165622d383961662d356363643562623862373938, 4, '2084-10-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(765, 0x36366130626531662d383035332d313165622d383961662d356363643562623862373938, 4, '2084-11-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(766, 0x36366130663162372d383035332d313165622d383961662d356363643562623862373938, 4, '2084-12-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(767, 0x36366131326232622d383035332d313165622d383961662d356363643562623862373938, 4, '2085-01-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(768, 0x36366131363733312d383035332d313165622d383961662d356363643562623862373938, 4, '2085-02-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(769, 0x36366131396364372d383035332d313165622d383961662d356363643562623862373938, 4, '2085-03-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(770, 0x36366131656666382d383035332d313165622d383961662d356363643562623862373938, 4, '2085-04-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(771, 0x36366132336438372d383035332d313165622d383961662d356363643562623862373938, 4, '2085-05-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(772, 0x36366132373634372d383035332d313165622d383961662d356363643562623862373938, 4, '2085-06-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(773, 0x36366132616237642d383035332d313165622d383961662d356363643562623862373938, 4, '2085-07-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(774, 0x36366132656365392d383035332d313165622d383961662d356363643562623862373938, 4, '2085-08-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(775, 0x36366133323463662d383035332d313165622d383961662d356363643562623862373938, 4, '2085-09-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(776, 0x36366133363465362d383035332d313165622d383961662d356363643562623862373938, 4, '2085-10-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(777, 0x36366133393965342d383035332d313165622d383961662d356363643562623862373938, 4, '2085-11-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(778, 0x36366133643130622d383035332d313165622d383961662d356363643562623862373938, 4, '2085-12-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(779, 0x36366134303563362d383035332d313165622d383961662d356363643562623862373938, 4, '2086-01-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(780, 0x36366134336439302d383035332d313165622d383961662d356363643562623862373938, 4, '2086-02-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(781, 0x36366134396433312d383035332d313165622d383961662d356363643562623862373938, 4, '2086-03-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(782, 0x36366134643632362d383035332d313165622d383961662d356363643562623862373938, 4, '2086-04-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(783, 0x36366135313032372d383035332d313165622d383961662d356363643562623862373938, 4, '2086-05-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(784, 0x36366135346239372d383035332d313165622d383961662d356363643562623862373938, 4, '2086-06-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(785, 0x36366135383331652d383035332d313165622d383961662d356363643562623862373938, 4, '2086-07-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(786, 0x36366135626461382d383035332d313165622d383961662d356363643562623862373938, 4, '2086-08-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(787, 0x36366136303236322d383035332d313165622d383961662d356363643562623862373938, 4, '2086-09-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(788, 0x36366136343039362d383035332d313165622d383961662d356363643562623862373938, 4, '2086-10-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(789, 0x36366136373762372d383035332d313165622d383961662d356363643562623862373938, 4, '2086-11-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(790, 0x36366136623132312d383035332d313165622d383961662d356363643562623862373938, 4, '2086-12-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(791, 0x36366137303535612d383035332d313165622d383961662d356363643562623862373938, 4, '2087-01-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(792, 0x36366137343133382d383035332d313165622d383961662d356363643562623862373938, 4, '2087-02-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(793, 0x36366137376433362d383035332d313165622d383961662d356363643562623862373938, 4, '2087-03-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(794, 0x36366137623563332d383035332d313165622d383961662d356363643562623862373938, 4, '2087-04-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(795, 0x36366137656462642d383035332d313165622d383961662d356363643562623862373938, 4, '2087-05-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(796, 0x36366138323735612d383035332d313165622d383961662d356363643562623862373938, 4, '2087-06-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(797, 0x36366138356566362d383035332d313165622d383961662d356363643562623862373938, 4, '2087-07-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(798, 0x36366138393837302d383035332d313165622d383961662d356363643562623862373938, 4, '2087-08-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(799, 0x36366138643161652d383035332d313165622d383961662d356363643562623862373938, 4, '2087-09-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(800, 0x36366139306537302d383035332d313165622d383961662d356363643562623862373938, 4, '2087-10-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(801, 0x36366139343962382d383035332d313165622d383961662d356363643562623862373938, 4, '2087-11-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(802, 0x36366139623033642d383035332d313165622d383961662d356363643562623862373938, 4, '2087-12-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(803, 0x36366161303238332d383035332d313165622d383961662d356363643562623862373938, 4, '2088-01-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(804, 0x36366161333766632d383035332d313165622d383961662d356363643562623862373938, 4, '2088-02-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(805, 0x36366161366662372d383035332d313165622d383961662d356363643562623862373938, 4, '2088-03-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(806, 0x36366161613662662d383035332d313165622d383961662d356363643562623862373938, 4, '2088-04-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(807, 0x36366161646637362d383035332d313165622d383961662d356363643562623862373938, 4, '2088-05-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(808, 0x36366162313631622d383035332d313165622d383961662d356363643562623862373938, 4, '2088-06-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(809, 0x36366162346163352d383035332d313165622d383961662d356363643562623862373938, 4, '2088-07-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(810, 0x36366162383064662d383035332d313165622d383961662d356363643562623862373938, 4, '2088-08-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(811, 0x36366162623838642d383035332d313165622d383961662d356363643562623862373938, 4, '2088-09-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(812, 0x36366163313234392d383035332d313165622d383961662d356363643562623862373938, 4, '2088-10-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(813, 0x36366163356530332d383035332d313165622d383961662d356363643562623862373938, 4, '2088-11-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(814, 0x36366163393461362d383035332d313165622d383961662d356363643562623862373938, 4, '2088-12-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(815, 0x36366163636333322d383035332d313165622d383961662d356363643562623862373938, 4, '2089-01-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(816, 0x36366164303435392d383035332d313165622d383961662d356363643562623862373938, 4, '2089-02-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(817, 0x36366164336562632d383035332d313165622d383961662d356363643562623862373938, 4, '2089-03-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(818, 0x36366164373563372d383035332d313165622d383961662d356363643562623862373938, 4, '2089-04-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(819, 0x36366164616661332d383035332d313165622d383961662d356363643562623862373938, 4, '2089-05-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(820, 0x36366164653361362d383035332d313165622d383961662d356363643562623862373938, 4, '2089-06-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(821, 0x36366165313838622d383035332d313165622d383961662d356363643562623862373938, 4, '2089-07-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(822, 0x36366165346331372d383035332d313165622d383961662d356363643562623862373938, 4, '2089-08-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(823, 0x36366165613237632d383035332d313165622d383961662d356363643562623862373938, 4, '2089-09-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(824, 0x36366165646639622d383035332d313165622d383961662d356363643562623862373938, 4, '2089-10-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(825, 0x36366166316134332d383035332d313165622d383961662d356363643562623862373938, 4, '2089-11-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(826, 0x36366166353238632d383035332d313165622d383961662d356363643562623862373938, 4, '2089-12-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(827, 0x36366166386637622d383035332d313165622d383961662d356363643562623862373938, 4, '2090-01-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(828, 0x36366166633762302d383035332d313165622d383961662d356363643562623862373938, 4, '2090-02-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(829, 0x36366230303264612d383035332d313165622d383961662d356363643562623862373938, 4, '2090-03-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(830, 0x36366230333965302d383035332d313165622d383961662d356363643562623862373938, 4, '2090-04-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(831, 0x36366230373135632d383035332d313165622d383961662d356363643562623862373938, 4, '2090-05-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(832, 0x36366230616465362d383035332d313165622d383961662d356363643562623862373938, 4, '2090-06-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(833, 0x36366230653938352d383035332d313165622d383961662d356363643562623862373938, 4, '2090-07-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(834, 0x36366231343536622d383035332d313165622d383961662d356363643562623862373938, 4, '2090-08-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(835, 0x36366231383134392d383035332d313165622d383961662d356363643562623862373938, 4, '2090-09-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(836, 0x36366231623834312d383035332d313165622d383961662d356363643562623862373938, 4, '2090-10-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(837, 0x36366232303039662d383035332d313165622d383961662d356363643562623862373938, 4, '2090-11-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(838, 0x36366232333838332d383035332d313165622d383961662d356363643562623862373938, 4, '2090-12-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(839, 0x36366232373166312d383035332d313165622d383961662d356363643562623862373938, 4, '2091-01-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(840, 0x36366232613732652d383035332d313165622d383961662d356363643562623862373938, 4, '2091-02-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(841, 0x36366232646437622d383035332d313165622d383961662d356363643562623862373938, 4, '2091-03-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(842, 0x36366233313366322d383035332d313165622d383961662d356363643562623862373938, 4, '2091-04-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(843, 0x36366233346239322d383035332d313165622d383961662d356363643562623862373938, 4, '2091-05-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(844, 0x36366233393337372d383035332d313165622d383961662d356363643562623862373938, 4, '2091-06-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(845, 0x36366233653766312d383035332d313165622d383961662d356363643562623862373938, 4, '2091-07-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(846, 0x36366234323230642d383035332d313165622d383961662d356363643562623862373938, 4, '2091-08-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(847, 0x36366234353930312d383035332d313165622d383961662d356363643562623862373938, 4, '2091-09-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(848, 0x36366234393063652d383035332d313165622d383961662d356363643562623862373938, 4, '2091-10-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(849, 0x36366234633766622d383035332d313165622d383961662d356363643562623862373938, 4, '2091-11-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(850, 0x36366234666663332d383035332d313165622d383961662d356363643562623862373938, 4, '2091-12-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(851, 0x36366235333961622d383035332d313165622d383961662d356363643562623862373938, 4, '2092-01-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(852, 0x36366235373666352d383035332d313165622d383961662d356363643562623862373938, 4, '2092-02-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(853, 0x36366235623066332d383035332d313165622d383961662d356363643562623862373938, 4, '2092-03-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(854, 0x36366235653936362d383035332d313165622d383961662d356363643562623862373938, 4, '2092-04-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(855, 0x36366236343038382d383035332d313165622d383961662d356363643562623862373938, 4, '2092-05-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(856, 0x36366236376535362d383035332d313165622d383961662d356363643562623862373938, 4, '2092-06-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(857, 0x36366236623931362d383035332d313165622d383961662d356363643562623862373938, 4, '2092-07-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(858, 0x36366236663264632d383035332d313165622d383961662d356363643562623862373938, 4, '2092-08-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(859, 0x36366237326133632d383035332d313165622d383961662d356363643562623862373938, 4, '2092-09-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(860, 0x36366237363064662d383035332d313165622d383961662d356363643562623862373938, 4, '2092-10-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(861, 0x36366237393936322d383035332d313165622d383961662d356363643562623862373938, 4, '2092-11-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(862, 0x36366237643466652d383035332d313165622d383961662d356363643562623862373938, 4, '2092-12-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(863, 0x36366238306632322d383035332d313165622d383961662d356363643562623862373938, 4, '2093-01-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(864, 0x36366238346132302d383035332d313165622d383961662d356363643562623862373938, 4, '2093-02-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(865, 0x36366238383039322d383035332d313165622d383961662d356363643562623862373938, 4, '2093-03-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(866, 0x36366238643966322d383035332d313165622d383961662d356363643562623862373938, 4, '2093-04-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(867, 0x36366239313265642d383035332d313165622d383961662d356363643562623862373938, 4, '2093-05-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(868, 0x36366239343931352d383035332d313165622d383961662d356363643562623862373938, 4, '2093-06-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(869, 0x36366239383034352d383035332d313165622d383961662d356363643562623862373938, 4, '2093-07-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(870, 0x36366239633962312d383035332d313165622d383961662d356363643562623862373938, 4, '2093-08-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(871, 0x36366261303461302d383035332d313165622d383961662d356363643562623862373938, 4, '2093-09-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(872, 0x36366261336338332d383035332d313165622d383961662d356363643562623862373938, 4, '2093-10-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(873, 0x36366261373236662d383035332d313165622d383961662d356363643562623862373938, 4, '2093-11-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(874, 0x36366261613736342d383035332d313165622d383961662d356363643562623862373938, 4, '2093-12-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(875, 0x36366261646232372d383035332d313165622d383961662d356363643562623862373938, 4, '2094-01-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(876, 0x36366262313030612d383035332d313165622d383961662d356363643562623862373938, 4, '2094-02-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(877, 0x36366262366531362d383035332d313165622d383961662d356363643562623862373938, 4, '2094-03-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(878, 0x36366262613564332d383035332d313165622d383961662d356363643562623862373938, 4, '2094-04-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(879, 0x36366262646630352d383035332d313165622d383961662d356363643562623862373938, 4, '2094-05-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(880, 0x36366263313534302d383035332d313165622d383961662d356363643562623862373938, 4, '2094-06-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(881, 0x36366263353063362d383035332d313165622d383961662d356363643562623862373938, 4, '2094-07-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(882, 0x36366263383733302d383035332d313165622d383961662d356363643562623862373938, 4, '2094-08-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(883, 0x36366263633132312d383035332d313165622d383961662d356363643562623862373938, 4, '2094-09-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(884, 0x36366263666465632d383035332d313165622d383961662d356363643562623862373938, 4, '2094-10-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(885, 0x36366264333636642d383035332d313165622d383961662d356363643562623862373938, 4, '2094-11-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(886, 0x36366264366365322d383035332d313165622d383961662d356363643562623862373938, 4, '2094-12-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(887, 0x36366264613531662d383035332d313165622d383961662d356363643562623862373938, 4, '2095-01-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(888, 0x36366264666165342d383035332d313165622d383961662d356363643562623862373938, 4, '2095-02-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(889, 0x36366265333362322d383035332d313165622d383961662d356363643562623862373938, 4, '2095-03-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(890, 0x36366265366564352d383035332d313165622d383961662d356363643562623862373938, 4, '2095-04-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(891, 0x36366265613438652d383035332d313165622d383961662d356363643562623862373938, 4, '2095-05-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(892, 0x36366265646638312d383035332d313165622d383961662d356363643562623862373938, 4, '2095-06-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(893, 0x36366266313666612d383035332d313165622d383961662d356363643562623862373938, 4, '2095-07-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(894, 0x36366266346162382d383035332d313165622d383961662d356363643562623862373938, 4, '2095-08-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(895, 0x36366266383433382d383035332d313165622d383961662d356363643562623862373938, 4, '2095-09-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(896, 0x36366266623930332d383035332d313165622d383961662d356363643562623862373938, 4, '2095-10-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(897, 0x36366266663336632d383035332d313165622d383961662d356363643562623862373938, 4, '2095-11-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(898, 0x36366330333062362d383035332d313165622d383961662d356363643562623862373938, 4, '2095-12-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(899, 0x36366330386232302d383035332d313165622d383961662d356363643562623862373938, 4, '2096-01-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(900, 0x36366330633262372d383035332d313165622d383961662d356363643562623862373938, 4, '2096-02-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(901, 0x36366330663865382d383035332d313165622d383961662d356363643562623862373938, 4, '2096-03-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(902, 0x36366331326463642d383035332d313165622d383961662d356363643562623862373938, 4, '2096-04-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(903, 0x36366331376136392d383035332d313165622d383961662d356363643562623862373938, 4, '2096-05-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(904, 0x36366331633832342d383035332d313165622d383961662d356363643562623862373938, 4, '2096-06-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(905, 0x36366331666536362d383035332d313165622d383961662d356363643562623862373938, 4, '2096-07-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(906, 0x36366332333439332d383035332d313165622d383961662d356363643562623862373938, 4, '2096-08-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(907, 0x36366332366231322d383035332d313165622d383961662d356363643562623862373938, 4, '2096-09-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(908, 0x36366332613031312d383035332d313165622d383961662d356363643562623862373938, 4, '2096-10-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(909, 0x36366332663839632d383035332d313165622d383961662d356363643562623862373938, 4, '2096-11-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(910, 0x36366333333734612d383035332d313165622d383961662d356363643562623862373938, 4, '2096-12-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(911, 0x36366333373230392d383035332d313165622d383961662d356363643562623862373938, 4, '2097-01-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(912, 0x36366333623762392d383035332d313165622d383961662d356363643562623862373938, 4, '2097-02-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(913, 0x36366333663238372d383035332d313165622d383961662d356363643562623862373938, 4, '2097-03-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(914, 0x36366334323931302d383035332d313165622d383961662d356363643562623862373938, 4, '2097-04-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(915, 0x36366334363065612d383035332d313165622d383961662d356363643562623862373938, 4, '2097-05-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(916, 0x36366334396366372d383035332d313165622d383961662d356363643562623862373938, 4, '2097-06-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(917, 0x36366334643434662d383035332d313165622d383961662d356363643562623862373938, 4, '2097-07-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(918, 0x36366335306335342d383035332d313165622d383961662d356363643562623862373938, 4, '2097-08-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(919, 0x36366335343365342d383035332d313165622d383961662d356363643562623862373938, 4, '2097-09-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(920, 0x36366335396438662d383035332d313165622d383961662d356363643562623862373938, 4, '2097-10-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(921, 0x36366335643862642d383035332d313165622d383961662d356363643562623862373938, 4, '2097-11-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(922, 0x36366336316465652d383035332d313165622d383961662d356363643562623862373938, 4, '2097-12-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(923, 0x36366336353762642d383035332d313165622d383961662d356363643562623862373938, 4, '2098-01-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(924, 0x36366336386539352d383035332d313165622d383961662d356363643562623862373938, 4, '2098-02-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(925, 0x36366336633532642d383035332d313165622d383961662d356363643562623862373938, 4, '2098-03-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(926, 0x36366336666431332d383035332d313165622d383961662d356363643562623862373938, 4, '2098-04-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(927, 0x36366337333336622d383035332d313165622d383961662d356363643562623862373938, 4, '2098-05-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(928, 0x36366337366132342d383035332d313165622d383961662d356363643562623862373938, 4, '2098-06-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(929, 0x36366337613739322d383035332d313165622d383961662d356363643562623862373938, 4, '2098-07-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(930, 0x36366337663734342d383035332d313165622d383961662d356363643562623862373938, 4, '2098-08-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(931, 0x36366338336237352d383035332d313165622d383961662d356363643562623862373938, 4, '2098-09-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(932, 0x36366338373936612d383035332d313165622d383961662d356363643562623862373938, 4, '2098-10-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(933, 0x36366338623034662d383035332d313165622d383961662d356363643562623862373938, 4, '2098-11-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(934, 0x36366338656136302d383035332d313165622d383961662d356363643562623862373938, 4, '2098-12-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(935, 0x36366339323665632d383035332d313165622d383961662d356363643562623862373938, 4, '2099-01-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(936, 0x36366339363037372d383035332d313165622d383961662d356363643562623862373938, 4, '2099-02-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(937, 0x36366339616330382d383035332d313165622d383961662d356363643562623862373938, 4, '2099-03-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(938, 0x36366339646535352d383035332d313165622d383961662d356363643562623862373938, 4, '2099-04-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(939, 0x36366361313463622d383035332d313165622d383961662d356363643562623862373938, 4, '2099-05-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(940, 0x36366361343862662d383035332d313165622d383961662d356363643562623862373938, 4, '2099-06-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27');
INSERT INTO `receipts` (`id`, `cod`, `contract`, `due_date`, `payment_form`, `status`, `account_id`, `created_at`, `updated_at`) VALUES
(941, 0x36366361613837302d383035332d313165622d383961662d356363643562623862373938, 4, '2099-07-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(942, 0x36366361646433642d383035332d313165622d383961662d356363643562623862373938, 4, '2099-08-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(943, 0x36366362306566362d383035332d313165622d383961662d356363643562623862373938, 4, '2099-09-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(944, 0x36366362343537382d383035332d313165622d383961662d356363643562623862373938, 4, '2099-10-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(945, 0x36366362383038322d383035332d313165622d383961662d356363643562623862373938, 4, '2099-11-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(946, 0x36366362623639322d383035332d313165622d383961662d356363643562623862373938, 4, '2099-12-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(947, 0x36366362656331662d383035332d313165622d383961662d356363643562623862373938, 4, '2100-01-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(948, 0x36366363333635662d383035332d313165622d383961662d356363643562623862373938, 4, '2100-02-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(949, 0x36366363366537652d383035332d313165622d383961662d356363643562623862373938, 4, '2100-03-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(950, 0x36366363613532662d383035332d313165622d383961662d356363643562623862373938, 4, '2100-04-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(951, 0x36366363643939652d383035332d313165622d383961662d356363643562623862373938, 4, '2100-05-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(952, 0x36366364326562372d383035332d313165622d383961662d356363643562623862373938, 4, '2100-06-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(953, 0x36366364363732652d383035332d313165622d383961662d356363643562623862373938, 4, '2100-07-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(954, 0x36366364613430362d383035332d313165622d383961662d356363643562623862373938, 4, '2100-08-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(955, 0x36366364646161312d383035332d313165622d383961662d356363643562623862373938, 4, '2100-09-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(956, 0x36366365313139342d383035332d313165622d383961662d356363643562623862373938, 4, '2100-10-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(957, 0x36366365343830332d383035332d313165622d383961662d356363643562623862373938, 4, '2100-11-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(958, 0x36366365376536312d383035332d313165622d383961662d356363643562623862373938, 4, '2100-12-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(959, 0x36366365623661342d383035332d313165622d383961662d356363643562623862373938, 4, '2101-01-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(960, 0x36366365656265392d383035332d313165622d383961662d356363643562623862373938, 4, '2101-02-05', 'money', 1, 1, '2021-03-08 21:15:27', '2021-03-08 21:15:27');

-- --------------------------------------------------------

--
-- Estrutura da tabela `receipt_invoices`
--

CREATE TABLE `receipt_invoices` (
  `id` int(11) NOT NULL,
  `receipt` int(11) NOT NULL,
  `invoice` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `receipt_invoices`
--

INSERT INTO `receipt_invoices` (`id`, `receipt`, `invoice`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(2, 2, 2, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(3, 3, 3, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(4, 4, 4, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(5, 5, 5, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(6, 6, 6, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(7, 7, 7, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(8, 8, 8, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(9, 9, 9, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(10, 10, 10, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(11, 11, 11, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(12, 12, 12, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(13, 13, 13, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(14, 14, 14, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(15, 15, 15, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(16, 16, 16, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(17, 17, 17, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(18, 18, 18, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(19, 19, 19, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(20, 20, 20, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(21, 21, 21, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(22, 22, 22, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(23, 23, 23, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(24, 24, 24, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(25, 25, 25, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(26, 26, 26, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(27, 27, 27, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(28, 28, 28, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(29, 29, 29, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(30, 30, 30, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(31, 31, 31, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(32, 32, 32, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(33, 33, 33, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(34, 34, 34, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(35, 35, 35, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(36, 36, 36, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(37, 37, 37, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(38, 38, 38, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(39, 39, 39, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(40, 40, 40, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(41, 41, 41, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(42, 42, 42, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(43, 43, 43, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(44, 44, 44, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(45, 45, 45, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(46, 46, 46, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(47, 47, 47, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(48, 48, 48, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(49, 49, 49, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(50, 50, 50, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(51, 51, 51, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(52, 52, 52, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(53, 53, 53, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(54, 54, 54, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(55, 55, 55, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(56, 56, 56, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(57, 57, 57, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(58, 58, 58, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(59, 59, 59, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(60, 60, 60, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(61, 61, 61, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(62, 62, 62, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(63, 63, 63, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(64, 64, 64, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(65, 65, 65, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(66, 66, 66, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(67, 67, 67, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(68, 68, 68, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(69, 69, 69, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(70, 70, 70, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(71, 71, 71, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(72, 72, 72, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(73, 73, 73, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(74, 74, 74, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(75, 75, 75, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(76, 76, 76, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(77, 77, 77, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(78, 78, 78, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(79, 79, 79, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(80, 80, 80, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(81, 81, 81, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(82, 82, 82, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(83, 83, 83, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(84, 84, 84, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(85, 85, 85, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(86, 86, 86, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(87, 87, 87, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(88, 88, 88, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(89, 89, 89, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(90, 90, 90, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(91, 91, 91, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(92, 92, 92, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(93, 93, 93, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(94, 94, 94, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(95, 95, 95, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(96, 96, 96, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(97, 97, 97, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(98, 98, 98, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(99, 99, 99, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(100, 100, 100, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(101, 101, 101, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(102, 102, 102, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(103, 103, 103, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(104, 104, 104, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(105, 105, 105, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(106, 106, 106, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(107, 107, 107, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(108, 108, 108, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(109, 109, 109, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(110, 110, 110, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(111, 111, 111, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(112, 112, 112, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(113, 113, 113, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(114, 114, 114, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(115, 115, 115, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(116, 116, 116, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(117, 117, 117, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(118, 118, 118, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(119, 119, 119, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(120, 120, 120, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(121, 121, 121, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(122, 122, 122, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(123, 123, 123, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(124, 124, 124, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(125, 125, 125, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(126, 126, 126, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(127, 127, 127, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(128, 128, 128, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(129, 129, 129, '2021-03-08 21:15:25', '2021-03-08 21:15:25'),
(130, 130, 130, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(131, 131, 131, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(132, 132, 132, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(133, 133, 133, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(134, 134, 134, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(135, 135, 135, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(136, 136, 136, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(137, 137, 137, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(138, 138, 138, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(139, 139, 139, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(140, 140, 140, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(141, 141, 141, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(142, 142, 142, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(143, 143, 143, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(144, 144, 144, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(145, 145, 145, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(146, 146, 146, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(147, 147, 147, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(148, 148, 148, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(149, 149, 149, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(150, 150, 150, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(151, 151, 151, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(152, 152, 152, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(153, 153, 153, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(154, 154, 154, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(155, 155, 155, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(156, 156, 156, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(157, 157, 157, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(158, 158, 158, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(159, 159, 159, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(160, 160, 160, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(161, 161, 161, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(162, 162, 162, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(163, 163, 163, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(164, 164, 164, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(165, 165, 165, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(166, 166, 166, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(167, 167, 167, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(168, 168, 168, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(169, 169, 169, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(170, 170, 170, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(171, 171, 171, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(172, 172, 172, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(173, 173, 173, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(174, 174, 174, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(175, 175, 175, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(176, 176, 176, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(177, 177, 177, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(178, 178, 178, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(179, 179, 179, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(180, 180, 180, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(181, 181, 181, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(182, 182, 182, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(183, 183, 183, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(184, 184, 184, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(185, 185, 185, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(186, 186, 186, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(187, 187, 187, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(188, 188, 188, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(189, 189, 189, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(190, 190, 190, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(191, 191, 191, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(192, 192, 192, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(193, 193, 193, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(194, 194, 194, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(195, 195, 195, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(196, 196, 196, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(197, 197, 197, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(198, 198, 198, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(199, 199, 199, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(200, 200, 200, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(201, 201, 201, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(202, 202, 202, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(203, 203, 203, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(204, 204, 204, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(205, 205, 205, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(206, 206, 206, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(207, 207, 207, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(208, 208, 208, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(209, 209, 209, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(210, 210, 210, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(211, 211, 211, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(212, 212, 212, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(213, 213, 213, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(214, 214, 214, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(215, 215, 215, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(216, 216, 216, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(217, 217, 217, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(218, 218, 218, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(219, 219, 219, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(220, 220, 220, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(221, 221, 221, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(222, 222, 222, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(223, 223, 223, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(224, 224, 224, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(225, 225, 225, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(226, 226, 226, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(227, 227, 227, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(228, 228, 228, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(229, 229, 229, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(230, 230, 230, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(231, 231, 231, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(232, 232, 232, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(233, 233, 233, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(234, 234, 234, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(235, 235, 235, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(236, 236, 236, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(237, 237, 237, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(238, 238, 238, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(239, 239, 239, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(240, 240, 240, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(241, 241, 241, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(242, 242, 242, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(243, 243, 243, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(244, 244, 244, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(245, 245, 245, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(246, 246, 246, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(247, 247, 247, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(248, 248, 248, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(249, 249, 249, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(250, 250, 250, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(251, 251, 251, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(252, 252, 252, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(253, 253, 253, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(254, 254, 254, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(255, 255, 255, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(256, 256, 256, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(257, 257, 257, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(258, 258, 258, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(259, 259, 259, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(260, 260, 260, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(261, 261, 261, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(262, 262, 262, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(263, 263, 263, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(264, 264, 264, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(265, 265, 265, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(266, 266, 266, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(267, 267, 267, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(268, 268, 268, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(269, 269, 269, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(270, 270, 270, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(271, 271, 271, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(272, 272, 272, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(273, 273, 273, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(274, 274, 274, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(275, 275, 275, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(276, 276, 276, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(277, 277, 277, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(278, 278, 278, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(279, 279, 279, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(280, 280, 280, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(281, 281, 281, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(282, 282, 282, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(283, 283, 283, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(284, 284, 284, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(285, 285, 285, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(286, 286, 286, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(287, 287, 287, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(288, 288, 288, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(289, 289, 289, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(290, 290, 290, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(291, 291, 291, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(292, 292, 292, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(293, 293, 293, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(294, 294, 294, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(295, 295, 295, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(296, 296, 296, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(297, 297, 297, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(298, 298, 298, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(299, 299, 299, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(300, 300, 300, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(301, 301, 301, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(302, 302, 302, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(303, 303, 303, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(304, 304, 304, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(305, 305, 305, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(306, 306, 306, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(307, 307, 307, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(308, 308, 308, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(309, 309, 309, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(310, 310, 310, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(311, 311, 311, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(312, 312, 312, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(313, 313, 313, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(314, 314, 314, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(315, 315, 315, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(316, 316, 316, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(317, 317, 317, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(318, 318, 318, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(319, 319, 319, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(320, 320, 320, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(321, 321, 321, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(322, 322, 322, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(323, 323, 323, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(324, 324, 324, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(325, 325, 325, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(326, 326, 326, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(327, 327, 327, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(328, 328, 328, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(329, 329, 329, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(330, 330, 330, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(331, 331, 331, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(332, 332, 332, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(333, 333, 333, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(334, 334, 334, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(335, 335, 335, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(336, 336, 336, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(337, 337, 337, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(338, 338, 338, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(339, 339, 339, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(340, 340, 340, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(341, 341, 341, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(342, 342, 342, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(343, 343, 343, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(344, 344, 344, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(345, 345, 345, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(346, 346, 346, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(347, 347, 347, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(348, 348, 348, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(349, 349, 349, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(350, 350, 350, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(351, 351, 351, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(352, 352, 352, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(353, 353, 353, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(354, 354, 354, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(355, 355, 355, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(356, 356, 356, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(357, 357, 357, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(358, 358, 358, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(359, 359, 359, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(360, 360, 360, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(361, 361, 361, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(362, 362, 362, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(363, 363, 363, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(364, 364, 364, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(365, 365, 365, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(366, 366, 366, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(367, 367, 367, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(368, 368, 368, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(369, 369, 369, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(370, 370, 370, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(371, 371, 371, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(372, 372, 372, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(373, 373, 373, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(374, 374, 374, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(375, 375, 375, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(376, 376, 376, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(377, 377, 377, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(378, 378, 378, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(379, 379, 379, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(380, 380, 380, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(381, 381, 381, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(382, 382, 382, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(383, 383, 383, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(384, 384, 384, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(385, 385, 385, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(386, 386, 386, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(387, 387, 387, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(388, 388, 388, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(389, 389, 389, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(390, 390, 390, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(391, 391, 391, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(392, 392, 392, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(393, 393, 393, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(394, 394, 394, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(395, 395, 395, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(396, 396, 396, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(397, 397, 397, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(398, 398, 398, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(399, 399, 399, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(400, 400, 400, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(401, 401, 401, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(402, 402, 402, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(403, 403, 403, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(404, 404, 404, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(405, 405, 405, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(406, 406, 406, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(407, 407, 407, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(408, 408, 408, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(409, 409, 409, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(410, 410, 410, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(411, 411, 411, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(412, 412, 412, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(413, 413, 413, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(414, 414, 414, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(415, 415, 415, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(416, 416, 416, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(417, 417, 417, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(418, 418, 418, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(419, 419, 419, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(420, 420, 420, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(421, 421, 421, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(422, 422, 422, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(423, 423, 423, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(424, 424, 424, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(425, 425, 425, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(426, 426, 426, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(427, 427, 427, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(428, 428, 428, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(429, 429, 429, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(430, 430, 430, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(431, 431, 431, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(432, 432, 432, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(433, 433, 433, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(434, 434, 434, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(435, 435, 435, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(436, 436, 436, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(437, 437, 437, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(438, 438, 438, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(439, 439, 439, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(440, 440, 440, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(441, 441, 441, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(442, 442, 442, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(443, 443, 443, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(444, 444, 444, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(445, 445, 445, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(446, 446, 446, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(447, 447, 447, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(448, 448, 448, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(449, 449, 449, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(450, 450, 450, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(451, 451, 451, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(452, 452, 452, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(453, 453, 453, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(454, 454, 454, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(455, 455, 455, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(456, 456, 456, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(457, 457, 457, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(458, 458, 458, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(459, 459, 459, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(460, 460, 460, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(461, 461, 461, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(462, 462, 462, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(463, 463, 463, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(464, 464, 464, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(465, 465, 465, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(466, 466, 466, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(467, 467, 467, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(468, 468, 468, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(469, 469, 469, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(470, 470, 470, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(471, 471, 471, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(472, 472, 472, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(473, 473, 473, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(474, 474, 474, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(475, 475, 475, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(476, 476, 476, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(477, 477, 477, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(478, 478, 478, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(479, 479, 479, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(480, 480, 480, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(481, 481, 481, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(482, 482, 482, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(483, 483, 483, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(484, 484, 484, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(485, 485, 485, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(486, 486, 486, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(487, 487, 487, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(488, 488, 488, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(489, 489, 489, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(490, 490, 490, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(491, 491, 491, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(492, 492, 492, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(493, 493, 493, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(494, 494, 494, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(495, 495, 495, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(496, 496, 496, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(497, 497, 497, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(498, 498, 498, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(499, 499, 499, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(500, 500, 500, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(501, 501, 501, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(502, 502, 502, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(503, 503, 503, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(504, 504, 504, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(505, 505, 505, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(506, 506, 506, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(507, 507, 507, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(508, 508, 508, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(509, 509, 509, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(510, 510, 510, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(511, 511, 511, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(512, 512, 512, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(513, 513, 513, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(514, 514, 514, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(515, 515, 515, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(516, 516, 516, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(517, 517, 517, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(518, 518, 518, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(519, 519, 519, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(520, 520, 520, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(521, 521, 521, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(522, 522, 522, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(523, 523, 523, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(524, 524, 524, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(525, 525, 525, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(526, 526, 526, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(527, 527, 527, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(528, 528, 528, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(529, 529, 529, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(530, 530, 530, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(531, 531, 531, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(532, 532, 532, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(533, 533, 533, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(534, 534, 534, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(535, 535, 535, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(536, 536, 536, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(537, 537, 537, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(538, 538, 538, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(539, 539, 539, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(540, 540, 540, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(541, 541, 541, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(542, 542, 542, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(543, 543, 543, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(544, 544, 544, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(545, 545, 545, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(546, 546, 546, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(547, 547, 547, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(548, 548, 548, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(549, 549, 549, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(550, 550, 550, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(551, 551, 551, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(552, 552, 552, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(553, 553, 553, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(554, 554, 554, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(555, 555, 555, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(556, 556, 556, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(557, 557, 557, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(558, 558, 558, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(559, 559, 559, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(560, 560, 560, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(561, 561, 561, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(562, 562, 562, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(563, 563, 563, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(564, 564, 564, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(565, 565, 565, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(566, 566, 566, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(567, 567, 567, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(568, 568, 568, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(569, 569, 569, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(570, 570, 570, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(571, 571, 571, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(572, 572, 572, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(573, 573, 573, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(574, 574, 574, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(575, 575, 575, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(576, 576, 576, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(577, 577, 577, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(578, 578, 578, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(579, 579, 579, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(580, 580, 580, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(581, 581, 581, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(582, 582, 582, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(583, 583, 583, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(584, 584, 584, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(585, 585, 585, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(586, 586, 586, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(587, 587, 587, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(588, 588, 588, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(589, 589, 589, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(590, 590, 590, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(591, 591, 591, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(592, 592, 592, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(593, 593, 593, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(594, 594, 594, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(595, 595, 595, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(596, 596, 596, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(597, 597, 597, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(598, 598, 598, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(599, 599, 599, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(600, 600, 600, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(601, 601, 601, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(602, 602, 602, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(603, 603, 603, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(604, 604, 604, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(605, 605, 605, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(606, 606, 606, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(607, 607, 607, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(608, 608, 608, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(609, 609, 609, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(610, 610, 610, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(611, 611, 611, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(612, 612, 612, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(613, 613, 613, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(614, 614, 614, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(615, 615, 615, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(616, 616, 616, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(617, 617, 617, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(618, 618, 618, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(619, 619, 619, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(620, 620, 620, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(621, 621, 621, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(622, 622, 622, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(623, 623, 623, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(624, 624, 624, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(625, 625, 625, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(626, 626, 626, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(627, 627, 627, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(628, 628, 628, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(629, 629, 629, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(630, 630, 630, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(631, 631, 631, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(632, 632, 632, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(633, 633, 633, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(634, 634, 634, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(635, 635, 635, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(636, 636, 636, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(637, 637, 637, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(638, 638, 638, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(639, 639, 639, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(640, 640, 640, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(641, 641, 641, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(642, 642, 642, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(643, 643, 643, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(644, 644, 644, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(645, 645, 645, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(646, 646, 646, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(647, 647, 647, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(648, 648, 648, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(649, 649, 649, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(650, 650, 650, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(651, 651, 651, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(652, 652, 652, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(653, 653, 653, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(654, 654, 654, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(655, 655, 655, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(656, 656, 656, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(657, 657, 657, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(658, 658, 658, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(659, 659, 659, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(660, 660, 660, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(661, 661, 661, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(662, 662, 662, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(663, 663, 663, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(664, 664, 664, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(665, 665, 665, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(666, 666, 666, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(667, 667, 667, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(668, 668, 668, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(669, 669, 669, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(670, 670, 670, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(671, 671, 671, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(672, 672, 672, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(673, 673, 673, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(674, 674, 674, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(675, 675, 675, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(676, 676, 676, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(677, 677, 677, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(678, 678, 678, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(679, 679, 679, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(680, 680, 680, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(681, 681, 681, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(682, 682, 682, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(683, 683, 683, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(684, 684, 684, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(685, 685, 685, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(686, 686, 686, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(687, 687, 687, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(688, 688, 688, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(689, 689, 689, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(690, 690, 690, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(691, 691, 691, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(692, 692, 692, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(693, 693, 693, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(694, 694, 694, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(695, 695, 695, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(696, 696, 696, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(697, 697, 697, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(698, 698, 698, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(699, 699, 699, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(700, 700, 700, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(701, 701, 701, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(702, 702, 702, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(703, 703, 703, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(704, 704, 704, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(705, 705, 705, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(706, 706, 706, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(707, 707, 707, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(708, 708, 708, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(709, 709, 709, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(710, 710, 710, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(711, 711, 711, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(712, 712, 712, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(713, 713, 713, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(714, 714, 714, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(715, 715, 715, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(716, 716, 716, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(717, 717, 717, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(718, 718, 718, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(719, 719, 719, '2021-03-08 21:15:26', '2021-03-08 21:15:26'),
(720, 720, 720, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(721, 721, 721, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(722, 722, 722, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(723, 723, 723, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(724, 724, 724, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(725, 725, 725, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(726, 726, 726, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(727, 727, 727, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(728, 728, 728, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(729, 729, 729, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(730, 730, 730, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(731, 731, 731, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(732, 732, 732, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(733, 733, 733, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(734, 734, 734, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(735, 735, 735, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(736, 736, 736, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(737, 737, 737, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(738, 738, 738, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(739, 739, 739, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(740, 740, 740, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(741, 741, 741, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(742, 742, 742, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(743, 743, 743, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(744, 744, 744, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(745, 745, 745, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(746, 746, 746, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(747, 747, 747, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(748, 748, 748, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(749, 749, 749, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(750, 750, 750, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(751, 751, 751, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(752, 752, 752, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(753, 753, 753, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(754, 754, 754, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(755, 755, 755, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(756, 756, 756, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(757, 757, 757, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(758, 758, 758, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(759, 759, 759, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(760, 760, 760, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(761, 761, 761, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(762, 762, 762, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(763, 763, 763, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(764, 764, 764, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(765, 765, 765, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(766, 766, 766, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(767, 767, 767, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(768, 768, 768, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(769, 769, 769, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(770, 770, 770, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(771, 771, 771, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(772, 772, 772, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(773, 773, 773, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(774, 774, 774, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(775, 775, 775, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(776, 776, 776, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(777, 777, 777, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(778, 778, 778, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(779, 779, 779, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(780, 780, 780, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(781, 781, 781, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(782, 782, 782, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(783, 783, 783, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(784, 784, 784, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(785, 785, 785, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(786, 786, 786, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(787, 787, 787, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(788, 788, 788, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(789, 789, 789, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(790, 790, 790, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(791, 791, 791, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(792, 792, 792, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(793, 793, 793, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(794, 794, 794, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(795, 795, 795, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(796, 796, 796, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(797, 797, 797, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(798, 798, 798, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(799, 799, 799, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(800, 800, 800, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(801, 801, 801, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(802, 802, 802, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(803, 803, 803, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(804, 804, 804, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(805, 805, 805, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(806, 806, 806, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(807, 807, 807, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(808, 808, 808, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(809, 809, 809, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(810, 810, 810, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(811, 811, 811, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(812, 812, 812, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(813, 813, 813, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(814, 814, 814, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(815, 815, 815, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(816, 816, 816, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(817, 817, 817, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(818, 818, 818, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(819, 819, 819, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(820, 820, 820, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(821, 821, 821, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(822, 822, 822, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(823, 823, 823, '2021-03-08 21:15:27', '2021-03-08 21:15:27');
INSERT INTO `receipt_invoices` (`id`, `receipt`, `invoice`, `created_at`, `updated_at`) VALUES
(824, 824, 824, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(825, 825, 825, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(826, 826, 826, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(827, 827, 827, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(828, 828, 828, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(829, 829, 829, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(830, 830, 830, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(831, 831, 831, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(832, 832, 832, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(833, 833, 833, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(834, 834, 834, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(835, 835, 835, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(836, 836, 836, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(837, 837, 837, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(838, 838, 838, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(839, 839, 839, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(840, 840, 840, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(841, 841, 841, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(842, 842, 842, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(843, 843, 843, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(844, 844, 844, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(845, 845, 845, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(846, 846, 846, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(847, 847, 847, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(848, 848, 848, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(849, 849, 849, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(850, 850, 850, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(851, 851, 851, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(852, 852, 852, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(853, 853, 853, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(854, 854, 854, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(855, 855, 855, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(856, 856, 856, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(857, 857, 857, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(858, 858, 858, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(859, 859, 859, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(860, 860, 860, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(861, 861, 861, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(862, 862, 862, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(863, 863, 863, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(864, 864, 864, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(865, 865, 865, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(866, 866, 866, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(867, 867, 867, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(868, 868, 868, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(869, 869, 869, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(870, 870, 870, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(871, 871, 871, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(872, 872, 872, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(873, 873, 873, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(874, 874, 874, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(875, 875, 875, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(876, 876, 876, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(877, 877, 877, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(878, 878, 878, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(879, 879, 879, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(880, 880, 880, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(881, 881, 881, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(882, 882, 882, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(883, 883, 883, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(884, 884, 884, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(885, 885, 885, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(886, 886, 886, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(887, 887, 887, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(888, 888, 888, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(889, 889, 889, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(890, 890, 890, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(891, 891, 891, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(892, 892, 892, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(893, 893, 893, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(894, 894, 894, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(895, 895, 895, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(896, 896, 896, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(897, 897, 897, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(898, 898, 898, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(899, 899, 899, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(900, 900, 900, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(901, 901, 901, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(902, 902, 902, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(903, 903, 903, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(904, 904, 904, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(905, 905, 905, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(906, 906, 906, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(907, 907, 907, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(908, 908, 908, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(909, 909, 909, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(910, 910, 910, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(911, 911, 911, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(912, 912, 912, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(913, 913, 913, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(914, 914, 914, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(915, 915, 915, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(916, 916, 916, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(917, 917, 917, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(918, 918, 918, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(919, 919, 919, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(920, 920, 920, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(921, 921, 921, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(922, 922, 922, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(923, 923, 923, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(924, 924, 924, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(925, 925, 925, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(926, 926, 926, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(927, 927, 927, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(928, 928, 928, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(929, 929, 929, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(930, 930, 930, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(931, 931, 931, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(932, 932, 932, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(933, 933, 933, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(934, 934, 934, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(935, 935, 935, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(936, 936, 936, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(937, 937, 937, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(938, 938, 938, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(939, 939, 939, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(940, 940, 940, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(941, 941, 941, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(942, 942, 942, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(943, 943, 943, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(944, 944, 944, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(945, 945, 945, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(946, 946, 946, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(947, 947, 947, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(948, 948, 948, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(949, 949, 949, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(950, 950, 950, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(951, 951, 951, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(952, 952, 952, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(953, 953, 953, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(954, 954, 954, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(955, 955, 955, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(956, 956, 956, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(957, 957, 957, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(958, 958, 958, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(959, 959, 959, '2021-03-08 21:15:27', '2021-03-08 21:15:27'),
(960, 960, 960, '2021-03-08 21:15:27', '2021-03-08 21:15:27');

-- --------------------------------------------------------

--
-- Estrutura da tabela `status_historic`
--

CREATE TABLE `status_historic` (
  `id` int(11) NOT NULL,
  `status_historic` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `status_historic`
--

INSERT INTO `status_historic` (`id`, `status_historic`, `created_at`, `updated_at`) VALUES
(1, 'renovation', '2021-02-15 15:00:33', NULL),
(2, 'readjustment', '2021-02-15 15:00:57', NULL),
(3, 'change payment', '2021-02-15 15:01:29', NULL),
(4, 'signed contract', '2021-02-15 15:03:17', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `type_accounts`
--

CREATE TABLE `type_accounts` (
  `id` int(11) NOT NULL,
  `cod` binary(36) NOT NULL DEFAULT uuid(),
  `account_id` int(11) NOT NULL DEFAULT 0,
  `description` varchar(100) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `type_accounts`
--

INSERT INTO `type_accounts` (`id`, `cod`, `account_id`, `description`, `created_at`, `updated_at`) VALUES
(6, 0x62666439303338642d333864632d313165622d626137622d373466303664663066636462, 1, 'Poupança', '2020-12-07 22:37:15', '2020-12-07 22:37:15'),
(7, 0x63346361333234302d333864632d313165622d626137622d373466303664663066636462, 1, 'Corrente', '2020-12-07 22:37:24', '2020-12-07 22:37:24');

-- --------------------------------------------------------

--
-- Estrutura da tabela `type_properties`
--

CREATE TABLE `type_properties` (
  `id` int(11) NOT NULL,
  `cod` binary(36) NOT NULL DEFAULT uuid(),
  `account_id` int(11) NOT NULL DEFAULT 0,
  `description` varchar(100) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `type_properties`
--

INSERT INTO `type_properties` (`id`, `cod`, `account_id`, `description`, `created_at`, `updated_at`) VALUES
(9, 0x65383162643433332d343862612d313165622d386335662d373466303664663066636462, 1, 'teste', '2020-12-28 03:15:30', '2020-12-28 03:15:30');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `cod` binary(36) NOT NULL,
  `first_name` varchar(255) NOT NULL DEFAULT '',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL DEFAULT '',
  `level_id` int(11) NOT NULL DEFAULT 1,
  `account_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `forget` varchar(255) DEFAULT NULL,
  `genre` varchar(10) DEFAULT NULL,
  `datebirth` date DEFAULT NULL,
  `document` varchar(11) DEFAULT NULL,
  `document2` varchar(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `realtor` int(11) DEFAULT NULL,
  `error_attempt` int(11) DEFAULT NULL,
  `error_code` varchar(255) DEFAULT NULL,
  `error_date` timestamp NULL DEFAULT NULL,
  `admin_account` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `cod`, `first_name`, `last_name`, `email`, `user_name`, `password`, `level_id`, `account_id`, `status`, `forget`, `genre`, `datebirth`, `document`, `document2`, `photo`, `realtor`, `error_attempt`, `error_code`, `error_date`, `admin_account`, `created_at`, `updated_at`) VALUES
(1, 0x66646264346532312d333364652d313165622d613061322d373466303664663066636462, 'Luiz Felipe', 'Azevedo Bello', 'luizfelipe31@gmail.com', 'admin', '$2y$10$/D0SF9Y/t33BNaeqptbdI.54CV5FKNukJ1hl1G3Wdm1yKUALS3Cti', 1, 1, 1, NULL, 'male', '1989-07-09', '14179893789', '241989185', 'images/2020/10/luiz-felipe-azevedo-bello-1603334942.jpg', 1, NULL, NULL, NULL, 0, '2020-08-27 15:56:03', '2021-06-12 15:32:52'),
(2, 0x66646334383337362d333364652d313165622d613061322d373466303664663066636462, 'Francisco', 'Araujo Filho', 'franciscoaraujofilho@gmail.com', NULL, '$2y$10$eUQYvXtx1feTPhSld97eL./gBqOjxrcGtMi6GdANs0g1qM3OBrVQW', 1, 1, 1, NULL, 'male', '1962-01-08', '12121212121', NULL, NULL, 1, NULL, NULL, NULL, 0, '2020-08-29 00:43:55', '2020-12-23 01:52:52'),
(5, 0x66646334383838342d333364652d313165622d613061322d373466303664663066636462, 'A&G', 'Software', 'contato@aegsoftware.com', 'admin2', '$2y$10$S54juihUIPt3PVAbelBOKuMVhd.KFp2avPZbgrqgQPsGKGS8TnPXi', 1, 1, 1, NULL, 'male', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, '2020-08-27 15:56:03', '2021-01-11 17:11:39'),
(6, 0x66646334386233382d333364652d313165622d613061322d373466303664663066636462, 'Luiz', 'Felipe', 'luizfelipe@gmail.com', NULL, '$2y$10$JS/MzdusoO6TTUmnwMLK3O/B3Qy/enG09dOrSTZS9vIh8kTqUxl9O', 1, 1, 1, NULL, 'male', NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, '2020-10-17 02:57:35', '2020-12-23 01:52:57'),
(7, 0x66646334613731372d333364652d313165622d613061322d373466303664663066636462, 'Fulano ', 'De Tal', 'fulano@gmail.com', NULL, '$2y$10$/FAeHlVSbFqg7w2394OSOeOWvjJfjLAwo5zuSYfVp5m5HZXy0.2PW', 1, 1, 1, NULL, 'male', NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, '2020-10-20 15:14:09', '2020-12-23 02:10:56'),
(8, 0x66646334616139632d333364652d313165622d613061322d373466303664663066636462, 'Teste', 'Foto', 'testefoto@gmail.com', NULL, '$2y$10$weP6GBjf.P2qrxz2NCpDBu7TW3p/L.JWPPTgmAaoFYoTZDfL3Zmfa', 1, 1, 1, NULL, 'male', NULL, '', NULL, NULL, 0, NULL, NULL, NULL, 0, '2020-10-22 02:10:17', '2020-12-23 01:53:01'),
(9, 0x66646334616431662d333364652d313165622d613061322d373466303664663066636462, 'Teste', 'Imagem', 'testeimagem@gmail.com', NULL, '$2y$10$hTDmnfUTOVYJqpvpjwdHKOwKMPReNR2G228T/Pe.p90hoUK79d82.', 1, 1, 1, NULL, 'male', NULL, '', NULL, 'images/2020/10/teste-imagem.jpg', 0, NULL, NULL, NULL, 0, '2020-10-22 02:57:14', '2020-12-23 01:53:03'),
(12, 0x66646334383848542c313364652c313165622d613061322d373466303664663066636462, 'Empresa', 'LTDA', 'teste@email.com', NULL, '$2y$10$S54juihUIPt3PVAbelBOKuMVhd.KFp2avPZbgrqgQPsGKGS8TnPXi', 1, 2, 1, NULL, 'male', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, '2020-08-27 15:56:03', '2021-01-11 15:51:31');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wallets`
--

CREATE TABLE `wallets` (
  `id` int(11) NOT NULL,
  `cod` binary(36) NOT NULL DEFAULT uuid(),
  `description` varchar(250) NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `wallets`
--

INSERT INTO `wallets` (`id`, `cod`, `description`, `account_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 0x31326238383065392d376338642d313165622d623365362d356363643562623862373938, 'Principal', NULL, 1, '2021-03-04 01:58:12', '2021-03-04 01:58:32'),
(2, 0x30336137633534352d636133392d313165622d396531332d356363643562623862373938, 'teste', 1, 2, '2021-06-10 22:12:58', '2021-06-11 04:25:02'),
(3, 0x61626635383233312d636136642d313165622d396531332d356363643562623862373938, 'Teste2', 1, 1, '2021-06-11 04:29:55', '2021-06-11 05:21:44'),
(4, 0x65663931643762312d636266622d313165622d396336662d356363643562623862373938, 'Teste3', 1, 1, '2021-06-13 04:00:49', '2021-06-13 04:00:49');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `apportionments`
--
ALTER TABLE `apportionments`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `billets`
--
ALTER TABLE `billets`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `billet_invoices`
--
ALTER TABLE `billet_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `civil_status`
--
ALTER TABLE `civil_status`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `clients` ADD FULLTEXT KEY `first_name` (`first_name`);
ALTER TABLE `clients` ADD FULLTEXT KEY `last_name` (`last_name`);
ALTER TABLE `clients` ADD FULLTEXT KEY `company_name` (`company_name`);
ALTER TABLE `clients` ADD FULLTEXT KEY `email2` (`email`);
ALTER TABLE `clients` ADD FULLTEXT KEY `email_secundary2` (`email_secundary`);
ALTER TABLE `clients` ADD FULLTEXT KEY `first_name2` (`first_name`,`last_name`,`company_name`,`email`,`email_secundary`);

--
-- Índices para tabela `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `contract_historics`
--
ALTER TABLE `contract_historics`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `contract_lessees`
--
ALTER TABLE `contract_lessees`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `contract_procurators`
--
ALTER TABLE `contract_procurators`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `document_secundary_complements`
--
ALTER TABLE `document_secundary_complements`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `guarantees`
--
ALTER TABLE `guarantees`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `historics`
--
ALTER TABLE `historics`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `nationalities`
--
ALTER TABLE `nationalities`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `owners`
--
ALTER TABLE `owners`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `place_of_births`
--
ALTER TABLE `place_of_births`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `professions`
--
ALTER TABLE `professions`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `property_categories`
--
ALTER TABLE `property_categories`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `property_historics`
--
ALTER TABLE `property_historics`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `receipt_invoices`
--
ALTER TABLE `receipt_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `status_historic`
--
ALTER TABLE `status_historic`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `type_accounts`
--
ALTER TABLE `type_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `type_properties`
--
ALTER TABLE `type_properties`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cod` (`cod`),
  ADD UNIQUE KEY `user_name` (`user_name`) USING BTREE;
ALTER TABLE `users` ADD FULLTEXT KEY `first_name` (`first_name`);
ALTER TABLE `users` ADD FULLTEXT KEY `last_name` (`last_name`);
ALTER TABLE `users` ADD FULLTEXT KEY `email_2` (`email`);
ALTER TABLE `users` ADD FULLTEXT KEY `first_name_2` (`first_name`,`last_name`,`email`);

--
-- Índices para tabela `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `apportionments`
--
ALTER TABLE `apportionments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `billets`
--
ALTER TABLE `billets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `billet_invoices`
--
ALTER TABLE `billet_invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `civil_status`
--
ALTER TABLE `civil_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `contract_historics`
--
ALTER TABLE `contract_historics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `contract_lessees`
--
ALTER TABLE `contract_lessees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `contract_procurators`
--
ALTER TABLE `contract_procurators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `document_secundary_complements`
--
ALTER TABLE `document_secundary_complements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `guarantees`
--
ALTER TABLE `guarantees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `historics`
--
ALTER TABLE `historics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=961;

--
-- AUTO_INCREMENT de tabela `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=460;

--
-- AUTO_INCREMENT de tabela `nationalities`
--
ALTER TABLE `nationalities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `owners`
--
ALTER TABLE `owners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `place_of_births`
--
ALTER TABLE `place_of_births`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `professions`
--
ALTER TABLE `professions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `property_categories`
--
ALTER TABLE `property_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `property_historics`
--
ALTER TABLE `property_historics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `receipts`
--
ALTER TABLE `receipts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=961;

--
-- AUTO_INCREMENT de tabela `receipt_invoices`
--
ALTER TABLE `receipt_invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=961;

--
-- AUTO_INCREMENT de tabela `status_historic`
--
ALTER TABLE `status_historic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `type_accounts`
--
ALTER TABLE `type_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `type_properties`
--
ALTER TABLE `type_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
