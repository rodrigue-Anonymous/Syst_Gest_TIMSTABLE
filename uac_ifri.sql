-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 30 juin 2023 à 05:55
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `uac_ifri`
--

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add promotion', 7, 'add_promotion'),
(26, 'Can change promotion', 7, 'change_promotion'),
(27, 'Can delete promotion', 7, 'delete_promotion'),
(28, 'Can view promotion', 7, 'view_promotion'),
(29, 'Can add course', 8, 'add_course'),
(30, 'Can change course', 8, 'change_course'),
(31, 'Can delete course', 8, 'delete_course'),
(32, 'Can view course', 8, 'view_course'),
(33, 'Can add timetable', 9, 'add_timetable'),
(34, 'Can change timetable', 9, 'change_timetable'),
(35, 'Can delete timetable', 9, 'delete_timetable'),
(36, 'Can view timetable', 9, 'view_timetable'),
(37, 'Can add schedule', 10, 'add_schedule'),
(38, 'Can change schedule', 10, 'change_schedule'),
(39, 'Can delete schedule', 10, 'delete_schedule'),
(40, 'Can view schedule', 10, 'view_schedule'),
(41, 'Can add emploi du temps', 11, 'add_emploidutemps'),
(42, 'Can change emploi du temps', 11, 'change_emploidutemps'),
(43, 'Can delete emploi du temps', 11, 'delete_emploidutemps'),
(44, 'Can view emploi du temps', 11, 'view_emploidutemps'),
(45, 'Can add emploi du temps_l2', 12, 'add_emploidutemps_l2'),
(46, 'Can change emploi du temps_l2', 12, 'change_emploidutemps_l2'),
(47, 'Can delete emploi du temps_l2', 12, 'delete_emploidutemps_l2'),
(48, 'Can view emploi du temps_l2', 12, 'view_emploidutemps_l2'),
(49, 'Can add emploi du temps_l3', 13, 'add_emploidutemps_l3'),
(50, 'Can change emploi du temps_l3', 13, 'change_emploidutemps_l3'),
(51, 'Can delete emploi du temps_l3', 13, 'delete_emploidutemps_l3'),
(52, 'Can view emploi du temps_l3', 13, 'view_emploidutemps_l3');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(3, 'pbkdf2_sha256$260000$kuIee96QdGJe5Dl5VUTr0U$h5tcE8zhn49tl7bL+1pA68M9aoLsRuKexy4BrkfuI58=', NULL, 0, 'zamak', '', '', 'melzohou@gmail.com', 0, 0, '2023-06-29 15:36:46.032824'),
(4, 'pbkdf2_sha256$260000$fZw8RgWNZIAP9Q87hJlx89$OaO6a0Hi4tB7Hkv7DCFbT3AqtW/L/CfgyDIhTAkyFVQ=', NULL, 0, 'amedee', '', '', 'melzohoume@gmail.com', 0, 0, '2023-06-29 20:55:57.749652'),
(5, 'pbkdf2_sha256$260000$RcWebees9c7dHhiODRJEqk$ovhoxdRiz16snsbmyj10LgVaRuQbxoSEc1QzrQI2+NM=', NULL, 0, 'zohoun', '', '', 'melzohoou@gmail.com', 0, 0, '2023-06-29 23:02:24.549660'),
(6, 'pbkdf2_sha256$260000$BRaqIgrkXfNEZmn7lxeTw4$U2TzFLGRg4wPL13vuGELAVT9IPW2oMBAw5p/gp9x58c=', NULL, 1, 'DA_IFRI', '', '', 'ifri_uac@gmail.com', 1, 1, '2023-06-30 00:11:00.641474'),
(7, 'pbkdf2_sha256$260000$rruT15wDPEW3q9f8kPSBNt$dhFJDtfwDyqNGtziMKcfA9zveDq9w6vKzoeWg2vU9xw=', NULL, 0, 'hikjl', '', '', 'adg@gmail.com', 0, 0, '2023-06-30 01:41:18.079479'),
(8, 'pbkdf2_sha256$260000$gzf3pOIAMsbGgnGfbjfnKW$p4uwEyG8aJa/LUYu2MAfQXERd853uKqEOejKBh2D6Rs=', NULL, 0, 'amedee11', '', '', 'melzohoue@gmail.com', 0, 0, '2023-06-30 03:40:29.922965');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'emploi_temps', 'course'),
(11, 'emploi_temps', 'emploidutemps'),
(12, 'emploi_temps', 'emploidutemps_l2'),
(13, 'emploi_temps', 'emploidutemps_l3'),
(7, 'emploi_temps', 'promotion'),
(10, 'emploi_temps', 'schedule'),
(9, 'emploi_temps', 'timetable'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-06-28 10:32:31.105047'),
(2, 'auth', '0001_initial', '2023-06-28 10:32:32.214339'),
(3, 'admin', '0001_initial', '2023-06-28 10:32:32.448709'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-06-28 10:32:32.464322'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-28 10:32:32.479947'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-06-28 10:32:32.651810'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-06-28 10:32:32.714303'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-06-28 10:32:32.745557'),
(9, 'auth', '0004_alter_user_username_opts', '2023-06-28 10:32:32.761176'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-06-28 10:32:32.839359'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-06-28 10:32:32.839359'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-06-28 10:32:32.886190'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-06-28 10:32:32.948663'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-06-28 10:32:32.979911'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-06-28 10:32:33.011184'),
(16, 'auth', '0011_update_proxy_permissions', '2023-06-28 10:32:33.026786'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-06-28 10:32:33.214337'),
(18, 'emploi_temps', '0001_initial', '2023-06-28 10:32:33.276791'),
(19, 'emploi_temps', '0002_course_timetable', '2023-06-28 10:32:33.495500'),
(20, 'sessions', '0001_initial', '2023-06-28 10:32:33.542394'),
(21, 'emploi_temps', '0003_auto_20230628_1541', '2023-06-28 14:41:39.145448'),
(22, 'emploi_temps', '0004_auto_20230629_0312', '2023-06-29 02:12:41.909341'),
(23, 'emploi_temps', '0005_auto_20230629_0607', '2023-06-29 05:08:05.691661'),
(24, 'emploi_temps', '0006_alter_emploidutemps_info', '2023-06-29 15:36:21.891974'),
(25, 'emploi_temps', '0007_emploidutemps_l2', '2023-06-29 22:01:22.476846'),
(26, 'emploi_temps', '0008_emploidutemps_l3', '2023-06-29 23:37:45.635840');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('tpco5w58gkegi0m4rb5jkmnqzqtcd8q0', 'eyJ1c2VyX2lkIjozfQ:1qF59w:qmqPQ2NYRccHLyRnvLJOtW4ARJR7Yd6VVx7uQg7wntI', '2023-07-14 03:51:00.320665');

-- --------------------------------------------------------

--
-- Structure de la table `emploi_temps_emploidutemps`
--

CREATE TABLE `emploi_temps_emploidutemps` (
  `id` bigint(20) NOT NULL,
  `jour` varchar(20) NOT NULL,
  `cours` varchar(200) NOT NULL,
  `heure` varchar(20) NOT NULL,
  `professeur` varchar(100) NOT NULL,
  `salle` varchar(50) NOT NULL,
  `groupe` varchar(50) NOT NULL,
  `masse_horaire` varchar(50) NOT NULL,
  `info` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `emploi_temps_emploidutemps`
--

INSERT INTO `emploi_temps_emploidutemps` (`id`, `jour`, `cours`, `heure`, `professeur`, `salle`, `groupe`, `masse_horaire`, `info`) VALUES
(11, 'Lundi', 'Algorithmique', '10H-13H', 'M. Ezin', 'Iran 2', '2', '10H/15H', '-'),
(12, 'Samedi', 'Algorithmique', '10H-13H', 'M. Ezin', 'Iran 2', '1', '10H/15H', '-'),
(13, 'Lundi', 'Algorithmique', '10H-13H', 'M. Ezin', 'Iran 2', '2', '10H/15H', '-'),
(20, 'Vendredi', 'TEEO', '07H-10H', 'M. Louis KAYODE', 'Iran 2', '1', '09H/15H', '-'),
(21, 'Vendredi', 'TEEO', '10H-13H', 'M. Louis KAYODE', 'Iran 2', '2', '09H/15H', '-'),
(22, 'Mardi', 'Algèbre Relationnelle', '13H-16H', 'M. Pierre ZOHOU', 'Iran 2', '2', '09H/15H', '-'),
(23, 'Mardi', 'Algèbre Relationnelle', '16H-19H', 'M. Pierre ZOHOU', 'Iran 2', '1', '09H/15H', '-'),
(24, 'Jeudi', 'Algèbre Relationnelle', '07H-10H', 'M. Pierre ZOHOU', 'Iran 2', '1', '12H/15H', '-'),
(25, 'Jeudi', 'Algèbre Relationnelle', '10H-13H', 'M. Pierre ZOHOU', 'Iran 2', '2', '12H/15H', '-'),
(26, 'Mercredi', '-', '14H-19H', '-', '-', '1 et 2', '-', 'Activités Culturelles');

-- --------------------------------------------------------

--
-- Structure de la table `emploi_temps_emploidutemps_l2`
--

CREATE TABLE `emploi_temps_emploidutemps_l2` (
  `id` bigint(20) NOT NULL,
  `jour` varchar(20) NOT NULL,
  `cours` varchar(200) NOT NULL,
  `heure` varchar(20) NOT NULL,
  `professeur` varchar(100) NOT NULL,
  `salle` varchar(50) NOT NULL,
  `groupe` varchar(50) NOT NULL,
  `masse_horaire` varchar(50) NOT NULL,
  `info` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `emploi_temps_emploidutemps_l2`
--

INSERT INTO `emploi_temps_emploidutemps_l2` (`id`, `jour`, `cours`, `heure`, `professeur`, `salle`, `groupe`, `masse_horaire`, `info`) VALUES
(1, 'Lundi', 'Programmation Orientées Java', '10H-13H', 'M. Armand ACROMBESSI', 'B 500', '2', '09H/15H', 'Génie Logiciel et IM');

-- --------------------------------------------------------

--
-- Structure de la table `emploi_temps_emploidutemps_l3`
--

CREATE TABLE `emploi_temps_emploidutemps_l3` (
  `id` bigint(20) NOT NULL,
  `jour` varchar(20) NOT NULL,
  `cours` varchar(200) NOT NULL,
  `heure` varchar(20) NOT NULL,
  `professeur` varchar(100) NOT NULL,
  `salle` varchar(50) NOT NULL,
  `groupe` varchar(50) NOT NULL,
  `masse_horaire` varchar(50) NOT NULL,
  `info` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `emploi_temps_emploidutemps_l3`
--

INSERT INTO `emploi_temps_emploidutemps_l3` (`id`, `jour`, `cours`, `heure`, `professeur`, `salle`, `groupe`, `masse_horaire`, `info`) VALUES
(1, 'Mercredi', 'Internet et Sécurité', '07H-10H', 'Gaston EDAH', 'A 500', '1 et 2', '09H/20H', '- SI et IM');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Index pour la table `emploi_temps_emploidutemps`
--
ALTER TABLE `emploi_temps_emploidutemps`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `emploi_temps_emploidutemps_l2`
--
ALTER TABLE `emploi_temps_emploidutemps_l2`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `emploi_temps_emploidutemps_l3`
--
ALTER TABLE `emploi_temps_emploidutemps_l3`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `emploi_temps_emploidutemps`
--
ALTER TABLE `emploi_temps_emploidutemps`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `emploi_temps_emploidutemps_l2`
--
ALTER TABLE `emploi_temps_emploidutemps_l2`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `emploi_temps_emploidutemps_l3`
--
ALTER TABLE `emploi_temps_emploidutemps_l3`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
