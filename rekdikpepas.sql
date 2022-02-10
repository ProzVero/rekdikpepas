-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Feb 2022 pada 20.39
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rekdikpepas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_grup`
--

CREATE TABLE `tb_grup` (
  `id_grup` int(11) NOT NULL,
  `nama_grup` varchar(128) NOT NULL,
  `created_at` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_grup`
--

INSERT INTO `tb_grup` (`id_grup`, `nama_grup`, `created_at`) VALUES
(1, 'Administrator', '21 Oktober 2021'),
(2, 'User', '21 Oktober 2021');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_informasi`
--

CREATE TABLE `tb_informasi` (
  `id_info` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `kontak` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `created_at` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jadwal_dokter`
--

CREATE TABLE `tb_jadwal_dokter` (
  `id` int(11) NOT NULL,
  `jadwal` text DEFAULT NULL,
  `created_at` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengaduan`
--

CREATE TABLE `tb_pengaduan` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `grup_id` int(11) NOT NULL,
  `saran` text NOT NULL,
  `jawaban_saran` text NOT NULL,
  `created_at` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pengaduan`
--

INSERT INTO `tb_pengaduan` (`id`, `user_id`, `grup_id`, `saran`, `jawaban_saran`, `created_at`) VALUES
(1, 3, 2, 'Hy', '', '21 Nov 2021 02:35'),
(3, 7, 2, 'Sakit tidak kunjung reda Status:	Resolving address of ftp.sispasdes.my.id\r\nStatus:	Connecting to 203.175.9.27:21...\r\nStatus:	Connection established, waiting for welcome message...\r\nStatus:	Initializing TLS...\r\nStatus:	Verifying certificate...\r\nStatus:	TLS connection established.\r\nStatus:	Logged in\r\nStatus:	Retrieving directory listing...\r\nStatus:	Directory listing of \"/\" successful\r\nStatus:	Retrieving directory listing of \"/public_html\"...\r\nStatus:	Directory listing of \"/public_html\" successful\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id\" successful\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/application\" successful\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/controllers\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/application/controllers\" successful\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\" successful\r\nStatus:	Resolving address of ftp.sispasdes.my.id\r\nStatus:	Connecting to 203.175.9.27:21...\r\nStatus:	Connection established, waiting for welcome message...\r\nStatus:	Initializing TLS...\r\nStatus:	Verifying certificate...\r\nStatus:	TLS connection established.\r\nStatus:	Logged in\r\nStatus:	Starting upload of D:\\app\\xampp7427\\htdocs\\rekdikpepas\\application\\controllers\\api\\Pengaduan.php\r\nStatus:	File transfer successful, transferred 5.690 bytes in 1 second\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\" successful\r\nStatus:	Disconnected from server\r\nResponse:	421 Timeout - try typing a little faster next time\r\nError:	GnuTLS error -110 in gnutls_record_recv: The TLS connection was non-properly terminated.\r\nStatus:	Server did not properly shut down TLS connection\r\nError:	Could not read from socket: ECONNABORTED - Connection aborted\r\nError:	Disconnected from server\r\nStatus:	Resolving address of ftp.sispasdes.my.id\r\nStatus:	Connecting to 203.175.9.27:21...\r\nStatus:	Connection established, waiting for welcome message...\r\nStatus:	Initializing TLS...\r\nStatus:	Verifying certificate...\r\nStatus:	TLS connection established.\r\nStatus:	Logged in\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/assets\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/assets\" successful\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/assets/images\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/assets/images\" successful\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/assets/images/pengaduan\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/assets/images/pengaduan\" successful\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\" successful\r\nStatus:	Resolving address of ftp.sispasdes.my.id\r\nStatus:	Connecting to 203.175.9.27:21...\r\nStatus:	Connection established, waiting for welcome message...\r\nStatus:	Initializing TLS...\r\nStatus:	Verifying certificate...\r\nStatus:	TLS connection established.\r\nStatus:	Logged in\r\nStatus:	Starting upload of D:\\app\\xampp7427\\htdocs\\rekdikpepas\\application\\controllers\\api\\Pengaduan.php\r\nStatus:	File transfer successful, transferred 5.689 bytes in 1 second\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\" successful\r\nStatus:	Disconnected from server\r\nStatus:	Resolving address of ftp.sispasdes.my.id\r\nStatus:	Connecting to 203.175.9.27:21...\r\nStatus:	Connection established, waiting for welcome message...\r\nStatus:	Initializing TLS...\r\nStatus:	Verifying certificate...\r\nStatus:	TLS connection established.\r\nStatus:	Logged in\r\nStatus:	Starting upload of D:\\app\\xampp7427\\htdocs\\rekdikpepas\\application\\controllers\\api\\Pengaduan.php\r\nStatus:	File transfer successful, transferred 5.714 bytes in 1 second\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\" successful\r\nStatus:	Starting upload of D:\\app\\xampp7427\\htdocs\\rekdikpepas\\application\\controllers\\api\\Pengaduan.php\r\nStatus:	File transfer successful, transferred 5.717 bytes in 1 second\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\" successful\r\nStatus:	Disconnected from server\r\nStatus:	Resolving address of ftp.sispasdes.my.id\r\nStatus:	Connecting to 203.175.9.27:21...\r\nStatus:	Connection established, waiting for welcome message...\r\nStatus:	Initializing TLS...\r\nStatus:	Verifying certificate...\r\nStatus:	TLS connection established.\r\nStatus:	Logged in\r\nStatus:	Starting upload of D:\\app\\xampp7427\\htdocs\\rekdikpepas\\application\\controllers\\api\\Pengaduan.php\r\nStatus:	File transfer successful, transferred 5.717 bytes in 1 second\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\" successful\r\nStatus:	Disconnected from server\r\nStatus:	Resolving address of ftp.sispasdes.my.id\r\nStatus:	Connecting to 203.175.9.27:21...\r\nStatus:	Connection established, waiting for welcome message...\r\nStatus:	Initializing TLS...\r\nStatus:	Verifying certificate...\r\nStatus:	TLS connection established.\r\nStatus:	Logged in\r\nStatus:	Starting upload of D:\\app\\xampp7427\\htdocs\\rekdikpepas\\application\\controllers\\api\\Pengaduan.php\r\nStatus:	File transfer successful, transferred 5.719 bytes in 1 second\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\" successful\r\nStatus:	Starting upload of D:\\app\\xampp7427\\htdocs\\rekdikpepas\\application\\controllers\\api\\Pengaduan.php\r\nStatus:	File transfer successful, transferred 5.717 bytes in 1 second\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\" successful\r\nStatus:	Starting upload of D:\\app\\xampp7427\\htdocs\\rekdikpepas\\application\\controllers\\api\\Pengaduan.php\r\nStatus:	File transfer successful, transferred 5.718 bytes in 1 second\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\" successful\r\nStatus:	Starting upload of D:\\app\\xampp7427\\htdocs\\rekdikpepas\\application\\controllers\\api\\Pengaduan.php\r\nStatus:	File transfer successful, transferred 5.719 bytes in 1 second\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\" successful\r\nStatus:	Disconnected from server\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/assets/images/pengaduan\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/assets/images/pengaduan\" successful\r\nStatus:	Deleting 7 files from \"/public_html/rekdikpepas.my.id/assets/images/pengaduan\"\r\nStatus:	Resolving address of ftp.sispasdes.my.id\r\nStatus:	Connecting to 203.175.9.27:21...\r\nStatus:	Connection established, waiting for welcome message...\r\nStatus:	Initializing TLS...\r\nStatus:	Verifying certificate...\r\nStatus:	TLS connection established.\r\nStatus:	Logged in\r\nStatus:	Starting upload of D:\\app\\xampp7427\\htdocs\\rekdikpepas\\application\\controllers\\api\\Pengaduan.php\r\nStatus:	File transfer successful, transferred 5.718 bytes in 1 second\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\" successful\r\nStatus:	Disconnected from server\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/assets/images/pengaduan\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/assets/images/pengaduan\" successful\r\nStatus:	Deleting \"/public_html/rekdikpepas.my.id/assets/images/pengaduan/10Feb2022223550000.png\"\r\nStatus:	Resolving address of ftp.sispasdes.my.id\r\nStatus:	Connecting to 203.175.9.27:21...\r\nStatus:	Connection established, waiting for welcome message...\r\nStatus:	Initializing TLS...\r\nStatus:	Verifying certificate...\r\nStatus:	TLS connection established.\r\nStatus:	Logged in\r\nStatus:	Starting upload of D:\\app\\xampp7427\\htdocs\\rekdikpepas\\application\\controllers\\api\\Pengaduan.php\r\nStatus:	File transfer successful, transferred 5.716 bytes in 1 second\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\" successful\r\nStatus:	Disconnected from server\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/assets/images/pengaduan\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/assets/images/pengaduan\" successful\r\nStatus:	Deleting \"/public_html/rekdikpepas.my.id/assets/images/pengaduan/68.png\"\r\nResponse:	421 Timeout - try typing a little faster next time\r\nError:	GnuTLS error -110 in gnutls_record_recv: The TLS connection was non-properly terminated.\r\nStatus:	Server did not properly shut down TLS connection\r\nError:	Could not read from socket: ECONNABORTED - Connection aborted\r\nError:	Disconnected from server\r\nStatus:	Resolving address of ftp.sispasdes.my.id\r\nStatus:	Connecting to 203.175.9.27:21...\r\nStatus:	Connection established, waiting for welcome message...\r\nStatus:	Initializing TLS...\r\nStatus:	Verifying certificate...\r\nStatus:	TLS connection established.\r\nStatus:	Logged in\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/assets/data\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/assets/data\" successful\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\" successful\r\nStatus:	Resolving address of ftp.sispasdes.my.id\r\nStatus:	Connecting to 203.175.9.27:21...\r\nStatus:	Connection established, waiting for welcome message...\r\nStatus:	Initializing TLS...\r\nStatus:	Verifying certificate...\r\nStatus:	TLS connection established.\r\nStatus:	Logged in\r\nStatus:	Starting upload of D:\\app\\xampp7427\\htdocs\\rekdikpepas\\application\\controllers\\api\\Pengaduan.php\r\nStatus:	File transfer successful, transferred 8.036 bytes in 1 second\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\" successful\r\nStatus:	Disconnected from server\r\nStatus:	Resolving address of ftp.sispasdes.my.id\r\nStatus:	Connecting to 203.175.9.27:21...\r\nStatus:	Connection established, waiting for welcome message...\r\nStatus:	Initializing TLS...\r\nStatus:	Verifying certificate...\r\nStatus:	TLS connection established.\r\nStatus:	Logged in\r\nStatus:	Starting upload of D:\\app\\xampp7427\\htdocs\\rekdikpepas\\application\\controllers\\api\\Pengaduan.php\r\nStatus:	File transfer successful, transferred 8.056 bytes in 1 second\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\" successful\r\nStatus:	Disconnected from server\r\nResponse:	421 Timeout - try typing a little faster next time\r\nError:	GnuTLS error -110 in gnutls_record_recv: The TLS connection was non-properly terminated.\r\nStatus:	Server did not properly shut down TLS connection\r\nError:	Could not read from socket: ECONNABORTED - Connection aborted\r\nError:	Disconnected from server\r\nStatus:	Resolving address of ftp.sispasdes.my.id\r\nStatus:	Connecting to 203.175.9.27:21...\r\nStatus:	Connection established, waiting for welcome message...\r\nStatus:	Initializing TLS...\r\nStatus:	Verifying certificate...\r\nStatus:	TLS connection established.\r\nStatus:	Logged in\r\nStatus:	Starting upload of D:\\app\\xampp7427\\htdocs\\rekdikpepas\\application\\controllers\\api\\Pengaduan.php\r\nStatus:	File transfer successful, transferred 7.872 bytes in 1 second\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\" successful\r\nStatus:	Disconnected from server\r\nStatus:	Resolving address of ftp.sispasdes.my.id\r\nStatus:	Connecting to 203.175.9.27:21...\r\nStatus:	Connection established, waiting for welcome message...\r\nStatus:	Initializing TLS...\r\nStatus:	Verifying certificate...\r\nStatus:	TLS connection established.\r\nStatus:	Logged in\r\nStatus:	Starting upload of D:\\app\\xampp7427\\htdocs\\rekdikpepas\\application\\controllers\\api\\Pengaduan.php\r\nStatus:	File transfer successful, transferred 7.796 bytes in 1 second\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\" successful\r\nStatus:	Disconnected from server\r\nStatus:	Resolving address of ftp.sispasdes.my.id\r\nStatus:	Connecting to 203.175.9.27:21...\r\nStatus:	Connection established, waiting for welcome message...\r\nStatus:	Initializing TLS...\r\nStatus:	Verifying certificate...\r\nStatus:	TLS connection established.\r\nStatus:	Logged in\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/assets/images/pengaduan\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/assets/images/pengaduan\" successful\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/assets/images\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/assets/images\" successful\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/assets/images/pengaduan\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/assets/images/pengaduan\" successful\r\nResponse:	421 Timeout - try typing a little faster next time\r\nError:	GnuTLS error -110 in gnutls_record_recv: The TLS connection was non-properly terminated.\r\nStatus:	Server did not properly shut down TLS connection\r\nError:	Could not read from socket: ECONNABORTED - Connection aborted\r\nError:	Disconnected from server\r\nStatus:	Resolving address of ftp.sispasdes.my.id\r\nStatus:	Connecting to 203.175.9.27:21...\r\nStatus:	Connection established, waiting for welcome message...\r\nStatus:	Initializing TLS...\r\nStatus:	Verifying certificate...\r\nStatus:	TLS connection established.\r\nStatus:	Logged in\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/assets/images\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/assets/images\" successful\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/assets/images/pengaduan\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/assets/images/pengaduan\" successful\r\nStatus:	Resolving address of ftp.sispasdes.my.id\r\nStatus:	Connecting to 203.175.9.27:21...\r\nStatus:	Connection established, waiting for welcome message...\r\nStatus:	Initializing TLS...\r\nStatus:	Verifying certificate...\r\nStatus:	TLS connection established.\r\nStatus:	Logged in\r\nStatus:	Starting download of /public_html/rekdikpepas.my.id/assets/images/pengaduan/19.png\r\nStatus:	File transfer successful, transferred 51.438 bytes in 1 second\r\nStatus:	Starting download of /public_html/rekdikpepas.my.id/assets/images/pengaduan/24.png\r\nStatus:	File transfer successful, transferred 473.052 bytes in 1 second\r\nStatus:	Starting download of /public_html/rekdikpepas.my.id/assets/images/11fa39e323102e0ffc2c3e16b7acf455.png\r\nStatus:	File transfer successful, transferred 51.177 bytes in 1 second\r\nStatus:	Disconnected from server\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\" successful\r\nStatus:	Resolving address of ftp.sispasdes.my.id\r\nStatus:	Connecting to 203.175.9.27:21...\r\nStatus:	Connection established, waiting for welcome message...\r\nStatus:	Initializing TLS...\r\nStatus:	Verifying certificate...\r\nStatus:	TLS connection established.\r\nStatus:	Logged in\r\nStatus:	Starting upload of D:\\app\\xampp7427\\htdocs\\rekdikpepas\\application\\controllers\\api\\Pengaduan.php\r\nStatus:	File transfer successful, transferred 7.831 bytes in 1 second\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\" successful\r\nStatus:	Disconnected from server\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/assets/images/pengaduan\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/assets/images/pengaduan\" successful\r\nStatus:	Resolving address of ftp.sispasdes.my.id\r\nStatus:	Connecting to 203.175.9.27:21...\r\nStatus:	Connection established, waiting for welcome message...\r\nStatus:	Initializing TLS...\r\nStatus:	Verifying certificate...\r\nStatus:	TLS connection established.\r\nStatus:	Logged in\r\nStatus:	Starting upload of D:\\app\\xampp7427\\htdocs\\rekdikpepas\\application\\controllers\\api\\Pengaduan.php\r\nStatus:	File transfer successful, transferred 7.831 bytes in 1 second\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\" successful\r\nStatus:	Disconnected from server\r\nStatus:	Resolving address of ftp.sispasdes.my.id\r\nStatus:	Connecting to 203.175.9.27:21...\r\nStatus:	Connection established, waiting for welcome message...\r\nStatus:	Initializing TLS...\r\nStatus:	Verifying certificate...\r\nStatus:	TLS connection established.\r\nStatus:	Logged in\r\nStatus:	Starting upload of D:\\app\\xampp7427\\htdocs\\rekdikpepas\\application\\controllers\\api\\Pengaduan.php\r\nStatus:	File transfer successful, transferred 7.835 bytes in 1 second\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/api\" successful\r\nStatus:	Disconnected from server\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/views\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/application/views\" successful\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/views/backend\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/application/views/backend\" successful\r\nStatus:	Resolving address of ftp.sispasdes.my.id\r\nStatus:	Connecting to 203.175.9.27:21...\r\nStatus:	Resolving address of ftp.sispasdes.my.id\r\nStatus:	Connecting to 203.175.9.27:21...\r\nStatus:	Connection established, waiting for welcome message...\r\nStatus:	Connection established, waiting for welcome message...\r\nStatus:	Initializing TLS...\r\nStatus:	Initializing TLS...\r\nStatus:	Verifying certificate...\r\nStatus:	Verifying certificate...\r\nStatus:	TLS connection established.\r\nStatus:	TLS connection established.\r\nStatus:	Logged in\r\nStatus:	Starting upload of D:\\app\\xampp7427\\htdocs\\rekdikpepas\\application\\views\\backend\\pengaduan\\detail.php\r\nStatus:	Logged in\r\nStatus:	Starting upload of D:\\app\\xampp7427\\htdocs\\rekdikpepas\\application\\views\\backend\\pengaduan\\index.php\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/views/backend/pengaduan\"...\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/views/backend/pengaduan\"...\r\nStatus:	File transfer successful, transferred 3.633 bytes in 1 second\r\nStatus:	Starting upload of D:\\app\\xampp7427\\htdocs\\rekdikpepas\\application\\views\\backend\\pengaduan\\jawabsaran.php\r\nStatus:	File transfer successful, transferred 4.247 bytes in 1 second\r\nStatus:	File transfer successful, transferred 2.179 bytes in 1 second\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/views/backend/pengaduan\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/application/views/backend/pengaduan\" successful\r\nStatus:	Starting upload of D:\\app\\xampp7427\\htdocs\\rekdikpepas\\application\\views\\backend\\index.php\r\nStatus:	File transfer successful, transferred 5.096 bytes in 1 second\r\nStatus:	Disconnected from server\r\nStatus:	Disconnected from server\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/controllers\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/application/controllers\" successful\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/backend\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/backend\" successful\r\nStatus:	Resolving address of ftp.sispasdes.my.id\r\nStatus:	Connecting to 203.175.9.27:21...\r\nStatus:	Connection established, waiting for welcome message...\r\nStatus:	Initializing TLS...\r\nStatus:	Verifying certificate...\r\nStatus:	TLS connection established.\r\nStatus:	Logged in\r\nStatus:	Starting upload of D:\\app\\xampp7427\\htdocs\\rekdikpepas\\application\\controllers\\backend\\Pengaduan.php\r\nStatus:	File transfer successful, transferred 5.809 bytes in 1 second\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/backend\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/application/controllers/backend\" successful\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/models\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/application/models\" successful\r\nStatus:	Starting upload of D:\\app\\xampp7427\\htdocs\\rekdikpepas\\application\\models\\M_user.php\r\nStatus:	File transfer successful, transferred 3.058 bytes in 1 second\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/models\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/application/models\" successful\r\nStatus:	Disconnected from server\r\nStatus:	Resolving address of ftp.sispasdes.my.id\r\nStatus:	Connecting to 203.175.9.27:21...\r\nStatus:	Connection established, waiting for welcome message...\r\nStatus:	Initializing TLS...\r\nStatus:	Verifying certificate...\r\nStatus:	TLS connection established.\r\nStatus:	Logged in\r\nStatus:	Starting upload of D:\\app\\xampp7427\\htdocs\\rekdikpepas\\application\\views\\backend\\pengaduan\\detail.php\r\nStatus:	File transfer successful, transferred 3.598 bytes in 1 second\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/views/backend/pengaduan\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/application/views/backend/pengaduan\" successful\r\nStatus:	Starting upload of D:\\app\\xampp7427\\htdocs\\rekdikpepas\\application\\views\\backend\\pengaduan\\index.php\r\nStatus:	File transfer successful, transferred 4.218 bytes in 1 second\r\nStatus:	Retrieving directory listing of \"/public_html/rekdikpepas.my.id/application/views/backend/pengaduan\"...\r\nStatus:	Directory listing of \"/public_html/rekdikpepas.my.id/application/views/backend/pengaduan\" successful\r\nStatus:	Disconnected from server', '', '01 Dec 2021 10:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_poli`
--

CREATE TABLE `tb_poli` (
  `id` int(11) NOT NULL,
  `poli` varchar(128) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `created_at` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_register`
--

CREATE TABLE `tb_register` (
  `id_regis` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `kelamin` varchar(128) NOT NULL,
  `alamat` text NOT NULL,
  `created_at` varchar(128) NOT NULL,
  `status` int(1) NOT NULL,
  `token_id` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `no_jaminan` varchar(123) NOT NULL,
  `tgl_lahir` varchar(123) NOT NULL,
  `no_rekam` varchar(123) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_register`
--

INSERT INTO `tb_register` (`id_regis`, `user_id`, `nama`, `email`, `username`, `password`, `no_hp`, `kelamin`, `alamat`, `created_at`, `status`, `token_id`, `gambar`, `nik`, `no_jaminan`, `tgl_lahir`, `no_rekam`) VALUES
(5, 2, 'Adi Murdayani', 'adimurdayani@gmail.com', 'adi', 'dfc87a8a900d23c665de66efee2248b6881b7771', '7312312412', 'Laki-Laki', 'Palopo', '21 Nov 2021 20:38:06', 1, 'd3dmlhwQPSE:APA91bGlAl9-a7aK8INUgpZyrxopn6Fu_KZGrJNlPbw2YC7RfMLsfHAu8KQ-0z9ASVyakZT5mYpjMr_mV6MMpgkY9_fWmSndiHfNbK3LJqzVA_PB_zmsB-iHwJMycISRRsTn91Jxki0n', 'e8b31d704e58a3e8202e0fd27a5293f9.png', '234234123', '1241323', '08/08/1996', '03.00.001'),
(6, 2, 'Khali ghibran', 'khalilkhalilgibran83@gmail.com', 'khalil', '7d422dd9eae0a7a2db7d635f163e5f495b8b7a05', '', '', '', '25 Nov 2021', 1, 'dcMihBGT4fE:APA91bE8RDJwGuuQuLVmTLgulAi0hCC_RToSHVd1EbzTnjnc_O_FjYTQBLjSt4p1-guIM4nPjrrWYJ3UOtB7Lynsf61yGvydEc6QFfmiICv1LK3UK_m3seAL0Z6Tj00YPSnc8IdLhPp2', '', '', '', '', '03.00.001'),
(7, 2, 'Auliya Nurmala', 'auliyanurmala@gmail.com', 'Auliya nurmala', '055d7784f505a5d4a18b39b5e296bdfd78f0bc63', '', '', '', '29 Nov 2021', 1, 'dcMihBGT4fE:APA91bE8RDJwGuuQuLVmTLgulAi0hCC_RToSHVd1EbzTnjnc_O_FjYTQBLjSt4p1-guIM4nPjrrWYJ3UOtB7Lynsf61yGvydEc6QFfmiICv1LK3UK_m3seAL0Z6Tj00YPSnc8IdLhPp2', '', '', '', '', '03.00.001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_rekammedik`
--

CREATE TABLE `tb_rekammedik` (
  `id_rekam` int(11) NOT NULL,
  `no_rm` varchar(50) NOT NULL,
  `tgl_lahir` varchar(128) NOT NULL,
  `diagnosa` text NOT NULL,
  `jenis_obat` text NOT NULL,
  `no_jaminan` varchar(50) NOT NULL,
  `created_at` varchar(123) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_rekammedik`
--

INSERT INTO `tb_rekammedik` (`id_rekam`, `no_rm`, `tgl_lahir`, `diagnosa`, `jenis_obat`, `no_jaminan`, `created_at`) VALUES
(1, '05.00.150', '1971-11-30', 'Diabetes Mellitus + Hipertensi + Abces', 'Debridement,Kompres Nacl,\r\nAmplodipine 1x5 Mg, Ctm 3x1,\r\nCefadroxyl 2x500 Mg,\r\nVitamin C 3x1', '0001556693741', '21 Oct 2021'),
(2, '03.00.969', '1994-05-22', 'Ganglion', 'Rujuk Rs Bintang Laut Plp', '0001556697734', '21 Oct 2021'),
(3, '01.00.060', '1989-03-29', 'Dermotitis + Kontak Alergi', 'Ctm 3x1,\r\nHidrocortion Solf,\r\nVitamin C 1x500 Mg', '0001079627883', '21 Oct 2021'),
(4, '08.00.033', '2013-07-03', 'Tonsilitis Akut', 'Amoxcylline 3x250 Mg ,\r\nOgg 3x1/2,\r\nIbuprofen 3x1/2,\r\nVitamin C 3x1/2', '000155669696979', '21 Oct 2021'),
(5, '10.00.649', '2013-07-31', 'Hipertensi + Diabetes Mellitus', 'Amlodipin 1x10 Mg\r\nGlimepinde', '000940320652', '21 Oct 2021'),
(6, '03.00.580', '1997-10-10', 'Sehat', 'Surat Berbadan Sehat', '0000941477501', '21 Oct 2021');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_active` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `user_id`, `user_active`, `nama`, `email`, `username`, `password`, `created_at`) VALUES
(1, 1, 1, 'Administrator', 'adim@gmail.com', 'admin', 'f865b53623b121fd34ee5426c792e5c33af8c227', '09 Nov 2021');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_grup`
--
ALTER TABLE `tb_grup`
  ADD PRIMARY KEY (`id_grup`);

--
-- Indeks untuk tabel `tb_informasi`
--
ALTER TABLE `tb_informasi`
  ADD PRIMARY KEY (`id_info`);

--
-- Indeks untuk tabel `tb_jadwal_dokter`
--
ALTER TABLE `tb_jadwal_dokter`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pengaduan`
--
ALTER TABLE `tb_pengaduan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grup_id` (`grup_id`);

--
-- Indeks untuk tabel `tb_poli`
--
ALTER TABLE `tb_poli`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_register`
--
ALTER TABLE `tb_register`
  ADD PRIMARY KEY (`id_regis`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `tb_rekammedik`
--
ALTER TABLE `tb_rekammedik`
  ADD PRIMARY KEY (`id_rekam`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_grup`
--
ALTER TABLE `tb_grup`
  MODIFY `id_grup` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_informasi`
--
ALTER TABLE `tb_informasi`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_jadwal_dokter`
--
ALTER TABLE `tb_jadwal_dokter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_pengaduan`
--
ALTER TABLE `tb_pengaduan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_poli`
--
ALTER TABLE `tb_poli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_register`
--
ALTER TABLE `tb_register`
  MODIFY `id_regis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_rekammedik`
--
ALTER TABLE `tb_rekammedik`
  MODIFY `id_rekam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_pengaduan`
--
ALTER TABLE `tb_pengaduan`
  ADD CONSTRAINT `tb_pengaduan_ibfk_1` FOREIGN KEY (`grup_id`) REFERENCES `tb_grup` (`id_grup`);

--
-- Ketidakleluasaan untuk tabel `tb_register`
--
ALTER TABLE `tb_register`
  ADD CONSTRAINT `tb_register_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tb_grup` (`id_grup`);

--
-- Ketidakleluasaan untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD CONSTRAINT `tb_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tb_grup` (`id_grup`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
