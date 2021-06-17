-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Jun-2021 às 07:57
-- Versão do servidor: 10.4.19-MariaDB
-- versão do PHP: 7.4.20

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
(1, 0x36666334313966662d636233362d313165622d613663632d356363643562623862373938, '9', '7', '4550', '12132', '', 1, 1, '2020-11-30 19:59:30', '2021-06-14 01:50:34'),
(6, 0x36613837646263332d636263662d313165622d396336662d356363643562623862373938, '7', '7', '6090', '183960', 'luizfelipe31@gmail.com', 1, 1, '2021-06-12 22:42:08', '2021-06-13 17:15:14');

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
(8, 0x65363566316335312d376338642d313165622d623365362d356363643562623862373938, 'Bombeiro', NULL, 1, '2021-03-04 02:04:07', NULL),
(9, 0x62333334663763392d636535632d313165622d396238332d356363643562623862373938, 'Tarifa Doc/Ted', NULL, 1, '2021-03-04 02:04:07', NULL);

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
(4, 0x33656266363735312d373935652d313165622d613866342d356363643562623862373938, NULL, 9, 5, '1320.00', '10.00', 'IPCA', '30', '2021-02-27', '2023-08-26', 'automatic', 5, 'money', '2022-03-01', 1, 'security_deposit', 0, '1.20', 3, '&#60;ul&#62;&#10;&#9;&#60;li&#62;teste&#60;/li&#62;&#10;&#9;&#60;li&#62;&#60;em&#62;teste&#60;/em&#62;&#60;/li&#62;&#10;&#9;&#60;li&#62;&#60;em&#62;&#60;strong&#62;teste&#60;/strong&#62;&#60;/em&#62;&#60;/li&#62;&#10;&#60;/ul&#62;&#10;', 'images/2021/02/contract-f93445e3c3d781a7fa78994bde931c70.jpg', 'files/2021/02/contract-36df0449d6c9ba5516434b551f5f20c2.pdf', NULL, NULL, NULL, '', NULL, 1, 'active', 1, 1, '2021-06-14 19:51:41', '2021-06-14 19:51:59'),
(5, 0x34643162313661352d376430312d313165622d613962662d356363643562623862373938, '1234', 11, 0, '1200.00', '10.00', 'IPCA', '30', '2021-03-04', '2023-09-03', 'automatic', 6, 'money', '2022-03-01', 1, '', 0, '0.00', 0, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 'active', 1, 1, '2021-03-04 15:50:10', '2021-03-04 15:50:10'),
(6, 0x61666635613365342d383035302d313165622d383961662d356363643562623862373938, '', 14, 5, '1980.00', '10.00', 'IPCA', '30', '2020-03-08', '2022-09-07', 'automatic', 10, 'bank_deposit', '2022-03-01', 0, '', 0, '0.00', 0, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 'active', 1, 1, '2021-03-08 20:56:01', '2021-03-27 21:00:53'),
(7, 0x34613337353465372d383065652d313165622d396166372d356363643562623862373938, '', 12, 5, '1320.00', '10.00', 'IGPM', '30', '2020-02-03', '2022-08-02', 'automatic', 5, 'money', '2022-03-01', 0, '', 0, '0.00', 0, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 'active', 1, 1, '2021-03-09 15:45:05', '2021-03-27 21:00:53'),
(8, 0x36386139373738332d393139612d313165622d616539652d356363643562623862373938, '', 13, 5, '1500.00', '8.50', 'IPCA', '30', '2018-10-01', '2021-04-30', 'renewed', 5, 'bank_deposit', '2019-10-01', 0, '', 0, '0.00', 0, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 'active', 1, 1, '2021-05-31 00:12:54', '2021-06-07 00:56:55'),
(9, 0x64386337616663622d633731622d313165622d613565362d356363643562623862373938, '', 16, 2, '1500.00', '8.00', 'IPCA', '30', '2021-06-06', '2023-12-05', 'automatic', 5, 'money', '2022-06-01', 1, '', 0, '0.00', 0, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 'active', 1, 1, '2021-06-06 23:06:39', '2021-06-06 23:06:39'),
(10, 0x31623432393838642d633731632d313165622d613565362d356363643562623862373938, '', 10, 0, '1200.00', '10.00', 'IPCA', '30', '2021-06-06', '2023-12-05', 'manual', 5, 'money', '2022-06-01', 0, '', 0, '0.00', 0, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 'active', 1, 1, '2021-06-14 01:49:41', '2021-06-14 01:49:41');

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
  `payment_form` char(50) NOT NULL DEFAULT '',
  `operation` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `bank_account_id` int(11) DEFAULT NULL,
  `wallet` int(11) NOT NULL,
  `reference_date` varchar(10) NOT NULL DEFAULT '',
  `due_date` date NOT NULL,
  `contract` int(11) DEFAULT NULL,
  `property` int(11) DEFAULT NULL,
  `lessor` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `fixed` int(11) DEFAULT NULL,
  `recurrent` int(11) DEFAULT NULL,
  `compensation_date` date DEFAULT NULL,
  `compensation_value` decimal(10,2) DEFAULT NULL,
  `compensation_type` varchar(20) DEFAULT NULL,
  `status_comission` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `invoices`
--

INSERT INTO `invoices` (`id`, `cod`, `value`, `payment_form`, `operation`, `category`, `bank_account_id`, `wallet`, `reference_date`, `due_date`, `contract`, `property`, `lessor`, `note`, `fixed`, `recurrent`, `compensation_date`, `compensation_value`, `compensation_type`, `status_comission`, `status`, `account_id`, `created_at`, `updated_at`) VALUES
(1, 0x66383835323563392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2021', '2021-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(2, 0x66383836323864642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2021', '2021-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(3, 0x66383837613039662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2021', '2021-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(4, 0x66383838313332332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2021', '2021-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(5, 0x66383838643236622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2021', '2021-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(6, 0x66383839656663652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2021', '2021-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(7, 0x66383861343935632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2021', '2022-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(8, 0x66383861386561372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2022', '2022-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(9, 0x66383862333133382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2022', '2022-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(10, 0x66383863346232302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2022', '2022-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(11, 0x66383863396230612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2022', '2022-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(12, 0x66383863643039632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2022', '2022-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(13, 0x66383864303462312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2022', '2022-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(14, 0x66383864386535622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2022', '2022-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(15, 0x66383865353532392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2022', '2022-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(16, 0x66383865663363302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2022', '2022-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(17, 0x66383866323837352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2022', '2022-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(18, 0x66383866353933312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2022', '2022-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(19, 0x66383866396165632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2022', '2023-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(20, 0x66383930346362662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2023', '2023-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(21, 0x66383931353832382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2023', '2023-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(22, 0x66383931393165652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2023', '2023-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(23, 0x66383931633664612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2023', '2023-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(24, 0x66383931663865382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2023', '2023-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(25, 0x66383932323930302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2023', '2023-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(26, 0x66383932636561372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2023', '2023-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(27, 0x66383933626564302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2023', '2023-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(28, 0x66383934313636332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2023', '2023-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(29, 0x66383934343864382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2023', '2023-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(30, 0x66383934373839352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2023', '2023-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(31, 0x66383934623166352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2023', '2024-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(32, 0x66383935346531332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2024', '2024-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(33, 0x66383936323331332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2024', '2024-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(34, 0x66383936613661362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2024', '2024-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(35, 0x66383936646233302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2024', '2024-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(36, 0x66383937316535332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2024', '2024-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(37, 0x66383937363835342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2024', '2024-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(38, 0x66383938343463662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2024', '2024-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(39, 0x66383939303866612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2024', '2024-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(40, 0x66383939343966632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2024', '2024-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(41, 0x66383939383662342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2024', '2024-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(42, 0x66383939626635322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2024', '2024-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(43, 0x66383961343738342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2024', '2025-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(44, 0x66383962303536362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2025', '2025-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(45, 0x66383962386139322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2025', '2025-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(46, 0x66383962626139632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2025', '2025-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(47, 0x66383962656234642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2025', '2025-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(48, 0x66383963323461392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2025', '2025-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(49, 0x66383963353462302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2025', '2025-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(50, 0x66383963666439352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2025', '2025-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(51, 0x66383964643437642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2025', '2025-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(52, 0x66383965303737652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2025', '2025-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(53, 0x66383965333630332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2025', '2025-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(54, 0x66383965373534352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2025', '2025-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(55, 0x66383965616430312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2025', '2026-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(56, 0x66383965653163652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2026', '2026-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(57, 0x66383966373635302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2026', '2026-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(58, 0x66383966646431662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2026', '2026-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(59, 0x66386130306466392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2026', '2026-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(60, 0x66386130343038662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2026', '2026-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(61, 0x66386130373231302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2026', '2026-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(62, 0x66386130613463392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2026', '2026-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(63, 0x66386130643461642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2026', '2026-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(64, 0x66386131303163302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2026', '2026-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(65, 0x66386131333631372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2026', '2026-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(66, 0x66386131363532612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2026', '2026-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(67, 0x66386131663137332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2026', '2027-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(68, 0x66386132333461642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2027', '2027-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(69, 0x66386132373837372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2027', '2027-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(70, 0x66386132613764382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2027', '2027-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(71, 0x66386132643738392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2027', '2027-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(72, 0x66386133303566372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2027', '2027-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(73, 0x66386133333631352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2027', '2027-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(74, 0x66386133363732612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2027', '2027-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(75, 0x66386133393633302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2027', '2027-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(76, 0x66386133633432332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2027', '2027-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(77, 0x66386133663461612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2027', '2027-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(78, 0x66386134373964642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2027', '2027-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(79, 0x66386134623738392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2027', '2028-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(80, 0x66386134653965612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2028', '2028-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(81, 0x66386135316138622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2028', '2028-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(82, 0x66386135353135632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2028', '2028-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(83, 0x66386135383636362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2028', '2028-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(84, 0x66386135623861642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2028', '2028-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(85, 0x66386135653936642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2028', '2028-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(86, 0x66386136313865322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2028', '2028-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(87, 0x66386136343937652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2028', '2028-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(88, 0x66386136376232352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2028', '2028-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(89, 0x66386136653439652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2028', '2028-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(90, 0x66386137323336322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2028', '2028-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(91, 0x66386137353136332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2028', '2029-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(92, 0x66386137383062642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2029', '2029-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(93, 0x66386137616566312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2029', '2029-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(94, 0x66386137653038372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2029', '2029-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(95, 0x66386138313336632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2029', '2029-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(96, 0x66386138343230362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2029', '2029-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(97, 0x66386138373265622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2029', '2029-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(98, 0x66386138613538612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2029', '2029-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(99, 0x66386138643335652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2029', '2029-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(100, 0x66386139303364372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2029', '2029-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(101, 0x66386139363736382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2029', '2029-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(102, 0x66386139623737392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2029', '2029-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(103, 0x66386139656130312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2029', '2030-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(104, 0x66386161316364332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2030', '2030-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(105, 0x66386161346531342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2030', '2030-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(106, 0x66386161376464652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2030', '2030-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(107, 0x66386161616332342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2030', '2030-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(108, 0x66386161646665312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2030', '2030-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(109, 0x66386162306564662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2030', '2030-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(110, 0x66386162336331322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2030', '2030-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(111, 0x66386162366331392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2030', '2030-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(112, 0x66386162396231652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2030', '2030-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(113, 0x66386163306239622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2030', '2030-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(114, 0x66386163343163342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2030', '2030-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(115, 0x66386163373262372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2030', '2031-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(116, 0x66386163613435312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2031', '2031-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(117, 0x66386163643661392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2031', '2031-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(118, 0x66386164303564362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2031', '2031-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(119, 0x66386164333739372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2031', '2031-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(120, 0x66386164363633362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2031', '2031-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(121, 0x66386164393239652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2031', '2031-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(122, 0x66386164633261352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2031', '2031-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(123, 0x66386164663139632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2031', '2031-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(124, 0x66386165323263322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2031', '2031-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(125, 0x66386165393338362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2031', '2031-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(126, 0x66386165636134362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2031', '2031-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(127, 0x66386165666331652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2031', '2032-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(128, 0x66386166336532382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2032', '2032-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(129, 0x66386166373033632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2032', '2032-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(130, 0x66386166613335322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2032', '2032-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(131, 0x66386166643430372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2032', '2032-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(132, 0x66386230303239622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2032', '2032-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(133, 0x66386230333333642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2032', '2032-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(134, 0x66386230363263352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2032', '2032-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(135, 0x66386230393238332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2032', '2032-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(136, 0x66386230663262302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2032', '2032-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(137, 0x66386231333939642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2032', '2032-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(138, 0x66386231366137312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2032', '2032-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(139, 0x66386231626631372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2032', '2033-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(140, 0x66386231666163342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2033', '2033-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(141, 0x66386232326233332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2033', '2033-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(142, 0x66386232353937632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2033', '2033-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(143, 0x66386232386139352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2033', '2033-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(144, 0x66386232623763622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2033', '2033-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(145, 0x66386232653631662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2033', '2033-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(146, 0x66386233313464612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2033', '2033-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(147, 0x66386233346661302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2033', '2033-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(148, 0x66386233626431632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2033', '2033-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(149, 0x66386233663339322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2033', '2033-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(150, 0x66386234323363652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2033', '2033-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(151, 0x66386234353635632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2033', '2034-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(152, 0x66386234383566652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2034', '2034-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(153, 0x66386234623463312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2034', '2034-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(154, 0x66386234653065652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2034', '2034-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(155, 0x66386235306637362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2034', '2034-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(156, 0x66386235336532362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2034', '2034-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(157, 0x66386235366431332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2034', '2034-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(158, 0x66386235396163652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2034', '2034-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(159, 0x66386235636437332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2034', '2034-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(160, 0x66386236333938332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2034', '2034-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(161, 0x66386236373266662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2034', '2034-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(162, 0x66386236613662372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2034', '2034-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(163, 0x66386236643735632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2034', '2035-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(164, 0x66386237303836652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2035', '2035-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(165, 0x66386237333732332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2035', '2035-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(166, 0x66386237363562662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2035', '2035-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(167, 0x66386237393330342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2035', '2035-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(168, 0x66386237633432372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2035', '2035-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(169, 0x66386237663530622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2035', '2035-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(170, 0x66386238336138382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2035', '2035-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(171, 0x66386238393266622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2035', '2035-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(172, 0x66386263383265392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2035', '2035-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(173, 0x66386264303935642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2035', '2035-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(174, 0x66386264353534352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2035', '2035-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(175, 0x66386264623731362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2035', '2036-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(176, 0x66386264666238302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2036', '2036-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(177, 0x66386265326165312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2036', '2036-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(178, 0x66386265356234302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2036', '2036-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(179, 0x66386265383865332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2036', '2036-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(180, 0x66386265626363342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2036', '2036-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(181, 0x66386265656331662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2036', '2036-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(182, 0x66386266323434652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2036', '2036-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(183, 0x66386266353932642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2036', '2036-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(184, 0x66386266386633372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2036', '2036-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(185, 0x66386266633632622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2036', '2036-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(186, 0x66386330313561622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2036', '2036-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(187, 0x66386330366630312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2036', '2037-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(188, 0x66386433616636312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2037', '2037-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(189, 0x66386434336131612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2037', '2037-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(190, 0x66386434633564642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2037', '2037-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(191, 0x66386435323632612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2037', '2037-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(192, 0x66386435363237622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2037', '2037-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(193, 0x66386435396130652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2037', '2037-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(194, 0x66386435636339392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2037', '2037-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(195, 0x66386436306131312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2037', '2037-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(196, 0x66386436336631622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2037', '2037-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(197, 0x66386436383231632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2037', '2037-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(198, 0x66386436623539352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2037', '2037-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(199, 0x66386437306663662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2037', '2038-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(200, 0x66386437356464642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2038', '2038-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(201, 0x66386437393036312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2038', '2038-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(202, 0x66386437636631392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2038', '2038-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(203, 0x66386438313038312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2038', '2038-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(204, 0x66386438343839332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2038', '2038-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(205, 0x66386438376532642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2038', '2038-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(206, 0x66386438616562302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2038', '2038-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(207, 0x66386438646365372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2038', '2038-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(208, 0x66386439306536642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2038', '2038-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(209, 0x66386439336330642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2038', '2038-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(210, 0x66386439386631642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2038', '2038-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57');
INSERT INTO `invoices` (`id`, `cod`, `value`, `payment_form`, `operation`, `category`, `bank_account_id`, `wallet`, `reference_date`, `due_date`, `contract`, `property`, `lessor`, `note`, `fixed`, `recurrent`, `compensation_date`, `compensation_value`, `compensation_type`, `status_comission`, `status`, `account_id`, `created_at`, `updated_at`) VALUES
(211, 0x66386439653531322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2038', '2039-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(212, 0x66386461313862322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2039', '2039-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(213, 0x66386461353066342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2039', '2039-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(214, 0x66386461383033382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2039', '2039-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(215, 0x66386461623032662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2039', '2039-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(216, 0x66386461653061312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2039', '2039-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(217, 0x66386462306539612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2039', '2039-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(218, 0x66386462336439352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2039', '2039-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(219, 0x66386462366530302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2039', '2039-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(220, 0x66386462396632352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2039', '2039-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(221, 0x66386462643162342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2039', '2039-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(222, 0x66386463333635622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2039', '2039-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(223, 0x66386463373139382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2039', '2040-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(224, 0x66386463616464382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2040', '2040-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(225, 0x66386463646532392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2040', '2040-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(226, 0x66386464306362372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2040', '2040-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(227, 0x66386464336238372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2040', '2040-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(228, 0x66386464363934652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2040', '2040-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(229, 0x66386464393833372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2040', '2040-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(230, 0x66386464636134342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2040', '2040-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(231, 0x66386532623365362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2040', '2040-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(232, 0x66386533356336302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2040', '2040-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(233, 0x66386533663864342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2040', '2040-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(234, 0x66386534353863642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2040', '2040-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(235, 0x66386534613462372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2040', '2041-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(236, 0x66386534643734312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2041', '2041-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(237, 0x66386535303935352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2041', '2041-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(238, 0x66386535333838382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2041', '2041-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(239, 0x66386535363931632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2041', '2041-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(240, 0x66386535393734632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2041', '2041-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(241, 0x66386535633730342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2041', '2041-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(242, 0x66386535663437372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2041', '2041-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(243, 0x66386536356330342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2041', '2041-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(244, 0x66386536613438642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2041', '2041-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(245, 0x66386536643738312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2041', '2041-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(246, 0x66386537303830372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2041', '2041-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(247, 0x66386537336333362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2041', '2042-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(248, 0x66386537366464352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2042', '2042-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(249, 0x66386537396332372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2042', '2042-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(250, 0x66386537636136652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2042', '2042-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(251, 0x66386537666132632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2042', '2042-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(252, 0x66386538323838642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2042', '2042-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(253, 0x66386538353839332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2042', '2042-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(254, 0x66386538383764302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2042', '2042-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(255, 0x66386538656239662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2042', '2042-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(256, 0x66386539326531352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2042', '2042-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(257, 0x66386539356331662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2042', '2042-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(258, 0x66386539386364642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2042', '2042-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(259, 0x66386539626335332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2042', '2043-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(260, 0x66386539663866642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2043', '2043-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(261, 0x66386561326236392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2043', '2043-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(262, 0x66386561356430342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2043', '2043-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(263, 0x66386561396534312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2043', '2043-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(264, 0x66386561643433362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2043', '2043-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(265, 0x66386562306339352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2043', '2043-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(266, 0x66386562366165642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2043', '2043-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(267, 0x66386562616665322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2043', '2043-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(268, 0x66386562653133372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2043', '2043-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(269, 0x66386563313162352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2043', '2043-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(270, 0x66386563343038662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2043', '2043-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(271, 0x66386563366663612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2043', '2044-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(272, 0x66386563613063362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2044', '2044-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(273, 0x66386563636634302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2044', '2044-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(274, 0x66386563666562362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2044', '2044-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(275, 0x66386564326530342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2044', '2044-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(276, 0x66386564363136392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2044', '2044-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(277, 0x66386564393061662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2044', '2044-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(278, 0x66386564653335312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2044', '2044-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(279, 0x66386565326237352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2044', '2044-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(280, 0x66386565356437362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2044', '2044-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(281, 0x66386565393139382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2044', '2044-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(282, 0x66386565633564612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2044', '2044-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(283, 0x66386565663638392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2044', '2045-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(284, 0x66386566323863322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2045', '2045-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(285, 0x66386566363166342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2045', '2045-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(286, 0x66386566616131632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2045', '2045-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(287, 0x66386566646636342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2045', '2045-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(288, 0x66386630306666612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2045', '2045-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(289, 0x66386630353637322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2045', '2045-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(290, 0x66386630623139652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2045', '2045-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(291, 0x66386630653138362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2045', '2045-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(292, 0x66386631313032652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2045', '2045-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(293, 0x66386631336562622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2045', '2045-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(294, 0x66386631366433652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2045', '2045-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(295, 0x66386631396437302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2045', '2046-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(296, 0x66386631636133322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2046', '2046-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(297, 0x66386632313365312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2046', '2046-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(298, 0x66386632343739352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2046', '2046-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(299, 0x66386632373935322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2046', '2046-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(300, 0x66386632613836632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2046', '2046-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(301, 0x66386632663862332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2046', '2046-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(302, 0x66386633343430642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2046', '2046-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(303, 0x66386633373630352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2046', '2046-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(304, 0x66386633613361332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2046', '2046-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(305, 0x66386633643734342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2046', '2046-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(306, 0x66386634303732622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2046', '2046-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(307, 0x66386634333536382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2046', '2047-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(308, 0x66386634363538642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2047', '2047-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(309, 0x66386634393531622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2047', '2047-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(310, 0x66386634633366662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2047', '2047-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(311, 0x66386634663161352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2047', '2047-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(312, 0x66386635323130652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2047', '2047-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(313, 0x66386635353062322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2047', '2047-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(314, 0x66386635623633662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2047', '2047-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(315, 0x66386635656333342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2047', '2047-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(316, 0x66386636316333382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2047', '2047-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(317, 0x66386636353835302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2047', '2047-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(318, 0x66386636383936302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2047', '2047-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(319, 0x66386636626230392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2047', '2048-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(320, 0x66386637303333362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2048', '2048-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(321, 0x66386637333566612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2048', '2048-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(322, 0x66386637363737662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2048', '2048-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(323, 0x66386637393938342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2048', '2048-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(324, 0x66386637633731622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2048', '2048-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(325, 0x66386638323765662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2048', '2048-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(326, 0x66386638366466652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2048', '2048-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(327, 0x66386638396663332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2048', '2048-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(328, 0x66386638643034652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2048', '2048-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(329, 0x66386639313333642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2048', '2048-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(330, 0x66386639346330612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2048', '2048-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(331, 0x66386639383136372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2048', '2049-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(332, 0x66386639623135612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2049', '2049-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(333, 0x66386639646664642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2049', '2049-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(334, 0x66386661306463382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2049', '2049-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(335, 0x66386661336362392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2049', '2049-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(336, 0x66386661383266382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2049', '2049-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(337, 0x66386661646534382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2049', '2049-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(338, 0x66386662306361372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2049', '2049-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(339, 0x66386662343862372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2049', '2049-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(340, 0x66386662373966622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2049', '2049-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(341, 0x66386662623065382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2049', '2049-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(342, 0x66386662653430352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2049', '2049-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(343, 0x66386663313436342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2049', '2050-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(344, 0x66386663346633392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2050', '2050-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(345, 0x66386663383237322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2050', '2050-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(346, 0x66386663623362642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2050', '2050-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(347, 0x66386663653535392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2050', '2050-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(348, 0x66386664353864352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2050', '2050-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(349, 0x66386664393964392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2050', '2050-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(350, 0x66386664636238372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2050', '2050-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(351, 0x66386664666431392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2050', '2050-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(352, 0x66386665326562302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2050', '2050-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(353, 0x66386665363130392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2050', '2050-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(354, 0x66386665393166332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2050', '2050-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(355, 0x66386665633163662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2050', '2051-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(356, 0x66386665663565642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2051', '2051-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(357, 0x66386666323434642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2051', '2051-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(358, 0x66386666353533392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2051', '2051-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(359, 0x66386666613530352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2051', '2051-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(360, 0x66386666666366362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2051', '2051-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(361, 0x66393030336130312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2051', '2051-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(362, 0x66393030383032302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2051', '2051-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(363, 0x66393030616633662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2051', '2051-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(364, 0x66393030653235632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2051', '2051-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(365, 0x66393031313231372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2051', '2051-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(366, 0x66393031346138342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2051', '2051-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(367, 0x66393031376333332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2051', '2052-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(368, 0x66393031616334362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2052', '2052-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(369, 0x66393031646232392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2052', '2052-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(370, 0x66393032323535342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2052', '2052-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(371, 0x66393032386237632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2052', '2052-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(372, 0x66393032633239342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2052', '2052-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(373, 0x66393032663839612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2052', '2052-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(374, 0x66393033323766312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2052', '2052-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(375, 0x66393033353934302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2052', '2052-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(376, 0x66393033383965622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2052', '2052-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(377, 0x66393033633666352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2052', '2052-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(378, 0x66393033663935342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2052', '2052-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(379, 0x66393034323961632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2052', '2053-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(380, 0x66393034353839332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2053', '2053-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(381, 0x66393034386438642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2053', '2053-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(382, 0x66393035303838622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2053', '2053-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(383, 0x66393035343761332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2053', '2053-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(384, 0x66393035376239322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2053', '2053-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(385, 0x66393035616363332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2053', '2053-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(386, 0x66393035646263612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2053', '2053-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(387, 0x66393036323839332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2053', '2053-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(388, 0x66393036353762352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2053', '2053-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(389, 0x66393036383633302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2053', '2053-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(390, 0x66393036623561642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2053', '2053-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(391, 0x66393036653739322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2053', '2054-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(392, 0x66393037316133372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2054', '2054-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(393, 0x66393037396634322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2054', '2054-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(394, 0x66393037643433632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2054', '2054-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(395, 0x66393038313965332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2054', '2054-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(396, 0x66393038343933652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2054', '2054-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(397, 0x66393038373937342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2054', '2054-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(398, 0x66393038613731632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2054', '2054-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(399, 0x66393038646161362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2054', '2054-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(400, 0x66393039306230362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2054', '2054-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(401, 0x66393039333861652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2054', '2054-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(402, 0x66393039363936322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2054', '2054-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(403, 0x66393039396236642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2054', '2055-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(404, 0x66393061316633312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2055', '2055-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(405, 0x66393061353530372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2055', '2055-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(406, 0x66393061383439642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2055', '2055-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(407, 0x66393061623334642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2055', '2055-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(408, 0x66393061653162642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2055', '2055-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(409, 0x66393062313333312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2055', '2055-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(410, 0x66393062343439332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2055', '2055-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(411, 0x66393062373639642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2055', '2055-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(412, 0x66393062613461332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2055', '2055-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(413, 0x66393062643134662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2055', '2055-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(414, 0x66393062666638322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2055', '2055-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(415, 0x66393063333133312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2055', '2056-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(416, 0x66393063616362632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2056', '2056-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(417, 0x66393063653238312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2056', '2056-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(418, 0x66393064313561632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2056', '2056-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(419, 0x66393064343938332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2056', '2056-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(420, 0x66393064383362662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2056', '2056-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58');
INSERT INTO `invoices` (`id`, `cod`, `value`, `payment_form`, `operation`, `category`, `bank_account_id`, `wallet`, `reference_date`, `due_date`, `contract`, `property`, `lessor`, `note`, `fixed`, `recurrent`, `compensation_date`, `compensation_value`, `compensation_type`, `status_comission`, `status`, `account_id`, `created_at`, `updated_at`) VALUES
(421, 0x66393064626266642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2056', '2056-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(422, 0x66393064656166372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2056', '2056-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(423, 0x66393065316166372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2056', '2056-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(424, 0x66393065343938662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2056', '2056-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(425, 0x66393065373931312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2056', '2056-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(426, 0x66393065613638342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2056', '2056-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(427, 0x66393066303738622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2056', '2057-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(428, 0x66393066343331652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2057', '2057-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(429, 0x66393066383561312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2057', '2057-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(430, 0x66393066623836362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2057', '2057-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(431, 0x66393066653966372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2057', '2057-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(432, 0x66393130323436392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2057', '2057-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(433, 0x66393130353331612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2057', '2057-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(434, 0x66393130383064622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2057', '2057-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(435, 0x66393130616662342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2057', '2057-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(436, 0x66393130646637612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2057', '2057-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(437, 0x66393131313039352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2057', '2057-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(438, 0x66393131626432382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2057', '2057-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(439, 0x66393132333361352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2057', '2058-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(440, 0x66393132373333312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2058', '2058-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(441, 0x66393132616638392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2058', '2058-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(442, 0x66393132653838382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2058', '2058-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(443, 0x66393133323561342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2058', '2058-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(444, 0x66393133356161342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2058', '2058-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(445, 0x66393133386631352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2058', '2058-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(446, 0x66393133633161312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2058', '2058-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(447, 0x66393134326239622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2058', '2058-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(448, 0x66393134363434642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2058', '2058-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(449, 0x66393134393562352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2058', '2058-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(450, 0x66393134633861632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2058', '2058-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(451, 0x66393134663866662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2058', '2059-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(452, 0x66393135326331352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2059', '2059-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(453, 0x66393135356334642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2059', '2059-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(454, 0x66393135386530622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2059', '2059-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(455, 0x66393135626531332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2059', '2059-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(456, 0x66393135656531342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2059', '2059-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(457, 0x66393136316435322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2059', '2059-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(458, 0x66393136343966352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2059', '2059-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(459, 0x66393136616430302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2059', '2059-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(460, 0x66393136653865382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2059', '2059-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(461, 0x66393137326335632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2059', '2059-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(462, 0x66393137356633392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2059', '2059-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(463, 0x66393137393062662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2059', '2060-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(464, 0x66393137633239362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2060', '2060-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(465, 0x66393137663166362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2060', '2060-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(466, 0x66393138316665642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2060', '2060-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(467, 0x66393138346566642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2060', '2060-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(468, 0x66393138613136302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2060', '2060-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(469, 0x66393138643636362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2060', '2060-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(470, 0x66393139336633632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2060', '2060-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(471, 0x66393139373533302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2060', '2060-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(472, 0x66393139613332352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2060', '2060-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(473, 0x66393139643234352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2060', '2060-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(474, 0x66393139666635632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2060', '2060-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(475, 0x66393161333332322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2060', '2061-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(476, 0x66393161363162372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2061', '2061-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(477, 0x66393161393031322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2061', '2061-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(478, 0x66393161633732612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2061', '2061-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(479, 0x66393161666262662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2061', '2061-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(480, 0x66393162326338652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2061', '2061-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(481, 0x66393162356164632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2061', '2061-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(482, 0x66393162623961342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2061', '2061-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(483, 0x66393162663861322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2061', '2061-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(484, 0x66393163326133332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2061', '2061-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(485, 0x66393163353863652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2061', '2061-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(486, 0x66393163386362372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2061', '2061-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(487, 0x66393163626237662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2061', '2062-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(488, 0x66393163656265392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2062', '2062-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(489, 0x66393164316430662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2062', '2062-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(490, 0x66393164346361372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2062', '2062-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(491, 0x66393164376266332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2062', '2062-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(492, 0x66393164616163662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2062', '2062-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(493, 0x66393164643937342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2062', '2062-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(494, 0x66393165333335382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2062', '2062-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(495, 0x66393165383462632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2062', '2062-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(496, 0x66393165623738622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2062', '2062-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(497, 0x66393165653965302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2062', '2062-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(498, 0x66393166313961342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2062', '2062-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(499, 0x66393166343933332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2062', '2063-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(500, 0x66393166376239392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2063', '2063-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(501, 0x66393166616264332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2063', '2063-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(502, 0x66393166646139352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2063', '2063-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(503, 0x66393230303864362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2063', '2063-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(504, 0x66393230333839622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2063', '2063-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(505, 0x66393230363831332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2063', '2063-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(506, 0x66393230633130662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2063', '2063-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(507, 0x66393231303864392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2063', '2063-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(508, 0x66393231333761312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2063', '2063-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(509, 0x66393231363666662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2063', '2063-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(510, 0x66393231393535392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2063', '2063-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(511, 0x66393231633930642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2063', '2064-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(512, 0x66393232303232302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2064', '2064-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(513, 0x66393232333436662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2064', '2064-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(514, 0x66393232363139322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2064', '2064-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(515, 0x66393232393030372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2064', '2064-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(516, 0x66393232626439612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2064', '2064-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(517, 0x66393232656265662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2064', '2064-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(518, 0x66393233336533382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2064', '2064-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(519, 0x66393233386430642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2064', '2064-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(520, 0x66393233633033362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2064', '2064-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(521, 0x66393233656632362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2064', '2064-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(522, 0x66393234316566302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2064', '2064-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(523, 0x66393234353031632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2064', '2065-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(524, 0x66393234383065642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2065', '2065-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(525, 0x66393234616639642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2065', '2065-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(526, 0x66393234646563342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2065', '2065-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(527, 0x66393235306330312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2065', '2065-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(528, 0x66393235346665612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2065', '2065-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(529, 0x66393235376664622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2065', '2065-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(530, 0x66393235646264652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2065', '2065-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(531, 0x66393236316636652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2065', '2065-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(532, 0x66393236353130332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2065', '2065-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(533, 0x66393236376631352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2065', '2065-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(534, 0x66393236623334332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2065', '2065-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(535, 0x66393236653534612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2065', '2066-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(536, 0x66393237313437652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2066', '2066-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(537, 0x66393237343336362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2066', '2066-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(538, 0x66393237373262622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2066', '2066-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(539, 0x66393237613333382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2066', '2066-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(540, 0x66393237643135322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2066', '2066-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(541, 0x66393238303233312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2066', '2066-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(542, 0x66393238353135362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2066', '2066-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(543, 0x66393238613361662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2066', '2066-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(544, 0x66393238643265342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2066', '2066-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(545, 0x66393239303930622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2066', '2066-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(546, 0x66393239336366642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2066', '2066-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(547, 0x66393239366437342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2066', '2067-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(548, 0x66393239396235322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2067', '2067-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(549, 0x66393239633939312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2067', '2067-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(550, 0x66393239666161362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2067', '2067-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(551, 0x66393261323764382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2067', '2067-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(552, 0x66393261353738302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2067', '2067-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(553, 0x66393261383733352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2067', '2067-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(554, 0x66393261643963612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2067', '2067-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(555, 0x66393262323466342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2067', '2067-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(556, 0x66393262353637382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2067', '2067-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(557, 0x66393262383534632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2067', '2067-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(558, 0x66393262623330302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2067', '2067-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(559, 0x66393262653734322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2067', '2068-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(560, 0x66393263313965642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2068', '2068-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(561, 0x66393263343763652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2068', '2068-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(562, 0x66393263386133382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2068', '2068-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(563, 0x66393263623835312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2068', '2068-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(564, 0x66393263656136322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2068', '2068-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(565, 0x66393264313837652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2068', '2068-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(566, 0x66393264373366342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2068', '2068-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(567, 0x66393264626238612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2068', '2068-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(568, 0x66393264656638632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2068', '2068-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(569, 0x66393265323766662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2068', '2068-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(570, 0x66393265353734302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2068', '2068-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(571, 0x66393265383665642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2068', '2069-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(572, 0x66393265623731312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2069', '2069-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(573, 0x66393265653662372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2069', '2069-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(574, 0x66393266313363372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2069', '2069-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(575, 0x66393266343039612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2069', '2069-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(576, 0x66393266366465372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2069', '2069-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(577, 0x66393266396165372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2069', '2069-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(578, 0x66393266653864642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2069', '2069-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(579, 0x66393330343938392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2069', '2069-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(580, 0x66393330376162302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2069', '2069-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(581, 0x66393330616135652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2069', '2069-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(582, 0x66393330643930342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2069', '2069-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(583, 0x66393331303936342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2069', '2070-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(584, 0x66393331336261352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2070', '2070-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(585, 0x66393331366235302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2070', '2070-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(586, 0x66393331393939342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2070', '2070-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(587, 0x66393331633863652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2070', '2070-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(588, 0x66393331663730612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2070', '2070-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(589, 0x66393332323464332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2070', '2070-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(590, 0x66393332373463322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2070', '2070-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(591, 0x66393332636236622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2070', '2070-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(592, 0x66393332666530332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2070', '2070-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(593, 0x66393333326239392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2070', '2070-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(594, 0x66393333366139612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2070', '2070-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(595, 0x66393333396537372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2070', '2071-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(596, 0x66393333636435332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2071', '2071-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(597, 0x66393333666263362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2071', '2071-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(598, 0x66393334326331372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2071', '2071-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(599, 0x66393334356137372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2071', '2071-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(600, 0x66393334386131652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2071', '2071-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(601, 0x66393334623938652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2071', '2071-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(602, 0x66393335313639642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2071', '2071-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(603, 0x66393335356265632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2071', '2071-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(604, 0x66393335396139652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2071', '2071-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(605, 0x66393335636130652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2071', '2071-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(606, 0x66393335666264662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2071', '2071-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(607, 0x66393336326235652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2071', '2072-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(608, 0x66393336356338302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2072', '2072-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(609, 0x66393336386366632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2072', '2072-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(610, 0x66393336626335632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2072', '2072-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(611, 0x66393336656137632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2072', '2072-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(612, 0x66393337313966622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2072', '2072-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(613, 0x66393337346265382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2072', '2072-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(614, 0x66393337623365632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2072', '2072-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(615, 0x66393337663161352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2072', '2072-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(616, 0x66393338323336322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2072', '2072-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(617, 0x66393338353336662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2072', '2072-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(618, 0x66393338383063302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2072', '2072-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(619, 0x66393338616661392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2072', '2073-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(620, 0x66393338646565322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2073', '2073-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(621, 0x66393339313131632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2073', '2073-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(622, 0x66393339336636662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2073', '2073-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(623, 0x66393339373763342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2073', '2073-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(624, 0x66393339613736612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2073', '2073-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(625, 0x66393339646162322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2073', '2073-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(626, 0x66393361336237332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2073', '2073-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(627, 0x66393462323938392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2073', '2073-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(628, 0x66393462643738332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2073', '2073-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(629, 0x66393463386536622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2073', '2073-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(630, 0x66393464316637392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2073', '2073-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58');
INSERT INTO `invoices` (`id`, `cod`, `value`, `payment_form`, `operation`, `category`, `bank_account_id`, `wallet`, `reference_date`, `due_date`, `contract`, `property`, `lessor`, `note`, `fixed`, `recurrent`, `compensation_date`, `compensation_value`, `compensation_type`, `status_comission`, `status`, `account_id`, `created_at`, `updated_at`) VALUES
(631, 0x66393464613565642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2073', '2074-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(632, 0x66393465313533362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2074', '2074-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(633, 0x66393465376664632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2074', '2074-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(634, 0x66393465633666382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2074', '2074-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(635, 0x66393465666366632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2074', '2074-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(636, 0x66393466333030662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2074', '2074-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(637, 0x66393466363436612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2074', '2074-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(638, 0x66393466393663372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2074', '2074-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(639, 0x66393466633864342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2074', '2074-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(640, 0x66393466663931332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2074', '2074-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(641, 0x66393530326231342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2074', '2074-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(642, 0x66393530356134352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2074', '2074-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(643, 0x66393530386231382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2074', '2075-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(644, 0x66393530623965342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2075', '2075-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(645, 0x66393531316266392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2075', '2075-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(646, 0x66393531356532332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2075', '2075-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(647, 0x66393531386534632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2075', '2075-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(648, 0x66393531626533342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2075', '2075-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(649, 0x66393531656432362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2075', '2075-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(650, 0x66393532316437312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2075', '2075-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(651, 0x66393532346238652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2075', '2075-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(652, 0x66393532383163352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2075', '2075-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(653, 0x66393532623464622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2075', '2075-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(654, 0x66393532653830392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2075', '2075-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(655, 0x66393533313663332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2075', '2076-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(656, 0x66393533343531372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2076', '2076-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(657, 0x66393533623165382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2076', '2076-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(658, 0x66393533656262612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2076', '2076-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(659, 0x66393534316537622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2076', '2076-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(660, 0x66393534356665372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2076', '2076-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(661, 0x66393534393135652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2076', '2076-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(662, 0x66393534633462322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2076', '2076-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(663, 0x66393534663332302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2076', '2076-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(664, 0x66393535323334382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2076', '2076-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(665, 0x66393535353064312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2076', '2076-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(666, 0x66393535383031632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2076', '2076-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(667, 0x66393535616636312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2076', '2077-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(668, 0x66393535653863632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2077', '2077-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(669, 0x66393539353831632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2077', '2077-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(670, 0x66393561323239652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2077', '2077-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(671, 0x66393561363132302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2077', '2077-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(672, 0x66393561393233662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2077', '2077-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(673, 0x66393561633462652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2077', '2077-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(674, 0x66393562323766382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2077', '2077-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(675, 0x66393562383233632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2077', '2077-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(676, 0x66393562633235342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2077', '2077-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(677, 0x66393563303037312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2077', '2077-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(678, 0x66393563336632612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2077', '2077-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(679, 0x66393563373931382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2077', '2078-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(680, 0x66393563623332332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2078', '2078-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(681, 0x66393563653931312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2078', '2078-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(682, 0x66393564323066652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2078', '2078-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(683, 0x66393564353961342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2078', '2078-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(684, 0x66393564633263632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2078', '2078-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(685, 0x66393565313433622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2078', '2078-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(686, 0x66393565346365332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2078', '2078-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(687, 0x66393565383037392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2078', '2078-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(688, 0x66393565626230392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2078', '2078-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(689, 0x66393565663132662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2078', '2078-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(690, 0x66393566323761612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2078', '2078-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(691, 0x66393566373636332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2078', '2079-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(692, 0x66393566626235662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2079', '2079-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(693, 0x66393566666261362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2079', '2079-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(694, 0x66393630613261352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2079', '2079-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(695, 0x66393630656630392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2079', '2079-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(696, 0x66393631326531642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2079', '2079-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(697, 0x66393631363563622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2079', '2079-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(698, 0x66393631396339662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2079', '2079-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(699, 0x66393631636333362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2079', '2079-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(700, 0x66393632303232362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2079', '2079-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(701, 0x66393632333530662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2079', '2079-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(702, 0x66393632363537382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2079', '2079-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(703, 0x66393632613635662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2079', '2080-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(704, 0x66393633303932632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2080', '2080-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(705, 0x66393633336265382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2080', '2080-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(706, 0x66393633366433612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2080', '2080-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(707, 0x66393633396265342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2080', '2080-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(708, 0x66393633636636372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2080', '2080-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(709, 0x66393633666465662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2080', '2080-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(710, 0x66393634326564372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2080', '2080-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(711, 0x66393634356366392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2080', '2080-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(712, 0x66393634393066302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2080', '2080-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(713, 0x66393634633166302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2080', '2080-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(714, 0x66393634663036642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2080', '2080-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(715, 0x66393635333066632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2080', '2081-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(716, 0x66393635386637302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2081', '2081-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(717, 0x66393635633465622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2081', '2081-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(718, 0x66393635663335362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2081', '2081-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(719, 0x66393636323164312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2081', '2081-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(720, 0x66393636346538612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2081', '2081-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(721, 0x66393636376465382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2081', '2081-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(722, 0x66393636623566382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2081', '2081-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(723, 0x66393636663862392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2081', '2081-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(724, 0x66393637323863642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2081', '2081-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(725, 0x66393637353862642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2081', '2081-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(726, 0x66393637383736302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2081', '2081-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(727, 0x66393637653362342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2081', '2082-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(728, 0x66393638326334332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2082', '2082-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(729, 0x66393638356565352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2082', '2082-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(730, 0x66393638386565382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2082', '2082-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(731, 0x66393638626266662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2082', '2082-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(732, 0x66393638656432342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2082', '2082-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(733, 0x66393639323130362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2082', '2082-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(734, 0x66393639353239342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2082', '2082-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(735, 0x66393639383066652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2082', '2082-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(736, 0x66393639623061612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2082', '2082-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(737, 0x66393639646437332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2082', '2082-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(738, 0x66393661313235632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2082', '2082-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(739, 0x66393661366231312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2082', '2083-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(740, 0x66393661623339622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2083', '2083-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(741, 0x66393661653363362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2083', '2083-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(742, 0x66393662313536312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2083', '2083-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(743, 0x66393662343461612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2083', '2083-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(744, 0x66393662373933342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2083', '2083-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(745, 0x66393662613938312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2083', '2083-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(746, 0x66393662646562332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2083', '2083-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(747, 0x66393663306532352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2083', '2083-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(748, 0x66393663336333332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2083', '2083-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(749, 0x66393663366337392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2083', '2083-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(750, 0x66393663396161632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2083', '2083-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(751, 0x66393663653962642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2083', '2084-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(752, 0x66393664333234642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2084', '2084-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(753, 0x66393664363363392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2084', '2084-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(754, 0x66393664393565302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2084', '2084-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(755, 0x66393664633833302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2084', '2084-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(756, 0x66393664666163312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2084', '2084-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(757, 0x66393665336335332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2084', '2084-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(758, 0x66393665366237642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2084', '2084-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(759, 0x66393665396433382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2084', '2084-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(760, 0x66393665636438322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2084', '2084-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(761, 0x66393665666439332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2084', '2084-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(762, 0x66393666326165392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2084', '2084-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(763, 0x66393666386138322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2084', '2085-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(764, 0x66393666643130382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2085', '2085-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(765, 0x66393730303363642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2085', '2085-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(766, 0x66393730333830332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2085', '2085-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(767, 0x66393730363862332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2085', '2085-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(768, 0x66393730393835302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2085', '2085-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(769, 0x66393730633665652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2085', '2085-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(770, 0x66393730663633642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2085', '2085-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(771, 0x66393731323764622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2085', '2085-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(772, 0x66393731353761622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2085', '2085-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(773, 0x66393731383566632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2085', '2085-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(774, 0x66393731623535352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2085', '2085-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(775, 0x66393732313434652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2085', '2086-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(776, 0x66393732366565302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2086', '2086-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(777, 0x66393732613330662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2086', '2086-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(778, 0x66393732643262372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2086', '2086-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(779, 0x66393733303636382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2086', '2086-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(780, 0x66393733333638352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2086', '2086-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(781, 0x66393733363665312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2086', '2086-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(782, 0x66393733393561362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2086', '2086-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(783, 0x66393733633537652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2086', '2086-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(784, 0x66393733663639662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2086', '2086-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(785, 0x66393734323535622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2086', '2086-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(786, 0x66393734353738642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2086', '2086-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(787, 0x66393734633436302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2086', '2087-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(788, 0x66393734663831382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2087', '2087-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(789, 0x66393735323863362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2087', '2087-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(790, 0x66393735376530362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2087', '2087-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(791, 0x66393735616530642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2087', '2087-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(792, 0x66393735646633662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2087', '2087-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(793, 0x66393736306430342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2087', '2087-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(794, 0x66393736336263382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2087', '2087-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(795, 0x66393736363961352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2087', '2087-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(796, 0x66393736393833342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2087', '2087-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(797, 0x66393736636139662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2087', '2087-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(798, 0x66393737323935352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2087', '2087-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(799, 0x66393737366638612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2087', '2088-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(800, 0x66393737613134662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2088', '2088-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(801, 0x66393737636632612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2088', '2088-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(802, 0x66393737666337612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2088', '2088-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(803, 0x66393738326364612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2088', '2088-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(804, 0x66393738356134312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2088', '2088-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(805, 0x66393738386336372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2088', '2088-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(806, 0x66393738623939322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2088', '2088-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(807, 0x66393738653836372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2088', '2088-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(808, 0x66393739313637312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2088', '2088-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(809, 0x66393739343730632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2088', '2088-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(810, 0x66393739386464652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2088', '2088-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(811, 0x66393739653831632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2088', '2089-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(812, 0x66393761316233642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2089', '2089-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(813, 0x66393761346535312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2089', '2089-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(814, 0x66393761376363642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2089', '2089-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(815, 0x66393761616233622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2089', '2089-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(816, 0x66393761643761392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2089', '2089-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(817, 0x66393762303838352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2089', '2089-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(818, 0x66393762333932612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2089', '2089-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(819, 0x66393762363866372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2089', '2089-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(820, 0x66393762393661362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2089', '2089-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(821, 0x66393762643435622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2089', '2089-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(822, 0x66393763333162612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2089', '2089-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(823, 0x66393763386338332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2089', '2090-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(824, 0x66393763626333642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2090', '2090-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(825, 0x66393763656435612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2090', '2090-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(826, 0x66393764316234372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2090', '2090-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(827, 0x66393764346538362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2090', '2090-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(828, 0x66393764383130642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2090', '2090-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(829, 0x66393764623536632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2090', '2090-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(830, 0x66393764653435652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2090', '2090-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(831, 0x66393765313336612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2090', '2090-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(832, 0x66393765343633352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2090', '2090-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(833, 0x66393765373635322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2090', '2090-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(834, 0x66393765653239322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2090', '2090-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(835, 0x66393766316130322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2090', '2091-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(836, 0x66393766353238382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2091', '2091-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(837, 0x66393766383630352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2091', '2091-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(838, 0x66393766626136352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2091', '2091-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(839, 0x66393766653965352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2091', '2091-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(840, 0x66393830313965642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2091', '2091-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59');
INSERT INTO `invoices` (`id`, `cod`, `value`, `payment_form`, `operation`, `category`, `bank_account_id`, `wallet`, `reference_date`, `due_date`, `contract`, `property`, `lessor`, `note`, `fixed`, `recurrent`, `compensation_date`, `compensation_value`, `compensation_type`, `status_comission`, `status`, `account_id`, `created_at`, `updated_at`) VALUES
(841, 0x66393830343737352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2091', '2091-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(842, 0x66393830373563652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2091', '2091-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(843, 0x66393830613565382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2091', '2091-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(844, 0x66393830643464632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2091', '2091-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(845, 0x66393831303466302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2091', '2091-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(846, 0x66393831373032362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2091', '2091-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(847, 0x66393831613634622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2091', '2092-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(848, 0x66393831646134332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2092', '2092-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(849, 0x66393832306238372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2092', '2092-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(850, 0x66393832336261642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2092', '2092-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(851, 0x66393832363962382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2092', '2092-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(852, 0x66393832393964332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2092', '2092-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(853, 0x66393832636134662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2092', '2092-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(854, 0x66393832663832642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2092', '2092-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(855, 0x66393833326238332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2092', '2092-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(856, 0x66393833356139662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2092', '2092-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(857, 0x66393833613566332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2092', '2092-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(858, 0x66393834306466642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2092', '2092-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(859, 0x66393834343262382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2092', '2093-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(860, 0x66393834373033312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2093', '2093-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(861, 0x66393834613266392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2093', '2093-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(862, 0x66393834643161642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2093', '2093-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(863, 0x66393835303032622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2093', '2093-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(864, 0x66393835326439642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2093', '2093-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(865, 0x66393835363562662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2093', '2093-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(866, 0x66393835393536322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2093', '2093-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(867, 0x66393835633466652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2093', '2093-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(868, 0x66393835663462392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2093', '2093-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(869, 0x66393836326466632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2093', '2093-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(870, 0x66393836396230322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2093', '2093-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(871, 0x66393836636439312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2093', '2094-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(872, 0x66393836666233322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2094', '2094-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(873, 0x66393837323930302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2094', '2094-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(874, 0x66393837353766382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2094', '2094-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(875, 0x66393837383566362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2094', '2094-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(876, 0x66393837626166362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2094', '2094-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(877, 0x66393837656161312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2094', '2094-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(878, 0x66393838316237312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2094', '2094-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(879, 0x66393838343837342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2094', '2094-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(880, 0x66393838373732642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2094', '2094-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(881, 0x66393838613462302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2094', '2094-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(882, 0x66393839313630332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2094', '2094-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(883, 0x66393839343963362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2094', '2095-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(884, 0x66393839376333622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2095', '2095-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(885, 0x66393839616165632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2095', '2095-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(886, 0x66393839646233622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2095', '2095-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(887, 0x66393861313035382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2095', '2095-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(888, 0x66393861343532322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2095', '2095-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(889, 0x66393861373536362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2095', '2095-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(890, 0x66393861623637382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2095', '2095-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(891, 0x66393861653639332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2095', '2095-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(892, 0x66393862313637352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2095', '2095-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(893, 0x66393862366564332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2095', '2095-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(894, 0x66393862626165342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2095', '2095-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(895, 0x66393862656363352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2095', '2096-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(896, 0x66393863316233332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2096', '2096-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(897, 0x66393863343964632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2096', '2096-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(898, 0x66393863383265362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2096', '2096-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(899, 0x66393863633266392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2096', '2096-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(900, 0x66393863663530322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2096', '2096-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(901, 0x66393864323633662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2096', '2096-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(902, 0x66393864353661392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2096', '2096-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(903, 0x66393864386338322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2096', '2096-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(904, 0x66393864626164642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2096', '2096-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(905, 0x66393865323834662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2096', '2096-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(906, 0x66393865356231352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2096', '2096-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(907, 0x66393865386138352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2096', '2097-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(908, 0x66393865623863352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2097', '2097-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(909, 0x66393865656532622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2097', '2097-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(910, 0x66393866316665342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2097', '2097-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(911, 0x66393866353437392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2097', '2097-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(912, 0x66393866383335372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2097', '2097-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(913, 0x66393866623331322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2097', '2097-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(914, 0x66393866653932622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2097', '2097-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(915, 0x66393930313834652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2097', '2097-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(916, 0x66393930346135642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2097', '2097-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(917, 0x66393930623438632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2097', '2097-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(918, 0x66393930656233352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2097', '2097-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(919, 0x66393931316564662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2097', '2098-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(920, 0x66393931353761312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2098', '2098-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(921, 0x66393931383761372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2098', '2098-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(922, 0x66393931623637662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2098', '2098-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(923, 0x66393931653830392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2098', '2098-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(924, 0x66393932326134362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2098', '2098-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(925, 0x66393932356262332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2098', '2098-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(926, 0x66393932386535332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2098', '2098-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(927, 0x66393932633035632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2098', '2098-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(928, 0x66393933323030622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2098', '2098-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(929, 0x66393933363033372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2098', '2098-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(930, 0x66393933393361652d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2098', '2098-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(931, 0x66393933633761312d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2098', '2099-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(932, 0x66393933663638612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2099', '2099-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(933, 0x66393934323939622d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2099', '2099-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(934, 0x66393934353864322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2099', '2099-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(935, 0x66393934383636302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2099', '2099-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(936, 0x66393934623735332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2099', '2099-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(937, 0x66393934656131302d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2099', '2099-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(938, 0x66393935313963382d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2099', '2099-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(939, 0x66393935346166372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2099', '2099-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(940, 0x66393935613863342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2099', '2099-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(941, 0x66393935663133372d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2099', '2099-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(942, 0x66393936323662362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2099', '2099-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(943, 0x66393936353862332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2099', '2100-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(944, 0x66393936386330352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2100', '2100-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(945, 0x66393936626533642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2100', '2100-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(946, 0x66393936656434322d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2100', '2100-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(947, 0x66393937323461352d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2100', '2100-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(948, 0x66393937356432612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2100', '2100-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(949, 0x66393937386233612d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '06/2100', '2100-07-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(950, 0x66393937623939392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '07/2100', '2100-08-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(951, 0x66393937656262392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '08/2100', '2100-09-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(952, 0x66393938353232342d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '09/2100', '2100-10-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(953, 0x66393938383533662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '10/2100', '2100-11-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(954, 0x66393938623635392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '11/2100', '2100-12-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(955, 0x66393938653638632d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '12/2100', '2101-01-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(956, 0x66393939326232662d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '01/2101', '2101-02-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(957, 0x66393939356366362d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '02/2101', '2101-03-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(958, 0x66393939386665392d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '03/2101', '2101-04-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(959, 0x66393939626465642d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '04/2101', '2101-05-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(960, 0x66393939656263332d636434392d313165622d383465382d356363643562623862373938, '1320.00', '', 1, 1, 1, 6, '05/2101', '2101-06-05', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(961, 0x37386136323465302d636564622d313165622d393337642d356363643562623862373938, '100.00', 'money', 2, 5, 0, 1, '05/2021', '2021-06-16', NULL, 0, 0, 'teste', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '2021-06-16 19:45:58', '2021-06-16 19:45:58'),
(965, 0x39393337643361642d636632662d313165622d393337642d356363643562623862373938, '150.00', 'money', 2, 8, 0, 1, '05/2021', '2021-06-16', NULL, 0, 22, '', NULL, 1, NULL, NULL, NULL, 0, 1, 1, '2021-06-17 05:48:11', '2021-06-17 05:48:11'),
(966, 0x39393361343133312d636632662d313165622d393337642d356363643562623862373938, '150.00', 'money', 2, 8, 0, 1, '06/2021', '2021-07-16', NULL, 0, 22, '', NULL, 1, NULL, NULL, NULL, 0, 1, 1, '2021-06-17 05:48:11', '2021-06-17 05:48:11'),
(969, 0x61653333653564302d636633302d313165622d393337642d356363643562623862373938, '122.33', 'money', 2, 5, 0, 1, '05/2021', '2021-06-17', NULL, 16, 0, '', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '2021-06-17 05:55:56', '2021-06-17 05:55:56');

-- --------------------------------------------------------

--
-- Estrutura da tabela `invoice_fixeds`
--

CREATE TABLE `invoice_fixeds` (
  `id` int(11) NOT NULL,
  `cod` binary(36) NOT NULL DEFAULT uuid(),
  `category` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `invoice_fixeds`
--

INSERT INTO `invoice_fixeds` (`id`, `cod`, `category`, `account_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 0x66383834643862382d636434392d313165622d383465382d356363643562623862373938, 1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57');

-- --------------------------------------------------------

--
-- Estrutura da tabela `invoice_recurrents`
--

CREATE TABLE `invoice_recurrents` (
  `id` int(11) NOT NULL,
  `cod` binary(36) NOT NULL DEFAULT uuid(),
  `category` int(11) NOT NULL,
  `enrollments` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `invoice_recurrents`
--

INSERT INTO `invoice_recurrents` (`id`, `cod`, `category`, `enrollments`, `account_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 0x39393265366133352d636632662d313165622d393337642d356363643562623862373938, 8, 2, 1, 1, '2021-06-17 05:48:11', '2021-06-17 05:48:11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `lessor_balances`
--

CREATE TABLE `lessor_balances` (
  `id` int(11) NOT NULL,
  `cod` binary(36) NOT NULL DEFAULT uuid(),
  `lessor_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `incoming` decimal(10,2) DEFAULT NULL,
  `expense` decimal(10,2) DEFAULT NULL,
  `transfer` decimal(10,2) DEFAULT NULL,
  `comission` decimal(10,2) DEFAULT NULL,
  `tax_transfer` decimal(10,2) DEFAULT NULL,
  `compensation_date` date NOT NULL,
  `account_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(459, 1, 1, '::1', 'Alteração da conta bancária Bradesco - Ag: 4550 - C: 12131', '2021-06-13 04:12:19', '2021-06-13 04:12:19'),
(460, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-06-13 16:46:26', '2021-06-13 16:46:26'),
(461, 1, 1, '::1', 'Alteração da conta bancária Itaú - Ag: 6090 - C: 183960', '2021-06-13 17:15:14', '2021-06-13 17:15:14'),
(462, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello saiu do sistema', '2021-06-14 00:06:22', '2021-06-14 00:06:22'),
(463, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-06-14 00:06:31', '2021-06-14 00:06:31'),
(464, 1, 1, '::1', 'Alteração da conta bancária Bradesco - Ag: 4550 - C: 12132', '2021-06-14 01:50:34', '2021-06-14 01:50:34'),
(465, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-06-14 13:49:41', '2021-06-14 13:49:41'),
(466, 1, 1, '::1', 'Gerar aluguel do contrato 3ebf6751-795e-11eb-a8f4-5ccd5bb8b798', '2021-06-14 19:36:53', '2021-06-14 19:36:53'),
(467, 1, 1, '::1', 'Gerar aluguel do contrato 3ebf6751-795e-11eb-a8f4-5ccd5bb8b798', '2021-06-14 19:43:28', '2021-06-14 19:43:28'),
(468, 1, 1, '::1', 'Gerar aluguel do contrato 3ebf6751-795e-11eb-a8f4-5ccd5bb8b798', '2021-06-14 19:48:41', '2021-06-14 19:48:41'),
(469, 1, 1, '::1', 'Gerar aluguel do contrato 3ebf6751-795e-11eb-a8f4-5ccd5bb8b798', '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(470, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-06-15 13:40:05', '2021-06-15 13:40:05'),
(471, 1, 1, '::1', 'Usuário Luiz Felipe Azevedo Bello fez login no sistema', '2021-06-16 14:21:57', '2021-06-16 14:21:57'),
(472, 1, 1, '::1', 'Lançamento de despesa 100.00', '2021-06-16 19:45:58', '2021-06-16 19:45:58'),
(473, 1, 1, '::1', 'Lançamento de despesa 150.00', '2021-06-17 05:32:49', '2021-06-17 05:32:49'),
(474, 1, 1, '::1', 'Lançamento de despesa 150.00', '2021-06-17 05:36:16', '2021-06-17 05:36:16'),
(475, 1, 1, '::1', 'Alteração de despesa 150.00', '2021-06-17 05:36:16', '2021-06-17 05:36:16'),
(476, 1, 1, '::1', 'Lançamento de despesa 150.00', '2021-06-17 05:41:41', '2021-06-17 05:41:41'),
(477, 1, 1, '::1', 'Alteração de despesa 150.00', '2021-06-17 05:41:42', '2021-06-17 05:41:42'),
(478, 1, 1, '::1', 'Lançamento de despesa 8 -- 150,00', '2021-06-17 05:48:11', '2021-06-17 05:48:11'),
(479, 1, 1, '::1', 'Lançamento de despesa 8 -- 150,00', '2021-06-17 05:48:11', '2021-06-17 05:48:11'),
(480, 1, 1, '::1', 'Lançamento de despesa  -- 122,30', '2021-06-17 05:51:48', '2021-06-17 05:51:48'),
(481, 1, 1, '::1', 'Lançamento de despesa Água -- 122,33', '2021-06-17 05:55:56', '2021-06-17 05:55:56');

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
-- Estrutura da tabela `operation`
--

CREATE TABLE `operation` (
  `id` int(11) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `operation`
--

INSERT INTO `operation` (`id`, `description`) VALUES
(1, 'Crédito'),
(2, 'Débito');

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
  `contract` varchar(15) NOT NULL DEFAULT '',
  `account_id` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `properties`
--

INSERT INTO `properties` (`id`, `cod`, `properties_cod`, `category`, `type`, `realtor`, `lease_price`, `lease_term`, `readjustment_type`, `commission`, `zipcode`, `street`, `number`, `complement`, `district`, `state`, `city`, `total_area`, `useful_area`, `living_room`, `bedroom`, `bathroom`, `suites`, `garage`, `maid_dependence`, `kitchen`, `pool`, `grill`, `library`, `office`, `furnished`, `description`, `photo1`, `photo2`, `photo3`, `photo4`, `photo5`, `photo6`, `photo7`, `photo8`, `photo9`, `photo10`, `contract`, `account_id`, `status`, `created_at`, `updated_at`) VALUES
(9, 0x32316338633037372d343363382d313165622d616337392d373466303664663066636462, '20', 'without information', 'apartment', 'without information', '1200.00', '30', 'IPCA', '10', '20730-400', 'Rua Dionísio Fernandes', '297', 'apto 406 bloco 1', 'Engenho de Dentro', 'RJ', 'Rio de Janeiro', '', '', '', '', '', '', '', '', '', 'no', 'no', 'no', 'no', 'no', '', 'images/2020/12/property-1d4fa715f3380fbfcc452f5622285347.jpg', '', '', '', '', '', '', '', '', '', 'in contract', 1, 1, '2020-12-21 20:07:21', '2021-06-15 14:36:12'),
(10, 0x38353163616631322d343363382d313165622d616337392d373466303664663066636462, '', 'residential', 'apartment', 'without information', '1200.00', '30', 'IPCA', '10', '20730-400', 'Rua Dionísio Fernandes', '297', '', 'Engenho de Dentro', 'RJ', 'Rio de Janeiro', '', '', '', '', '', '', '', '', '', 'no', 'no', 'no', 'no', 'no', '', '', '', '', '', '', '', '', '', '', '', 'in contract', 1, 1, '2020-12-21 20:10:08', '2021-06-15 14:36:16'),
(11, 0x39623134333035652d343438302d313165622d383466312d373466303664663066636462, '01', 'residential', 'apartment', 'without information', '1200.00', '30', 'IPCA', '10', '20730-400', 'Rua Dionísio Fernandes', '297', 'apto 504 bloco 2', 'Engenho de Dentro', 'RJ', 'Rio de Janeiro', '60', '50', '1', '2', '2', '0', '1', '0', '1', 'no', 'no', 'no', 'no', 'yes', 'Bom imóvel', 'images/2020/12/property-dab38c02a3a90b409e2ca78f736f7bcc.jpg', 'images/2020/12/property-4ed4d47ce6cc5f097f0ec32217daedb8.jpg', '', '', '', '', '', '', '', '', 'in contract', 1, 1, '2020-12-22 18:07:51', '2021-06-15 14:36:23'),
(12, 0x31666230346239662d343535622d313165622d396538652d373466303664663066636462, '', 'without information', 'apartment', '5', '1200.00', '30', 'IGPM', '10', '20730-400', 'Rua Dionísio Fernandes', '297', 'apto 204 bloco 2', 'Engenho de Dentro', 'RJ', 'Rio de Janeiro', '60', '50', '', '', '', '', '', '', '', 'no', 'no', 'no', 'no', 'no', '', 'images/2020/12/property-45332000c41d8722905833961b697421.jpg', 'images/2020/12/property-4cc2fe79e6d5288c524be4f5aa915064.jpg', '', '', '', '', '', '', '', '', 'in contract', 1, 1, '2020-12-23 20:12:04', '2021-06-15 14:36:26'),
(13, 0x62636532623465372d343535652d313165622d396538652d373466303664663066636462, '', 'without information', 'apartment', '5', '1500.00', '30', 'IPCA', '8.50', '20730-400', 'Rua Dionísio Fernandes', '297', 'apto 102 bloco 1', 'Engenho de Dentro', 'RJ', 'Rio de Janeiro', '60', '50', '', '', '', '', '', '', '', 'no', 'no', 'no', 'no', 'no', '', '', '', '', '', '', '', '', '', '', '', 'in contract', 1, 1, '2020-12-23 20:37:56', '2021-06-15 14:36:29'),
(14, 0x32316162323830662d343535662d313165622d396538652d373466303664663066636462, '45', 'residential', 'house', '5', '1800.00', '30', 'IPCA', '10', '20730-400', 'Rua Dionísio Fernandes', '455', '', 'Engenho de Dentro', 'RJ', 'Rio de Janeiro', '90,00', '75,00', '', '', '', '', '', '', '', 'no', 'no', 'no', 'no', 'no', '', '', '', '', '', '', '', '', '', '', '', 'in contract', 1, 1, '2020-12-23 20:40:45', '2021-06-15 14:36:31'),
(15, 0x30613363313934622d353035622d313165622d386433642d373466303664663066636462, '', 'commercial', 'apartment', 'without information', '1500.00', 'without information', 'IPCA', '10', '20730-400', 'Rua Dionísio Fernandes', '297', 'apto procurador', 'Engenho de Dentro', 'RJ', 'Rio de Janeiro', '65,00', '75', '', '', '', '', '', '', '', 'no', 'no', 'no', 'no', 'no', '', '', '', '', '', '', '', '', '', '', '', 'free', 1, 1, '2021-01-06 20:09:05', '2021-01-11 13:45:33'),
(16, 0x34646234623061392d353037642d313165622d386433642d373466303664663066636462, '', 'residential', 'apartment', '2', '1500.00', '30', 'IPCA', '8', '20730-400', 'Rua Dionísio Fernandes', '297', 'procurador 2', 'Engenho de Dentro', 'RJ', 'Rio de Janeiro', '', '', '', '', '', '', '', '', '', 'no', 'no', 'no', 'no', 'no', '', '', '', '', '', '', '', '', '', '', '', 'in contract', 1, 1, '2021-01-07 00:14:27', '2021-06-15 14:36:34');

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
(1, 0x66383835366133652d636434392d313165622d383465382d356363643562623862373938, 4, '2021-07-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(2, 0x66383836663233352d636434392d313165622d383465382d356363643562623862373938, 4, '2021-08-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(3, 0x66383837636232362d636434392d313165622d383465382d356363643562623862373938, 4, '2021-09-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(4, 0x66383838373661372d636434392d313165622d383465382d356363643562623862373938, 4, '2021-10-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(5, 0x66383839353361392d636434392d313165622d383465382d356363643562623862373938, 4, '2021-11-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(6, 0x66383861313038312d636434392d313165622d383465382d356363643562623862373938, 4, '2021-12-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(7, 0x66383861363133382d636434392d313165622d383465382d356363643562623862373938, 4, '2022-01-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(8, 0x66383861616533662d636434392d313165622d383465382d356363643562623862373938, 4, '2022-02-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(9, 0x66383862376137302d636434392d313165622d383465382d356363643562623862373938, 4, '2022-03-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(10, 0x66383863363531652d636434392d313165622d383465382d356363643562623862373938, 4, '2022-04-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(11, 0x66383863616433362d636434392d313165622d383465382d356363643562623862373938, 4, '2022-05-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(12, 0x66383863653237662d636434392d313165622d383465382d356363643562623862373938, 4, '2022-06-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(13, 0x66383864313565622d636434392d313165622d383465382d356363643562623862373938, 4, '2022-07-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(14, 0x66383864623930642d636434392d313165622d383465382d356363643562623862373938, 4, '2022-08-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(15, 0x66383865626139612d636434392d313165622d383465382d356363643562623862373938, 4, '2022-09-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(16, 0x66383866303538342d636434392d313165622d383465382d356363643562623862373938, 4, '2022-10-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(17, 0x66383866333865642d636434392d313165622d383465382d356363643562623862373938, 4, '2022-11-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(18, 0x66383866363963652d636434392d313165622d383465382d356363643562623862373938, 4, '2022-12-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(19, 0x66383866616365352d636434392d313165622d383465382d356363643562623862373938, 4, '2023-01-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(20, 0x66383930383063382d636434392d313165622d383465382d356363643562623862373938, 4, '2023-02-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(21, 0x66383931373163622d636434392d313165622d383465382d356363643562623862373938, 4, '2023-03-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(22, 0x66383931613533652d636434392d313165622d383465382d356363643562623862373938, 4, '2023-04-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(23, 0x66383931643835642d636434392d313165622d383465382d356363643562623862373938, 4, '2023-05-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(24, 0x66383932303934322d636434392d313165622d383465382d356363643562623862373938, 4, '2023-06-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(25, 0x66383932336636332d636434392d313165622d383465382d356363643562623862373938, 4, '2023-07-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(26, 0x66383932666161302d636434392d313165622d383465382d356363643562623862373938, 4, '2023-08-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(27, 0x66383933663338612d636434392d313165622d383465382d356363643562623862373938, 4, '2023-09-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(28, 0x66383934323739312d636434392d313165622d383465382d356363643562623862373938, 4, '2023-10-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(29, 0x66383934353937322d636434392d313165622d383465382d356363643562623862373938, 4, '2023-11-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(30, 0x66383934386432382d636434392d313165622d383465382d356363643562623862373938, 4, '2023-12-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(31, 0x66383934633866662d636434392d313165622d383465382d356363643562623862373938, 4, '2024-01-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(32, 0x66383935373237642d636434392d313165622d383465382d356363643562623862373938, 4, '2024-02-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(33, 0x66383936383461632d636434392d313165622d383465382d356363643562623862373938, 4, '2024-03-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(34, 0x66383936623665342d636434392d313165622d383465382d356363643562623862373938, 4, '2024-04-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(35, 0x66383936666565302d636434392d313165622d383465382d356363643562623862373938, 4, '2024-05-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(36, 0x66383937326466652d636434392d313165622d383465382d356363643562623862373938, 4, '2024-06-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(37, 0x66383937633464382d636434392d313165622d383465382d356363643562623862373938, 4, '2024-07-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(38, 0x66383938613161662d636434392d313165622d383465382d356363643562623862373938, 4, '2024-08-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(39, 0x66383939323531352d636434392d313165622d383465382d356363643562623862373938, 4, '2024-09-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(40, 0x66383939356234622d636434392d313165622d383465382d356363643562623862373938, 4, '2024-10-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(41, 0x66383939393939302d636434392d313165622d383465382d356363643562623862373938, 4, '2024-11-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(42, 0x66383939643332312d636434392d313165622d383465382d356363643562623862373938, 4, '2024-12-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(43, 0x66383961363963622d636434392d313165622d383465382d356363643562623862373938, 4, '2025-01-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(44, 0x66383962363666352d636434392d313165622d383465382d356363643562623862373938, 4, '2025-02-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(45, 0x66383962396339352d636434392d313165622d383465382d356363643562623862373938, 4, '2025-03-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(46, 0x66383962636134392d636434392d313165622d383465382d356363643562623862373938, 4, '2025-04-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(47, 0x66383963303036332d636434392d313165622d383465382d356363643562623862373938, 4, '2025-05-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(48, 0x66383963333562302d636434392d313165622d383465382d356363643562623862373938, 4, '2025-06-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(49, 0x66383963366632322d636434392d313165622d383465382d356363643562623862373938, 4, '2025-07-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(50, 0x66383964353432302d636434392d313165622d383465382d356363643562623862373938, 4, '2025-08-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(51, 0x66383964653639652d636434392d313165622d383465382d356363643562623862373938, 4, '2025-09-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(52, 0x66383965313766352d636434392d313165622d383465382d356363643562623862373938, 4, '2025-10-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(53, 0x66383965343636302d636434392d313165622d383465382d356363643562623862373938, 4, '2025-11-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(54, 0x66383965386132642d636434392d313165622d383465382d356363643562623862373938, 4, '2025-12-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(55, 0x66383965626535302d636434392d313165622d383465382d356363643562623862373938, 4, '2026-01-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(56, 0x66383965666466372d636434392d313165622d383465382d356363643562623862373938, 4, '2026-02-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(57, 0x66383966393064362d636434392d313165622d383465382d356363643562623862373938, 4, '2026-03-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(58, 0x66383966656537612d636434392d313165622d383465382d356363643562623862373938, 4, '2026-04-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(59, 0x66386130316536302d636434392d313165622d383465382d356363643562623862373938, 4, '2026-05-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(60, 0x66386130353163652d636434392d313165622d383465382d356363643562623862373938, 4, '2026-06-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(61, 0x66386130383334622d636434392d313165622d383465382d356363643562623862373938, 4, '2026-07-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(62, 0x66386130623630382d636434392d313165622d383465382d356363643562623862373938, 4, '2026-08-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(63, 0x66386130653433302d636434392d313165622d383465382d356363643562623862373938, 4, '2026-09-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(64, 0x66386131313338342d636434392d313165622d383465382d356363643562623862373938, 4, '2026-10-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(65, 0x66386131343633362d636434392d313165622d383465382d356363643562623862373938, 4, '2026-11-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(66, 0x66386131376330612d636434392d313165622d383465382d356363643562623862373938, 4, '2026-12-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(67, 0x66386132306465382d636434392d313165622d383465382d356363643562623862373938, 4, '2027-01-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(68, 0x66386132353831322d636434392d313165622d383465382d356363643562623862373938, 4, '2027-02-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(69, 0x66386132383862352d636434392d313165622d383465382d356363643562623862373938, 4, '2027-03-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(70, 0x66386132623836612d636434392d313165622d383465382d356363643562623862373938, 4, '2027-04-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(71, 0x66386132653761622d636434392d313165622d383465382d356363643562623862373938, 4, '2027-05-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(72, 0x66386133313638622d636434392d313165622d383465382d356363643562623862373938, 4, '2027-06-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(73, 0x66386133343962612d636434392d313165622d383465382d356363643562623862373938, 4, '2027-07-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(74, 0x66386133373662332d636434392d313165622d383465382d356363643562623862373938, 4, '2027-08-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(75, 0x66386133613539332d636434392d313165622d383465382d356363643562623862373938, 4, '2027-09-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(76, 0x66386133643436372d636434392d313165622d383465382d356363643562623862373938, 4, '2027-10-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(77, 0x66386134303839372d636434392d313165622d383465382d356363643562623862373938, 4, '2027-11-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(78, 0x66386134393462632d636434392d313165622d383465382d356363643562623862373938, 4, '2027-12-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(79, 0x66386134633938362d636434392d313165622d383465382d356363643562623862373938, 4, '2028-01-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(80, 0x66386134663963662d636434392d313165622d383465382d356363643562623862373938, 4, '2028-02-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(81, 0x66386135333032312d636434392d313165622d383465382d356363643562623862373938, 4, '2028-03-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(82, 0x66386135363430652d636434392d313165622d383465382d356363643562623862373938, 4, '2028-04-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(83, 0x66386135393836332d636434392d313165622d383465382d356363643562623862373938, 4, '2028-05-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(84, 0x66386135633963362d636434392d313165622d383465382d356363643562623862373938, 4, '2028-06-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(85, 0x66386135666165362d636434392d313165622d383465382d356363643562623862373938, 4, '2028-07-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(86, 0x66386136326161662d636434392d313165622d383465382d356363643562623862373938, 4, '2028-08-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(87, 0x66386136356262662d636434392d313165622d383465382d356363643562623862373938, 4, '2028-09-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(88, 0x66386136386661632d636434392d313165622d383465382d356363643562623862373938, 4, '2028-10-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(89, 0x66386137303137612d636434392d313165622d383465382d356363643562623862373938, 4, '2028-11-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(90, 0x66386137333334322d636434392d313165622d383465382d356363643562623862373938, 4, '2028-12-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(91, 0x66386137363134342d636434392d313165622d383465382d356363643562623862373938, 4, '2029-01-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(92, 0x66386137393063302d636434392d313165622d383465382d356363643562623862373938, 4, '2029-02-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(93, 0x66386137626661612d636434392d313165622d383465382d356363643562623862373938, 4, '2029-03-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(94, 0x66386137663339332d636434392d313165622d383465382d356363643562623862373938, 4, '2029-04-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(95, 0x66386138323330652d636434392d313165622d383465382d356363643562623862373938, 4, '2029-05-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(96, 0x66386138353264312d636434392d313165622d383465382d356363643562623862373938, 4, '2029-06-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(97, 0x66386138383333612d636434392d313165622d383465382d356363643562623862373938, 4, '2029-07-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(98, 0x66386138623565662d636434392d313165622d383465382d356363643562623862373938, 4, '2029-08-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(99, 0x66386138653334312d636434392d313165622d383465382d356363643562623862373938, 4, '2029-09-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(100, 0x66386139313562372d636434392d313165622d383465382d356363643562623862373938, 4, '2029-10-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(101, 0x66386139383331302d636434392d313165622d383465382d356363643562623862373938, 4, '2029-11-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(102, 0x66386139633833662d636434392d313165622d383465382d356363643562623862373938, 4, '2029-12-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(103, 0x66386139666233652d636434392d313165622d383465382d356363643562623862373938, 4, '2030-01-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(104, 0x66386161326439312d636434392d313165622d383465382d356363643562623862373938, 4, '2030-02-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(105, 0x66386161356635372d636434392d313165622d383465382d356363643562623862373938, 4, '2030-03-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(106, 0x66386161386537372d636434392d313165622d383465382d356363643562623862373938, 4, '2030-04-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(107, 0x66386161626664352d636434392d313165622d383465382d356363643562623862373938, 4, '2030-05-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(108, 0x66386161663032662d636434392d313165622d383465382d356363643562623862373938, 4, '2030-06-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(109, 0x66386162316536302d636434392d313165622d383465382d356363643562623862373938, 4, '2030-07-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(110, 0x66386162346365332d636434392d313165622d383465382d356363643562623862373938, 4, '2030-08-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(111, 0x66386162376238632d636434392d313165622d383465382d356363643562623862373938, 4, '2030-09-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(112, 0x66386162633334342d636434392d313165622d383465382d356363643562623862373938, 4, '2030-10-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(113, 0x66386163316562612d636434392d313165622d383465382d356363643562623862373938, 4, '2030-11-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(114, 0x66386163353266302d636434392d313165622d383465382d356363643562623862373938, 4, '2030-12-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(115, 0x66386163383239362d636434392d313165622d383465382d356363643562623862373938, 4, '2031-01-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(116, 0x66386163623464332d636434392d313165622d383465382d356363643562623862373938, 4, '2031-02-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(117, 0x66386163653665362d636434392d313165622d383465382d356363643562623862373938, 4, '2031-03-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(118, 0x66386164313737612d636434392d313165622d383465382d356363643562623862373938, 4, '2031-04-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(119, 0x66386164343765612d636434392d313165622d383465382d356363643562623862373938, 4, '2031-05-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(120, 0x66386164373565642d636434392d313165622d383465382d356363643562623862373938, 4, '2031-06-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(121, 0x66386164613464622d636434392d313165622d383465382d356363643562623862373938, 4, '2031-07-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(122, 0x66386164643335342d636434392d313165622d383465382d356363643562623862373938, 4, '2031-08-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(123, 0x66386165303236392d636434392d313165622d383465382d356363643562623862373938, 4, '2031-09-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(124, 0x66386165346338632d636434392d313165622d383465382d356363643562623862373938, 4, '2031-10-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(125, 0x66386165613964352d636434392d313165622d383465382d356363643562623862373938, 4, '2031-11-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(126, 0x66386165646363382d636434392d313165622d383465382d356363643562623862373938, 4, '2031-12-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(127, 0x66386166316531622d636434392d313165622d383465382d356363643562623862373938, 4, '2032-01-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(128, 0x66386166346661662d636434392d313165622d383465382d356363643562623862373938, 4, '2032-02-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(129, 0x66386166383137332d636434392d313165622d383465382d356363643562623862373938, 4, '2032-03-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(130, 0x66386166623363362d636434392d313165622d383465382d356363643562623862373938, 4, '2032-04-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(131, 0x66386166653338382d636434392d313165622d383465382d356363643562623862373938, 4, '2032-05-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(132, 0x66386230313264322d636434392d313165622d383465382d356363643562623862373938, 4, '2032-06-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(133, 0x66386230343364382d636434392d313165622d383465382d356363643562623862373938, 4, '2032-07-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(134, 0x66386230373435382d636434392d313165622d383465382d356363643562623862373938, 4, '2032-08-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(135, 0x66386230613238392d636434392d313165622d383465382d356363643562623862373938, 4, '2032-09-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(136, 0x66386231313333332d636434392d313165622d383465382d356363643562623862373938, 4, '2032-10-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(137, 0x66386231346161352d636434392d313165622d383465382d356363643562623862373938, 4, '2032-11-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(138, 0x66386231376662392d636434392d313165622d383465382d356363643562623862373938, 4, '2032-12-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(139, 0x66386231643666342d636434392d313165622d383465382d356363643562623862373938, 4, '2033-01-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(140, 0x66386232306264372d636434392d313165622d383465382d356363643562623862373938, 4, '2033-02-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(141, 0x66386232336237612d636434392d313165622d383465382d356363643562623862373938, 4, '2033-03-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(142, 0x66386232366130372d636434392d313165622d383465382d356363643562623862373938, 4, '2033-04-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(143, 0x66386232396135322d636434392d313165622d383465382d356363643562623862373938, 4, '2033-05-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(144, 0x66386232633838612d636434392d313165622d383465382d356363643562623862373938, 4, '2033-06-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(145, 0x66386232663666632d636434392d313165622d383465382d356363643562623862373938, 4, '2033-07-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(146, 0x66386233323635612d636434392d313165622d383465382d356363643562623862373938, 4, '2033-08-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(147, 0x66386233383362352d636434392d313165622d383465382d356363643562623862373938, 4, '2033-09-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(148, 0x66386233643033362d636434392d313165622d383465382d356363643562623862373938, 4, '2033-10-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(149, 0x66386234303462322d636434392d313165622d383465382d356363643562623862373938, 4, '2033-11-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(150, 0x66386234333463322d636434392d313165622d383465382d356363643562623862373938, 4, '2033-12-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(151, 0x66386234363761612d636434392d313165622d383465382d356363643562623862373938, 4, '2034-01-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(152, 0x66386234393634392d636434392d313165622d383465382d356363643562623862373938, 4, '2034-02-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(153, 0x66386234633430302d636434392d313165622d383465382d356363643562623862373938, 4, '2034-03-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(154, 0x66386234663037622d636434392d313165622d383465382d356363643562623862373938, 4, '2034-04-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(155, 0x66386235316635302d636434392d313165622d383465382d356363643562623862373938, 4, '2034-05-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(156, 0x66386235346530392d636434392d313165622d383465382d356363643562623862373938, 4, '2034-06-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(157, 0x66386235376361382d636434392d313165622d383465382d356363643562623862373938, 4, '2034-07-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(158, 0x66386235616139372d636434392d313165622d383465382d356363643562623862373938, 4, '2034-08-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(159, 0x66386235666361612d636434392d313165622d383465382d356363643562623862373938, 4, '2034-09-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(160, 0x66386236346534652d636434392d313165622d383465382d356363643562623862373938, 4, '2034-10-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(161, 0x66386236383631342d636434392d313165622d383465382d356363643562623862373938, 4, '2034-11-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(162, 0x66386236623735652d636434392d313165622d383465382d356363643562623862373938, 4, '2034-12-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(163, 0x66386236653936652d636434392d313165622d383465382d356363643562623862373938, 4, '2035-01-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(164, 0x66386237313861352d636434392d313165622d383465382d356363643562623862373938, 4, '2035-02-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(165, 0x66386237343662302d636434392d313165622d383465382d356363643562623862373938, 4, '2035-03-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(166, 0x66386237373562302d636434392d313165622d383465382d356363643562623862373938, 4, '2035-04-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(167, 0x66386237613336632d636434392d313165622d383465382d356363643562623862373938, 4, '2035-05-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(168, 0x66386237643732652d636434392d313165622d383465382d356363643562623862373938, 4, '2035-06-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(169, 0x66386238303436332d636434392d313165622d383465382d356363643562623862373938, 4, '2035-07-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(170, 0x66386238346165372d636434392d313165622d383465382d356363643562623862373938, 4, '2035-08-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(171, 0x66386238633138392d636434392d313165622d383465382d356363643562623862373938, 4, '2035-09-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(172, 0x66386263623964342d636434392d313165622d383465382d356363643562623862373938, 4, '2035-10-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(173, 0x66386264323031642d636434392d313165622d383465382d356363643562623862373938, 4, '2035-11-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(174, 0x66386264363831392d636434392d313165622d383465382d356363643562623862373938, 4, '2035-12-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(175, 0x66386264643737382d636434392d313165622d383465382d356363643562623862373938, 4, '2036-01-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(176, 0x66386265306265362d636434392d313165622d383465382d356363643562623862373938, 4, '2036-02-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(177, 0x66386265336339382d636434392d313165622d383465382d356363643562623862373938, 4, '2036-03-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(178, 0x66386265366161372d636434392d313165622d383465382d356363643562623862373938, 4, '2036-04-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(179, 0x66386265396133662d636434392d313165622d383465382d356363643562623862373938, 4, '2036-05-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(180, 0x66386265636439312d636434392d313165622d383465382d356363643562623862373938, 4, '2036-06-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(181, 0x66386265666637642d636434392d313165622d383465382d356363643562623862373938, 4, '2036-07-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(182, 0x66386266333638342d636434392d313165622d383465382d356363643562623862373938, 4, '2036-08-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(183, 0x66386266366164362d636434392d313165622d383465382d356363643562623862373938, 4, '2036-09-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(184, 0x66386266613162312d636434392d313165622d383465382d356363643562623862373938, 4, '2036-10-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(185, 0x66386266643761392d636434392d313165622d383465382d356363643562623862373938, 4, '2036-11-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(186, 0x66386330336463662d636434392d313165622d383465382d356363643562623862373938, 4, '2036-12-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(187, 0x66386330383235312d636434392d313165622d383465382d356363643562623862373938, 4, '2037-01-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(188, 0x66386433653431392d636434392d313165622d383465382d356363643562623862373938, 4, '2037-02-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(189, 0x66386434373466662d636434392d313165622d383465382d356363643562623862373938, 4, '2037-03-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(190, 0x66386435303038612d636434392d313165622d383465382d356363643562623862373938, 4, '2037-04-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(191, 0x66386435333737372d636434392d313165622d383465382d356363643562623862373938, 4, '2037-05-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(192, 0x66386435373737612d636434392d313165622d383465382d356363643562623862373938, 4, '2037-06-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(193, 0x66386435616163322d636434392d313165622d383465382d356363643562623862373938, 4, '2037-07-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(194, 0x66386435646538622d636434392d313165622d383465382d356363643562623862373938, 4, '2037-08-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(195, 0x66386436316434382d636434392d313165622d383465382d356363643562623862373938, 4, '2037-09-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(196, 0x66386436346639382d636434392d313165622d383465382d356363643562623862373938, 4, '2037-10-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(197, 0x66386436393563662d636434392d313165622d383465382d356363643562623862373938, 4, '2037-11-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(198, 0x66386436633631652d636434392d313165622d383465382d356363643562623862373938, 4, '2037-12-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(199, 0x66386437333137312d636434392d313165622d383465382d356363643562623862373938, 4, '2038-01-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(200, 0x66386437373035332d636434392d313165622d383465382d356363643562623862373938, 4, '2038-02-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(201, 0x66386437613066362d636434392d313165622d383465382d356363643562623862373938, 4, '2038-03-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(202, 0x66386437653963372d636434392d313165622d383465382d356363643562623862373938, 4, '2038-04-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(203, 0x66386438323161372d636434392d313165622d383465382d356363643562623862373938, 4, '2038-05-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(204, 0x66386438356266342d636434392d313165622d383465382d356363643562623862373938, 4, '2038-06-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(205, 0x66386438386539312d636434392d313165622d383465382d356363643562623862373938, 4, '2038-07-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(206, 0x66386438626561372d636434392d313165622d383465382d356363643562623862373938, 4, '2038-08-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(207, 0x66386438656634622d636434392d313165622d383465382d356363643562623862373938, 4, '2038-09-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(208, 0x66386439316534392d636434392d313165622d383465382d356363643562623862373938, 4, '2038-10-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(209, 0x66386439346361632d636434392d313165622d383465382d356363643562623862373938, 4, '2038-11-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(210, 0x66386439623836642d636434392d313165622d383465382d356363643562623862373938, 4, '2038-12-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(211, 0x66386439663732642d636434392d313165622d383465382d356363643562623862373938, 4, '2039-01-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(212, 0x66386461326365302d636434392d313165622d383465382d356363643562623862373938, 4, '2039-02-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(213, 0x66386461363130652d636434392d313165622d383465382d356363643562623862373938, 4, '2039-03-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(214, 0x66386461386661322d636434392d313165622d383465382d356363643562623862373938, 4, '2039-04-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(215, 0x66386461633130622d636434392d313165622d383465382d356363643562623862373938, 4, '2039-05-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(216, 0x66386461663064622d636434392d313165622d383465382d356363643562623862373938, 4, '2039-06-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(217, 0x66386462316636652d636434392d313165622d383465382d356363643562623862373938, 4, '2039-07-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(218, 0x66386462346463622d636434392d313165622d383465382d356363643562623862373938, 4, '2039-08-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(219, 0x66386462376531662d636434392d313165622d383465382d356363643562623862373938, 4, '2039-09-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(220, 0x66386462616633382d636434392d313165622d383465382d356363643562623862373938, 4, '2039-10-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(221, 0x66386462653233612d636434392d313165622d383465382d356363643562623862373938, 4, '2039-11-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(222, 0x66386463353137642d636434392d313165622d383465382d356363643562623862373938, 4, '2039-12-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(223, 0x66386463383764392d636434392d313165622d383465382d356363643562623862373938, 4, '2040-01-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(224, 0x66386463626566622d636434392d313165622d383465382d356363643562623862373938, 4, '2040-02-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(225, 0x66386463656534642d636434392d313165622d383465382d356363643562623862373938, 4, '2040-03-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(226, 0x66386464316439342d636434392d313165622d383465382d356363643562623862373938, 4, '2040-04-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(227, 0x66386464346234622d636434392d313165622d383465382d356363643562623862373938, 4, '2040-05-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(228, 0x66386464376134362d636434392d313165622d383465382d356363643562623862373938, 4, '2040-06-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(229, 0x66386464616265622d636434392d313165622d383465382d356363643562623862373938, 4, '2040-07-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(230, 0x66386464646135392d636434392d313165622d383465382d356363643562623862373938, 4, '2040-08-05', 'money', 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(231, 0x66386532656334652d636434392d313165622d383465382d356363643562623862373938, 4, '2040-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(232, 0x66386533386239342d636434392d313165622d383465382d356363643562623862373938, 4, '2040-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(233, 0x66386534326338392d636434392d313165622d383465382d356363643562623862373938, 4, '2040-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(234, 0x66386534376239632d636434392d313165622d383465382d356363643562623862373938, 4, '2040-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(235, 0x66386534623561392d636434392d313165622d383465382d356363643562623862373938, 4, '2041-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(236, 0x66386534653937612d636434392d313165622d383465382d356363643562623862373938, 4, '2041-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(237, 0x66386535313939392d636434392d313165622d383465382d356363643562623862373938, 4, '2041-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(238, 0x66386535343833392d636434392d313165622d383465382d356363643562623862373938, 4, '2041-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(239, 0x66386535373937352d636434392d313165622d383465382d356363643562623862373938, 4, '2041-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(240, 0x66386535613735322d636434392d313165622d383465382d356363643562623862373938, 4, '2041-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(241, 0x66386535643636362d636434392d313165622d383465382d356363643562623862373938, 4, '2041-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(242, 0x66386536303433662d636434392d313165622d383465382d356363643562623862373938, 4, '2041-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(243, 0x66386536376531302d636434392d313165622d383465382d356363643562623862373938, 4, '2041-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(244, 0x66386536623564642d636434392d313165622d383465382d356363643562623862373938, 4, '2041-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(245, 0x66386536653863322d636434392d313165622d383465382d356363643562623862373938, 4, '2041-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(246, 0x66386537316234312d636434392d313165622d383465382d356363643562623862373938, 4, '2041-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(247, 0x66386537346338322d636434392d313165622d383465382d356363643562623862373938, 4, '2042-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(248, 0x66386537376439372d636434392d313165622d383465382d356363643562623862373938, 4, '2042-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(249, 0x66386537616261642d636434392d313165622d383465382d356363643562623862373938, 4, '2042-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(250, 0x66386537646133332d636434392d313165622d383465382d356363643562623862373938, 4, '2042-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(251, 0x66386538306130642d636434392d313165622d383465382d356363643562623862373938, 4, '2042-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(252, 0x66386538333861612d636434392d313165622d383465382d356363643562623862373938, 4, '2042-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(253, 0x66386538363765652d636434392d313165622d383465382d356363643562623862373938, 4, '2042-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(254, 0x66386538396465312d636434392d313165622d383465382d356363643562623862373938, 4, '2042-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(255, 0x66386539306230642d636434392d313165622d383465382d356363643562623862373938, 4, '2042-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(256, 0x66386539336464642d636434392d313165622d383465382d356363643562623862373938, 4, '2042-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(257, 0x66386539366531622d636434392d313165622d383465382d356363643562623862373938, 4, '2042-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(258, 0x66386539396364322d636434392d313165622d383465382d356363643562623862373938, 4, '2042-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(259, 0x66386539636465362d636434392d313165622d383465382d356363643562623862373938, 4, '2043-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(260, 0x66386561306136392d636434392d313165622d383465382d356363643562623862373938, 4, '2043-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(261, 0x66386561336437312d636434392d313165622d383465382d356363643562623862373938, 4, '2043-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(262, 0x66386561366633652d636434392d313165622d383465382d356363643562623862373938, 4, '2043-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(263, 0x66386561616630662d636434392d313165622d383465382d356363643562623862373938, 4, '2043-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(264, 0x66386561656132652d636434392d313165622d383465382d356363643562623862373938, 4, '2043-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(265, 0x66386562316435362d636434392d313165622d383465382d356363643562623862373938, 4, '2043-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(266, 0x66386562386231322d636434392d313165622d383465382d356363643562623862373938, 4, '2043-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(267, 0x66386562633134332d636434392d313165622d383465382d356363643562623862373938, 4, '2043-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(268, 0x66386562663166622d636434392d313165622d383465382d356363643562623862373938, 4, '2043-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(269, 0x66386563323162392d636434392d313165622d383465382d356363643562623862373938, 4, '2043-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(270, 0x66386563353137322d636434392d313165622d383465382d356363643562623862373938, 4, '2043-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(271, 0x66386563376638622d636434392d313165622d383465382d356363643562623862373938, 4, '2044-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(272, 0x66386563623061372d636434392d313165622d383465382d356363643562623862373938, 4, '2044-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(273, 0x66386563653034612d636434392d313165622d383465382d356363643562623862373938, 4, '2044-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(274, 0x66386564306535352d636434392d313165622d383465382d356363643562623862373938, 4, '2044-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(275, 0x66386564343332372d636434392d313165622d383465382d356363643562623862373938, 4, '2044-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(276, 0x66386564373163662d636434392d313165622d383465382d356363643562623862373938, 4, '2044-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(277, 0x66386564613063332d636434392d313165622d383465382d356363643562623862373938, 4, '2044-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(278, 0x66386565303463662d636434392d313165622d383465382d356363643562623862373938, 4, '2044-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(279, 0x66386565336264652d636434392d313165622d383465382d356363643562623862373938, 4, '2044-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(280, 0x66386565373137632d636434392d313165622d383465382d356363643562623862373938, 4, '2044-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(281, 0x66386565613437332d636434392d313165622d383465382d356363643562623862373938, 4, '2044-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(282, 0x66386565643631392d636434392d313165622d383465382d356363643562623862373938, 4, '2044-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(283, 0x66386566303732652d636434392d313165622d383465382d356363643562623862373938, 4, '2045-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(284, 0x66386566336361382d636434392d313165622d383465382d356363643562623862373938, 4, '2045-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(285, 0x66386566373933352d636434392d313165622d383465382d356363643562623862373938, 4, '2045-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(286, 0x66386566626535372d636434392d313165622d383465382d356363643562623862373938, 4, '2045-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(287, 0x66386566663032352d636434392d313165622d383465382d356363643562623862373938, 4, '2045-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(288, 0x66386630323338312d636434392d313165622d383465382d356363643562623862373938, 4, '2045-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(289, 0x66386630376166312d636434392d313165622d383465382d356363643562623862373938, 4, '2045-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(290, 0x66386630633262642d636434392d313165622d383465382d356363643562623862373938, 4, '2045-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(291, 0x66386630663165632d636434392d313165622d383465382d356363643562623862373938, 4, '2045-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(292, 0x66386631323061662d636434392d313165622d383465382d356363643562623862373938, 4, '2045-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(293, 0x66386631346637632d636434392d313165622d383465382d356363643562623862373938, 4, '2045-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(294, 0x66386631383031362d636434392d313165622d383465382d356363643562623862373938, 4, '2045-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(295, 0x66386631616364372d636434392d313165622d383465382d356363643562623862373938, 4, '2046-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(296, 0x66386631646264352d636434392d313165622d383465382d356363643562623862373938, 4, '2046-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(297, 0x66386632323662642d636434392d313165622d383465382d356363643562623862373938, 4, '2046-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(298, 0x66386632353837372d636434392d313165622d383465382d356363643562623862373938, 4, '2046-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(299, 0x66386632383938622d636434392d313165622d383465382d356363643562623862373938, 4, '2046-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(300, 0x66386632623836612d636434392d313165622d383465382d356363643562623862373938, 4, '2046-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(301, 0x66386633316230332d636434392d313165622d383465382d356363643562623862373938, 4, '2046-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(302, 0x66386633353561322d636434392d313165622d383465382d356363643562623862373938, 4, '2046-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(303, 0x66386633383539392d636434392d313165622d383465382d356363643562623862373938, 4, '2046-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(304, 0x66386633623633612d636434392d313165622d383465382d356363643562623862373938, 4, '2046-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(305, 0x66386633653830382d636434392d313165622d383465382d356363643562623862373938, 4, '2046-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(306, 0x66386634313633632d636434392d313165622d383465382d356363643562623862373938, 4, '2046-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(307, 0x66386634343464342d636434392d313165622d383465382d356363643562623862373938, 4, '2047-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(308, 0x66386634373664642d636434392d313165622d383465382d356363643562623862373938, 4, '2047-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(309, 0x66386634613632362d636434392d313165622d383465382d356363643562623862373938, 4, '2047-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(310, 0x66386634643339622d636434392d313165622d383465382d356363643562623862373938, 4, '2047-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(311, 0x66386635303362662d636434392d313165622d383465382d356363643562623862373938, 4, '2047-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(312, 0x66386635333039632d636434392d313165622d383465382d356363643562623862373938, 4, '2047-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(313, 0x66386635376433632d636434392d313165622d383465382d356363643562623862373938, 4, '2047-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(314, 0x66386635633965382d636434392d313165622d383465382d356363643562623862373938, 4, '2047-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58');
INSERT INTO `receipts` (`id`, `cod`, `contract`, `due_date`, `payment_form`, `status`, `account_id`, `created_at`, `updated_at`) VALUES
(315, 0x66386635666362612d636434392d313165622d383465382d356363643562623862373938, 4, '2047-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(316, 0x66386636333762382d636434392d313165622d383465382d356363643562623862373938, 4, '2047-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(317, 0x66386636363931322d636434392d313165622d383465382d356363643562623862373938, 4, '2047-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(318, 0x66386636393935322d636434392d313165622d383465382d356363643562623862373938, 4, '2047-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(319, 0x66386636636565322d636434392d313165622d383465382d356363643562623862373938, 4, '2048-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(320, 0x66386637313463332d636434392d313165622d383465382d356363643562623862373938, 4, '2048-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(321, 0x66386637343731322d636434392d313165622d383465382d356363643562623862373938, 4, '2048-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(322, 0x66386637373962642d636434392d313165622d383465382d356363643562623862373938, 4, '2048-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(323, 0x66386637613936652d636434392d313165622d383465382d356363643562623862373938, 4, '2048-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(324, 0x66386637646131382d636434392d313165622d383465382d356363643562623862373938, 4, '2048-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(325, 0x66386638346130652d636434392d313165622d383465382d356363643562623862373938, 4, '2048-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(326, 0x66386638376561312d636434392d313165622d383465382d356363643562623862373938, 4, '2048-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(327, 0x66386638623039372d636434392d313165622d383465382d356363643562623862373938, 4, '2048-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(328, 0x66386638653065352d636434392d313165622d383465382d356363643562623862373938, 4, '2048-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(329, 0x66386639323432372d636434392d313165622d383465382d356363643562623862373938, 4, '2048-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(330, 0x66386639356634362d636434392d313165622d383465382d356363643562623862373938, 4, '2048-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(331, 0x66386639393161352d636434392d313165622d383465382d356363643562623862373938, 4, '2049-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(332, 0x66386639633066632d636434392d313165622d383465382d356363643562623862373938, 4, '2049-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(333, 0x66386639656636362d636434392d313165622d383465382d356363643562623862373938, 4, '2049-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(334, 0x66386661316439362d636434392d313165622d383465382d356363643562623862373938, 4, '2049-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(335, 0x66386661346433362d636434392d313165622d383465382d356363643562623862373938, 4, '2049-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(336, 0x66386661616464662d636434392d313165622d383465382d356363643562623862373938, 4, '2049-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(337, 0x66386661656562392d636434392d313165622d383465382d356363643562623862373938, 4, '2049-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(338, 0x66386662323138382d636434392d313165622d383465382d356363643562623862373938, 4, '2049-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(339, 0x66386662353966302d636434392d313165622d383465382d356363643562623862373938, 4, '2049-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(340, 0x66386662386332372d636434392d313165622d383465382d356363643562623862373938, 4, '2049-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(341, 0x66386662633334352d636434392d313165622d383465382d356363643562623862373938, 4, '2049-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(342, 0x66386662663434342d636434392d313165622d383465382d356363643562623862373938, 4, '2049-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(343, 0x66386663323565352d636434392d313165622d383465382d356363643562623862373938, 4, '2050-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(344, 0x66386663363232362d636434392d313165622d383465382d356363643562623862373938, 4, '2050-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(345, 0x66386663393530622d636434392d313165622d383465382d356363643562623862373938, 4, '2050-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(346, 0x66386663633365372d636434392d313165622d383465382d356363643562623862373938, 4, '2050-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(347, 0x66386664313263662d636434392d313165622d383465382d356363643562623862373938, 4, '2050-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(348, 0x66386664373165622d636434392d313165622d383465382d356363643562623862373938, 4, '2050-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(349, 0x66386664616264362d636434392d313165622d383465382d356363643562623862373938, 4, '2050-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(350, 0x66386664646238352d636434392d313165622d383465382d356363643562623862373938, 4, '2050-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(351, 0x66386665306437312d636434392d313165622d383465382d356363643562623862373938, 4, '2050-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(352, 0x66386665336538392d636434392d313165622d383465382d356363643562623862373938, 4, '2050-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(353, 0x66386665373232622d636434392d313165622d383465382d356363643562623862373938, 4, '2050-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(354, 0x66386665613231622d636434392d313165622d383465382d356363643562623862373938, 4, '2050-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(355, 0x66386665643363362d636434392d313165622d383465382d356363643562623862373938, 4, '2051-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(356, 0x66386666303565302d636434392d313165622d383465382d356363643562623862373938, 4, '2051-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(357, 0x66386666333535612d636434392d313165622d383465382d356363643562623862373938, 4, '2051-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(358, 0x66386666363530642d636434392d313165622d383465382d356363643562623862373938, 4, '2051-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(359, 0x66386666636439342d636434392d313165622d383465382d356363643562623862373938, 4, '2051-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(360, 0x66393030313630302d636434392d313165622d383465382d356363643562623862373938, 4, '2051-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(361, 0x66393030346237612d636434392d313165622d383465382d356363643562623862373938, 4, '2051-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(362, 0x66393030386665632d636434392d313165622d383465382d356363643562623862373938, 4, '2051-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(363, 0x66393030626636362d636434392d313165622d383465382d356363643562623862373938, 4, '2051-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(364, 0x66393030663333622d636434392d313165622d383465382d356363643562623862373938, 4, '2051-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(365, 0x66393031323238332d636434392d313165622d383465382d356363643562623862373938, 4, '2051-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(366, 0x66393031356434632d636434392d313165622d383465382d356363643562623862373938, 4, '2051-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(367, 0x66393031386339622d636434392d313165622d383465382d356363643562623862373938, 4, '2052-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(368, 0x66393031626361632d636434392d313165622d383465382d356363643562623862373938, 4, '2052-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(369, 0x66393031656264322d636434392d313165622d383465382d356363643562623862373938, 4, '2052-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(370, 0x66393032346637302d636434392d313165622d383465382d356363643562623862373938, 4, '2052-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(371, 0x66393032613035642d636434392d313165622d383465382d356363643562623862373938, 4, '2052-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(372, 0x66393032643864652d636434392d313165622d383465382d356363643562623862373938, 4, '2052-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(373, 0x66393033303935302d636434392d313165622d383465382d356363643562623862373938, 4, '2052-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(374, 0x66393033333962622d636434392d313165622d383465382d356363643562623862373938, 4, '2052-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(375, 0x66393033363963382d636434392d313165622d383465382d356363643562623862373938, 4, '2052-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(376, 0x66393033396131382d636434392d313165622d383465382d356363643562623862373938, 4, '2052-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(377, 0x66393033643962362d636434392d313165622d383465382d356363643562623862373938, 4, '2052-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(378, 0x66393034303966312d636434392d313165622d383465382d356363643562623862373938, 4, '2052-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(379, 0x66393034333936632d636434392d313165622d383465382d356363643562623862373938, 4, '2053-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(380, 0x66393034366337312d636434392d313165622d383465382d356363643562623862373938, 4, '2053-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(381, 0x66393034626163362d636434392d313165622d383465382d356363643562623862373938, 4, '2053-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(382, 0x66393035316463642d636434392d313165622d383465382d356363643562623862373938, 4, '2053-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(383, 0x66393035356136302d636434392d313165622d383465382d356363643562623862373938, 4, '2053-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(384, 0x66393035386436382d636434392d313165622d383465382d356363643562623862373938, 4, '2053-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(385, 0x66393035626431342d636434392d313165622d383465382d356363643562623862373938, 4, '2053-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(386, 0x66393035656631312d636434392d313165622d383465382d356363643562623862373938, 4, '2053-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(387, 0x66393036333938662d636434392d313165622d383465382d356363643562623862373938, 4, '2053-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(388, 0x66393036363664612d636434392d313165622d383465382d356363643562623862373938, 4, '2053-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(389, 0x66393036393662662d636434392d313165622d383465382d356363643562623862373938, 4, '2053-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(390, 0x66393036633638622d636434392d313165622d383465382d356363643562623862373938, 4, '2053-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(391, 0x66393036663766312d636434392d313165622d383465382d356363643562623862373938, 4, '2054-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(392, 0x66393037353365372d636434392d313165622d383465382d356363643562623862373938, 4, '2054-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(393, 0x66393037623136302d636434392d313165622d383465382d356363643562623862373938, 4, '2054-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(394, 0x66393037653563302d636434392d313165622d383465382d356363643562623862373938, 4, '2054-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(395, 0x66393038326130362d636434392d313165622d383465382d356363643562623862373938, 4, '2054-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(396, 0x66393038353861372d636434392d313165622d383465382d356363643562623862373938, 4, '2054-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(397, 0x66393038383864652d636434392d313165622d383465382d356363643562623862373938, 4, '2054-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(398, 0x66393038626232642d636434392d313165622d383465382d356363643562623862373938, 4, '2054-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(399, 0x66393038656239612d636434392d313165622d383465382d356363643562623862373938, 4, '2054-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(400, 0x66393039316163662d636434392d313165622d383465382d356363643562623862373938, 4, '2054-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(401, 0x66393039343966392d636434392d313165622d383465382d356363643562623862373938, 4, '2054-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(402, 0x66393039373935662d636434392d313165622d383465382d356363643562623862373938, 4, '2054-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(403, 0x66393039633931362d636434392d313165622d383465382d356363643562623862373938, 4, '2055-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(404, 0x66393061333566632d636434392d313165622d383465382d356363643562623862373938, 4, '2055-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(405, 0x66393061363638352d636434392d313165622d383465382d356363643562623862373938, 4, '2055-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(406, 0x66393061393465392d636434392d313165622d383465382d356363643562623862373938, 4, '2055-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(407, 0x66393061633237622d636434392d313165622d383465382d356363643562623862373938, 4, '2055-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(408, 0x66393061663332342d636434392d313165622d383465382d356363643562623862373938, 4, '2055-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(409, 0x66393062323264642d636434392d313165622d383465382d356363643562623862373938, 4, '2055-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(410, 0x66393062353565392d636434392d313165622d383465382d356363643562623862373938, 4, '2055-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(411, 0x66393062383635622d636434392d313165622d383465382d356363643562623862373938, 4, '2055-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(412, 0x66393062623430372d636434392d313165622d383465382d356363643562623862373938, 4, '2055-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(413, 0x66393062653063652d636434392d313165622d383465382d356363643562623862373938, 4, '2055-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(414, 0x66393063306563382d636434392d313165622d383465382d356363643562623862373938, 4, '2055-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(415, 0x66393063366534322d636434392d313165622d383465382d356363643562623862373938, 4, '2056-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(416, 0x66393063626635362d636434392d313165622d383465382d356363643562623862373938, 4, '2056-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(417, 0x66393063663464652d636434392d313165622d383465382d356363643562623862373938, 4, '2056-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(418, 0x66393064326136662d636434392d313165622d383465382d356363643562623862373938, 4, '2056-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(419, 0x66393064356136662d636434392d313165622d383465382d356363643562623862373938, 4, '2056-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(420, 0x66393064393939612d636434392d313165622d383465382d356363643562623862373938, 4, '2056-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(421, 0x66393064636337312d636434392d313165622d383465382d356363643562623862373938, 4, '2056-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(422, 0x66393064666333362d636434392d313165622d383465382d356363643562623862373938, 4, '2056-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(423, 0x66393065326139352d636434392d313165622d383465382d356363643562623862373938, 4, '2056-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(424, 0x66393065353962662d636434392d313165622d383465382d356363643562623862373938, 4, '2056-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(425, 0x66393065383838372d636434392d313165622d383465382d356363643562623862373938, 4, '2056-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(426, 0x66393065626165332d636434392d313165622d383465382d356363643562623862373938, 4, '2056-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(427, 0x66393066323261302d636434392d313165622d383465382d356363643562623862373938, 4, '2057-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(428, 0x66393066353534302d636434392d313165622d383465382d356363643562623862373938, 4, '2057-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(429, 0x66393066393739642d636434392d313165622d383465382d356363643562623862373938, 4, '2057-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(430, 0x66393066633966362d636434392d313165622d383465382d356363643562623862373938, 4, '2057-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(431, 0x66393066663965632d636434392d313165622d383465382d356363643562623862373938, 4, '2057-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(432, 0x66393130333465632d636434392d313165622d383465382d356363643562623862373938, 4, '2057-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(433, 0x66393130363330642d636434392d313165622d383465382d356363643562623862373938, 4, '2057-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(434, 0x66393130393135372d636434392d313165622d383465382d356363643562623862373938, 4, '2057-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(435, 0x66393130626631652d636434392d313165622d383465382d356363643562623862373938, 4, '2057-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(436, 0x66393130663061312d636434392d313165622d383465382d356363643562623862373938, 4, '2057-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(437, 0x66393131333237332d636434392d313165622d383465382d356363643562623862373938, 4, '2057-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(438, 0x66393131656661642d636434392d313165622d383465382d356363643562623862373938, 4, '2057-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(439, 0x66393132346235362d636434392d313165622d383465382d356363643562623862373938, 4, '2058-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(440, 0x66393132383766322d636434392d313165622d383465382d356363643562623862373938, 4, '2058-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(441, 0x66393132633264372d636434392d313165622d383465382d356363643562623862373938, 4, '2058-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(442, 0x66393133303530372d636434392d313165622d383465382d356363643562623862373938, 4, '2058-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(443, 0x66393133333636332d636434392d313165622d383465382d356363643562623862373938, 4, '2058-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(444, 0x66393133366136652d636434392d313165622d383465382d356363643562623862373938, 4, '2058-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(445, 0x66393133396664302d636434392d313165622d383465382d356363643562623862373938, 4, '2058-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(446, 0x66393133646465322d636434392d313165622d383465382d356363643562623862373938, 4, '2058-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(447, 0x66393134343133382d636434392d313165622d383465382d356363643562623862373938, 4, '2058-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(448, 0x66393134373561612d636434392d313165622d383465382d356363643562623862373938, 4, '2058-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(449, 0x66393134613630302d636434392d313165622d383465382d356363643562623862373938, 4, '2058-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(450, 0x66393134643962312d636434392d313165622d383465382d356363643562623862373938, 4, '2058-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(451, 0x66393135306263622d636434392d313165622d383465382d356363643562623862373938, 4, '2059-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(452, 0x66393135336461352d636434392d313165622d383465382d356363643562623862373938, 4, '2059-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(453, 0x66393135366635312d636434392d313165622d383465382d356363643562623862373938, 4, '2059-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(454, 0x66393135396638332d636434392d313165622d383465382d356363643562623862373938, 4, '2059-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(455, 0x66393135636533382d636434392d313165622d383465382d356363643562623862373938, 4, '2059-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(456, 0x66393135666537392d636434392d313165622d383465382d356363643562623862373938, 4, '2059-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(457, 0x66393136326335372d636434392d313165622d383465382d356363643562623862373938, 4, '2059-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(458, 0x66393136363232362d636434392d313165622d383465382d356363643562623862373938, 4, '2059-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(459, 0x66393136633538652d636434392d313165622d383465382d356363643562623862373938, 4, '2059-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(460, 0x66393136663939302d636434392d313165622d383465382d356363643562623862373938, 4, '2059-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(461, 0x66393137336437332d636434392d313165622d383465382d356363643562623862373938, 4, '2059-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(462, 0x66393137366566342d636434392d313165622d383465382d356363643562623862373938, 4, '2059-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(463, 0x66393137613161322d636434392d313165622d383465382d356363643562623862373938, 4, '2060-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(464, 0x66393137643235322d636434392d313165622d383465382d356363643562623862373938, 4, '2060-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(465, 0x66393138303163372d636434392d313165622d383465382d356363643562623862373938, 4, '2060-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(466, 0x66393138333039372d636434392d313165622d383465382d356363643562623862373938, 4, '2060-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(467, 0x66393138366362382d636434392d313165622d383465382d356363643562623862373938, 4, '2060-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(468, 0x66393138623337322d636434392d313165622d383465382d356363643562623862373938, 4, '2060-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(469, 0x66393138663237372d636434392d313165622d383465382d356363643562623862373938, 4, '2060-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(470, 0x66393139353336642d636434392d313165622d383465382d356363643562623862373938, 4, '2060-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(471, 0x66393139383531332d636434392d313165622d383465382d356363643562623862373938, 4, '2060-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(472, 0x66393139623265322d636434392d313165622d383465382d356363643562623862373938, 4, '2060-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(473, 0x66393139653163332d636434392d313165622d383465382d356363643562623862373938, 4, '2060-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(474, 0x66393161313037392d636434392d313165622d383465382d356363643562623862373938, 4, '2060-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(475, 0x66393161343265392d636434392d313165622d383465382d356363643562623862373938, 4, '2061-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(476, 0x66393161373132632d636434392d313165622d383465382d356363643562623862373938, 4, '2061-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(477, 0x66393161613131652d636434392d313165622d383465382d356363643562623862373938, 4, '2061-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(478, 0x66393161646133302d636434392d313165622d383465382d356363643562623862373938, 4, '2061-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(479, 0x66393162306532632d636434392d313165622d383465382d356363643562623862373938, 4, '2061-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(480, 0x66393162336335662d636434392d313165622d383465382d356363643562623862373938, 4, '2061-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(481, 0x66393162366465622d636434392d313165622d383465382d356363643562623862373938, 4, '2061-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(482, 0x66393162643662622d636434392d313165622d383465382d356363643562623862373938, 4, '2061-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(483, 0x66393163303931612d636434392d313165622d383465382d356363643562623862373938, 4, '2061-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(484, 0x66393163333963632d636434392d313165622d383465382d356363643562623862373938, 4, '2061-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(485, 0x66393163366131312d636434392d313165622d383465382d356363643562623862373938, 4, '2061-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(486, 0x66393163396338332d636434392d313165622d383465382d356363643562623862373938, 4, '2061-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(487, 0x66393163636237632d636434392d313165622d383465382d356363643562623862373938, 4, '2062-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(488, 0x66393163666261342d636434392d313165622d383465382d356363643562623862373938, 4, '2062-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(489, 0x66393164326463382d636434392d313165622d383465382d356363643562623862373938, 4, '2062-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(490, 0x66393164356337372d636434392d313165622d383465382d356363643562623862373938, 4, '2062-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(491, 0x66393164386264382d636434392d313165622d383465382d356363643562623862373938, 4, '2062-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(492, 0x66393164626137652d636434392d313165622d383465382d356363643562623862373938, 4, '2062-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(493, 0x66393164653961332d636434392d313165622d383465382d356363643562623862373938, 4, '2062-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(494, 0x66393165363239362d636434392d313165622d383465382d356363643562623862373938, 4, '2062-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(495, 0x66393165393631332d636434392d313165622d383465382d356363643562623862373938, 4, '2062-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(496, 0x66393165636134642d636434392d313165622d383465382d356363643562623862373938, 4, '2062-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(497, 0x66393165666138332d636434392d313165622d383465382d356363643562623862373938, 4, '2062-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(498, 0x66393166326133392d636434392d313165622d383465382d356363643562623862373938, 4, '2062-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(499, 0x66393166353866342d636434392d313165622d383465382d356363643562623862373938, 4, '2063-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(500, 0x66393166386466312d636434392d313165622d383465382d356363643562623862373938, 4, '2063-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(501, 0x66393166626333302d636434392d313165622d383465382d356363643562623862373938, 4, '2063-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(502, 0x66393166656133392d636434392d313165622d383465382d356363643562623862373938, 4, '2063-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(503, 0x66393230313862362d636434392d313165622d383465382d356363643562623862373938, 4, '2063-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(504, 0x66393230343831662d636434392d313165622d383465382d356363643562623862373938, 4, '2063-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(505, 0x66393230373832342d636434392d313165622d383465382d356363643562623862373938, 4, '2063-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(506, 0x66393230653330382d636434392d313165622d383465382d356363643562623862373938, 4, '2063-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(507, 0x66393231313932392d636434392d313165622d383465382d356363643562623862373938, 4, '2063-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(508, 0x66393231343737372d636434392d313165622d383465382d356363643562623862373938, 4, '2063-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(509, 0x66393231373666632d636434392d313165622d383465382d356363643562623862373938, 4, '2063-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(510, 0x66393231613532392d636434392d313165622d383465382d356363643562623862373938, 4, '2063-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(511, 0x66393231646530382d636434392d313165622d383465382d356363643562623862373938, 4, '2064-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(512, 0x66393232313337372d636434392d313165622d383465382d356363643562623862373938, 4, '2064-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(513, 0x66393232343366652d636434392d313165622d383465382d356363643562623862373938, 4, '2064-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(514, 0x66393232373161632d636434392d313165622d383465382d356363643562623862373938, 4, '2064-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(515, 0x66393232613034612d636434392d313165622d383465382d356363643562623862373938, 4, '2064-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(516, 0x66393232636433392d636434392d313165622d383465382d356363643562623862373938, 4, '2064-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(517, 0x66393232666465322d636434392d313165622d383465382d356363643562623862373938, 4, '2064-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(518, 0x66393233363130652d636434392d313165622d383465382d356363643562623862373938, 4, '2064-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(519, 0x66393233396563382d636434392d313165622d383465382d356363643562623862373938, 4, '2064-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(520, 0x66393233643033622d636434392d313165622d383465382d356363643562623862373938, 4, '2064-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(521, 0x66393233666663302d636434392d313165622d383465382d356363643562623862373938, 4, '2064-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(522, 0x66393234333030362d636434392d313165622d383465382d356363643562623862373938, 4, '2064-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(523, 0x66393234363033622d636434392d313165622d383465382d356363643562623862373938, 4, '2065-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(524, 0x66393234393132322d636434392d313165622d383465382d356363643562623862373938, 4, '2065-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(525, 0x66393234626634662d636434392d313165622d383465382d356363643562623862373938, 4, '2065-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(526, 0x66393234656466622d636434392d313165622d383465382d356363643562623862373938, 4, '2065-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(527, 0x66393235316338302d636434392d313165622d383465382d356363643562623862373938, 4, '2065-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(528, 0x66393235363037322d636434392d313165622d383465382d356363643562623862373938, 4, '2065-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(529, 0x66393235393032342d636434392d313165622d383465382d356363643562623862373938, 4, '2065-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(530, 0x66393235666130622d636434392d313165622d383465382d356363643562623862373938, 4, '2065-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(531, 0x66393236333032612d636434392d313165622d383465382d356363643562623862373938, 4, '2065-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(532, 0x66393236363035652d636434392d313165622d383465382d356363643562623862373938, 4, '2065-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(533, 0x66393236393038332d636434392d313165622d383465382d356363643562623862373938, 4, '2065-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(534, 0x66393236633637362d636434392d313165622d383465382d356363643562623862373938, 4, '2065-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(535, 0x66393236663539622d636434392d313165622d383465382d356363643562623862373938, 4, '2066-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(536, 0x66393237323533382d636434392d313165622d383465382d356363643562623862373938, 4, '2066-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(537, 0x66393237353530392d636434392d313165622d383465382d356363643562623862373938, 4, '2066-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(538, 0x66393237383361312d636434392d313165622d383465382d356363643562623862373938, 4, '2066-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(539, 0x66393237623330332d636434392d313165622d383465382d356363643562623862373938, 4, '2066-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(540, 0x66393237653138642d636434392d313165622d383465382d356363643562623862373938, 4, '2066-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(541, 0x66393238313161392d636434392d313165622d383465382d356363643562623862373938, 4, '2066-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(542, 0x66393238373863342d636434392d313165622d383465382d356363643562623862373938, 4, '2066-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(543, 0x66393238623463652d636434392d313165622d383465382d356363643562623862373938, 4, '2066-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(544, 0x66393238653264662d636434392d313165622d383465382d356363643562623862373938, 4, '2066-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(545, 0x66393239316163342d636434392d313165622d383465382d356363643562623862373938, 4, '2066-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(546, 0x66393239346364362d636434392d313165622d383465382d356363643562623862373938, 4, '2066-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(547, 0x66393239376434352d636434392d313165622d383465382d356363643562623862373938, 4, '2067-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(548, 0x66393239616234302d636434392d313165622d383465382d356363643562623862373938, 4, '2067-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(549, 0x66393239646138382d636434392d313165622d383465382d356363643562623862373938, 4, '2067-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(550, 0x66393261303966612d636434392d313165622d383465382d356363643562623862373938, 4, '2067-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(551, 0x66393261333936642d636434392d313165622d383465382d356363643562623862373938, 4, '2067-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(552, 0x66393261363731362d636434392d313165622d383465382d356363643562623862373938, 4, '2067-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(553, 0x66393261396137372d636434392d313165622d383465382d356363643562623862373938, 4, '2067-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(554, 0x66393261663933342d636434392d313165622d383465382d356363643562623862373938, 4, '2067-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(555, 0x66393262333733662d636434392d313165622d383465382d356363643562623862373938, 4, '2067-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(556, 0x66393262363637312d636434392d313165622d383465382d356363643562623862373938, 4, '2067-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(557, 0x66393262393461322d636434392d313165622d383465382d356363643562623862373938, 4, '2067-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(558, 0x66393262633638322d636434392d313165622d383465382d356363643562623862373938, 4, '2067-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(559, 0x66393262663735652d636434392d313165622d383465382d356363643562623862373938, 4, '2068-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(560, 0x66393263326138312d636434392d313165622d383465382d356363643562623862373938, 4, '2068-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(561, 0x66393263356134312d636434392d313165622d383465382d356363643562623862373938, 4, '2068-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(562, 0x66393263396130332d636434392d313165622d383465382d356363643562623862373938, 4, '2068-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(563, 0x66393263633839612d636434392d313165622d383465382d356363643562623862373938, 4, '2068-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(564, 0x66393263666133392d636434392d313165622d383465382d356363643562623862373938, 4, '2068-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(565, 0x66393264323838312d636434392d313165622d383465382d356363643562623862373938, 4, '2068-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(566, 0x66393264393661662d636434392d313165622d383465382d356363643562623862373938, 4, '2068-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(567, 0x66393264636465352d636434392d313165622d383465382d356363643562623862373938, 4, '2068-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(568, 0x66393265303836372d636434392d313165622d383465382d356363643562623862373938, 4, '2068-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(569, 0x66393265333835632d636434392d313165622d383465382d356363643562623862373938, 4, '2068-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(570, 0x66393265363639322d636434392d313165622d383465382d356363643562623862373938, 4, '2068-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(571, 0x66393265393637382d636434392d313165622d383465382d356363643562623862373938, 4, '2069-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(572, 0x66393265633761612d636434392d313165622d383465382d356363643562623862373938, 4, '2069-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(573, 0x66393265663564612d636434392d313165622d383465382d356363643562623862373938, 4, '2069-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(574, 0x66393266323361332d636434392d313165622d383465382d356363643562623862373938, 4, '2069-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(575, 0x66393266353037662d636434392d313165622d383465382d356363643562623862373938, 4, '2069-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(576, 0x66393266376435312d636434392d313165622d383465382d356363643562623862373938, 4, '2069-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(577, 0x66393266616138652d636434392d313165622d383465382d356363643562623862373938, 4, '2069-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(578, 0x66393330313032632d636434392d313165622d383465382d356363643562623862373938, 4, '2069-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(579, 0x66393330356264652d636434392d313165622d383465382d356363643562623862373938, 4, '2069-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(580, 0x66393330386166632d636434392d313165622d383465382d356363643562623862373938, 4, '2069-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(581, 0x66393330626166382d636434392d313165622d383465382d356363643562623862373938, 4, '2069-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(582, 0x66393330656166332d636434392d313165622d383465382d356363643562623862373938, 4, '2069-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(583, 0x66393331316332342d636434392d313165622d383465382d356363643562623862373938, 4, '2070-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(584, 0x66393331346330382d636434392d313165622d383465382d356363643562623862373938, 4, '2070-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(585, 0x66393331376239642d636434392d313165622d383465382d356363643562623862373938, 4, '2070-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(586, 0x66393331613865372d636434392d313165622d383465382d356363643562623862373938, 4, '2070-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(587, 0x66393331643838612d636434392d313165622d383465382d356363643562623862373938, 4, '2070-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(588, 0x66393332303738662d636434392d313165622d383465382d356363643562623862373938, 4, '2070-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(589, 0x66393332333533332d636434392d313165622d383465382d356363643562623862373938, 4, '2070-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(590, 0x66393332613035392d636434392d313165622d383465382d356363643562623862373938, 4, '2070-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(591, 0x66393332646336622d636434392d313165622d383465382d356363643562623862373938, 4, '2070-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(592, 0x66393333306461382d636434392d313165622d383465382d356363643562623862373938, 4, '2070-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(593, 0x66393333336162642d636434392d313165622d383465382d356363643562623862373938, 4, '2070-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(594, 0x66393333376262652d636434392d313165622d383465382d356363643562623862373938, 4, '2070-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(595, 0x66393333616532322d636434392d313165622d383465382d356363643562623862373938, 4, '2071-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(596, 0x66393333646362612d636434392d313165622d383465382d356363643562623862373938, 4, '2071-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(597, 0x66393334306337352d636434392d313165622d383465382d356363643562623862373938, 4, '2071-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(598, 0x66393334336265642d636434392d313165622d383465382d356363643562623862373938, 4, '2071-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(599, 0x66393334366131622d636434392d313165622d383465382d356363643562623862373938, 4, '2071-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(600, 0x66393334396239312d636434392d313165622d383465382d356363643562623862373938, 4, '2071-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(601, 0x66393334636131662d636434392d313165622d383465382d356363643562623862373938, 4, '2071-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(602, 0x66393335333738622d636434392d313165622d383465382d356363643562623862373938, 4, '2071-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(603, 0x66393335366536652d636434392d313165622d383465382d356363643562623862373938, 4, '2071-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(604, 0x66393335616163612d636434392d313165622d383465382d356363643562623862373938, 4, '2071-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(605, 0x66393335646238312d636434392d313165622d383465382d356363643562623862373938, 4, '2071-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(606, 0x66393336306265392d636434392d313165622d383465382d356363643562623862373938, 4, '2071-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(607, 0x66393336336234642d636434392d313165622d383465382d356363643562623862373938, 4, '2072-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(608, 0x66393336366461612d636434392d313165622d383465382d356363643562623862373938, 4, '2072-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(609, 0x66393336396434642d636434392d313165622d383465382d356363643562623862373938, 4, '2072-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(610, 0x66393336636334622d636434392d313165622d383465382d356363643562623862373938, 4, '2072-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(611, 0x66393336666162622d636434392d313165622d383465382d356363643562623862373938, 4, '2072-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(612, 0x66393337326133302d636434392d313165622d383465382d356363643562623862373938, 4, '2072-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(613, 0x66393337363535652d636434392d313165622d383465382d356363643562623862373938, 4, '2072-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(614, 0x66393337636566382d636434392d313165622d383465382d356363643562623862373938, 4, '2072-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(615, 0x66393338303336362d636434392d313165622d383465382d356363643562623862373938, 4, '2072-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(616, 0x66393338333463662d636434392d313165622d383465382d356363643562623862373938, 4, '2072-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(617, 0x66393338363333342d636434392d313165622d383465382d356363643562623862373938, 4, '2072-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(618, 0x66393338393166322d636434392d313165622d383465382d356363643562623862373938, 4, '2072-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(619, 0x66393338633034662d636434392d313165622d383465382d356363643562623862373938, 4, '2073-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(620, 0x66393338656561372d636434392d313165622d383465382d356363643562623862373938, 4, '2073-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(621, 0x66393339323065622d636434392d313165622d383465382d356363643562623862373938, 4, '2073-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(622, 0x66393339353337632d636434392d313165622d383465382d356363643562623862373938, 4, '2073-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(623, 0x66393339383838322d636434392d313165622d383465382d356363643562623862373938, 4, '2073-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(624, 0x66393339623737352d636434392d313165622d383465382d356363643562623862373938, 4, '2073-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(625, 0x66393339663266382d636434392d313165622d383465382d356363643562623862373938, 4, '2073-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(626, 0x66393361353439652d636434392d313165622d383465382d356363643562623862373938, 4, '2073-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(627, 0x66393462363461662d636434392d313165622d383465382d356363643562623862373938, 4, '2073-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58');
INSERT INTO `receipts` (`id`, `cod`, `contract`, `due_date`, `payment_form`, `status`, `account_id`, `created_at`, `updated_at`) VALUES
(628, 0x66393463323532302d636434392d313165622d383465382d356363643562623862373938, 4, '2073-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(629, 0x66393463633363332d636434392d313165622d383465382d356363643562623862373938, 4, '2073-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(630, 0x66393464343839392d636434392d313165622d383465382d356363643562623862373938, 4, '2073-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(631, 0x66393464636363362d636434392d313165622d383465382d356363643562623862373938, 4, '2074-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(632, 0x66393465326239632d636434392d313165622d383465382d356363643562623862373938, 4, '2074-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(633, 0x66393465613264382d636434392d313165622d383465382d356363643562623862373938, 4, '2074-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(634, 0x66393465643834352d636434392d313165622d383465382d356363643562623862373938, 4, '2074-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(635, 0x66393466306566372d636434392d313165622d383465382d356363643562623862373938, 4, '2074-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(636, 0x66393466343065312d636434392d313165622d383465382d356363643562623862373938, 4, '2074-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(637, 0x66393466373565642d636434392d313165622d383465382d356363643562623862373938, 4, '2074-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(638, 0x66393466613761642d636434392d313165622d383465382d356363643562623862373938, 4, '2074-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(639, 0x66393466643935312d636434392d313165622d383465382d356363643562623862373938, 4, '2074-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(640, 0x66393530306132652d636434392d313165622d383465382d356363643562623862373938, 4, '2074-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(641, 0x66393530336262342d636434392d313165622d383465382d356363643562623862373938, 4, '2074-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(642, 0x66393530366166322d636434392d313165622d383465382d356363643562623862373938, 4, '2074-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(643, 0x66393530396233302d636434392d313165622d383465382d356363643562623862373938, 4, '2075-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(644, 0x66393530643133642d636434392d313165622d383465382d356363643562623862373938, 4, '2075-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(645, 0x66393531333964622d636434392d313165622d383465382d356363643562623862373938, 4, '2075-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(646, 0x66393531366564362d636434392d313165622d383465382d356363643562623862373938, 4, '2075-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(647, 0x66393531396664352d636434392d313165622d383465382d356363643562623862373938, 4, '2075-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(648, 0x66393531636539642d636434392d313165622d383465382d356363643562623862373938, 4, '2075-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(649, 0x66393531666539302d636434392d313165622d383465382d356363643562623862373938, 4, '2075-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(650, 0x66393532326462372d636434392d313165622d383465382d356363643562623862373938, 4, '2075-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(651, 0x66393532356235622d636434392d313165622d383465382d356363643562623862373938, 4, '2075-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(652, 0x66393532393430652d636434392d313165622d383465382d356363643562623862373938, 4, '2075-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(653, 0x66393532633561382d636434392d313165622d383465382d356363643562623862373938, 4, '2075-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(654, 0x66393532663766332d636434392d313165622d383465382d356363643562623862373938, 4, '2075-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(655, 0x66393533323633662d636434392d313165622d383465382d356363643562623862373938, 4, '2076-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(656, 0x66393533356665342d636434392d313165622d383465382d356363643562623862373938, 4, '2076-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(657, 0x66393533633762372d636434392d313165622d383465382d356363643562623862373938, 4, '2076-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(658, 0x66393533666333362d636434392d313165622d383465382d356363643562623862373938, 4, '2076-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(659, 0x66393534326634302d636434392d313165622d383465382d356363643562623862373938, 4, '2076-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(660, 0x66393534373061342d636434392d313165622d383465382d356363643562623862373938, 4, '2076-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(661, 0x66393534613162362d636434392d313165622d383465382d356363643562623862373938, 4, '2076-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(662, 0x66393534643463342d636434392d313165622d383465382d356363643562623862373938, 4, '2076-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(663, 0x66393535303362362d636434392d313165622d383465382d356363643562623862373938, 4, '2076-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(664, 0x66393535333264342d636434392d313165622d383465382d356363643562623862373938, 4, '2076-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(665, 0x66393535363037342d636434392d313165622d383465382d356363643562623862373938, 4, '2076-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(666, 0x66393535393032332d636434392d313165622d383465382d356363643562623862373938, 4, '2076-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(667, 0x66393535626636622d636434392d313165622d383465382d356363643562623862373938, 4, '2077-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(668, 0x66393536336564392d636434392d313165622d383465382d356363643562623862373938, 4, '2077-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(669, 0x66393539636236382d636434392d313165622d383465382d356363643562623862373938, 4, '2077-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(670, 0x66393561336334312d636434392d313165622d383465382d356363643562623862373938, 4, '2077-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(671, 0x66393561373166622d636434392d313165622d383465382d356363643562623862373938, 4, '2077-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(672, 0x66393561613339322d636434392d313165622d383465382d356363643562623862373938, 4, '2077-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(673, 0x66393561643835382d636434392d313165622d383465382d356363643562623862373938, 4, '2077-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(674, 0x66393562353134322d636434392d313165622d383465382d356363643562623862373938, 4, '2077-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(675, 0x66393562393765362d636434392d313165622d383465382d356363643562623862373938, 4, '2077-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(676, 0x66393562643765662d636434392d313165622d383465382d356363643562623862373938, 4, '2077-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(677, 0x66393563313638312d636434392d313165622d383465382d356363643562623862373938, 4, '2077-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(678, 0x66393563353234342d636434392d313165622d383465382d356363643562623862373938, 4, '2077-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(679, 0x66393563386436322d636434392d313165622d383465382d356363643562623862373938, 4, '2078-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(680, 0x66393563633634302d636434392d313165622d383465382d356363643562623862373938, 4, '2078-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(681, 0x66393563666364342d636434392d313165622d383465382d356363643562623862373938, 4, '2078-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(682, 0x66393564333366302d636434392d313165622d383465382d356363643562623862373938, 4, '2078-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(683, 0x66393564366461382d636434392d313165622d383465382d356363643562623862373938, 4, '2078-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(684, 0x66393564656230662d636434392d313165622d383465382d356363643562623862373938, 4, '2078-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(685, 0x66393565323765312d636434392d313165622d383465382d356363643562623862373938, 4, '2078-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(686, 0x66393565356435652d636434392d313165622d383465382d356363643562623862373938, 4, '2078-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(687, 0x66393565393365372d636434392d313165622d383465382d356363643562623862373938, 4, '2078-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(688, 0x66393565636431612d636434392d313165622d383465382d356363643562623862373938, 4, '2078-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(689, 0x66393566303337392d636434392d313165622d383465382d356363643562623862373938, 4, '2078-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(690, 0x66393566346663332d636434392d313165622d383465382d356363643562623862373938, 4, '2078-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(691, 0x66393566393038332d636434392d313165622d383465382d356363643562623862373938, 4, '2079-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(692, 0x66393566643035302d636434392d313165622d383465382d356363643562623862373938, 4, '2079-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(693, 0x66393630343431362d636434392d313165622d383465382d356363643562623862373938, 4, '2079-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(694, 0x66393630633662302d636434392d313165622d383465382d356363643562623862373938, 4, '2079-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(695, 0x66393631303731342d636434392d313165622d383465382d356363643562623862373938, 4, '2079-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(696, 0x66393631343331352d636434392d313165622d383465382d356363643562623862373938, 4, '2079-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(697, 0x66393631373835362d636434392d313165622d383465382d356363643562623862373938, 4, '2079-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(698, 0x66393631616432382d636434392d313165622d383465382d356363643562623862373938, 4, '2079-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(699, 0x66393631646433632d636434392d313165622d383465382d356363643562623862373938, 4, '2079-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(700, 0x66393632313365342d636434392d313165622d383465382d356363643562623862373938, 4, '2079-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(701, 0x66393632343536382d636434392d313165622d383465382d356363643562623862373938, 4, '2079-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(702, 0x66393632373635322d636434392d313165622d383465382d356363643562623862373938, 4, '2079-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(703, 0x66393632643538312d636434392d313165622d383465382d356363643562623862373938, 4, '2080-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(704, 0x66393633316139332d636434392d313165622d383465382d356363643562623862373938, 4, '2080-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(705, 0x66393633346331392d636434392d313165622d383465382d356363643562623862373938, 4, '2080-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(706, 0x66393633376435352d636434392d313165622d383465382d356363643562623862373938, 4, '2080-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(707, 0x66393633616361332d636434392d313165622d383465382d356363643562623862373938, 4, '2080-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(708, 0x66393633646662652d636434392d313165622d383465382d356363643562623862373938, 4, '2080-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(709, 0x66393634306561332d636434392d313165622d383465382d356363643562623862373938, 4, '2080-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(710, 0x66393634336562332d636434392d313165622d383465382d356363643562623862373938, 4, '2080-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(711, 0x66393634373231662d636434392d313165622d383465382d356363643562623862373938, 4, '2080-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(712, 0x66393634613330312d636434392d313165622d383465382d356363643562623862373938, 4, '2080-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(713, 0x66393634643230352d636434392d313165622d383465382d356363643562623862373938, 4, '2080-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(714, 0x66393635303130392d636434392d313165622d383465382d356363643562623862373938, 4, '2080-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(715, 0x66393635356331332d636434392d313165622d383465382d356363643562623862373938, 4, '2081-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(716, 0x66393635613437342d636434392d313165622d383465382d356363643562623862373938, 4, '2081-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(717, 0x66393635643533662d636434392d313165622d383465382d356363643562623862373938, 4, '2081-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(718, 0x66393636303336632d636434392d313165622d383465382d356363643562623862373938, 4, '2081-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(719, 0x66393636333134652d636434392d313165622d383465382d356363643562623862373938, 4, '2081-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(720, 0x66393636356538332d636434392d313165622d383465382d356363643562623862373938, 4, '2081-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(721, 0x66393636393430342d636434392d313165622d383465382d356363643562623862373938, 4, '2081-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(722, 0x66393636633730342d636434392d313165622d383465382d356363643562623862373938, 4, '2081-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(723, 0x66393637303937382d636434392d313165622d383465382d356363643562623862373938, 4, '2081-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(724, 0x66393637333962382d636434392d313165622d383465382d356363643562623862373938, 4, '2081-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(725, 0x66393637363833662d636434392d313165622d383465382d356363643562623862373938, 4, '2081-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(726, 0x66393637393739342d636434392d313165622d383465382d356363643562623862373938, 4, '2081-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(727, 0x66393638303562632d636434392d313165622d383465382d356363643562623862373938, 4, '2082-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(728, 0x66393638336536312d636434392d313165622d383465382d356363643562623862373938, 4, '2082-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(729, 0x66393638373064622d636434392d313165622d383465382d356363643562623862373938, 4, '2082-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(730, 0x66393638396537392d636434392d313165622d383465382d356363643562623862373938, 4, '2082-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(731, 0x66393638636364622d636434392d313165622d383465382d356363643562623862373938, 4, '2082-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(732, 0x66393638666562392d636434392d313165622d383465382d356363643562623862373938, 4, '2082-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(733, 0x66393639333338372d636434392d313165622d383465382d356363643562623862373938, 4, '2082-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(734, 0x66393639363232392d636434392d313165622d383465382d356363643562623862373938, 4, '2082-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(735, 0x66393639393065342d636434392d313165622d383465382d356363643562623862373938, 4, '2082-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(736, 0x66393639626664392d636434392d313165622d383465382d356363643562623862373938, 4, '2082-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(737, 0x66393639663134612d636434392d313165622d383465382d356363643562623862373938, 4, '2082-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(738, 0x66393661323331372d636434392d313165622d383465382d356363643562623862373938, 4, '2082-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(739, 0x66393661386365382d636434392d313165622d383465382d356363643562623862373938, 4, '2083-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(740, 0x66393661633430392d636434392d313165622d383465382d356363643562623862373938, 4, '2083-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(741, 0x66393661663433362d636434392d313165622d383465382d356363643562623862373938, 4, '2083-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(742, 0x66393662323538632d636434392d313165622d383465382d356363643562623862373938, 4, '2083-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(743, 0x66393662353637642d636434392d313165622d383465382d356363643562623862373938, 4, '2083-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(744, 0x66393662383966652d636434392d313165622d383465382d356363643562623862373938, 4, '2083-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(745, 0x66393662626438622d636434392d313165622d383465382d356363643562623862373938, 4, '2083-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(746, 0x66393662656631392d636434392d313165622d383465382d356363643562623862373938, 4, '2083-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(747, 0x66393663316462352d636434392d313165622d383465382d356363643562623862373938, 4, '2083-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(748, 0x66393663346464302d636434392d313165622d383465382d356363643562623862373938, 4, '2083-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(749, 0x66393663376266302d636434392d313165622d383465382d356363643562623862373938, 4, '2083-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(750, 0x66393663616334322d636434392d313165622d383465382d356363643562623862373938, 4, '2083-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(751, 0x66393664306236362d636434392d313165622d383465382d356363643562623862373938, 4, '2084-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(752, 0x66393664343465612d636434392d313165622d383465382d356363643562623862373938, 4, '2084-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(753, 0x66393664373264662d636434392d313165622d383465382d356363643562623862373938, 4, '2084-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(754, 0x66393664613631362d636434392d313165622d383465382d356363643562623862373938, 4, '2084-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(755, 0x66393664646134662d636434392d313165622d383465382d356363643562623862373938, 4, '2084-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(756, 0x66393665306237382d636434392d313165622d383465382d356363643562623862373938, 4, '2084-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(757, 0x66393665346332332d636434392d313165622d383465382d356363643562623862373938, 4, '2084-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(758, 0x66393665376366612d636434392d313165622d383465382d356363643562623862373938, 4, '2084-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(759, 0x66393665616530302d636434392d313165622d383465382d356363643562623862373938, 4, '2084-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(760, 0x66393665646463392d636434392d313165622d383465382d356363643562623862373938, 4, '2084-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(761, 0x66393666306366322d636434392d313165622d383465382d356363643562623862373938, 4, '2084-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(762, 0x66393666336136362d636434392d313165622d383465382d356363643562623862373938, 4, '2084-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(763, 0x66393666616435662d636434392d313165622d383465382d356363643562623862373938, 4, '2085-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(764, 0x66393666653265612d636434392d313165622d383465382d356363643562623862373938, 4, '2085-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(765, 0x66393730313635362d636434392d313165622d383465382d356363643562623862373938, 4, '2085-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(766, 0x66393730343931642d636434392d313165622d383465382d356363643562623862373938, 4, '2085-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(767, 0x66393730376131322d636434392d313165622d383465382d356363643562623862373938, 4, '2085-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(768, 0x66393730613766372d636434392d313165622d383465382d356363643562623862373938, 4, '2085-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(769, 0x66393730643765322d636434392d313165622d383465382d356363643562623862373938, 4, '2085-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(770, 0x66393731303638662d636434392d313165622d383465382d356363643562623862373938, 4, '2085-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(771, 0x66393731333935362d636434392d313165622d383465382d356363643562623862373938, 4, '2085-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(772, 0x66393731363765392d636434392d313165622d383465382d356363643562623862373938, 4, '2085-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(773, 0x66393731393565612d636434392d313165622d383465382d356363643562623862373938, 4, '2085-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(774, 0x66393731633665652d636434392d313165622d383465382d356363643562623862373938, 4, '2085-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(775, 0x66393732333731632d636434392d313165622d383465382d356363643562623862373938, 4, '2086-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(776, 0x66393732383134302d636434392d313165622d383465382d356363643562623862373938, 4, '2086-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(777, 0x66393732623431302d636434392d313165622d383465382d356363643562623862373938, 4, '2086-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(778, 0x66393732653330352d636434392d313165622d383465382d356363643562623862373938, 4, '2086-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(779, 0x66393733313666632d636434392d313165622d383465382d356363643562623862373938, 4, '2086-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(780, 0x66393733343832392d636434392d313165622d383465382d356363643562623862373938, 4, '2086-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(781, 0x66393733373730302d636434392d313165622d383465382d356363643562623862373938, 4, '2086-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(782, 0x66393733613537662d636434392d313165622d383465382d356363643562623862373938, 4, '2086-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(783, 0x66393733643736332d636434392d313165622d383465382d356363643562623862373938, 4, '2086-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(784, 0x66393734303662362d636434392d313165622d383465382d356363643562623862373938, 4, '2086-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(785, 0x66393734333566612d636434392d313165622d383465382d356363643562623862373938, 4, '2086-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(786, 0x66393734386235302d636434392d313165622d383465382d356363643562623862373938, 4, '2086-12-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(787, 0x66393734643839372d636434392d313165622d383465382d356363643562623862373938, 4, '2087-01-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(788, 0x66393735303835302d636434392d313165622d383465382d356363643562623862373938, 4, '2087-02-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(789, 0x66393735336139322d636434392d313165622d383465382d356363643562623862373938, 4, '2087-03-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(790, 0x66393735386566332d636434392d313165622d383465382d356363643562623862373938, 4, '2087-04-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(791, 0x66393735626531652d636434392d313165622d383465382d356363643562623862373938, 4, '2087-05-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(792, 0x66393735656630352d636434392d313165622d383465382d356363643562623862373938, 4, '2087-06-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(793, 0x66393736316339312d636434392d313165622d383465382d356363643562623862373938, 4, '2087-07-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(794, 0x66393736346265312d636434392d313165622d383465382d356363643562623862373938, 4, '2087-08-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(795, 0x66393736373931302d636434392d313165622d383465382d356363643562623862373938, 4, '2087-09-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(796, 0x66393736613861362d636434392d313165622d383465382d356363643562623862373938, 4, '2087-10-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(797, 0x66393736646261642d636434392d313165622d383465382d356363643562623862373938, 4, '2087-11-05', 'money', 1, 1, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(798, 0x66393737346135332d636434392d313165622d383465382d356363643562623862373938, 4, '2087-12-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(799, 0x66393737383032362d636434392d313165622d383465382d356363643562623862373938, 4, '2088-01-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(800, 0x66393737623134622d636434392d313165622d383465382d356363643562623862373938, 4, '2088-02-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(801, 0x66393737646533612d636434392d313165622d383465382d356363643562623862373938, 4, '2088-03-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(802, 0x66393738306362392d636434392d313165622d383465382d356363643562623862373938, 4, '2088-04-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(803, 0x66393738336361392d636434392d313165622d383465382d356363643562623862373938, 4, '2088-05-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(804, 0x66393738366361642d636434392d313165622d383465382d356363643562623862373938, 4, '2088-06-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(805, 0x66393738396263302d636434392d313165622d383465382d356363643562623862373938, 4, '2088-07-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(806, 0x66393738636137392d636434392d313165622d383465382d356363643562623862373938, 4, '2088-08-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(807, 0x66393738663766622d636434392d313165622d383465382d356363643562623862373938, 4, '2088-09-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(808, 0x66393739323631332d636434392d313165622d383465382d356363643562623862373938, 4, '2088-10-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(809, 0x66393739353730372d636434392d313165622d383465382d356363643562623862373938, 4, '2088-11-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(810, 0x66393739623430322d636434392d313165622d383465382d356363643562623862373938, 4, '2088-12-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(811, 0x66393739666135612d636434392d313165622d383465382d356363643562623862373938, 4, '2089-01-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(812, 0x66393761326263362d636434392d313165622d383465382d356363643562623862373938, 4, '2089-02-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(813, 0x66393761356539372d636434392d313165622d383465382d356363643562623862373938, 4, '2089-03-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(814, 0x66393761386338612d636434392d313165622d383465382d356363643562623862373938, 4, '2089-04-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(815, 0x66393761626134382d636434392d313165622d383465382d356363643562623862373938, 4, '2089-05-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(816, 0x66393761653839642d636434392d313165622d383465382d356363643562623862373938, 4, '2089-06-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(817, 0x66393762313933632d636434392d313165622d383465382d356363643562623862373938, 4, '2089-07-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(818, 0x66393762343966362d636434392d313165622d383465382d356363643562623862373938, 4, '2089-08-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(819, 0x66393762373863382d636434392d313165622d383465382d356363643562623862373938, 4, '2089-09-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(820, 0x66393762623236372d636434392d313165622d383465382d356363643562623862373938, 4, '2089-10-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(821, 0x66393762653864652d636434392d313165622d383465382d356363643562623862373938, 4, '2089-11-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(822, 0x66393763353235302d636434392d313165622d383465382d356363643562623862373938, 4, '2089-12-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(823, 0x66393763396431342d636434392d313165622d383465382d356363643562623862373938, 4, '2090-01-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(824, 0x66393763636361342d636434392d313165622d383465382d356363643562623862373938, 4, '2090-02-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(825, 0x66393763666361662d636434392d313165622d383465382d356363643562623862373938, 4, '2090-03-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(826, 0x66393764326262642d636434392d313165622d383465382d356363643562623862373938, 4, '2090-04-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(827, 0x66393764363132352d636434392d313165622d383465382d356363643562623862373938, 4, '2090-05-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(828, 0x66393764393137332d636434392d313165622d383465382d356363643562623862373938, 4, '2090-06-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(829, 0x66393764633630352d636434392d313165622d383465382d356363643562623862373938, 4, '2090-07-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(830, 0x66393764663431372d636434392d313165622d383465382d356363643562623862373938, 4, '2090-08-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(831, 0x66393765323364342d636434392d313165622d383465382d356363643562623862373938, 4, '2090-09-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(832, 0x66393765353665302d636434392d313165622d383465382d356363643562623862373938, 4, '2090-10-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(833, 0x66393765393433642d636434392d313165622d383465382d356363643562623862373938, 4, '2090-11-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(834, 0x66393765663837392d636434392d313165622d383465382d356363643562623862373938, 4, '2090-12-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(835, 0x66393766323964622d636434392d313165622d383465382d356363643562623862373938, 4, '2091-01-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(836, 0x66393766363534312d636434392d313165622d383465382d356363643562623862373938, 4, '2091-02-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(837, 0x66393766396133382d636434392d313165622d383465382d356363643562623862373938, 4, '2091-03-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(838, 0x66393766636138382d636434392d313165622d383465382d356363643562623862373938, 4, '2091-04-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(839, 0x66393766666161322d636434392d313165622d383465382d356363643562623862373938, 4, '2091-05-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(840, 0x66393830326138312d636434392d313165622d383465382d356363643562623862373938, 4, '2091-06-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(841, 0x66393830353764372d636434392d313165622d383465382d356363643562623862373938, 4, '2091-07-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(842, 0x66393830383531372d636434392d313165622d383465382d356363643562623862373938, 4, '2091-08-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(843, 0x66393830623539372d636434392d313165622d383465382d356363643562623862373938, 4, '2091-09-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(844, 0x66393830653366652d636434392d313165622d383465382d356363643562623862373938, 4, '2091-10-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(845, 0x66393831326462612d636434392d313165622d383465382d356363643562623862373938, 4, '2091-11-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(846, 0x66393831383661612d636434392d313165622d383465382d356363643562623862373938, 4, '2091-12-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(847, 0x66393831623830332d636434392d313165622d383465382d356363643562623862373938, 4, '2092-01-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(848, 0x66393831656234652d636434392d313165622d383465382d356363643562623862373938, 4, '2092-02-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(849, 0x66393832316238382d636434392d313165622d383465382d356363643562623862373938, 4, '2092-03-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(850, 0x66393832346262362d636434392d313165622d383465382d356363643562623862373938, 4, '2092-04-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(851, 0x66393832373935372d636434392d313165622d383465382d356363643562623862373938, 4, '2092-05-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(852, 0x66393832616137652d636434392d313165622d383465382d356363643562623862373938, 4, '2092-06-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(853, 0x66393832643939372d636434392d313165622d383465382d356363643562623862373938, 4, '2092-07-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(854, 0x66393833306334632d636434392d313165622d383465382d356363643562623862373938, 4, '2092-08-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(855, 0x66393833336364642d636434392d313165622d383465382d356363643562623862373938, 4, '2092-09-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(856, 0x66393833376362612d636434392d313165622d383465382d356363643562623862373938, 4, '2092-10-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(857, 0x66393833643565632d636434392d313165622d383465382d356363643562623862373938, 4, '2092-11-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(858, 0x66393834323237662d636434392d313165622d383465382d356363643562623862373938, 4, '2092-12-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(859, 0x66393834353235392d636434392d313165622d383465382d356363643562623862373938, 4, '2093-01-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(860, 0x66393834383162642d636434392d313165622d383465382d356363643562623862373938, 4, '2093-02-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(861, 0x66393834623362382d636434392d313165622d383465382d356363643562623862373938, 4, '2093-03-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(862, 0x66393834653138302d636434392d313165622d383465382d356363643562623862373938, 4, '2093-04-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(863, 0x66393835306637622d636434392d313165622d383465382d356363643562623862373938, 4, '2093-05-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(864, 0x66393835343063312d636434392d313165622d383465382d356363643562623862373938, 4, '2093-06-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(865, 0x66393835373566342d636434392d313165622d383465382d356363643562623862373938, 4, '2093-07-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(866, 0x66393835613533612d636434392d313165622d383465382d356363643562623862373938, 4, '2093-08-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(867, 0x66393835643535302d636434392d313165622d383465382d356363643562623862373938, 4, '2093-09-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(868, 0x66393836303530372d636434392d313165622d383465382d356363643562623862373938, 4, '2093-10-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(869, 0x66393836363064302d636434392d313165622d383465382d356363643562623862373938, 4, '2093-11-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(870, 0x66393836616265332d636434392d313165622d383465382d356363643562623862373938, 4, '2093-12-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(871, 0x66393836646462352d636434392d313165622d383465382d356363643562623862373938, 4, '2094-01-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(872, 0x66393837306164382d636434392d313165622d383465382d356363643562623862373938, 4, '2094-02-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(873, 0x66393837333932332d636434392d313165622d383465382d356363643562623862373938, 4, '2094-03-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(874, 0x66393837363761652d636434392d313165622d383465382d356363643562623862373938, 4, '2094-04-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(875, 0x66393837393835352d636434392d313165622d383465382d356363643562623862373938, 4, '2094-05-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(876, 0x66393837636238372d636434392d313165622d383465382d356363643562623862373938, 4, '2094-06-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(877, 0x66393837666261622d636434392d313165622d383465382d356363643562623862373938, 4, '2094-07-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(878, 0x66393838326236622d636434392d313165622d383465382d356363643562623862373938, 4, '2094-08-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(879, 0x66393838353764662d636434392d313165622d383465382d356363643562623862373938, 4, '2094-09-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(880, 0x66393838383663322d636434392d313165622d383465382d356363643562623862373938, 4, '2094-10-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(881, 0x66393838636631372d636434392d313165622d383465382d356363643562623862373938, 4, '2094-11-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(882, 0x66393839323832322d636434392d313165622d383465382d356363643562623862373938, 4, '2094-12-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(883, 0x66393839356265382d636434392d313165622d383465382d356363643562623862373938, 4, '2095-01-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(884, 0x66393839386364372d636434392d313165622d383465382d356363643562623862373938, 4, '2095-02-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(885, 0x66393839626362372d636434392d313165622d383465382d356363643562623862373938, 4, '2095-03-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(886, 0x66393839656161322d636434392d313165622d383465382d356363643562623862373938, 4, '2095-04-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(887, 0x66393861323135362d636434392d313165622d383465382d356363643562623862373938, 4, '2095-05-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(888, 0x66393861353537632d636434392d313165622d383465382d356363643562623862373938, 4, '2095-06-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(889, 0x66393861383562662d636434392d313165622d383465382d356363643562623862373938, 4, '2095-07-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(890, 0x66393861633832312d636434392d313165622d383465382d356363643562623862373938, 4, '2095-08-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(891, 0x66393861663661632d636434392d313165622d383465382d356363643562623862373938, 4, '2095-09-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(892, 0x66393862323762392d636434392d313165622d383465382d356363643562623862373938, 4, '2095-10-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(893, 0x66393862393533362d636434392d313165622d383465382d356363643562623862373938, 4, '2095-11-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(894, 0x66393862636434302d636434392d313165622d383465382d356363643562623862373938, 4, '2095-12-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(895, 0x66393862666364642d636434392d313165622d383465382d356363643562623862373938, 4, '2096-01-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(896, 0x66393863326332332d636434392d313165622d383465382d356363643562623862373938, 4, '2096-02-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(897, 0x66393863356138642d636434392d313165622d383465382d356363643562623862373938, 4, '2096-03-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(898, 0x66393863396462652d636434392d313165622d383465382d356363643562623862373938, 4, '2096-04-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(899, 0x66393863643463652d636434392d313165622d383465382d356363643562623862373938, 4, '2096-05-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(900, 0x66393864303531312d636434392d313165622d383465382d356363643562623862373938, 4, '2096-06-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(901, 0x66393864333663322d636434392d313165622d383465382d356363643562623862373938, 4, '2096-07-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(902, 0x66393864363830652d636434392d313165622d383465382d356363643562623862373938, 4, '2096-08-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(903, 0x66393864396361632d636434392d313165622d383465382d356363643562623862373938, 4, '2096-09-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(904, 0x66393864653339652d636434392d313165622d383465382d356363643562623862373938, 4, '2096-10-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(905, 0x66393865336230332d636434392d313165622d383465382d356363643562623862373938, 4, '2096-11-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(906, 0x66393865366261652d636434392d313165622d383465382d356363643562623862373938, 4, '2096-12-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(907, 0x66393865396163372d636434392d313165622d383465382d356363643562623862373938, 4, '2097-01-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(908, 0x66393865633832642d636434392d313165622d383465382d356363643562623862373938, 4, '2097-02-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(909, 0x66393865666566382d636434392d313165622d383465382d356363643562623862373938, 4, '2097-03-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(910, 0x66393866333135352d636434392d313165622d383465382d356363643562623862373938, 4, '2097-04-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(911, 0x66393866363536312d636434392d313165622d383465382d356363643562623862373938, 4, '2097-05-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(912, 0x66393866393336372d636434392d313165622d383465382d356363643562623862373938, 4, '2097-06-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(913, 0x66393866633735662d636434392d313165622d383465382d356363643562623862373938, 4, '2097-07-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(914, 0x66393866663966662d636434392d313165622d383465382d356363643562623862373938, 4, '2097-08-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(915, 0x66393930323836642d636434392d313165622d383465382d356363643562623862373938, 4, '2097-09-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(916, 0x66393930373437342d636434392d313165622d383465382d356363643562623862373938, 4, '2097-10-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(917, 0x66393930633866322d636434392d313165622d383465382d356363643562623862373938, 4, '2097-11-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(918, 0x66393930666362662d636434392d313165622d383465382d356363643562623862373938, 4, '2097-12-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(919, 0x66393931326663322d636434392d313165622d383465382d356363643562623862373938, 4, '2098-01-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(920, 0x66393931363861322d636434392d313165622d383465382d356363643562623862373938, 4, '2098-02-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(921, 0x66393931393831322d636434392d313165622d383465382d356363643562623862373938, 4, '2098-03-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(922, 0x66393931633730392d636434392d313165622d383465382d356363643562623862373938, 4, '2098-04-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(923, 0x66393931663937642d636434392d313165622d383465382d356363643562623862373938, 4, '2098-05-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(924, 0x66393932336165342d636434392d313165622d383465382d356363643562623862373938, 4, '2098-06-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(925, 0x66393932366364662d636434392d313165622d383465382d356363643562623862373938, 4, '2098-07-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(926, 0x66393932613039662d636434392d313165622d383465382d356363643562623862373938, 4, '2098-08-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(927, 0x66393932643163332d636434392d313165622d383465382d356363643562623862373938, 4, '2098-09-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(928, 0x66393933336636362d636434392d313165622d383465382d356363643562623862373938, 4, '2098-10-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(929, 0x66393933373038382d636434392d313165622d383465382d356363643562623862373938, 4, '2098-11-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(930, 0x66393933613631622d636434392d313165622d383465382d356363643562623862373938, 4, '2098-12-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(931, 0x66393933643764632d636434392d313165622d383465382d356363643562623862373938, 4, '2099-01-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(932, 0x66393934306130632d636434392d313165622d383465382d356363643562623862373938, 4, '2099-02-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(933, 0x66393934333939652d636434392d313165622d383465382d356363643562623862373938, 4, '2099-03-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(934, 0x66393934363835312d636434392d313165622d383465382d356363643562623862373938, 4, '2099-04-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(935, 0x66393934393862352d636434392d313165622d383465382d356363643562623862373938, 4, '2099-05-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(936, 0x66393934633838652d636434392d313165622d383465382d356363643562623862373938, 4, '2099-06-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(937, 0x66393934663966372d636434392d313165622d383465382d356363643562623862373938, 4, '2099-07-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(938, 0x66393935326166372d636434392d313165622d383465382d356363643562623862373938, 4, '2099-08-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(939, 0x66393935356236632d636434392d313165622d383465382d356363643562623862373938, 4, '2099-09-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(940, 0x66393935633930372d636434392d313165622d383465382d356363643562623862373938, 4, '2099-10-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59');
INSERT INTO `receipts` (`id`, `cod`, `contract`, `due_date`, `payment_form`, `status`, `account_id`, `created_at`, `updated_at`) VALUES
(941, 0x66393936303638622d636434392d313165622d383465382d356363643562623862373938, 4, '2099-11-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(942, 0x66393936333739352d636434392d313165622d383465382d356363643562623862373938, 4, '2099-12-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(943, 0x66393936366164302d636434392d313165622d383465382d356363643562623862373938, 4, '2100-01-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(944, 0x66393936396463332d636434392d313165622d383465382d356363643562623862373938, 4, '2100-02-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(945, 0x66393936636461632d636434392d313165622d383465382d356363643562623862373938, 4, '2100-03-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(946, 0x66393937303736622d636434392d313165622d383465382d356363643562623862373938, 4, '2100-04-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(947, 0x66393937333435622d636434392d313165622d383465382d356363643562623862373938, 4, '2100-05-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(948, 0x66393937366339612d636434392d313165622d383465382d356363643562623862373938, 4, '2100-06-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(949, 0x66393937396139322d636434392d313165622d383465382d356363643562623862373938, 4, '2100-07-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(950, 0x66393937636261392d636434392d313165622d383465382d356363643562623862373938, 4, '2100-08-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(951, 0x66393938313838382d636434392d313165622d383465382d356363643562623862373938, 4, '2100-09-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(952, 0x66393938363532632d636434392d313165622d383465382d356363643562623862373938, 4, '2100-10-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(953, 0x66393938393563342d636434392d313165622d383465382d356363643562623862373938, 4, '2100-11-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(954, 0x66393938633730362d636434392d313165622d383465382d356363643562623862373938, 4, '2100-12-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(955, 0x66393938663764392d636434392d313165622d383465382d356363643562623862373938, 4, '2101-01-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(956, 0x66393939336333372d636434392d313165622d383465382d356363643562623862373938, 4, '2101-02-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(957, 0x66393939366437332d636434392d313165622d383465382d356363643562623862373938, 4, '2101-03-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(958, 0x66393939396663322d636434392d313165622d383465382d356363643562623862373938, 4, '2101-04-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(959, 0x66393939636432612d636434392d313165622d383465382d356363643562623862373938, 4, '2101-05-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(960, 0x66393939666537622d636434392d313165622d383465382d356363643562623862373938, 4, '2101-06-05', 'money', 1, 1, '2021-06-14 19:51:59', '2021-06-14 19:51:59');

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
(1, 1, 1, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(2, 2, 2, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(3, 3, 3, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(4, 4, 4, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(5, 5, 5, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(6, 6, 6, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(7, 7, 7, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(8, 8, 8, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(9, 9, 9, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(10, 10, 10, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(11, 11, 11, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(12, 12, 12, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(13, 13, 13, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(14, 14, 14, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(15, 15, 15, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(16, 16, 16, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(17, 17, 17, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(18, 18, 18, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(19, 19, 19, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(20, 20, 20, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(21, 21, 21, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(22, 22, 22, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(23, 23, 23, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(24, 24, 24, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(25, 25, 25, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(26, 26, 26, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(27, 27, 27, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(28, 28, 28, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(29, 29, 29, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(30, 30, 30, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(31, 31, 31, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(32, 32, 32, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(33, 33, 33, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(34, 34, 34, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(35, 35, 35, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(36, 36, 36, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(37, 37, 37, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(38, 38, 38, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(39, 39, 39, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(40, 40, 40, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(41, 41, 41, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(42, 42, 42, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(43, 43, 43, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(44, 44, 44, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(45, 45, 45, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(46, 46, 46, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(47, 47, 47, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(48, 48, 48, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(49, 49, 49, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(50, 50, 50, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(51, 51, 51, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(52, 52, 52, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(53, 53, 53, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(54, 54, 54, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(55, 55, 55, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(56, 56, 56, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(57, 57, 57, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(58, 58, 58, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(59, 59, 59, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(60, 60, 60, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(61, 61, 61, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(62, 62, 62, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(63, 63, 63, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(64, 64, 64, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(65, 65, 65, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(66, 66, 66, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(67, 67, 67, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(68, 68, 68, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(69, 69, 69, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(70, 70, 70, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(71, 71, 71, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(72, 72, 72, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(73, 73, 73, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(74, 74, 74, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(75, 75, 75, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(76, 76, 76, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(77, 77, 77, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(78, 78, 78, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(79, 79, 79, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(80, 80, 80, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(81, 81, 81, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(82, 82, 82, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(83, 83, 83, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(84, 84, 84, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(85, 85, 85, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(86, 86, 86, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(87, 87, 87, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(88, 88, 88, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(89, 89, 89, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(90, 90, 90, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(91, 91, 91, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(92, 92, 92, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(93, 93, 93, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(94, 94, 94, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(95, 95, 95, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(96, 96, 96, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(97, 97, 97, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(98, 98, 98, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(99, 99, 99, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(100, 100, 100, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(101, 101, 101, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(102, 102, 102, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(103, 103, 103, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(104, 104, 104, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(105, 105, 105, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(106, 106, 106, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(107, 107, 107, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(108, 108, 108, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(109, 109, 109, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(110, 110, 110, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(111, 111, 111, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(112, 112, 112, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(113, 113, 113, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(114, 114, 114, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(115, 115, 115, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(116, 116, 116, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(117, 117, 117, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(118, 118, 118, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(119, 119, 119, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(120, 120, 120, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(121, 121, 121, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(122, 122, 122, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(123, 123, 123, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(124, 124, 124, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(125, 125, 125, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(126, 126, 126, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(127, 127, 127, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(128, 128, 128, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(129, 129, 129, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(130, 130, 130, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(131, 131, 131, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(132, 132, 132, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(133, 133, 133, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(134, 134, 134, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(135, 135, 135, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(136, 136, 136, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(137, 137, 137, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(138, 138, 138, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(139, 139, 139, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(140, 140, 140, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(141, 141, 141, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(142, 142, 142, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(143, 143, 143, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(144, 144, 144, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(145, 145, 145, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(146, 146, 146, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(147, 147, 147, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(148, 148, 148, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(149, 149, 149, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(150, 150, 150, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(151, 151, 151, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(152, 152, 152, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(153, 153, 153, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(154, 154, 154, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(155, 155, 155, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(156, 156, 156, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(157, 157, 157, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(158, 158, 158, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(159, 159, 159, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(160, 160, 160, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(161, 161, 161, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(162, 162, 162, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(163, 163, 163, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(164, 164, 164, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(165, 165, 165, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(166, 166, 166, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(167, 167, 167, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(168, 168, 168, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(169, 169, 169, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(170, 170, 170, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(171, 171, 171, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(172, 172, 172, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(173, 173, 173, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(174, 174, 174, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(175, 175, 175, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(176, 176, 176, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(177, 177, 177, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(178, 178, 178, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(179, 179, 179, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(180, 180, 180, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(181, 181, 181, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(182, 182, 182, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(183, 183, 183, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(184, 184, 184, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(185, 185, 185, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(186, 186, 186, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(187, 187, 187, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(188, 188, 188, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(189, 189, 189, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(190, 190, 190, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(191, 191, 191, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(192, 192, 192, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(193, 193, 193, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(194, 194, 194, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(195, 195, 195, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(196, 196, 196, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(197, 197, 197, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(198, 198, 198, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(199, 199, 199, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(200, 200, 200, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(201, 201, 201, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(202, 202, 202, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(203, 203, 203, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(204, 204, 204, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(205, 205, 205, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(206, 206, 206, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(207, 207, 207, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(208, 208, 208, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(209, 209, 209, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(210, 210, 210, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(211, 211, 211, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(212, 212, 212, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(213, 213, 213, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(214, 214, 214, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(215, 215, 215, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(216, 216, 216, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(217, 217, 217, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(218, 218, 218, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(219, 219, 219, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(220, 220, 220, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(221, 221, 221, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(222, 222, 222, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(223, 223, 223, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(224, 224, 224, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(225, 225, 225, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(226, 226, 226, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(227, 227, 227, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(228, 228, 228, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(229, 229, 229, '2021-06-14 19:51:57', '2021-06-14 19:51:57'),
(230, 230, 230, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(231, 231, 231, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(232, 232, 232, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(233, 233, 233, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(234, 234, 234, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(235, 235, 235, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(236, 236, 236, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(237, 237, 237, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(238, 238, 238, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(239, 239, 239, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(240, 240, 240, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(241, 241, 241, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(242, 242, 242, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(243, 243, 243, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(244, 244, 244, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(245, 245, 245, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(246, 246, 246, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(247, 247, 247, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(248, 248, 248, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(249, 249, 249, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(250, 250, 250, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(251, 251, 251, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(252, 252, 252, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(253, 253, 253, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(254, 254, 254, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(255, 255, 255, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(256, 256, 256, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(257, 257, 257, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(258, 258, 258, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(259, 259, 259, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(260, 260, 260, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(261, 261, 261, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(262, 262, 262, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(263, 263, 263, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(264, 264, 264, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(265, 265, 265, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(266, 266, 266, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(267, 267, 267, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(268, 268, 268, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(269, 269, 269, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(270, 270, 270, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(271, 271, 271, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(272, 272, 272, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(273, 273, 273, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(274, 274, 274, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(275, 275, 275, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(276, 276, 276, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(277, 277, 277, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(278, 278, 278, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(279, 279, 279, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(280, 280, 280, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(281, 281, 281, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(282, 282, 282, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(283, 283, 283, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(284, 284, 284, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(285, 285, 285, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(286, 286, 286, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(287, 287, 287, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(288, 288, 288, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(289, 289, 289, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(290, 290, 290, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(291, 291, 291, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(292, 292, 292, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(293, 293, 293, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(294, 294, 294, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(295, 295, 295, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(296, 296, 296, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(297, 297, 297, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(298, 298, 298, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(299, 299, 299, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(300, 300, 300, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(301, 301, 301, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(302, 302, 302, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(303, 303, 303, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(304, 304, 304, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(305, 305, 305, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(306, 306, 306, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(307, 307, 307, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(308, 308, 308, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(309, 309, 309, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(310, 310, 310, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(311, 311, 311, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(312, 312, 312, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(313, 313, 313, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(314, 314, 314, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(315, 315, 315, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(316, 316, 316, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(317, 317, 317, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(318, 318, 318, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(319, 319, 319, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(320, 320, 320, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(321, 321, 321, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(322, 322, 322, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(323, 323, 323, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(324, 324, 324, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(325, 325, 325, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(326, 326, 326, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(327, 327, 327, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(328, 328, 328, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(329, 329, 329, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(330, 330, 330, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(331, 331, 331, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(332, 332, 332, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(333, 333, 333, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(334, 334, 334, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(335, 335, 335, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(336, 336, 336, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(337, 337, 337, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(338, 338, 338, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(339, 339, 339, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(340, 340, 340, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(341, 341, 341, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(342, 342, 342, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(343, 343, 343, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(344, 344, 344, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(345, 345, 345, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(346, 346, 346, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(347, 347, 347, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(348, 348, 348, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(349, 349, 349, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(350, 350, 350, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(351, 351, 351, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(352, 352, 352, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(353, 353, 353, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(354, 354, 354, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(355, 355, 355, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(356, 356, 356, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(357, 357, 357, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(358, 358, 358, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(359, 359, 359, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(360, 360, 360, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(361, 361, 361, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(362, 362, 362, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(363, 363, 363, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(364, 364, 364, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(365, 365, 365, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(366, 366, 366, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(367, 367, 367, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(368, 368, 368, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(369, 369, 369, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(370, 370, 370, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(371, 371, 371, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(372, 372, 372, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(373, 373, 373, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(374, 374, 374, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(375, 375, 375, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(376, 376, 376, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(377, 377, 377, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(378, 378, 378, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(379, 379, 379, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(380, 380, 380, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(381, 381, 381, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(382, 382, 382, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(383, 383, 383, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(384, 384, 384, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(385, 385, 385, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(386, 386, 386, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(387, 387, 387, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(388, 388, 388, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(389, 389, 389, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(390, 390, 390, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(391, 391, 391, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(392, 392, 392, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(393, 393, 393, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(394, 394, 394, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(395, 395, 395, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(396, 396, 396, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(397, 397, 397, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(398, 398, 398, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(399, 399, 399, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(400, 400, 400, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(401, 401, 401, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(402, 402, 402, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(403, 403, 403, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(404, 404, 404, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(405, 405, 405, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(406, 406, 406, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(407, 407, 407, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(408, 408, 408, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(409, 409, 409, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(410, 410, 410, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(411, 411, 411, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(412, 412, 412, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(413, 413, 413, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(414, 414, 414, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(415, 415, 415, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(416, 416, 416, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(417, 417, 417, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(418, 418, 418, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(419, 419, 419, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(420, 420, 420, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(421, 421, 421, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(422, 422, 422, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(423, 423, 423, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(424, 424, 424, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(425, 425, 425, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(426, 426, 426, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(427, 427, 427, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(428, 428, 428, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(429, 429, 429, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(430, 430, 430, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(431, 431, 431, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(432, 432, 432, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(433, 433, 433, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(434, 434, 434, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(435, 435, 435, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(436, 436, 436, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(437, 437, 437, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(438, 438, 438, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(439, 439, 439, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(440, 440, 440, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(441, 441, 441, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(442, 442, 442, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(443, 443, 443, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(444, 444, 444, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(445, 445, 445, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(446, 446, 446, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(447, 447, 447, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(448, 448, 448, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(449, 449, 449, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(450, 450, 450, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(451, 451, 451, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(452, 452, 452, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(453, 453, 453, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(454, 454, 454, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(455, 455, 455, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(456, 456, 456, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(457, 457, 457, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(458, 458, 458, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(459, 459, 459, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(460, 460, 460, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(461, 461, 461, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(462, 462, 462, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(463, 463, 463, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(464, 464, 464, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(465, 465, 465, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(466, 466, 466, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(467, 467, 467, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(468, 468, 468, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(469, 469, 469, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(470, 470, 470, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(471, 471, 471, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(472, 472, 472, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(473, 473, 473, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(474, 474, 474, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(475, 475, 475, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(476, 476, 476, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(477, 477, 477, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(478, 478, 478, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(479, 479, 479, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(480, 480, 480, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(481, 481, 481, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(482, 482, 482, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(483, 483, 483, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(484, 484, 484, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(485, 485, 485, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(486, 486, 486, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(487, 487, 487, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(488, 488, 488, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(489, 489, 489, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(490, 490, 490, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(491, 491, 491, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(492, 492, 492, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(493, 493, 493, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(494, 494, 494, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(495, 495, 495, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(496, 496, 496, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(497, 497, 497, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(498, 498, 498, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(499, 499, 499, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(500, 500, 500, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(501, 501, 501, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(502, 502, 502, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(503, 503, 503, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(504, 504, 504, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(505, 505, 505, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(506, 506, 506, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(507, 507, 507, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(508, 508, 508, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(509, 509, 509, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(510, 510, 510, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(511, 511, 511, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(512, 512, 512, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(513, 513, 513, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(514, 514, 514, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(515, 515, 515, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(516, 516, 516, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(517, 517, 517, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(518, 518, 518, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(519, 519, 519, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(520, 520, 520, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(521, 521, 521, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(522, 522, 522, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(523, 523, 523, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(524, 524, 524, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(525, 525, 525, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(526, 526, 526, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(527, 527, 527, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(528, 528, 528, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(529, 529, 529, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(530, 530, 530, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(531, 531, 531, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(532, 532, 532, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(533, 533, 533, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(534, 534, 534, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(535, 535, 535, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(536, 536, 536, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(537, 537, 537, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(538, 538, 538, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(539, 539, 539, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(540, 540, 540, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(541, 541, 541, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(542, 542, 542, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(543, 543, 543, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(544, 544, 544, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(545, 545, 545, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(546, 546, 546, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(547, 547, 547, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(548, 548, 548, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(549, 549, 549, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(550, 550, 550, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(551, 551, 551, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(552, 552, 552, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(553, 553, 553, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(554, 554, 554, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(555, 555, 555, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(556, 556, 556, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(557, 557, 557, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(558, 558, 558, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(559, 559, 559, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(560, 560, 560, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(561, 561, 561, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(562, 562, 562, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(563, 563, 563, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(564, 564, 564, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(565, 565, 565, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(566, 566, 566, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(567, 567, 567, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(568, 568, 568, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(569, 569, 569, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(570, 570, 570, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(571, 571, 571, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(572, 572, 572, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(573, 573, 573, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(574, 574, 574, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(575, 575, 575, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(576, 576, 576, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(577, 577, 577, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(578, 578, 578, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(579, 579, 579, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(580, 580, 580, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(581, 581, 581, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(582, 582, 582, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(583, 583, 583, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(584, 584, 584, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(585, 585, 585, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(586, 586, 586, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(587, 587, 587, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(588, 588, 588, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(589, 589, 589, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(590, 590, 590, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(591, 591, 591, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(592, 592, 592, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(593, 593, 593, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(594, 594, 594, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(595, 595, 595, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(596, 596, 596, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(597, 597, 597, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(598, 598, 598, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(599, 599, 599, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(600, 600, 600, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(601, 601, 601, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(602, 602, 602, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(603, 603, 603, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(604, 604, 604, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(605, 605, 605, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(606, 606, 606, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(607, 607, 607, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(608, 608, 608, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(609, 609, 609, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(610, 610, 610, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(611, 611, 611, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(612, 612, 612, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(613, 613, 613, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(614, 614, 614, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(615, 615, 615, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(616, 616, 616, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(617, 617, 617, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(618, 618, 618, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(619, 619, 619, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(620, 620, 620, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(621, 621, 621, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(622, 622, 622, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(623, 623, 623, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(624, 624, 624, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(625, 625, 625, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(626, 626, 626, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(627, 627, 627, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(628, 628, 628, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(629, 629, 629, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(630, 630, 630, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(631, 631, 631, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(632, 632, 632, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(633, 633, 633, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(634, 634, 634, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(635, 635, 635, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(636, 636, 636, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(637, 637, 637, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(638, 638, 638, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(639, 639, 639, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(640, 640, 640, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(641, 641, 641, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(642, 642, 642, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(643, 643, 643, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(644, 644, 644, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(645, 645, 645, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(646, 646, 646, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(647, 647, 647, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(648, 648, 648, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(649, 649, 649, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(650, 650, 650, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(651, 651, 651, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(652, 652, 652, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(653, 653, 653, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(654, 654, 654, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(655, 655, 655, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(656, 656, 656, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(657, 657, 657, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(658, 658, 658, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(659, 659, 659, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(660, 660, 660, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(661, 661, 661, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(662, 662, 662, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(663, 663, 663, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(664, 664, 664, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(665, 665, 665, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(666, 666, 666, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(667, 667, 667, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(668, 668, 668, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(669, 669, 669, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(670, 670, 670, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(671, 671, 671, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(672, 672, 672, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(673, 673, 673, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(674, 674, 674, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(675, 675, 675, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(676, 676, 676, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(677, 677, 677, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(678, 678, 678, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(679, 679, 679, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(680, 680, 680, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(681, 681, 681, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(682, 682, 682, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(683, 683, 683, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(684, 684, 684, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(685, 685, 685, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(686, 686, 686, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(687, 687, 687, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(688, 688, 688, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(689, 689, 689, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(690, 690, 690, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(691, 691, 691, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(692, 692, 692, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(693, 693, 693, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(694, 694, 694, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(695, 695, 695, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(696, 696, 696, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(697, 697, 697, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(698, 698, 698, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(699, 699, 699, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(700, 700, 700, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(701, 701, 701, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(702, 702, 702, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(703, 703, 703, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(704, 704, 704, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(705, 705, 705, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(706, 706, 706, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(707, 707, 707, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(708, 708, 708, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(709, 709, 709, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(710, 710, 710, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(711, 711, 711, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(712, 712, 712, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(713, 713, 713, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(714, 714, 714, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(715, 715, 715, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(716, 716, 716, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(717, 717, 717, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(718, 718, 718, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(719, 719, 719, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(720, 720, 720, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(721, 721, 721, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(722, 722, 722, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(723, 723, 723, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(724, 724, 724, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(725, 725, 725, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(726, 726, 726, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(727, 727, 727, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(728, 728, 728, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(729, 729, 729, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(730, 730, 730, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(731, 731, 731, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(732, 732, 732, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(733, 733, 733, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(734, 734, 734, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(735, 735, 735, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(736, 736, 736, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(737, 737, 737, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(738, 738, 738, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(739, 739, 739, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(740, 740, 740, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(741, 741, 741, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(742, 742, 742, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(743, 743, 743, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(744, 744, 744, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(745, 745, 745, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(746, 746, 746, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(747, 747, 747, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(748, 748, 748, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(749, 749, 749, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(750, 750, 750, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(751, 751, 751, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(752, 752, 752, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(753, 753, 753, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(754, 754, 754, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(755, 755, 755, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(756, 756, 756, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(757, 757, 757, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(758, 758, 758, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(759, 759, 759, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(760, 760, 760, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(761, 761, 761, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(762, 762, 762, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(763, 763, 763, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(764, 764, 764, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(765, 765, 765, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(766, 766, 766, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(767, 767, 767, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(768, 768, 768, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(769, 769, 769, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(770, 770, 770, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(771, 771, 771, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(772, 772, 772, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(773, 773, 773, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(774, 774, 774, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(775, 775, 775, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(776, 776, 776, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(777, 777, 777, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(778, 778, 778, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(779, 779, 779, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(780, 780, 780, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(781, 781, 781, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(782, 782, 782, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(783, 783, 783, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(784, 784, 784, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(785, 785, 785, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(786, 786, 786, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(787, 787, 787, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(788, 788, 788, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(789, 789, 789, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(790, 790, 790, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(791, 791, 791, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(792, 792, 792, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(793, 793, 793, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(794, 794, 794, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(795, 795, 795, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(796, 796, 796, '2021-06-14 19:51:58', '2021-06-14 19:51:58'),
(797, 797, 797, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(798, 798, 798, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(799, 799, 799, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(800, 800, 800, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(801, 801, 801, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(802, 802, 802, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(803, 803, 803, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(804, 804, 804, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(805, 805, 805, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(806, 806, 806, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(807, 807, 807, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(808, 808, 808, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(809, 809, 809, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(810, 810, 810, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(811, 811, 811, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(812, 812, 812, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(813, 813, 813, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(814, 814, 814, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(815, 815, 815, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(816, 816, 816, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(817, 817, 817, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(818, 818, 818, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(819, 819, 819, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(820, 820, 820, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(821, 821, 821, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(822, 822, 822, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(823, 823, 823, '2021-06-14 19:51:59', '2021-06-14 19:51:59');
INSERT INTO `receipt_invoices` (`id`, `receipt`, `invoice`, `created_at`, `updated_at`) VALUES
(824, 824, 824, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(825, 825, 825, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(826, 826, 826, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(827, 827, 827, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(828, 828, 828, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(829, 829, 829, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(830, 830, 830, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(831, 831, 831, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(832, 832, 832, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(833, 833, 833, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(834, 834, 834, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(835, 835, 835, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(836, 836, 836, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(837, 837, 837, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(838, 838, 838, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(839, 839, 839, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(840, 840, 840, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(841, 841, 841, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(842, 842, 842, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(843, 843, 843, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(844, 844, 844, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(845, 845, 845, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(846, 846, 846, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(847, 847, 847, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(848, 848, 848, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(849, 849, 849, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(850, 850, 850, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(851, 851, 851, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(852, 852, 852, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(853, 853, 853, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(854, 854, 854, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(855, 855, 855, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(856, 856, 856, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(857, 857, 857, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(858, 858, 858, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(859, 859, 859, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(860, 860, 860, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(861, 861, 861, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(862, 862, 862, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(863, 863, 863, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(864, 864, 864, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(865, 865, 865, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(866, 866, 866, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(867, 867, 867, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(868, 868, 868, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(869, 869, 869, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(870, 870, 870, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(871, 871, 871, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(872, 872, 872, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(873, 873, 873, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(874, 874, 874, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(875, 875, 875, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(876, 876, 876, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(877, 877, 877, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(878, 878, 878, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(879, 879, 879, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(880, 880, 880, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(881, 881, 881, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(882, 882, 882, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(883, 883, 883, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(884, 884, 884, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(885, 885, 885, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(886, 886, 886, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(887, 887, 887, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(888, 888, 888, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(889, 889, 889, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(890, 890, 890, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(891, 891, 891, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(892, 892, 892, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(893, 893, 893, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(894, 894, 894, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(895, 895, 895, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(896, 896, 896, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(897, 897, 897, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(898, 898, 898, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(899, 899, 899, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(900, 900, 900, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(901, 901, 901, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(902, 902, 902, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(903, 903, 903, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(904, 904, 904, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(905, 905, 905, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(906, 906, 906, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(907, 907, 907, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(908, 908, 908, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(909, 909, 909, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(910, 910, 910, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(911, 911, 911, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(912, 912, 912, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(913, 913, 913, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(914, 914, 914, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(915, 915, 915, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(916, 916, 916, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(917, 917, 917, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(918, 918, 918, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(919, 919, 919, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(920, 920, 920, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(921, 921, 921, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(922, 922, 922, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(923, 923, 923, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(924, 924, 924, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(925, 925, 925, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(926, 926, 926, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(927, 927, 927, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(928, 928, 928, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(929, 929, 929, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(930, 930, 930, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(931, 931, 931, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(932, 932, 932, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(933, 933, 933, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(934, 934, 934, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(935, 935, 935, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(936, 936, 936, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(937, 937, 937, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(938, 938, 938, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(939, 939, 939, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(940, 940, 940, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(941, 941, 941, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(942, 942, 942, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(943, 943, 943, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(944, 944, 944, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(945, 945, 945, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(946, 946, 946, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(947, 947, 947, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(948, 948, 948, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(949, 949, 949, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(950, 950, 950, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(951, 951, 951, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(952, 952, 952, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(953, 953, 953, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(954, 954, 954, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(955, 955, 955, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(956, 956, 956, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(957, 957, 957, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(958, 958, 958, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(959, 959, 959, '2021-06-14 19:51:59', '2021-06-14 19:51:59'),
(960, 960, 960, '2021-06-14 19:51:59', '2021-06-14 19:51:59');

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
(1, 0x66646264346532312d333364652d313165622d613061322d373466303664663066636462, 'Luiz Felipe', 'Azevedo Bello', 'luizfelipe31@gmail.com', 'admin', '$2y$10$/D0SF9Y/t33BNaeqptbdI.54CV5FKNukJ1hl1G3Wdm1yKUALS3Cti', 1, 1, 1, NULL, 'male', '1989-07-09', '14179893789', '241989185', 'images/2020/10/luiz-felipe-azevedo-bello-1603334942.jpg', 1, NULL, NULL, NULL, 0, '2020-08-27 15:56:03', '2021-06-16 14:21:57'),
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
-- Índices para tabela `invoice_fixeds`
--
ALTER TABLE `invoice_fixeds`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `invoice_recurrents`
--
ALTER TABLE `invoice_recurrents`
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
-- Índices para tabela `operation`
--
ALTER TABLE `operation`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=970;

--
-- AUTO_INCREMENT de tabela `invoice_fixeds`
--
ALTER TABLE `invoice_fixeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `invoice_recurrents`
--
ALTER TABLE `invoice_recurrents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=482;

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
-- AUTO_INCREMENT de tabela `operation`
--
ALTER TABLE `operation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
