-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Apr 2023 pada 10.01
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_py_kosongan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `1_sub_materi`
--

CREATE TABLE `1_sub_materi` (
  `id` int(11) NOT NULL,
  `materi` int(5) NOT NULL,
  `sub_materi` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `1_sub_materi`
--

INSERT INTO `1_sub_materi` (`id`, `materi`, `sub_materi`) VALUES
(1, 1, 'Introduction'),
(2, 1, 'Separable Equations'),
(3, 2, 'Linear First-Order Equations'),
(4, 2, 'Other Methods for First-Order Equations'),
(5, 2, 'Second-Order Linear Equations with Constant Coefficients and Zero Right-Hand Side'),
(6, 2, 'Second-Order Linear Equations with Constant Coefficients and Right-Hand Side Not Zero'),
(7, 2, 'Other Second-Order Equations'),
(8, 2, 'The Laplace Transform'),
(9, 2, 'Solution of Differential Equations by Laplace Transforms'),
(10, 2, 'Convolution'),
(11, 2, 'The Dirac Delta Function'),
(12, 2, 'A Brief Introduction to Green Functions'),
(13, 2, 'Miscellaneous Problems');

-- --------------------------------------------------------

--
-- Struktur dari tabel `2_card`
--

CREATE TABLE `2_card` (
  `id` int(11) NOT NULL,
  `materi` int(5) NOT NULL,
  `sub_materi` int(5) NOT NULL,
  `total_card` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `2_card`
--

INSERT INTO `2_card` (`id`, `materi`, `sub_materi`, `total_card`) VALUES
(1, 1, 1, 15),
(2, 1, 2, 8),
(3, 1, 3, 16);

-- --------------------------------------------------------

--
-- Struktur dari tabel `3_card_category`
--

CREATE TABLE `3_card_category` (
  `id` int(11) NOT NULL,
  `materi` int(5) NOT NULL,
  `sub_materi` int(5) NOT NULL,
  `card` int(5) NOT NULL,
  `jenis_card` int(1) NOT NULL,
  `judul_card` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `3_card_category`
--

INSERT INTO `3_card_category` (`id`, `materi`, `sub_materi`, `card`, `jenis_card`, `judul_card`) VALUES
(3, 1, 1, 1, 1, 'Persamaan Diferensial'),
(4, 1, 1, 2, 1, 'Persamaan Diferensial Biasa (PDB)'),
(5, 1, 1, 3, 1, 'Persamaan Diferensial Parsial (PDP)'),
(6, 1, 1, 4, 1, 'Orde Persamaan Diferensial'),
(7, 1, 1, 5, 1, 'Persamaan Diferensial Biasa Linier'),
(8, 1, 1, 6, 2, 'Latihan Soal'),
(9, 1, 1, 7, 2, 'Latihan Soal'),
(10, 1, 1, 8, 1, 'Penyelesaian Persamaan Diferensial Biasa'),
(11, 1, 1, 9, 1, 'Penyelesaian Umum Persamaan Diferensial Biasa'),
(12, 1, 1, 10, 2, 'Latihan Soal'),
(13, 1, 1, 11, 2, 'Latihan Soal'),
(14, 1, 1, 12, 1, 'Penyelesaian Khusus Persamaan Diferensial Biasa'),
(15, 1, 1, 13, 2, 'Latihan Soal'),
(16, 1, 1, 14, 2, 'Latihan Soal'),
(17, 1, 1, 15, 1, 'Slope Field'),
(18, 1, 2, 1, 1, 'Separable Equations'),
(19, 1, 2, 2, 2, 'Latihan Soal'),
(20, 1, 2, 3, 2, 'Latihan Soal'),
(21, 1, 2, 4, 1, 'Orthogonal Trajectories'),
(22, 1, 2, 5, 2, 'Latihan Soal'),
(23, 1, 2, 6, 2, 'Latihan Soal'),
(24, 1, 2, 7, 1, 'Nonlinear Differential Equations'),
(25, 1, 2, 8, 2, 'Latihan Soal');

-- --------------------------------------------------------

--
-- Struktur dari tabel `4_card_materi`
--

CREATE TABLE `4_card_materi` (
  `id` int(5) NOT NULL,
  `materi` int(11) NOT NULL,
  `sub_materi` int(11) NOT NULL,
  `card` int(11) NOT NULL,
  `layout` int(11) NOT NULL,
  `kategori` int(1) NOT NULL,
  `kolom` int(11) NOT NULL,
  `width` varchar(3) DEFAULT NULL,
  `numbering` int(5) DEFAULT NULL,
  `isi` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `4_card_materi`
--

INSERT INTO `4_card_materi` (`id`, `materi`, `sub_materi`, `card`, `layout`, `kategori`, `kolom`, `width`, `numbering`, `isi`) VALUES
(1, 1, 1, 1, 1, 1, 1, '1', 0, '<b>Persamaan Diferensial</b>'),
(2, 1, 1, 1, 1, 1, 1, '1', 0, 'Persamaan diferensial adalah sebuah persamaan yang melibatkan turunan dari satu atau lebih variabel terikat terhadap satu atau lebih variabel bebas. Berikut ini adalah beberapa contoh persamaan diferensial.\n</br>\n</br>\n<u>Contoh 1</u>'),
(3, 1, 1, 1, 1, 3, 1, '1', 1, '\\begin{aligned}\ny^{\\prime \\prime \\prime}+2 y^{\\prime \\prime}-y^{\\prime}-2 y=0 \\qquad\n\\end{aligned}'),
(4, 1, 1, 1, 1, 3, 1, '1', 2, '\\begin{aligned}\n\\frac{d^{4} x}{d t^{4}}+5 \\frac{d^{2} x}{d t^{2}}+3 x=\\sin t \\qquad\n\\end{aligned}'),
(5, 1, 1, 1, 1, 3, 1, '1', 3, '\\begin{aligned}\n\\frac{\\partial^{2}\\left(e^{x} \\cos y\\right)}{\\partial x^{2}}+\\frac{\\partial^{2}\\left(e^{x} \\cos y\\right)}{\\partial y^{2}}=0 \\qquad\n\\end{aligned}'),
(6, 1, 1, 1, 1, 3, 1, '1', 4, '\\begin{aligned}\n\\frac{\\partial^{2} u}{\\partial x^{2}}+\\frac{\\partial^{2} u}{\\partial y^{2}}+\\frac{\\partial^{2} u}{\\partial z^{2}}=0 \\qquad\n\\end{aligned}'),
(9, 1, 1, 1, 1, 1, 1, '1', 0, 'Berdasarkan Contoh 1, persamaan diferensial ada berbagai macam bentuk. Oleh karena itu, kita perlu membuat beberapa pengelompokan. Pengelompokkan pertama adalah berdasarkan variabel bebas yang terlibat.'),
(10, 1, 1, 2, 1, 1, 1, '1', 0, '<b>Persamaan Diferensial Biasa (PDB)</b>'),
(11, 1, 1, 2, 1, 1, 1, '1', 0, 'Persamaan diferensial biasa adalah persamaan diferensial yang mengandung turunan biasa dari satu atau lebih variabel terikat terhadap satu variabel bebas.\n</br>\n</br>\nPada Contoh 1, persamaan $(1)$ dan $(2)$ adalah contoh dari persamaan diferensial biasa. Persamaan $(1)$ merupakan turunan biasa variabel terikat $y$ terhadap variabel bebas $x$. Persamaan $(2)$ merupakan turunan biasa variabel terikat $x$ terhadap variabel bebas $t$.'),
(12, 1, 1, 2, 1, 3, 1, '1', 1, '\\begin{aligned}\ny^{\\prime \\prime \\prime}+2 y^{\\prime \\prime}-y^{\\prime}-2 y=0 \\qquad\n\\end{aligned}'),
(13, 1, 1, 2, 1, 3, 1, '1', 2, '\\begin{aligned}\n\\frac{d^{4} x}{d t^{4}}+5 \\frac{d^{2} x}{d t^{2}}+3 x=\\sin t \\qquad\n\\end{aligned}'),
(14, 1, 1, 3, 1, 1, 1, '1', 0, '<b>Persamaan Diferensial Parsial (PDP)</b>'),
(15, 1, 1, 3, 1, 1, 1, '1', 0, 'Persamaan diferensial parsial adalah persamaan diferensial yang mengandung turunan parsial dari satu atau lebih variabel terikat terhadap lebih dari satu variabel bebas.</br></br>Berdasarkan Contoh 1, persamaan $(3)$ dan $(4)$ adalah contoh dari persamaan diferensial parsial. Pada persamaan $(3)$, variabel $x$ dan $y$ adalah variabel bebas dan variabel terikat. Persamaan $(4)$ mempunyai tiga variabel bebas, yaitu $x$, $y$, $z$ dan variabel terikat $u$.'),
(16, 1, 1, 3, 1, 3, 1, '1', 3, '\\begin{aligned}\n\\frac{\\partial^{2}\\left(e^{x} \\cos y\\right)}{\\partial x^{2}}+\\frac{\\partial^{2}\\left(e^{x} \\cos y\\right)}{\\partial y^{2}}=0 \\qquad\n\\end{aligned}'),
(17, 1, 1, 3, 1, 3, 1, '1', 4, '\\begin{aligned}\n\\frac{\\partial^{2} u}{\\partial x^{2}}+\\frac{\\partial^{2} u}{\\partial y^{2}}+\\frac{\\partial^{2} u}{\\partial z^{2}}=0 \\qquad\n\\end{aligned}'),
(22, 1, 1, 4, 1, 1, 1, '1', 0, '<b>Orde Persamaan Diferensial</b>'),
(23, 1, 1, 4, 1, 1, 1, '1', 0, 'Selanjutnya, kita mengelompokkan persamaan diferensial biasa dan parsial berdasarkan orde tertinggi turunan yang ada di dalam persamaan. Orde dari persamaan diferensial adalah turunan dengan orde tertinggi di dalam sebuah persamaan diferensial.\n</br>\n</br>\nPada Contoh 1, persamaan $(1)$ adalah orde ketiga karena turunan dengan orde tertinggi dalam persamaan diferensial biasa tersebut adalah turunan ketiga. Persamaan $(2)$ adalah persamaan diferensial biasa orde keempat. Persamaan $(3)$ dan $(4)$, yang termasuk ke dalam persamaan diferensial parsial</span>, sama-sama merupakan orde kedua.'),
(24, 1, 1, 4, 1, 4, 1, '1', 0, '\\begin{aligned}\ny^{\\prime \\prime \\prime}+2 y^{\\prime \\prime}-y^{\\prime}-2 y=0 \\qquad \\text{PDB orde ketiga}\n\\end{aligned}'),
(25, 1, 1, 4, 1, 4, 1, '1', 0, '\\begin{aligned}\n\\frac{d^{4} x}{d t^{4}}+5 \\frac{d^{2} x}{d t^{2}}+3 x=\\sin t \\qquad \\text{PDB orde keempat}\n\\end{aligned}'),
(26, 1, 1, 4, 1, 4, 1, '1', 0, '\\begin{aligned}\n\\frac{\\partial^{2}\\left(e^{x} \\cos y\\right)}{\\partial x^{2}}+\\frac{\\partial^{2}\\left(e^{x} \\cos y\\right)}{\\partial y^{2}}=0 \\qquad \\text{PDP orde kedua}\n\\end{aligned}'),
(31, 1, 1, 4, 1, 4, 1, '1', 0, '\\begin{aligned}\n\\frac{\\partial^{2} u}{\\partial x^{2}}+\\frac{\\partial^{2} u}{\\partial y^{2}}+\\frac{\\partial^{2} u}{\\partial z^{2}}=0 \\qquad \\text{PDP orde kedua}\n\\end{aligned}'),
(33, 1, 1, 5, 1, 1, 1, '1', 0, '<b>Persamaan Diferensial Biasa Linier</b>'),
(35, 1, 1, 5, 1, 1, 1, '1', 0, 'Sebuah persamaan diferensial biasa yang linier (dengan $x$ sebagai variable bebas dan $y$ sebagai variable terikat) adalah sebuah persamaan dengan bentuk'),
(36, 1, 1, 5, 1, 3, 1, '1', 5, '\\begin{aligned}\na_{0} y+a_{1} y^{\\prime}+a_{2} y^{\\prime \\prime}+a_{3} y^{\\prime \\prime \\prime}+\\cdots=b \\qquad\n\\end{aligned}'),
(37, 1, 1, 5, 1, 1, 1, '1', 0, 'dimana $a$ dan $b$ adalah konstanta-konstanta atau fungsi-fungsi dari $x$.'),
(38, 1, 1, 5, 2, 1, 1, '1/2', 1, '<img src=\"https://physicsyourself.com/assets/img/archives/suku-fungsi.png\" style=\"margin-left: auto; margin-right: auto;\"><b>Gambar 1.</b> Komponen-komponen sebuah persamaan.'),
(39, 1, 1, 5, 2, 1, 2, '1/2', 0, 'Sebuah persamaan terdiri atas suku-suku atau <i>term</i> yang dipisahkan oleh operator matematika (tambah, kurang, kali, bagi, dan sebagainya).\r\n</br>\r\n</br>\r\nSatu suku persamaan dapat terdiri atas koefisien dan variable atau konstanta. Sebuah persamaan memiliki dua sisi, yaitu persamaan sisi kanan atau ruas kanan dan persamaan sisi kiri atau ruas kiri. '),
(40, 1, 1, 5, 1, 1, 1, '1', 0, 'Dari persamaan $(5)$, dapat kita analisis bahwa persamaan diferensial biasa linier memiliki ciri-ciri <b>(1)</b> variabel terikat $y$ dan semua turunannya tidak ada yang berpangkat lebih dari 1, <b>(2)</b> tidak ditemukan hasil perkalian $y$ dengan $y$ atau $y$ dengan turunannya pada setiap suku, <b>(3)</b> persamaan sisi kanan berupa fungsi dari $x$.  '),
(42, 1, 1, 5, 1, 3, 1, '1', 6, '\\begin{aligned}\n\\frac{d Q}{d t}=k A \\frac{d T}{d x} \\qquad\n\\end{aligned}'),
(43, 1, 1, 5, 1, 3, 1, '1', 7, '\\begin{aligned}\nL \\frac{d I}{d t}+R I+\\frac{q}{C}=V \\qquad\n\\end{aligned}'),
(44, 1, 1, 5, 1, 3, 1, '1', 8, '\\begin{aligned}\nL \\frac{d^{2} I}{d t^{2}}+R \\frac{d I}{d t}+\\frac{I}{C}=\\frac{d V}{d t} \\qquad\n\\end{aligned}'),
(46, 1, 1, 5, 1, 3, 1, '1', 9, '\\begin{aligned}\ny^{\\prime}+x y^{2}=1 \\qquad\n\\end{aligned}'),
(47, 1, 1, 5, 1, 1, 1, '1', 0, 'Persamaan $(9)$ bukan persamaan diferensial biasa linier karena memiliki suku $y^2$, sedangkan persamaan $(6)$, $(7)$ dan $(8)$ adalah persamaan diferensial biasa linier.'),
(48, 1, 1, 5, 1, 3, 1, '1', 10, '\\begin{aligned}\ny^{\\prime} &=\\cot{y} \\qquad\n\\end{aligned}'),
(49, 1, 1, 5, 1, 1, 1, '1', 0, 'Persamaan $(10)$ tidak linier atau non linier karena terdapat suku $\\cot y$ pada ruas kanan persamaan.'),
(50, 1, 1, 5, 1, 3, 1, '1', 11, '\\begin{aligned}\ny y^{\\prime} &=1 \\qquad\n\\end{aligned}'),
(51, 1, 1, 5, 1, 1, 1, '1', 0, 'Persamaan $(11)$ tidak linier atau non linier karena terdapat suku $y^{\\prime} y$ yang merupakan hasil perkalian dengan $y$.'),
(52, 1, 1, 5, 1, 3, 1, '1', 12, '\\begin{aligned}\ny^{\\prime 2} &=x y \\qquad\n\\end{aligned}'),
(53, 1, 1, 5, 1, 1, 1, '1', 0, 'Persamaan $(12)$ tidak linier atau non linier karena terdapat suku $y^{\\prime 2}$ yang merupakan pangkat dua dari turunannya dan suku $xy$ yang merupakan hasil perkalian dengan $y$ pada persamaan sisi kanan.'),
(54, 1, 1, 8, 1, 1, 1, '1', 0, '<b>Penyelesaian Persamaan Diferensial Biasa</b>'),
(55, 1, 1, 8, 1, 1, 1, '1', 0, 'Penyelesaian dari sebuah persamaan diferensial (dalam variabel $x$ dan $y$) adalah hubungan antara $x$ dan $y$ dalam bentuk fungsi eksplisit $y=f(x)$ yang mana jika disubtitusikan ke dalam persamaan diferensial memberikan sebuah identitas atau akan menghasilkan sisi kanan dan kiri yang sama.'),
(56, 1, 1, 8, 1, 1, 1, '1', 0, '<u>Contoh 2</u>'),
(57, 1, 1, 8, 1, 1, 1, '1', 0, 'Persamaan ini'),
(58, 1, 1, 8, 1, 3, 1, '1', 13, '\\begin{aligned}\ny=\\sin x+C \\qquad\n\\end{aligned}'),
(59, 1, 1, 8, 1, 1, 1, '1', 0, 'adalah solusi dari persamaan diferensial'),
(60, 1, 1, 8, 1, 3, 1, '1', 14, '\\begin{aligned}\ny^{\\prime}=\\cos x \\qquad\n\\end{aligned}'),
(61, 1, 1, 8, 1, 1, 1, '1', 0, 'karena jika kita menyubtitusikan persamaan $(13)$ ke dalam persamaan $(14)$, kita akan mendapatkan hasil identitas $\\cos x = \\cos x$.'),
(62, 1, 1, 8, 1, 4, 1, '1', 0, '\\begin{aligned}\ny^{\\prime}&=\\frac{d}{d x}(y) \\\\\ny^{\\prime}&=\\frac{d}{d x}(\\sin x+c) \\\\\ny^{\\prime}&=\\cos x \\\\\n\\cos x&=\\cos x\n\\end{aligned}'),
(63, 1, 1, 8, 1, 1, 1, '1', 0, '<u>Contoh 3</u>'),
(64, 1, 1, 8, 1, 1, 1, '1', 0, 'Persamaan'),
(65, 1, 1, 8, 1, 3, 1, '1', 15, '\\begin{aligned}\nx^2 + y^2 – 25 = 0 \\qquad\n\\end{aligned}'),
(66, 1, 1, 8, 1, 4, 1, '1', 0, '\\begin{aligned}\r\ny^{2}&=25-x^{2} \\\\\r\ny&=\\pm \\sqrt{25-x^{2}}\r\n\\end{aligned}'),
(67, 1, 1, 8, 1, 1, 1, '1', 0, 'adalah sebuah penyelesaian implisit dari persamaan diferensial'),
(68, 1, 1, 8, 1, 3, 1, '1', 16, '\\begin{aligned}\nx+y \\frac{d y}{d x}=0  \\qquad\n\\end{aligned}'),
(69, 1, 1, 8, 1, 1, 1, '1', 0, 'pada interval $I$ yang didefinisikan dengan ${-5}<{x}<{5}$. Untuk persamaan $(15)$ mendefinisikan dua fungsi riil $f_{1}$ dan $f_{2}$, yaitu '),
(70, 1, 1, 8, 1, 4, 1, '1', 0, '\\begin{aligned}\nf_{1}(x)&=\\sqrt{25-x^2}\\\\\nf_{2}(x)&=-\\sqrt{25-x^2}\n\\end{aligned}'),
(71, 1, 1, 8, 1, 1, 1, '1', 0, 'secara berturut-turut, untuk semua nilai riil $x\\isin I$ dan kedua fungsi ini adalah penyelesaian eksplisit dari persamaan diferensial $(16)$.'),
(72, 1, 1, 8, 1, 1, 1, '1', 0, 'Mari kita tinjau untuk kasus $f_{1}$.'),
(73, 1, 1, 8, 1, 4, 1, '1', 0, '\\begin{aligned}\nf_{1}(x)=\\sqrt{25-x^2}\\\\\n\\end{aligned}'),
(74, 1, 1, 8, 1, 1, 1, '1', 0, 'Menggunakan metode subtitusi turunan, kita misalkan $u$'),
(75, 1, 1, 8, 1, 4, 1, '1', 0, '\\begin{aligned}\nu=25-x^{2}\n\\end{aligned}'),
(76, 1, 1, 8, 1, 4, 1, '1', 0, '\\begin{aligned}\n\\frac{d u}{d x}&=\\frac{d}{d u}\\left(25-x^{2}\\right) \\\\\n\\frac{d u}{d x}&=-2 x \\\\\nd x&=-\\frac{1}{2 x} d u \\\\\n\\frac{1}{d x}&=\\frac{-2 x}{d u}\n\\end{aligned}'),
(77, 1, 1, 8, 1, 1, 1, '1', 0, 'Kita subtitusikan $\\frac{1}{dx}$ ke dalam proses penurunan $f_{1}$.'),
(78, 1, 1, 8, 1, 4, 1, '1', 0, '\\begin{aligned}\n\\frac{d}{d x} f_{1} &=\\frac{d}{d x} \\sqrt{25-x^{2}} \\\\\nf_{1}^{\\prime} &=\\frac{d}{d u} \\sqrt{u} \\cdot(-2 x) \\\\\nf_{1}^{\\prime} &=-2 x\\left(\\frac{d}{d u}(u)^{\\frac{1}{2}}\\right) \\\\\nf_{1}^{\\prime} &=-2 x \\cdot \\frac{1}{2}(u)^{\\frac{1}{2}-1} \\\\\nf_{1}^{\\prime} &=-2 x \\cdot \\frac{1}{2}\\left(25-x^{2}\\right)^{-\\frac{1}{2}} \\\\\nf_{1}^{\\prime} &=-2 x \\frac{1}{2 \\sqrt{25-x^{2}}} \\\\\nf_{1}^{\\prime} &=\\frac{-x}{\\sqrt{25-x^{2}}}\n\\end{aligned}'),
(79, 1, 1, 8, 1, 1, 1, '1', 0, 'untuk semua nilai riil $x\\isin I$. Dengan mensubtitusikan $f_{1}$ untuk $y$ dan $ f_{1}^{\\prime}$ untuk $\\frac{dy}{d x}$ pada persamaan $(16)$, kita mendapatkan identitas (hasil ruas kanan dan kiri sama)'),
(80, 1, 1, 8, 1, 4, 1, '1', 0, '\\begin{aligned}\nx+y \\frac{d y}{d x}&=0 \\\\\nx+\\sqrt{25-x^{2}}\\left(\\frac{-x}{\\sqrt{25-x^{2}}}\\right) &=0 \\\\\nx-x &=0\\\\\nx&=x\n\\end{aligned}'),
(81, 1, 1, 8, 1, 1, 1, '1', 0, 'yang mana berlaku untuk semua nilai riil $x\\isin I$. Sehingga $f_{1}$ adalah penyelesaian eksplisit dari persamaan $(16)$ pada interval $I$.'),
(82, 1, 1, 9, 1, 1, 1, '1', 0, '<b>Penyelesaian Umum Persamaan Diferensial Biasa</b>'),
(83, 1, 1, 9, 1, 1, 1, '1', 0, 'Jika kita mengintegrasi $y^{\\prime}=f(x)$,  maka hasil integrasi, $y$, memiliki satu konstata integrasi sembarang.'),
(84, 1, 1, 9, 1, 4, 1, '1', 0, '\\begin{aligned}\ny^{\\prime} &=f(x) \\\\\n\\int y^{\\prime} &=\\int f(x) d x \\\\\ny &=\\int f(x) d x+C\n\\end{aligned}'),
(85, 1, 1, 9, 1, 1, 1, '1', 0, 'Jika kita mengintegrasi $y^{\\prime \\prime}=g(x)$ dua kali untuk medapatkan $y(x)$, maka $y$ memiliki dua konstanta bebas integrasi.'),
(86, 1, 1, 9, 1, 4, 1, '1', 0, '\\begin{aligned}\ny^{\\prime \\prime} &=g(x) \\\\\n\\int y^{\\prime \\prime} &=\\int g(x) d x \\\\\ny^{\\prime} &=\\int g(x) d x+C_{1} \\\\\n\\int y^{\\prime} &=\\int\\left(\\int g(x) d x+C_{1}\\right) d x\\\\\ny&=\\int\\left(\\int g(x) d x+C_{1}\\right) d x+C_{2}\\\\\ny&=\\iint g(x) d x d x+C_{1} x+C_{2} \n\\end{aligned}'),
(87, 1, 1, 9, 1, 1, 1, '1', 0, 'Penyelesaian umum dari persamaan diferensial linier apapun orde ke-$n$ adalah penyelesaian yang mengandung $n$ konstanta bebas sembarang.'),
(88, 1, 1, 9, 1, 1, 1, '1', 0, 'Hal ini mungkin tidak berlaku untuk persamaan-persamaan non linier.'),
(89, 1, 1, 9, 1, 1, 1, '1', 0, '<u>Contoh 4</u>'),
(90, 1, 1, 9, 1, 1, 1, '1', 0, 'Persamaan $y^{\\prime \\prime}=y$ memiliki penyelesaian $y=e^{x}$ atau $y=e^{-x}$ atau $y=A e^{x}+B e^{-x}$ yang dapat kamu buktikan melalui subtitusi.'),
(91, 1, 1, 9, 1, 1, 1, '1', 0, 'Untuk membuktikannya, kita cukup membuktikan bahwa  $y=A e^{x}+B e^{-x}$ adalah penyelesaian umum dari $y^{\\prime \\prime}=y$ karena sudah mencakup $y=e^{x}$ dan $y=e^{-x}$.'),
(92, 1, 1, 9, 1, 4, 1, '1', 0, '\\begin{aligned}\ny &=A e^{x}+B e^{-x} \\\\\ny^{\\prime} &=A\\left(\\frac{d}{d x}\\left(e^{x}\\right)\\right)+B\\left(\\frac{d}{d x}\\left(e^{-x}\\right)\\right) \\\\\ny^{\\prime} &=A e^{x}+\\left(-B e^{-x}\\right) \\\\\ny^{\\prime} &=A e^{x}-B e^{-x} \\\\\ny^{\\prime \\prime} &=A\\left(\\frac{d}{d x}\\left(e^{x}\\right)\\right)-B\\left(\\frac{d}{d}\\left(e^{-x}\\right)\\right) \\\\\ny^{\\prime \\prime} &=A e^{x}-\\left(-B e^{-x}\\right) \\\\\ny^{\\prime \\prime} &=A e^{x}+B e^{-x} \\\\\ny^{\\prime \\prime} &=y\n\\end{aligned}'),
(93, 1, 1, 9, 1, 1, 1, '1', 0, 'Terbukti $y=e^{x}$ atau $y=e^{-x}$ atau $y=$ $A e^{x}+B e^{-x}$ adalah solusi dari persamaan $y^{\\prime \\prime}=y$.'),
(94, 1, 1, 9, 1, 1, 1, '1', 0, 'Catatan :</br>Berdasarkan contoh-contoh di atas, penyelesaian umum $y^{\\prime}$ memiliki satu konstanta bebas ($C$) sedangkan penyelesaian umum $y^{\\prime \\prime}$, memiliki dua konstanta bebas ($C_1$ dan $C_2$, serta $A$ dan $B$). Namun, hal ini mungkin bisa tidak berlaku untuk persamaan diferensial biasa non linier.'),
(95, 1, 1, 12, 1, 1, 1, '1', 0, '<b>Penyelesaian Khusus Persamaan Diferensial Biasa</b>'),
(96, 1, 1, 12, 1, 1, 1, '1', 0, 'Pada penerapannya, kita biasanya menginginkan penyelesaian khusus, yaitu penyelesaian yang memenuhi persamaan diferensial dan juga beberapa persyaratan lainnya. Berikut ini adalah beberapa contoh.'),
(97, 1, 1, 12, 1, 1, 1, '1', 0, '<u>Contoh 5</u>'),
(98, 1, 1, 12, 1, 1, 1, '1', 0, 'Tentukan jarak sebuah benda yang jatuh bebas dalam waktu $t$ detik jika semula benda dalam keadaaan diam.'),
(99, 1, 1, 12, 1, 1, 1, '1', 0, 'Jika $x$ adalah jarak jatuh benda dalam waktu $t$. Lalu, percepatan benda adalah $g$, percepatan gravitasi, maka kita memperoleh'),
(100, 1, 1, 12, 1, 3, 1, '1', 17, '\\begin{aligned}\na=\\frac{d^{2} x}{d t^{2}}=g. \\qquad\n\\end{aligned}'),
(101, 1, 1, 12, 1, 1, 1, '1', 0, 'Integrasikan persamaan $(17)$'),
(103, 1, 1, 12, 1, 4, 1, '1', 0, '\\begin{aligned}\n\\int \\frac{d^{2} x}{d t^{2}} &=\\int g d t \\\\\n\\frac{d x}{d t} &=g t+C_{1} \\\\\n\\frac{d x}{d t} &=g t+v_{0}\n\\end{aligned}'),
(104, 1, 1, 12, 1, 3, 1, '1', 18, '\\begin{aligned}\n\\frac{d x}{d t}=g t+C_{1}=g t+v_{0}. \\qquad\n\\end{aligned}'),
(105, 1, 1, 12, 1, 1, 1, '1', 0, 'dimana $C_{1}$ adalah konstanta integrasi pada pengintegralan pertama. Konstanta ini merupakan kecepatan awal benda $v_{0}$ pada saat $t = 0$.'),
(106, 1, 1, 12, 1, 1, 1, '1', 0, 'Mengintegrasikan persamaan $(18)$'),
(107, 1, 1, 12, 1, 4, 1, '1', 0, '\\begin{aligned}\n\\int \\frac{d x}{d t} &=\\int\\left(g t+C_{1}\\right) d t \\\\\nx &=\\int\\left(g t d t+C_{1} d t\\right)\\\\\nx&=\\frac{1}{2} g t^{2}+C_{1} t+C_{2} \\\\\nx&=\\frac{1}{2} g t^{2}+v_{0} t+x_{0}\n\\end{aligned}'),
(108, 1, 1, 12, 1, 3, 1, '1', 19, '\\begin{aligned}\nx=\\frac{1}{2} g t^{2}+v_{0} t+x_{0} \\qquad\n\\end{aligned}'),
(109, 1, 1, 12, 1, 1, 1, '1', 0, 'dimana $C_{2}$ adalah konstanta integrasi pada pengintegralan kedua. Konstanta ini adalah posisi awal benda $x_{0}$ pada saat $t = 0$.'),
(110, 1, 1, 12, 1, 1, 1, '1', 0, 'Persamaan $(19)$ adalah penyelesaian umum dari persamaan $(17)$ (karena ini merupakan penyelesaian dari sebuah persamaan diferensial biasa linier yang mengandung dua konstanta bebas sembarang).</br></br>Kita menginginkan penyelesaian khusus persamaan tersebut saat $v_{0} = 0$ karena benda berawal dari keadaan diam dan $x_{0} = 0$ karena jarak awal benda adalah nol saat $t = 0$. Sehingga'),
(111, 1, 1, 12, 1, 4, 1, '1', 0, '\\begin{aligned}\nx&=\\frac{1}{2} g t^{2}+v_{0} t+x_{0}\\\\\nx&=\\frac{1}{2} g t^{2}+0 t+0\\\\\nx&=\\frac{1}{2} g t^2\n\\end{aligned}'),
(112, 1, 1, 12, 1, 3, 1, '1', 20, '\\begin{aligned}\nx&=\\frac{1}{2} g t^2 \\qquad\n\\end{aligned}'),
(113, 1, 1, 12, 1, 1, 1, '1', 0, '<u>Contoh 6</u>'),
(114, 1, 1, 12, 1, 1, 1, '1', 0, 'Tentukan penyelesaian umum dari $y^{\\prime\\prime}=y$ yang melewati titik asal dan melewati titik $(\\ln 2, \\frac 3 4)$.'),
(115, 1, 1, 12, 1, 1, 1, '1', 0, 'Solusi umum untuk persamaan diferensialnya adalah'),
(116, 1, 1, 12, 1, 1, 1, '1', 0, ' $$y=A e^{x}+B e^{-x}$$'),
(117, 1, 1, 12, 1, 1, 1, '1', 0, 'Melewati titik asal $(0, 0)$'),
(118, 1, 1, 12, 1, 4, 1, '1', 0, '\\begin{aligned}\ny&=A e^{x}+B e^{-x}\\\\\n0&=A e^{0}+B e^{-0}\\\\\n0&=A+B\\\\\nA&=-B\n\\end{aligned}'),
(119, 1, 1, 12, 1, 3, 1, '1', 21, '\\begin{aligned}\nA=-B \\qquad\n\\end{aligned}'),
(120, 1, 1, 12, 1, 1, 1, '1', 0, 'Melewati titik $(\\ln 2, \\frac 3 4)$'),
(121, 1, 1, 12, 1, 4, 1, '1', 0, '\\begin{aligned}\ny&=A e^{x}+B e^{-x}\\\\\n\\frac 3 4&=A e^{\\ln 2}+B e^{-\\ln 2}\\\\\n\\frac 3 4&=A(2)+B(\\frac 1 2)\\\\\n\\frac 3 4&=2A+\\frac 1 2 B\n\\end{aligned}'),
(122, 1, 1, 12, 1, 3, 1, '1', 22, '\\begin{aligned}\n\\frac 3 4&=2A+\\frac 1 2 B \\qquad\n\\end{aligned}'),
(123, 1, 1, 12, 1, 1, 1, '1', 0, 'Subtitusi persamaan $(21)$ ke persamaan $(22)$'),
(124, 1, 1, 12, 1, 4, 1, '1', 0, '\\begin{aligned}\n\\frac{3}{4} &=2 A+\\frac{1}{2} B \\\\\n\\frac{3}{4} &=2 A+\\frac{1}{2}(-A) \\\\\n\\frac{3}{4} &=2 A-\\frac{1}{2} A \\\\\n\\frac{3}{4} &=\\frac{3}{2} A \\\\\nA &=\\frac{3.2}{4.3} \\\\\nA &=\\frac{1}{2}\n\\end{aligned}'),
(125, 1, 1, 12, 1, 1, 1, '1', 0, 'Sehingga kita mendapatkan'),
(126, 1, 1, 12, 1, 4, 1, '1', 0, '\\begin{aligned}\nA =-B=\\frac{1}{2}\n\\end{aligned}'),
(127, 1, 1, 12, 1, 1, 1, '1', 0, 'dan solusi khusus yang diinginkan adalah'),
(128, 1, 1, 12, 1, 4, 1, '1', 0, '\\begin{aligned}\ny&=A e^{x}+B e^{-x} \\\\\ny&=\\left(\\frac{1}{2}\\right) e^{x}+\\left(-\\frac{1}{2}\\right) e^{-x} \\\\\ny&=\\frac{1}{2} e^{x}-\\frac{1}{2} e^{-x} \\\\\ny&=\\frac{1}{2}\\left(e^{x}-e^{-x}\\right) \\\\\ny&=\\sinh x \\\\\n\\end{aligned}'),
(129, 1, 1, 12, 1, 1, 1, '1', 0, 'Kondisi yang harus dipenuhi oleh solusi khusus disebut kondisi batas, atau saat kondisi $t=0$ disebut kondisi awal.'),
(130, 1, 1, 12, 1, 1, 1, '1', 0, 'Untuk persamaan linier, penyelesaian khusus yang diinginkan dapat ditemukan dari penyelesaian umum, yaitu dengan cara menentukan nilai konstanta-konstantanya seperti pada Contoh 5 dan Contoh 6.'),
(131, 1, 1, 15, 1, 1, 1, '1', 0, '<b>Slope Field (Medan Garis Miring)</b>'),
(132, 1, 1, 15, 1, 1, 1, '1', 0, 'Kemampuan grafik komputer sangat berguna dalam mempelajari persamaan diferensial. Sebuah persamaan diferensial orde pertama, $y^\\prime=f(x,y)$, memiliki persamaan penyelesaian $y=y(x)$. Slope field adalah kumpulan garis-garis pendek gradien $y^{\\prime}$ pada tiap titik $(x, y)$ yang dapat memberikan gambaran umum kurva persamaan penyelesaian tanpa kita harus mencarinya terlebih dahulu.'),
(133, 1, 1, 15, 1, 1, 1, '1', 0, 'Cara membuat slope field adalah dengan menggambar sebuah garis pendek (atau vektor) $y^{\\prime}$ yang terpusat pada tiap titik $(x, y)$. Hal ini merupakan tugas yang berat untuk dikerjakan secara manual apabila titiknya sangat banyak, namun merupakan tugas yang mudah bagi komputer. Slope field (medan gradien) juga disebut direction field (medan arah), atau vector field (vektor medan).'),
(134, 1, 1, 15, 1, 1, 1, '1', 0, 'Di bawah ini adalah video penjelasan lengkap mengenai slop field dan cara membuat slope field secara manual. '),
(135, 1, 1, 15, 1, 2, 1, '1', 0, 'https://www.youtube.com/embed/Wr9VOum9Co0'),
(136, 1, 1, 15, 1, 1, 1, '1', 0, 'Kamu juga dapat mencoba membuat slope field sendiri menggunakan  <a style=\"color: #60a5fa;\" href=\"https://c3d.libretexts.org/DirectionField/index.html\" target=\"_blank\">Direction Field Explorer app</a>.'),
(137, 1, 1, 15, 1, 1, 1, '1', 0, '<u>Contoh 7</u>'),
(138, 1, 1, 15, 1, 1, 1, '1', 2, '<img src=\"https://physicsyourself.com/assets/img/archives/contoh-soal-6.jpg\" style=\"margin-left: auto; margin-right: auto;\"><b>Gambar 2.</b> Slope field untuk persamaan diferensial $y^\\prime=\\cos x$'),
(139, 1, 1, 15, 1, 1, 1, '1', 0, 'Pada Gambar 2, kita sudah memplot slope field untuk persamaan diferensial $y^\\prime=\\cos x$ dengan bantuan <a href=\"https://c3d.libretexts.org/DirectionField/index.html\" target=\"_blank\" class=\"tautan\">Direction Field Explorer app</a>. Kita dapat memperkirakan kurva penyelesainnya dengan cara mengikuti aliran anak panah.'),
(140, 1, 1, 15, 1, 1, 1, '1', 3, '<img src=\"https://physicsyourself.com/assets/img/archives/slope-field-app.png\" style=\"margin-left: auto; margin-right: auto;\"><b>Gambar 3.</b> Grafik penyelesaian yang melewati titik $(0, 0)$.'),
(141, 1, 1, 15, 1, 1, 1, '1', 0, 'Kita juga dapat mengetahui kurva penyelesaian pada titik tertentu dengan cara klik pada titik yang diinginkan atau memasukkan titiknya secara langsung dengan cara mengklik tombol Enter points lalu masukkan titik yang dinginkan, misal pada Gambar 3 di atas yang diinginkan adalah kurva penyelesaian yang melewati titik $(0, 0)$, kemudian tekan  Plot curves. Kita juga dapat memplot kurva lebih dari 1 dengan mengklik Allow multiple flowlines terlebih dahulu kemudian mengklik langsung pada titiknya atau dengan cara memasukkan titik-titiknya dipisahkan oleh spasi, misal $(0,0) (0, 1)$ seperti pada Gambar 4 di bawah ini.'),
(142, 1, 1, 15, 1, 1, 1, '1', 4, '<img src=\"https://physicsyourself.com/assets/img/archives/titik-0-0-dan-0-1.png\" style=\"margin-left: auto; margin-right: auto;\"><b>Gambar 4.</b> Memplot dua kurva penyelesaian menggunakan  <a style=\"color: #60a5fa;\" href=\"https://c3d.libretexts.org/DirectionField/index.html\" target=\"_blank\">Direction Field Explorer app</a>.'),
(143, 1, 2, 1, 1, 1, 1, '1', 0, '<b>Separable Equation</b>'),
(144, 1, 2, 1, 1, 1, 1, '1', 0, 'Setiap kali kamu melakukan operasi integral'),
(145, 1, 2, 1, 1, 3, 1, '1', 23, '\\begin{aligned}\ny=\\int f(x)dx \\qquad\n\\end{aligned}'),
(146, 1, 2, 1, 1, 1, 1, '1', 0, 'kamu sedang mencoba menyelesaikan persamaan '),
(147, 1, 2, 1, 1, 4, 1, '1', 0, '\\begin{aligned}\n&y=\\int f(x) d x \\\\\n&y=\\int y^{\\prime} \\\\\n&y=\\int \\frac{d y}{d x}\n\\end{aligned}'),
(148, 1, 2, 1, 1, 3, 1, '1', 24, '\\begin{aligned}\ny^\\prime=\\frac{d y}{d x}=f(x) \\qquad\n\\end{aligned}'),
(149, 1, 2, 1, 1, 1, 1, '1', 0, 'Persamaan $(25)$ adalah contoh persaman sederhana yang dapat ditulis dengan suku $y$ saja pada satu ruas dan suku $x$ saja pada ruas yang lain.'),
(150, 1, 2, 1, 1, 3, 1, '1', 25, '\\begin{aligned}\ndy=f(x)dx \\qquad\n\\end{aligned}'),
(151, 1, 2, 1, 1, 1, 1, '1', 0, 'Kapanpun kita dapat memisahkan variabel seperti ini, disebut separable equation (persamaan yang dapat dipisah).'),
(152, 1, 2, 1, 1, 1, 1, '1', 0, '<u>Contoh 8</u>'),
(153, 1, 2, 1, 1, 1, 1, '1', 0, 'Laju perubahan sebuah senyawa radiokatif meluruh sebanding dengan jumlah atom yang tersisa. Jika ada $N_{0}$ atom pada saat $t=0$,  tentukan jumlahnya pada waktu $t$.'),
(154, 1, 2, 1, 1, 1, 1, '1', 0, 'Persamaan diferensial untuk permasalahan ini adalah'),
(155, 1, 2, 1, 1, 4, 1, '1', 26, '\\begin{aligned}\n\\frac{d N}{d t} \\sim N \\\\\n\\frac{d N}{d t}=\\lambda N\n\\end{aligned}'),
(156, 1, 2, 1, 1, 3, 1, '1', 26, '\\begin{aligned}\n\\frac {dN} {dt} =- \\lambda N \\qquad\n\\end{aligned}'),
(157, 1, 2, 1, 1, 1, 1, '1', 0, 'Konstanta kesebandingan $\\lambda$ disebut konstanta peluruhan.'),
(158, 1, 2, 1, 1, 1, 1, '1', 0, 'Persamaan tersebut merupakan separable equation. Kita  dapat menuliskannya kembali menjadi'),
(159, 1, 2, 1, 1, 4, 1, '1', 0, '\\begin{aligned}\n\\frac {dN} {N} =- \\lambda dt.\n\\end{aligned}'),
(160, 1, 2, 1, 1, 1, 1, '1', 0, 'Lalu menginterasi kedua ruas, kita mendapatkan'),
(161, 1, 2, 1, 1, 4, 1, '1', 0, '\\begin{aligned}\n&\\int \\frac {dN} {N} =- \\int \\lambda dt\\\\ \n&\\ln N =- \\lambda t + \\text{const.}\n\\end{aligned}'),
(162, 1, 2, 1, 1, 1, 1, '1', 0, 'Diketahui pada saat $t=0$, $N=N_{0}$, kita dapatkan nilai konstantanya'),
(163, 1, 2, 1, 1, 4, 1, '1', 0, '\\begin{aligned}\n&\\ln N_{0} = - \\lambda (0) + \\text{const.}\\\\\n&\\text{const.} = \\ln N_{0}\n\\end{aligned}'),
(164, 1, 2, 1, 1, 1, 1, '1', 0, 'Kita lanjutkan persamaan untuk $N$, kita dapatkan'),
(165, 1, 2, 1, 1, 4, 1, '1', 0, '\\begin{aligned}\n\\ln N &=-\\lambda t+\\text { const. } \\\\\n\\ln N &=-\\lambda t+\\ln N_{0} \\\\\n\\ln N &=\\ln e^{-\\lambda t}+\\ln N_{0} \\\\\n\\ln N &=\\ln \\left(e^{-\\lambda t} \\cdot N_{0}\\right) \\\\\nN &=N_{0} e^{-\\lambda t}\n\\end{aligned}'),
(166, 1, 2, 1, 1, 3, 1, '1', 27, '\\begin{aligned}\nN = N_{0}e^{- \\lambda t} \\qquad\n\\end{aligned}'),
(167, 1, 2, 1, 1, 1, 1, '1', 0, '<u>Contoh 9</u>'),
(168, 1, 2, 1, 1, 1, 1, '1', 0, 'Selesaikan persamaan diferensial'),
(169, 1, 2, 1, 1, 3, 1, '1', 28, '\\begin{aligned}\nxy^\\prime=y+1 \\qquad\n\\end{aligned}'),
(170, 1, 2, 1, 1, 1, 1, '1', 0, 'untuk memisahkan variabel-variabelnya, kita membagi kedua ruas persamaan $(28)$ dengan $x(y+1)$ menjadi'),
(171, 1, 2, 1, 1, 4, 1, '1', 0, '\\begin{aligned}\nxy^\\prime&=y+1 \\\\\n\\frac {xy^\\prime} {x(y+1)} &= \\frac { y+1} {x(y+1)} \\\\\n\\frac {y^\\prime} {y+1} &= \\frac {1} {x}\\\\\n\\frac {dy}{dx} \\frac {1} {y+1} &= \\frac {1} {x}\\\\\n\\frac { dy } {y+1} &= \\frac {1} {x} dx\n\\end{aligned}'),
(172, 1, 2, 1, 1, 3, 1, '1', 29, '\\begin{aligned}\n\\quad \\frac { dy } {y+1} = \\frac {1} {x} dx \\qquad\n\\end{aligned}'),
(173, 1, 2, 1, 1, 1, 1, '1', 0, 'Mengintegrasikan kedua ruas pada persamaan $(29)$, kita mendapatkan'),
(174, 1, 2, 1, 1, 4, 1, '1', 0, '\\begin{aligned}\n\\int \\frac { dy } {y+1} &= \\int \\frac {1} {x} dx\\\\\n\\ln {(y+1)} &= \\ln {x} + \\text{const.}\\\\\n\\ln {(y+1)} &= \\ln {x} + \\ln {a}\\\\\n\\ln {(y+1)} &= \\ln {ax}\n\\end{aligned}'),
(175, 1, 2, 1, 1, 3, 1, '1', 30, '\\begin{aligned}\n\\ln {(y+1)} &= \\ln {ax} \\qquad\n\\end{aligned}'),
(176, 1, 2, 1, 1, 1, 1, '1', 0, 'Kita menggunakan konstanta integrasi $\\ln a$ untuk menyederhanakan langkah pengerjaan.'),
(177, 1, 2, 1, 1, 1, 1, '1', 0, 'Persamaan $(30)$ memberikan penyelesaian untuk persamaan $(28)$, yaitu'),
(178, 1, 2, 1, 1, 3, 1, '1', 31, '\\begin{aligned}\ny+1 = ax \\qquad\n\\end{aligned}'),
(179, 1, 2, 1, 1, 1, 1, '1', 0, 'Penyelesaian umum ini memberikan gambaran sebuah kelompok kurva pada bidang $(x, y)$, satu kurva untuk tiap nilai konstanta $a$. Atau kita dapat menyebut persamaan $(31)$ sebagai sebuah keluarga kurva penyelesaian dari persamaan diferensial $(28)$. Menentukan penyelesaian khusus berarti memilih satu kurva tertentu dari keluarga kurva tersebut.'),
(180, 1, 2, 4, 1, 1, 1, '1', 0, '<b>Orthogonal Trajectories</b>'),
(181, 1, 2, 4, 1, 1, 1, '1', 0, 'Orthogonal trajectory (trayektori ortogonal) adalah kurva yang memotong setiap anggota dari sebuah keluarga kurva secara tegak lurus.'),
(182, 1, 2, 4, 1, 1, 1, '1', 0, 'Persamaan $(31)$ adalah persamaan penyelesaian umum dari persamaan diferensial $(28)$.'),
(183, 1, 2, 4, 1, 3, 1, '1', 31, '\\begin{aligned}\ny+1 = ax \\qquad\n\\end{aligned}'),
(184, 1, 2, 4, 1, 3, 1, '1', 28, '\\begin{aligned}\nxy^\\prime=y+1 \\qquad\n\\end{aligned}'),
(185, 1, 2, 4, 2, 1, 1, '1/2', 5, '<img src=\"https://physicsyourself.com/assets/img/archives/sumbu-dan-titik.png\" style=\"margin-left: auto; margin-right: auto;\"><b>Gambar 5.</b> Titik $(0, -1)$ terletak pada bidang $XY$.'),
(186, 1, 2, 4, 2, 1, 2, '1/2', 0, 'Misal kita memilih titik $(0, -1)$ yang berarti $y=-1$ ketika $x=0$  untuk persamaan $(31)$.'),
(187, 1, 2, 4, 2, 1, 1, '1/2', 6, '<img src=\"https://physicsyourself.com/assets/img/archives/keluarga-kurva-lurus.png\" style=\"margin-left: auto; margin-right: auto;\"><b>Gambar 6.</b> Keluarga kurva lurus persamaan $(31)$.'),
(188, 1, 2, 4, 2, 1, 2, '1/2', 0, 'Gambar 6 adalah kurva-kurva lurus persamaan $(31)$ yang melewati titik $(0, -1)$ dengan variasi nilai $a$. Kurva-kurva ini disebut keluarga kurva lurus.'),
(189, 1, 2, 4, 2, 1, 1, '1/2', 7, '<img src=\"https://physicsyourself.com/assets/img/archives/lurus-lingkaran-tegaklurus.png\" style=\"margin-left: auto; margin-right: auto;\"><b>Gambar 7.</b> Kelurga kurva lurus dan keluarga kurva yang menjadi orthogonal trajectory-nya.'),
(190, 1, 2, 4, 2, 1, 2, '1/2', 0, 'Orthogonal trajectory adalah kurva lingkaran pada Gambar 7. Kurva lingkaran memotong kurva lurus secara tegak lurus. Kurva-kurva lingkaran ini juga disebut keluarga kurva lingkaran. Sehingga keluarga kurva lingkaran adalah orthogonal trajectories dari keluarga kurva lurus.'),
(191, 1, 2, 4, 1, 1, 1, '1', 0, 'Garis-garis lurus ini dapat merepresentasikan, sebagai contoh, garis-garis gaya listrik dari muatan listrik yang terletak pada titik $(0, -1)$. Sedangkan, garis-garis lingkarannya merupakan kurva potensial elektrostatik yang konstan (yang disebut kurva-kurva ekuipotensial).'),
(192, 1, 2, 4, 1, 1, 1, '1', 0, 'Kita sering diminta untuk mencari orthogonal trajectories dari suatu keluarga kurva yang sudah diketahui. Mari kita coba untuk mencari orthogonal trajectories persamaan $(31)$, namun dengan cara matematis. Dengan begitu, berarti kita sudah mengetahui terlebih dahulu bahwa jawabannya adalah keluarga kurva lingkaran pada Gambar 7.'),
(193, 1, 2, 4, 1, 1, 1, '1', 0, 'Pertama, kita cari gradien dari kurva persamaan $(31)$, yaitu'),
(194, 1, 2, 4, 1, 3, 1, '1', 32, '\\begin{aligned}\ny^\\prime = a \\qquad\n\\end{aligned}'),
(195, 1, 2, 4, 1, 1, 1, '1', 0, 'Karena nilai $a$ berbeda untuk tiap kurva lurus, maka kita memerlukan persamaan gradien dalam fungsi $x$ dan $y$ agar dapat mengetahui gradien pada titik manapun. Kembali ke persamaan $(28)$, kita mendapatkan'),
(196, 1, 2, 4, 1, 3, 1, '1', 33, '\\begin{aligned}\ny^{\\prime}=\\frac{y+1}{x}=m_{1} \\qquad\n\\end{aligned}'),
(197, 1, 2, 4, 1, 1, 1, '1', 0, 'Sekarang, kita ingat kembali geometri analitik yang menjelaskan bahwa kedua kurva yang saling berpotongan tegak lurus, memiliki hasil kali gradien sama dengan $-1$. Kurva orthogonal trajectory dari kurva penyelesaian memiliki gradien'),
(198, 1, 2, 4, 1, 4, 1, '1', 0, '\\begin{aligned}\nm_{1} \\times m_{2} &=-1 \\\\\n\\frac{y+1}{x} \\times m_{2} &=-1 \\\\\nm_{2} &=-\\frac{x}{y+1}\\\\\ny^\\prime&=-\\frac{x}{y+1}\n\\end{aligned}'),
(199, 1, 2, 4, 1, 3, 1, '1', 34, '\\begin{aligned}\ny^\\prime=-\\frac{x}{y+1} \\qquad\n\\end{aligned}'),
(200, 1, 2, 4, 1, 1, 1, '1', 0, 'dimana $m_{1}$ adalah gradien untuk kurva pertama atau kurva lurus dan $m_{2}$ adalah gradien untuk kurva orthogonal trajectory atau kurva lingkaran. Hasilnya adalah persamaan $(34)$.'),
(201, 1, 2, 4, 1, 1, 1, '1', 0, 'Persamaan $(34)$ adalah persamaan diferensial. Kita tentukan penyelesaian umum dari persamaan tersebut untuk menemukan persamaan orthogonal trajectory. Kita mendapatkan'),
(202, 1, 2, 4, 1, 4, 1, '1', 0, '\\begin{aligned}\ny^{\\prime}&=\\frac{-x}{y+1} \\\\\n\\frac{d y}{d x}&=\\frac{-x}{y+1} \\\\\n(y+1) d y&=-x d x \\\\\n\\int(y+1) d y&=\\int -x d x \\\\\n\\frac{1}{2} y^{2}+y&=-\\frac{1}{2} x^{2}+C \\\\\n\\frac{1}{2} y^{2}+y+\\frac{1}{2} x^{2}&=C \\\\\ny^{2}+2 y+x^{2}&=2 C \\\\\nx^{2}+y^{2}+2 y&=2 C \\\\\nx^{2}+(y+1)^{2}&=2 C+1\n\\end{aligned}'),
(203, 1, 2, 4, 1, 3, 1, '1', 35, '\\begin{aligned}\nx^{2}+(y+1)^{2}&=2 C+1 \\qquad\n\\end{aligned}'),
(204, 1, 2, 4, 1, 1, 1, '1', 0, 'Persamaan $(35)$ adalah persamaan lingkaran yang berpusat pada titik $(0, -1)$, dengan $C$ adalah konstanta sembarang. $C$ pada persamaan ini membuat kurva lingkaran memiliki jari-jari yang bervariasi seperti pada Gambar 7. Sekumpulan kurva lingkaran ini disebut keluarga kurva lingkaran.'),
(205, 1, 2, 4, 1, 1, 1, '1', 0, 'Berikut ini adalah tautan untuk mempelajari kembali mengenai <a style=\"color: #60a5fa;\" href=\"https://www.zenius.net/blog/rumus-persamaan-lingkaran\" target=\"_blank\">Persamaan Lingkaran</a>.'),
(206, 1, 2, 4, 1, 1, 1, '1', 0, 'Kamu juga dapat mencoba membuat grafik secara langsung menggunakan  <a style=\"color: #60a5fa;\" href=\"https://www.desmos.com/calculator\" target=\"_blank\">Kalkulator Grafik Desmos</a>.'),
(207, 1, 2, 7, 1, 1, 1, '1', 0, '<b>Nonlinear Differential Equations</b>'),
(208, 1, 2, 7, 1, 1, 1, '1', 0, 'Kita sudah belajar bahwa persamaan diferensial biasa linier orde ke-$n$ selalu memiliki penyelesaian umum yang mengandung $n$ konstanta bebas. Penyelesaian khusus didapat dengan menentukan nilai masing-masing konstanta tersebut. Namun, pernyataan itu bisa tidak berlaku untuk beberapa persamaan non linier dengan metode penyelesaian biasa (termasuk dengan bantuan komputer) karena dapat memberikan sebagian solusi yang salah atau tidak lengkap. Hal ini berada di luar jangkauan kita untuk mendiskusikannya secara mendetail (silahkan baca buku persamaan diferensial), namun berikut adalah beberapa contoh.</br></br>'),
(209, 1, 2, 7, 1, 1, 1, '1', 0, '<u>Contoh 10</u>'),
(210, 1, 2, 7, 1, 1, 1, '1', 0, 'Selesaikan persamaan diferensial $y^\\prime = \\sqrt{1-y^2}$, plot slope field dan kurva penyelesaiannya menggunakan bantuan komputer, serta tentukan penyelesaian khusus yang memenuhi'),
(211, 1, 2, 7, 1, 1, 1, '1', 0, '(a) $y = 0$, saat $x = 0$</br>\n(b) $y = 1$, saat $x = 0$'),
(212, 1, 2, 7, 1, 1, 1, '1', 0, 'Langkah pertama, kita lakukan pemisahan variabel dan pengintegrasian untuk mendapatkan penyelesaian umum.'),
(213, 1, 2, 7, 1, 4, 1, '1', 0, '\\begin{aligned}\ny^{\\prime}&=\\sqrt{1-y^{2}} \\\\\n\\frac{d y}{d x}&=\\sqrt{1-y^{2}} \\\\\n\\frac{d y}{\\sqrt{1-y^{2}}}&=d x \\\\\n\\int \\frac{d y}{\\sqrt{1-y^{2}}}&=\\int d x \\\\\n\\arcsin y&=x+\\alpha \\\\\ny&=\\sin (x+\\alpha)\n\\end{aligned}'),
(214, 1, 2, 7, 1, 1, 1, '1', 0, '$y = \\sin (x+\\alpha)$ adalah penyelesaian umum dari persamaan diferensial $y^\\prime = \\sqrt{1-y^2}$.'),
(215, 1, 2, 7, 1, 1, 1, '1', 0, 'Hasil pengitegralan didapat dari tabel berikut.'),
(216, 1, 2, 7, 1, 1, 1, '1', 0, '<img src=\"https://physicsyourself.com/assets/img/archives/tabel-integral-1.png\" style=\"margin-left: auto; margin-right: auto;\">'),
(217, 1, 2, 7, 1, 1, 1, '1', 8, '<img src=\"https://physicsyourself.com/assets/img/archives/tabel-integral-2.png\" style=\"margin-left: auto; margin-right: auto;\"><b>Gambar 8.</b> Tabel integral tak tentu.'),
(218, 1, 2, 7, 1, 1, 1, '1', 0, 'Berikut ini adalah metode penyelesaian integral tak tentu pada soal. Perhatikan bahwa dalam menerapkan metode ini terdapat syarat, yaitu $1-y^2 > 0$ yang berarti tidak boleh ada pembagian dengan $0$.'),
(219, 1, 2, 7, 1, 1, 1, '1', 9, '<img src=\"https://physicsyourself.com/assets/img/archives/integral-soal.png\" style=\"margin-left: auto; margin-right: auto;\"><b>Gambar 9.</b> Metode penyelesaian integral tak tentu dan syaratnya.</br></br>'),
(220, 1, 2, 7, 1, 1, 1, '1', 0, 'Langkah kedua, kita subtitusikan nilai $x$ dan $y$ ke penyelesaian umum untuk mendapatkan nilai konstantanya ($\\alpha$).'),
(221, 1, 2, 7, 1, 1, 1, '1', 0, '(a) $y = 0$, saat $x = 0$'),
(222, 1, 2, 7, 1, 4, 1, '1', 0, '\\begin{aligned}\ny&=\\sin (x+\\alpha) \\\\\n0&=\\sin (0+\\alpha) \\\\\n\\sin \\alpha&=0 \\\\\n\\alpha&=\\arcsin 0 \\\\\n\\alpha&=0, \\pi, 2 \\pi\n\\end{aligned}'),
(223, 1, 2, 7, 1, 1, 1, '1', 0, 'Penyelesaian khusus dari persaman diferensial $y^\\prime = \\sqrt{1-y^2}$ didapat dengan mensubtitusikan nilai $\\alpha$.'),
(224, 1, 2, 7, 1, 4, 1, '1', 0, '\\begin{aligned}\ny&=\\sin (x+0)=\\sin x \\\\\ny&=\\sin (x+\\pi) = -\\sin x \\\\\ny&=\\sin (x+2 \\pi)=\\sin x\n\\end{aligned}'),
(225, 1, 2, 7, 1, 1, 1, '1', 0, 'Langkah ketiga, masukkan persamaan $\\frac{d y} {d x}$ ke <a style=\"color: #60a5fa;\" href=\"https://c3d.libretexts.org/DirectionField/index.html\" target=\"_blank\">Direction Field Explorer app</a> lalu tekan Enter untuk melihat gambaran umum kurva penyelesaian pada slope field. Jangan lupa mengatur nilai minimum dan maksimum sumbu $x$, nilai minimum dan maksimum sumbu $y$, serta $x$-tick dan $y$-tick atau jarak antar titik pada sumbu.'),
(226, 1, 2, 7, 1, 1, 1, '1', 10, '<img src=\"https://physicsyourself.com/assets/img/archives/slope-field-sin-x.png\" style=\"margin-left: auto; margin-right: auto;\"><b>Gambar 10.</b> Tampilan pengaturan awal slope field.'),
(227, 1, 2, 7, 1, 1, 1, '1', 0, 'Pada Gambar 10, semua anak panah warna biru mengarah ke kanan atas. Anak panah merupakan garis gradien pada tiap titik. Aliran arah anak panah menunjukkan gambaran umum kurva penyelesaian. Pada Gambar 10 terlihat bahwa kurva penyelesaian untuk persamaan diferensial $y^{\\prime}=\\sqrt{1-y^2}$ merupakan kurva non negatif karena semua anak panah mengarah ke kanan atas, dengan kata lain kurva yang menurun tidak ikut terseleksi.'),
(228, 1, 2, 7, 1, 1, 1, '1', 0, 'Langkah keempat, plot semua kurva penyelesaian khusus.  Terdapat dua penyelesaian khusus setelah proses subtitusi nilai $\\alpha$, yaitu $y= \\sin x$ dan $y= \\sin (x + \\pi) = - \\sin x$, namun hanya $y = \\sin x$ saja yang berlaku di sekitar $x = 0$ karena $y^\\prime$ non negatif (semua anak panah mengarah ke kanan atas). Berikut ini adalah kurva untuk $y= \\sin x$ dan $y= - \\sin x$ agar kita dapat membandingkannya.'),
(229, 1, 2, 7, 1, 1, 1, '1', 11, '<img src=\"https://physicsyourself.com/assets/img/archives/kurva-sin-x.png\" style=\"margin-left: auto; margin-right: auto;\"><b>Gambar 11.</b> Kurva persamaan $y=\\sin x$.'),
(230, 1, 2, 7, 1, 1, 1, '1', 12, '<img src=\"https://physicsyourself.com/assets/img/archives/kurva-min-sin-x.png\" style=\"margin-left: auto; margin-right: auto;\"><b>Gambar 12.</b> Kurva persamaan $y=- \\sin x$.'),
(231, 1, 2, 7, 1, 1, 1, '1', 0, 'Pada Gambar 11, kurva  $y=\\sin x$ searah dengan anak-anak panah pada titik $(0, 0)$, namun masih memiliki bagian kurva yang tidak searah dengan anak-anak panah. Bagian kurva tersebut berada pada domain $[-\\pi, - \\frac {1} {2} \\pi]$  dan domain $[\\pi, \\frac {1} {2} \\pi]$. Kedua bagian kurva tersebut bukan merupakan kurva penyelesaian untuk persamaan diferensial $y^{\\prime}=\\sqrt{1-y^2}$.'),
(232, 1, 2, 7, 1, 1, 1, '1', 0, 'Sedangkan, pada Gambar 12, kurva $y=- \\sin x$ tidak searah dengan anak-anak panah pada titik $(0, 0)$, sehingga $y=- \\sin x$ bukan merupakan penyelesaian khusus dari persamaan diferensial $y^{\\prime}=\\sqrt{1-y^2}$ pada titik $(0, 0)$.'),
(233, 1, 2, 7, 1, 1, 1, '1', 0, 'Langkah kelima, seleksi kurva penyelesaian dari penyelesaian khusus atau pada <a style=\"color: #60a5fa;\" href=\"https://c3d.libretexts.org/DirectionField/index.html\" target=\"_blank\">Direction Field Explorer app</a> dengan cara klik Enter points, kemudian masukkan titik $(0, 0)$ lalu klik Plot curves. Gambar 14 adalah kurva penyelesaian (a).'),
(234, 1, 2, 7, 1, 1, 1, '1', 13, '<img src=\"https://physicsyourself.com/assets/img/archives/slope-field-contoh-8.png\" style=\"margin-left: auto; margin-right: auto;\"><b>Gambar 13.</b> Tampilan <a style=\"color: #60a5fa;\" href=\"https://c3d.libretexts.org/DirectionField/index.html\" target=\"_blank\">Direction Field Explorer app</a> untuk slope field (a).'),
(235, 1, 2, 7, 1, 1, 1, '1', 14, '<img src=\"https://physicsyourself.com/assets/img/archives/slope-field-contoh-8-zoom.png\" style=\"margin-left: auto; margin-right: auto;\"><b>Gambar 14.</b> Slope field untuk (a).'),
(236, 1, 2, 7, 1, 1, 1, '1', 0, 'Pada Gambar 14, sejajar dengan titik $y=1$ dan $y=-1$, terdapat kurva $y\\equiv 1$ dan $y\\equiv -1$ yang juga merupakan kurva penyelesaian untuk persamaan diferensial $y=\\sqrt{1-y^2}$. Namun, kedua kurva ini tidak bisa didapat dari persamaan penyelesaian  $y=\\sin(x+\\alpha)$ dengan pilihan $\\alpha$ apapun. Penyelesaian yang tidak bisa didapat dengan menentukan nilai konstanta dari penyelesaian umum disebut penyelesaian singuler.'),
(237, 1, 2, 7, 1, 1, 1, '1', 0, 'Hal ini dapat dibuktikan dengan cara mengambil satu titik $(x, y)$ yang dilewati oleh kurva $y \\equiv 1$ atau $y \\equiv -1$, kemudian memasukkan nilai $x$ dan $y$ tersebut ke dalam pernyelesaian umum untuk mendapat nilai $\\alpha$. Kita akan dapat melihat bahwa kurva penyelesaian khusus yang didapat bukan kurva $y \\equiv 1$ atau $y \\equiv -1$. Berikut ini adalah pembuktiannya.'),
(238, 1, 2, 7, 1, 4, 1, '1', 0, '\\begin{aligned}\ny &=\\sin (x+\\alpha) \\\\\n1&=\\sin \\left(\\frac{\\pi}{2}+\\alpha\\right) \\\\\n\\frac{\\pi}{2}+\\alpha &=\\arcsin 1 \\\\\n\\frac{\\pi}{2}+\\alpha &=\\frac{\\pi}{2} \\\\\n\\alpha &=\\frac{\\pi}{2}-\\frac{\\pi}{2} \\\\\n\\alpha &=0\n\\end{aligned}'),
(239, 1, 2, 7, 1, 4, 1, '1', 0, '\\begin{aligned}\ny &=\\sin (x+\\alpha) \\\\\ny&=\\sin (x+0) \\\\\ny&=\\sin x\n\\end{aligned}'),
(240, 1, 2, 7, 1, 4, 1, '1', 0, '\\begin{aligned}\ny &=\\sin (x+\\alpha) \\\\\n1&=\\sin (0+\\alpha) \\\\\n1&=\\sin \\alpha \\\\\n\\alpha&=\\arcsin 1 \\\\\n\\alpha&=\\frac{\\pi}{2}\n\\end{aligned}'),
(241, 1, 2, 7, 1, 4, 1, '1', 0, '\\begin{aligned}\ny &=\\sin (x+\\alpha) \\\\\ny&=\\sin (x+\\frac{\\pi}{2})\n\\end{aligned}'),
(242, 1, 2, 7, 1, 1, 1, '1', 0, 'Pada persamaan di atas, kita memilih titik $(\\frac {\\pi} {2}, 1)$ dan titik $(0, 1)$ yang dilewati oleh kurva $y \\equiv 1$. Kedua pembuktian itu menghasilkan kurva sinus dan akan tetap menghasilkan kurva sinus dengan memasukkan nilai $\\alpha$ apapun. Hal ini membuktikan bahwa kita tidak bisa mendapatkan penyelesaian khusus berupa $y \\equiv 1$ atau $y \\equiv -1$ dengan menentukan nilai konstanta apapun. Inilah yang disebut sebagai penyelesaian singuler.'),
(243, 1, 2, 7, 1, 1, 1, '1', 15, '<img src=\"https://physicsyourself.com/assets/img/archives/kurva-titik-piper2-1.png\" style=\"margin-left: auto; margin-right: auto;\"><b>Gambar 15.</b> Kurva penyelesaian $y \\equiv 1$ dan $y = \\sin x$ yang sama-sama melewati titik $(\\frac {\\pi} {2}, 1)$ adalah dua kurva yang berbeda.'),
(244, 1, 2, 7, 1, 1, 1, '1', 16, '<img src=\"https://physicsyourself.com/assets/img/archives/kurva-nol-satu.png\" style=\"margin-left: auto; margin-right: auto;\"><b>Gambar 16.</b> Kurva penyelesaian $y \\equiv 1$ dan $y = \\sin (x + \\frac {\\pi} {2})$ yang sama-sama melewati titik $(0, 1)$ adalah dua kurva yang berbeda.'),
(245, 1, 2, 7, 1, 1, 1, '1', 0, 'Gambar 15 menunjukkan kurva $y \\equiv 1$ dan $y = \\sin x$ adalah dua kurva yang berbeda. Gambar 16 menunjukkan bahwa kurva $y \\equiv 1$ dan  $y = \\sin (x + \\frac {\\pi} {2})$ adalah dua kurva yang berbeda. Hal ini semakin memperkuat keberadaan penyelesaian singuler.'),
(246, 1, 2, 7, 1, 1, 1, '1', 0, 'Mari kita ingat kembali proses pemisahan variabel untuk mendapatkan penyelesaian umum. Terdapat langkah <i>membagi kedua ruas dengan $\\sqrt{1-y^2}$ </i> yang tidak berlaku apabila $y^2 = 1$ atau saat $y = 1$ atau $y=-1$. Hal inilah yang membuat kita tidak bisa menemukan semua penyelesaian khusus untuk persamaan diferensial $y^{\\prime}=\\sqrt{1-y^2}$.'),
(247, 1, 2, 7, 1, 1, 1, '1', 0, 'Penyelesaian singuler biasanya berada pada nilai $y$ minimum dan atau maksimum suatu kurva penyelesaian. Tidak semua persamaan diferensial memiliki penyelesaian singuler. Kita perlu membuat slope field dari persamaan diferensial tersebut terlebih dahulu untuk mendapatkan penyelesaian singuler yang tepat,'),
(248, 1, 2, 7, 1, 1, 1, '1', 0, 'Pada Gambar 14, $y = \\sin x$ adalah penyelesaian khusus yang berlaku dari $x = - \\pi / 2$ sampai $x = \\pi / 2$ (pada gambar $\\pi = 3,14$). Kita dapat membuat sebuah penyelesaian yang kontinyu dari $- \\infin $ sampai $\\infin$ dengan menentukan '),
(249, 1, 2, 7, 1, 4, 1, '1', 0, '\\begin{aligned}\ny&=-1 \\text {, untuk } -\\infty < x \\leq - \\frac {\\pi} {2} = (- \\infin, - \\frac {\\pi} {2}] \\\\\ny&=\\sin x \\text {, untuk }- \\frac {\\pi} {2} \\leq x \\leq \\frac {\\pi} {2} = [ - \\frac {\\pi} {2}, \\frac {\\pi} {2}] \\\\\ny&=1 \\text {, untuk } \\frac {\\pi} {2} \\leq x < \\infin = [\\frac {\\pi} {2}, \\infty)\n\\end{aligned}'),
(250, 1, 2, 7, 1, 1, 1, '1', 0, 'Sehingga untuk kasus (a) [penyelesaian yang melewati titik asal $(0, 0)$] kita menemukan hanya <i>satu</i> penyelesaian khusus, yaitu $y = \\sin x$.'),
(251, 1, 2, 7, 1, 1, 1, '1', 17, '<img src=\"https://physicsyourself.com/assets/img/archives/slope-field-contoh-8-a-kontinyu.png\" style=\"margin-left: auto; margin-right: auto;\"><b>Gambar 17.</b> Tampilan <a style=\"color: #60a5fa;\" href=\"https://c3d.libretexts.org/DirectionField/index.html\" target=\"_blank\">Direction Field Explorer app</a> untuk kurva penyelesaian yang kontinyu (a).'),
(252, 1, 2, 7, 1, 1, 1, '1', 18, '<img src=\"https://physicsyourself.com/assets/img/archives/slope-field-contoh-8-a-kontinyu-zoom.png\" style=\"margin-left: auto; margin-right: auto;\"><b>Gambar 18.</b> Kurva penyelesaian yang kontinyu (a).'),
(253, 1, 2, 7, 1, 1, 1, '1', 0, '(b) $y = 1$, saat $x = 0$'),
(254, 1, 2, 7, 1, 4, 1, '1', 0, '\\begin{aligned}\ny&=\\sin (x+\\alpha) \\\\\n1&=\\sin (0+\\alpha) \\\\\n\\sin \\alpha&=1 \\\\\n\\alpha&=\\arcsin 1 \\\\\n\\alpha&=\\frac{\\pi}{2}\n\\end{aligned}'),
(255, 1, 2, 7, 1, 1, 1, '1', 0, 'Penyelesaian khusus dari persaman diferensial $y^\\prime = \\sqrt{1-y^2}$ didapat dengan mensubtitusikan nilai $\\alpha$.'),
(256, 1, 2, 7, 1, 4, 1, '1', 0, '\\begin{aligned}\ny=\\sin (x+\\frac {\\pi} {2})=\\cos x\n\\end{aligned}'),
(257, 1, 2, 7, 1, 1, 1, '1', 0, 'Berikut ini adalah pengaturan awal <a style=\"color: #60a5fa;\" href=\"https://c3d.libretexts.org/DirectionField/index.html\" target=\"_blank\">Direction Field Explorer app</a> untuk slope field dan kurva penyelesaian khusus $y=\\cos x$ yang didapat dengan subtitusi nilai $\\alpha$.'),
(258, 1, 2, 7, 1, 1, 1, '1', 19, '<img src=\"https://physicsyourself.com/assets/img/archives/slope-field-contoh-8-b.png\" style=\"margin-left: auto; margin-right: auto;\"><b>Gambar 19.</b> Pengaturan awal, slope field, dan kurva penyelesaian (b).'),
(259, 1, 2, 7, 1, 1, 1, '1', 20, '<img src=\"https://physicsyourself.com/assets/img/archives/slope-field-contoh-8-b-zoom.png\" style=\"margin-left: auto; margin-right: auto;\"><b>Gambar 20.</b> Slope field dan kurva penyelesaian (b).'),
(260, 1, 2, 7, 1, 1, 1, '1', 21, '<img src=\"https://physicsyourself.com/assets/img/archives/slope-field-contoh-8-b-2.png\" style=\"margin-left: auto; margin-right: auto;\"><b>Gambar 21.</b> Tampilan <a style=\"color: #60a5fa;\" href=\"https://c3d.libretexts.org/DirectionField/index.html\" target=\"_blank\">Direction Field Explorer app</a> untuk slope field dan kurva penyelesaian (b) dengan pemilihan domain (sumbu x) $- \\pi$ sampai $0$.'),
(261, 1, 2, 7, 1, 1, 1, '1', 22, '<img src=\"https://physicsyourself.com/assets/img/archives/slope-field-contoh-8-b-2-zoom.png\" style=\"margin-left: auto; margin-right: auto;\"><b>Gambar 22.</b> Slope field dan kurva penyelesaian (b) pada domain $[- \\pi, 0]$.'),
(262, 1, 2, 7, 1, 1, 1, '1', 0, 'Pada Gambar 20, kurva penyelesain $y=\\cos x$ berada pada domain $[-\\pi, \\pi]$. Pada domain itu masih terdapat kurva yang tidak searah anak-anak panah, yaitu pada domain $(0, \\pi]$. Kita lakukan  penyeleksian kurva penyelesaian yang non negatif sehingga penyelesaian khusus $y=\\cos x$ untuk domain $[-\\pi, 0]$.'),
(263, 1, 2, 7, 1, 1, 1, '1', 0, 'Sama seperti (a), (b) juga memiliki penyelesaian singuler $y \\equiv 1$ dan $y \\equiv -1$. Kita dapat membuat sebuah penyelesian yang kontinyu dari $- \\infin $ sampai $\\infin$ dengan menentukan '),
(264, 1, 2, 7, 1, 4, 1, '1', 0, '\\begin{aligned}\ny&=-1 \\text {, untuk domain }  (- \\infin, - \\pi] \\\\\ny&=\\sin x \\text {, untuk domain } [ - \\pi, 0] \\\\\ny&=1 \\text {, untuk domain }  [0, \\infty)\n\\end{aligned}'),
(265, 1, 2, 7, 1, 1, 1, '1', 0, 'Sehingga untuk kasus (b) [penyelesaian yang melewati titik $(0, 1)$], kita menemukan hanya satu penyelesaian khusus, yaitu $y=\\cos x$.'),
(266, 1, 2, 7, 1, 1, 1, '1', 23, '<img src=\"https://physicsyourself.com/assets/img/archives/slope-field-contoh-8-b-kontinyu.png\" style=\"margin-left: auto; margin-right: auto;\"><b>Gambar 23.</b> Tampilan untuk kurva penyelesaian yang kontinyu (b).'),
(267, 1, 2, 7, 1, 1, 1, '1', 24, '<img src=\"https://physicsyourself.com/assets/img/archives/slope-field-contoh-8-b-kontinyu-zoom.png\" style=\"margin-left: auto; margin-right: auto;\"><b>Gambar 24.</b> Kurva penyelesaian yang kontinyu (b).'),
(268, 1, 2, 7, 1, 1, 1, '1', 0, 'Namun, masih terdapat penyelesaian khusus lain yang tak terhingga jumlahnya yang melewati titik $(0, 1)$ yang bisa didapat dengan memindahkan satu penyelesaian ini ke arah kiri dengan jarak tertentu (Gambar 25).'),
(269, 1, 2, 7, 1, 1, 1, '1', 25, '<img src=\"https://physicsyourself.com/assets/img/archives/contoh-soal-8.png\" style=\"margin-left: auto; margin-right: auto;\"><b>Gambar 25.</b> Satu kurva penyelesaian (a) dan dua kurva penyelesaian (b).');

-- --------------------------------------------------------

--
-- Struktur dari tabel `5_kunci_jawaban`
--

CREATE TABLE `5_kunci_jawaban` (
  `id` int(5) NOT NULL,
  `materi` int(11) NOT NULL,
  `sub_materi` int(11) NOT NULL,
  `card` int(11) NOT NULL,
  `kategori` int(1) NOT NULL,
  `isi` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `5_kunci_jawaban`
--

INSERT INTO `5_kunci_jawaban` (`id`, `materi`, `sub_materi`, `card`, `kategori`, `isi`) VALUES
(1, 1, 1, 6, 1, 'Nomor 1'),
(2, 1, 1, 6, 3, '\\begin{aligned}\n1.) \\quad \\frac{\\partial\\left(8 x^{4}\\right)}{\\partial x}+\\frac{\\partial\\left(y^{4}\\right)}{\\partial x}-\\frac{\\partial\\left(2 x y^{2}\\right)}{\\partial x}=0\n\\end{aligned}'),
(3, 1, 1, 6, 2, 'Persamaan diferensial parsial karena memiliki dua variabel terikat $x$ dan $y$ dan satu variabel bebas, yaitu $x$.'),
(4, 1, 1, 6, 1, 'Nomor 2'),
(5, 1, 1, 6, 3, '\\begin{aligned}\n2.) \\quad \\frac{d^{2} x}{d t^{2}}=A \\sin \\omega t\n\\end{aligned}'),
(6, 1, 1, 6, 2, 'Persamaan diferensial biasa karena memiliki satu variabel terikat $x$ dan satu variabel bebas $t$.'),
(7, 1, 1, 6, 1, 'Nomor 3'),
(8, 1, 1, 6, 3, '\\begin{aligned}\n3.) \\quad \\frac{d^{3} y}{d x^{3}}+4 \\frac{d^{2} y}{d x^{2}}-5 \\frac{d y}{d x}+3 y=\\sin x\n\\end{aligned}'),
(9, 1, 1, 6, 2, 'Persamaan diferensial biasa karena memiliki satu variabel terikat $y$ dan satu variabel bebas $x$.'),
(10, 1, 1, 6, 1, 'Nomor 4'),
(11, 1, 1, 6, 3, '\\begin{aligned}\n4.) \\quad \\frac{\\partial^{3} u}{\\partial x^{3}}+\\frac{\\partial^{2} u}{d y^{2}}=0\n\\end{aligned}'),
(12, 1, 1, 6, 2, 'Persamaan diferensial parsial karena memiliki satu variabel terikat $u$ dan dua variabel bebas, yaitu $x$ dan $y$.'),
(13, 1, 1, 7, 1, 'Nomor 1'),
(14, 1, 1, 7, 3, '\\begin{aligned}\n1.) \\quad \\frac{d^{2} y}{d x^{2}}+4 \\frac{d y}{d x}+7 y=0\n\\end{aligned}'),
(15, 1, 1, 7, 2, 'Persamaan diferensial biasa linier orde kedua. Linier karena memenuhi persyaratan kelinieran. Orde kedua karena turunan tertinggi pada persamaan adalah turunan kedua.'),
(16, 1, 1, 7, 1, 'Nomor 2'),
(17, 1, 1, 7, 3, '\\begin{aligned}\n2.) \\quad y^{(5)}+2 y^{\\prime \\prime \\prime}+y^{\\prime}=0\n\\end{aligned}'),
(18, 1, 1, 7, 2, 'Persamaan diferensial biasa linier orde kelima. Linier karena memenuhi persyaratan kelinieran. Orde kelima karena turunan tertinggi pada persamaan adalah turunan kelima.'),
(19, 1, 1, 7, 1, 'Nomor 3'),
(20, 1, 1, 7, 3, '\\begin{aligned}\n3.) \\quad \\frac{d^{2} y}{d x^{2}}+5 \\frac{d y}{d x}+6 y^{2}=0\n\\end{aligned}'),
(21, 1, 1, 7, 2, 'Persamaan diferensial biasa non linier orde kedua. Non linier karena terdapat suku yang mengandung $y^2$. Orde kedua karena turunan tertinggi adalah turunan kedua.'),
(22, 1, 1, 7, 1, 'Nomor 4'),
(23, 1, 1, 7, 3, '\\begin{aligned}\n4.) \\quad \\frac{d^{2} y}{d x^{2}}+5\\left(\\frac{d y}{d x}\\right)^{3}+6 y=0\n\\end{aligned}'),
(24, 1, 1, 7, 2, 'Persamaan diferensial biasa non linier orde kedua. Non linier karena terdapat suku yang mengandung $(\\frac{d y}{d x})^{3}$. Orde kedua karena turunan tertinggi adalah turunan kedua.'),
(25, 1, 1, 7, 1, 'Nomor 5'),
(26, 1, 1, 7, 3, '\\begin{aligned}\n5.) \\quad y^{(4)}-2 y^{\\prime \\prime}=0\n\\end{aligned}'),
(27, 1, 1, 7, 2, 'Persamaan diferensial biasa linier orde keempat. Linier karena memenuhi persyaratan kelinieran. Orde keempat karena turunan tertinggi pada persamaan adalah turunan keempat.'),
(28, 1, 1, 10, 2, 'Untuk membuktikan bahwa $y = \\cosh x$ dan $y = \\sinh x$ adalah penyelesaian dari persamaan diferensial $y^{\\prime \\prime} =y$, cukup dengan menunjukkan bahwa $y =A \\cosh x+B \\sinh x$ adalah penyelesaian dari persamaan diferensial tersebut.'),
(29, 1, 1, 10, 1, 'Langkah 1'),
(30, 1, 1, 10, 2, 'Turunkan persamaan $y =A \\cosh x+B \\sinh x$'),
(31, 1, 1, 10, 3, '\\begin{aligned}\n\\frac{d y}{d x} &=\\frac{d}{d x}(A \\cosh x+B \\sinh x) \\\\\ny^\\prime&=\\frac{d}{d x}(A \\cosh x)+\\frac{d}{d x}(B \\sinh x) \\\\\ny^\\prime&=A \\frac{d}{d x}(\\cosh x)+B \\frac{d}{d x}(\\sinh x) \\\\\ny^\\prime&=A \\sinh x+B \\cosh x\n\\end{aligned}'),
(32, 1, 1, 10, 1, 'Langkah 2'),
(33, 1, 1, 10, 2, 'Turunkan kembali persamaan $\\frac{d y}{d x} =A \\sinh x+B \\cosh x$'),
(34, 1, 1, 10, 3, '\\begin{aligned}\n\\frac{d}{d x}\\left(y^{\\prime}\\right) &=\\frac{d}{d x}(A \\sinh x+B \\cosh x) \\\\\ny^{\\prime\\prime}&=\\frac{d}{d x}(A \\sinh x)+\\frac{d}{d x}(B \\cosh x) \\\\\ny^{\\prime\\prime}&=A \\frac{d}{d x}(\\sinh x)+B \\frac{d}{d x}(\\cosh x) \\\\\ny^{\\prime\\prime}&=A \\cosh x+B \\sinh x\\\\\ny^{\\prime\\prime}&=y\n\\end{aligned}'),
(35, 1, 1, 10, 2, 'Sehingga $y = \\cosh x$ dan $y = \\sinh x$ adalah penyelesaian dari persamaan diferensial $y^{\\prime \\prime} =y$.'),
(36, 1, 1, 11, 2, 'Untuk membuktikan bahwa $y=e^{-i e}$ dan $y=e^{i x}$ adalah penyelesaian dari persamaan diferensial $y^{\\prime \\prime} = -y$, cukup dengan menunjukkan bahwa $y=A e^{-ix}+B e^{ix}$  adalah penyelesaian dari persamaan diferensial tersebut.'),
(37, 1, 1, 11, 1, 'Langkah 1'),
(38, 1, 1, 11, 2, 'Turunkan persamaan $y=A e^{-ix}+B e^{ix}$'),
(39, 1, 1, 11, 3, '\\begin{aligned}\n\\frac{d y}{d x} &=\\frac{d}{d x}\\left(A e^{-i x}+B e^{i x}\\right) \\\\\ny^\\prime&=A \\frac{d}{d x}\\left(e^{-i x}\\right)+B \\frac{d}{d x}\\left(e^{i x}\\right) \\\\\ny^\\prime&=(-i) A e^{-i x}+i B e^{i x} \\\\\ny^\\prime&=-i A e^{-i x}+i B e^{i x}\n\\end{aligned}'),
(40, 1, 1, 11, 1, 'Langkah 2'),
(41, 1, 1, 11, 2, 'Turunkan kembali persamaan $\\frac{d y}{d x} =i A e^{-i x}+i B e^{i x}$'),
(42, 1, 1, 11, 3, '\\begin{aligned}\n\\frac{d^{2} y}{d x^{2}}&=\\frac{d}{d x}\\left(-i A e^{-i x}+i B e^{i x}\\right) \\\\\ny^{\\prime \\prime}&=-i A \\frac{d}{d x}\\left(e^{-i x}\\right)+i B \\frac{d}{d x}\\left(e^{\\alpha x}\\right) \\\\\ny^{\\prime \\prime}&=-i(-i) A e^{-i x}+i(i) B e^{i x} \\\\\ny^{\\prime \\prime}&=i^{2} A e^{-i x}+i^{2} B e^{i x} \\\\\ny^{\\prime \\prime}&=i^{2}\\left(A e^{-i x}+B e^{i x}\\right)\\\\\ny^{\\prime \\prime}&=(\\sqrt{-1})^{2}\\left(A e^{-i x}+B e^{i x}\\right) \\\\\ny^{\\prime \\prime}&=-1\\left(A e^{-i x}+B e^{i x}\\right) \\\\\ny^{\\prime \\prime}&=-y\n\\end{aligned}'),
(43, 1, 1, 11, 2, 'Sehingga  $y=e^{-i e}$ dan $y=e^{i x}$ adalah penyelesaian dari persamaan diferensial $y^{\\prime \\prime} = -y$.'),
(44, 1, 1, 13, 1, 'Langkah 1'),
(45, 1, 1, 13, 2, 'Penyelesaian umumnya adalah'),
(46, 1, 1, 13, 3, '\\begin{aligned}\ny&=A \\sinh x+B \\cosh x \\\\\n&=A\\left(\\frac{e^{x}-e^{-x}}{2}\\right)+B\\left(\\frac{e^{x}+e^{-x}}{2}\\right)\n\\end{aligned}'),
(49, 1, 1, 13, 1, 'Langkah 2'),
(50, 1, 1, 13, 2, 'Penyelesaian tersebut melewati titik asal atau titik $(0, 0)$.  Subtitusikan $(0,0)$ untuk $(x, y)$.'),
(51, 1, 1, 13, 3, '\\begin{aligned}\ny&=A\\left(\\frac{e^{x}-e^{-x}}{2}\\right)+B\\left(\\frac{e^{x}+e^{-x}}{2}\\right) \\\\\n0&=A\\left(\\frac{e^{0}-e^{-0}}{2}\\right)+B\\left(\\frac{e^{0}+e^{-0}}{2}\\right) \\\\\n0&=A\\left(\\frac{1-1}{2}\\right)+B\\left(\\frac{1+1}{2}\\right) \\\\\n0&=A(0)+B(1) \\\\\n0&=B \\\\\nB&=0\n\\end{aligned}'),
(52, 1, 1, 13, 2, 'Sehingga, nilai $B=0$.'),
(53, 1, 1, 13, 1, 'Langkah 3'),
(54, 1, 1, 13, 2, 'Penyelesaian tersebut juga melewati titik $\\left(\\ln 2, \\frac{3}{4}\\right)$.  Subtitusikan $\\left(\\ln 2, \\frac{3}{4}\\right)$ untuk $(x, y)$ dan $B=0$.'),
(55, 1, 1, 13, 3, '\\begin{aligned}\n&y=A\\left(\\frac{e^{x}-e^{-x}}{2}\\right)+B\\left(\\frac{e^{x}+e^{-x}}{2}\\right) \\\\\n&\\frac{3}{4}=A\\left(\\frac{e^{\\ln 2}-e^{-\\ln 2}}{2}\\right)+(0)\\left(\\frac{e^{\\ln 2}+e^{-\\ln 2}}{2}\\right) \\\\\n&\\frac{3}{4}= A\\left(\\frac{2-\\frac{1}{2}}{2}\\right) \\\\\n&\\frac{3}{4}=A\\left(\\frac{\\frac{3}{2}}{2}\\right) \\\\\n&\\frac{3}{4}=A\\left(\\frac{3}{4}\\right) \\\\\n&A=1\n\\end{aligned}'),
(56, 1, 1, 13, 2, 'Sehingga, nilai $A=1$.'),
(57, 1, 1, 13, 1, 'Langkah 4'),
(58, 1, 1, 13, 2, 'Untuk mendapatkan solusi khusus, subtitusikan $A=1$ dan $B=0$ ke dalam persamaan  $y=A \\sinh x+B \\cosh x $.'),
(59, 1, 1, 13, 3, '\\begin{aligned}\n&y=A \\sinh x+B \\cosh x \\\\\n&y=(1) \\sinh x+(0) \\cosh x \\\\\n&y=\\sinh x\n\\end{aligned}'),
(60, 1, 1, 13, 2, 'Sehingga solusi khusus dari $y^{\\prime\\prime}=y$ adalah $y=\\sinh x$.'),
(61, 1, 1, 14, 1, 'Langkah 1'),
(62, 1, 1, 14, 2, 'Taraf perubahan posisi benda merupakan kecepatan benda dan taraf perubahan kecepatan benda merupakan percepatan benda tersebut.'),
(63, 1, 1, 14, 3, '\\begin{aligned}\na=\\frac{d^{2} x}{d t^{2}}=g e^{-k t}\n\\end{aligned}'),
(64, 1, 1, 14, 2, 'Mengintegrasikan $a$, kita mendapatkan'),
(65, 1, 1, 14, 3, '\\begin{aligned}\nv=\\frac{d x}{d t} &=\\int g e^{-kt} d t \\\\\n&=g \\int e^{-kt} d t \\\\\n&=g\\left(\\frac{e^{-k t}}{-k}\\right)+A \\\\\n&=-\\frac{g}{k} e^{-k t}+A\n\\end{aligned}'),
(66, 1, 1, 14, 2, 'dengan $A$ adalah konstanta pengintegrasian sembarangan.'),
(67, 1, 1, 14, 1, 'Langkah 2'),
(68, 1, 1, 14, 2, 'Karena benda semula dalam keadaan diam, kecepatan dan jaraknya adalah nol saat $t=0$.'),
(69, 1, 1, 14, 3, '\\begin{aligned}\n\\frac{d x}{d t} &=0 \\\\\n\\int\\frac{d x}{d t} &=0 \\\\\nx(t) &=0 \n\\end{aligned}'),
(70, 1, 1, 14, 2, 'Gunakan keadaan awal $\\frac{d x}{d t}=0$ saat $t=0$ untuk mendapatkan konstanta A'),
(71, 1, 1, 14, 3, '\\begin{aligned}\n&\\frac{d x}{d t}=-\\frac{g}{k} e^{-kt}+A \\\\\n&0=-\\frac{g}{k} e^{-k(0)}+A \\\\\n&0=-\\frac{g}{k} (1)+A \\\\\n&A=\\frac{g}{k}\n\\end{aligned}'),
(72, 1, 1, 14, 2, 'Sehingga kita dapat menuliskan kembali persamaan kecepatannya menjadi'),
(73, 1, 1, 14, 3, '\\begin{aligned}\n&\\frac{d x}{d t}=-\\frac{g}{k} e^{-kt}+A \\\\\n&\\frac{d x}{d t}=-\\frac{g}{k} e^{-kt}+\\frac{g}{k}\n\\end{aligned}'),
(74, 1, 1, 14, 1, 'Langkah 3'),
(75, 1, 1, 14, 2, 'Untuk nilai $t$ yang besar, nilai $e^{-k t} \\rightarrow 0$'),
(76, 1, 1, 14, 3, '\\begin{aligned}\nt & \\rightarrow \\infty \\\\\ne^{-kt} & \\rightarrow 0\n\\end{aligned}'),
(77, 1, 1, 14, 2, 'Sehingga persamaannya adalah'),
(78, 1, 1, 14, 3, '\\begin{aligned}\n\\frac{d x}{d t} &=-\\frac{g}{k} e^{-k t}+\\frac{g}{k} \\\\\n&=-\\frac{g}{k}(0)+\\frac{g}{k} \\\\\n&=\\frac{g}{k} \\\\\n&=\\text { konstan }\n\\end{aligned}'),
(79, 1, 1, 14, 2, 'Jadi, untuk nilai $t$ yang sangat besar, $\\frac{d x}{d t}$ mendekati kosntan.'),
(80, 1, 1, 14, 1, 'Langkah 4'),
(81, 1, 1, 14, 2, 'Integrasikan $\\frac{d x}{d t}=-\\frac{g}{k} e^{-kt}+\\frac{g}{k}$ terhadap $t$ untuk mendapatkan persamaan $x$.'),
(82, 1, 1, 14, 3, '\\begin{aligned}\n\\int\\frac{d x}{d t} &=-\\frac{g}{k} \\int e^{-k t} d t+\\frac{g}{k} \\int d t \\\\\nx(t) &=-\\frac{g}{k} \\int e^{-k t} d t+\\frac{g}{k} \\int d t \\\\\n&=\\frac{g}{k^{2}} e^{-k t}+\\frac{g}{k} t+B\n\\end{aligned}'),
(83, 1, 1, 14, 2, 'dengan $B$ adalah konstanta pengintegrasian sembarangan.'),
(84, 1, 1, 14, 2, 'Gunakan kondisi awal $x(t)=0$ saat $t=0$ untuk mendapatkan nilai $B$.'),
(85, 1, 1, 14, 3, '\\begin{aligned}\n&x=\\frac{g}{k^{2}} e^{-k t}+\\frac{g}{k} t+B\\\\\n&0=\\frac{g}{k^{2}} e^{-k(0)}+\\frac{g}{k}(0)+B \\\\\n&B=-\\frac{g}{k^{2}}\n\\end{aligned}'),
(86, 1, 1, 14, 2, 'Jadi, jarak benda saat $t$ adalah '),
(87, 1, 1, 14, 3, '\\begin{aligned}\nx(t) &=\\frac{g}{k^{2}} e^{-k t}+\\frac{g}{k} t+B \\\\\n&=\\frac{g}{k^{2}} e^{-k t}+\\frac{g}{k} t-\\frac{g}{k^{2}}\n\\end{aligned}'),
(88, 1, 2, 2, 1, 'Langkah 1'),
(89, 1, 2, 2, 2, 'Pisahkan suku-suku persamaan yang mengandung variabel $y$ ke ruas kiri dan variabel $x$ ke ruas kanan.'),
(90, 1, 2, 2, 3, '\\begin{aligned}\ny^{\\prime}&=\\frac{2 x y^{2}+x}{x^{2} y-y} \\\\\n\\frac{d y}{d x}&=\\frac{2 x y^{2}+x}{x^{2} y-y} \\\\\n\\frac{d y}{d x}&=\\frac{x\\left(2 y^{2}+1\\right)}{y\\left(x^{2}-1\\right)} \\\\\n\\frac{y d y}{\\left(2 y^{2}+1\\right)}&=\\frac{x d x}{\\left(x^{2}-1\\right)}\n\\end{aligned}'),
(91, 1, 2, 2, 1, 'Langkah 2'),
(92, 1, 2, 2, 2, 'Subtitusi $2 y^{2}+1 = u$ dan $x^{2}-1=v$'),
(93, 1, 2, 2, 3, '\\begin{aligned}\n2 y^{2}+1&=u \\\\\n2.2 y d y+0&=d u \\\\\n4 y d y&=d u \\\\\ny d y&=\\frac{d u}{4}\n\\end{aligned}'),
(94, 1, 2, 2, 3, '\\begin{aligned}\nx^{2}-1&=v \\\\\n2 x d x-0&=d v \\\\\nx d x&=\\frac{d v}{2}\n\\end{aligned}'),
(95, 1, 2, 2, 2, 'Lakukan pemisahan variabel dan integrasikan'),
(96, 1, 2, 2, 3, '\\begin{aligned}\n\\int \\frac{y d y}{\\left(2 y^{2}+1\\right)}&=\\int \\frac{x}{\\left(x^{2}-1\\right)} d x \\\\\n\\frac{1}{4} \\int \\frac{d u}{u}&=\\frac{1}{2} \\int \\frac{d v}{v} \\\\\n\\frac{1}{4} \\ln u&=\\frac{1}{2} \\ln v+C \\\\\n\\frac{1}{4} \\ln \\left(2 y^{2}+1\\right)&=\\frac{1}{2} \\ln \\left(x^{2}-1\\right)+C \\\\\n\\frac{1}{2} \\ln \\left(2 y^{2}+1\\right)&=\\ln \\left(x^{2}-1\\right)+2 C \\\\\n\\frac{1}{2} \\ln \\left(2 y^{2}+1\\right)-\\ln \\left(x^{2}-1\\right)&=2 C \\\\\n\\ln \\left(\\frac{\\left(2 y^{2}+1\\right)^{1 / 2}}{x^{2}-1}\\right)&=2 C \\\\\n\\frac{\\left(2 y^{2}+1\\right)^{1 / 2}}{x^{2}-1}&=e^{2 c} \\\\\n\\sqrt{2 y^{2}+1}&=e^{2 C}\\left(x^{2}-1\\right) \\\\\n2 y^{2}+1&=e^{4 C}\\left(x^{2}-1\\right)^{2} \\\\\n2 y^{2}+1&=A\\left(x^{2}-1\\right)^{2}\n\\end{aligned}'),
(97, 1, 2, 2, 1, 'Langkah 3'),
(98, 1, 2, 2, 2, 'Subtitusi $y=0$ dan $x=\\sqrt 2$'),
(99, 1, 2, 2, 3, '\\begin{aligned}\n2 y^{2}+1 &=A\\left(x^{2}-1\\right) \\\\\n2(0)+1 &=A\\left((\\sqrt{2})^{2}-1\\right) \\\\\n1 &=A(2-1) \\\\\n1 &=A \\\\\nA &=1\n\\end{aligned}'),
(100, 1, 2, 2, 1, 'Langkah 4'),
(101, 1, 2, 2, 2, 'Subtitusi $A$ ke dalam persamaan'),
(102, 1, 2, 2, 3, '\\begin{aligned}\n&2 y^{2}+1=A\\left(x^{2}-1\\right)^{2} \\\\\n&2 y^{2}+1=\\left(x^{2}-1\\right)^{2}\n\\end{aligned}'),
(103, 1, 2, 2, 2, '$y^{\\prime}=\\frac{2 x y^{2}+x}{x^{2} y-y}$ memiliki penyelesaian khusus $2 y^{2}+1=\\left(x^{2}-1\\right)^{2}$.'),
(104, 1, 2, 3, 1, 'Langkah 1'),
(105, 1, 2, 3, 2, 'Kita harus menemukan temperatur $T$ pada suatu jarak $r$ dari garis axis silinder.'),
(106, 1, 2, 3, 1, 'Langkah 2'),
(107, 1, 2, 3, 2, 'Diketahui persamaan pelepasan panas'),
(108, 1, 2, 3, 3, '\\begin{aligned}\n\\frac{d Q}{d T}=k A \\frac{d T}{d r}\n\\end{aligned}'),
(109, 1, 2, 3, 2, 'Karena laju pelepasan panas adalah kosntan, maka $\\frac {dQ} {dT}$ juga konstan'),
(110, 1, 2, 3, 2, 'Misalkan $\\frac {dQ} {dT} = C$, '),
(111, 1, 2, 3, 2, 'maka'),
(112, 1, 2, 3, 3, '\\begin{aligned}\nC=k A \\frac{d T}{d r}\n\\end{aligned}'),
(113, 1, 2, 3, 2, 'Karena pipanya berbentuk silinder, maka luas permukaannya adalah $A=2 \\pi r l$, dimana $l$ adalah panjang pipa.'),
(114, 1, 2, 3, 2, 'Persamaannya menjadi'),
(115, 1, 2, 3, 3, '\\begin{aligned}\n&C=k(2 \\pi r l) \\frac{d T}{d r}\n\\end{aligned}'),
(116, 1, 2, 3, 2, 'Sehingga variabelnya dapat dipisahkan menjadi'),
(117, 1, 2, 3, 3, '\\begin{aligned}\nC \\frac{d r}{r}=k(2 \\pi l) d T\n\\end{aligned}'),
(118, 1, 2, 3, 1, 'Langkah 3'),
(119, 1, 2, 3, 2, 'Integrasikan kedua sisi'),
(120, 1, 2, 3, 3, '\\begin{aligned}\nC \\int \\frac{d r}{r}&=k(2 \\pi l) \\int d T \\\\\nC \\ln r&=k(2 \\pi l) T\n\\end{aligned}'),
(121, 1, 2, 3, 2, 'Dimana $C$ adalah konstanta sembarang.'),
(122, 1, 2, 3, 1, 'Langkah 4'),
(123, 1, 2, 3, 2, 'Diketahui $T=100$ saat $r=1$ dan $T=0$ saat $r=2$, maka persamaan menjadi'),
(124, 1, 2, 3, 2, '<img src=\"https://physicsyourself.com/assets/img/archives/silinder-1-2-3.png\" style=\"margin-left: auto; margin-right: auto;\"><b>Gambar 1.</b> Silinder dengan jari-jari luar $r=2$ dan jari-jari dalam $r=1$ dengan panjang $l$.'),
(125, 1, 2, 3, 3, '\\begin{aligned}\nC \\ln r&=k(2 \\pi l) T\\\\\nC(\\ln 2-\\ln 1)&=k(2 \\pi l)(0-100)\\\\\nC(\\ln 2-0)&=k(2 \\pi l)(-100)\\\\\nC&=-\\frac{k(2 \\pi l) 100}{(\\ln 2)}\n\\end{aligned}'),
(126, 1, 2, 3, 1, 'Langkah 5'),
(127, 1, 2, 3, 2, 'Subtitusi $C$ ke dalam persamaan '),
(128, 1, 2, 3, 3, '\\begin{aligned}\nC \\ln r&=2 \\pi k l T \\\\\n-\\frac{k(2 \\pi l) 100}{(\\ln 2)} \\ln r&=k(2 \\pi l) T \\\\\nT&=-\\frac{100}{(\\ln 2)} \\ln r\n\\end{aligned}'),
(129, 1, 2, 3, 2, '$T$ ini bernilai minus karena penurunan suhu akibat pelepasan panas.'),
(130, 1, 2, 3, 1, 'Langkah 6'),
(131, 1, 2, 3, 2, 'Sehingga temperatur $T$ pada jarak $r$ dari garis axis silinder adalah'),
(132, 1, 2, 3, 3, '\\begin{aligned}\n&T=T_{\\text{pusat}} – T_{\\text{penguruangan suhu}}\\\\ \n&T=100-\\frac{100}{(\\ln 2)} \\ln r \\\\\n&T=100\\left(1-\\frac{\\ln r}{(\\ln 2)}\\right)\n\\end{aligned}'),
(133, 1, 2, 3, 2, 'dimana 100 adalah temperatur pada $r=1$.'),
(134, 1, 2, 5, 1, 'Langkah 1'),
(135, 1, 2, 5, 2, 'Diketahui persamaan keluarga kurva $x^2 + y^2 = \\text{const.}$. Kita diminta untuk menentukan keluarga kurva orthogonal trajectories terhadap keluarga kurva tersebut. Kita juga diminta untuk memplot beberapa keluarga kurva asli dan keluarga kurva orthogonal trajectoriesnya.'),
(136, 1, 2, 5, 2, 'Berdasarkan persamaan, dapat diketahui persamaan ini adalah persamaan lingkaran dengan pusat $(0, 0)$.'),
(137, 1, 2, 5, 1, 'Langkah 2'),
(138, 1, 2, 5, 2, 'Jika nilai konstantanya adalah 1, maka persamaannya menjadi  $x^2 + y^2 = 1$. Jika nilai konstantanya 2, maka persamaannya menjadi  $x^2 + y^2 = 2$, dan seterusnya. Persamaan lingkaran pada pusat $(0, 0)$ memiliki persamaan asli  $x^2 + y^2 = r^2$, yang berarti untuk persamaan pertama, jari-jarinya adalah $r = \\sqrt{1}$ dan untuk persamaan kedua jari-jarinya adalah $r = \\sqrt{2}$.'),
(139, 1, 2, 5, 2, 'Tentukan gradien untuk keluarga kurva ini. Untuk menentukannya, turunkan persamaan $x^2 + y^2 = \\text{constant}$ terhadap $x$ untuk mendapatkan'),
(140, 1, 2, 5, 3, '\\begin{aligned}\n\\frac{d}{d x}\\left(x^{2}+y^{2}\\right) &=\\frac{d}{d x} \\text{constant}\\\\\n2 x+2 y \\frac{d y}{d x} &=0 \\\\\nx+y \\frac{d y}{d x} &=0 \\\\\n\\frac{d y}{d x} &=-\\frac{x}{y}\n\\end{aligned}'),
(141, 1, 2, 5, 1, 'Langkah 3'),
(142, 1, 2, 5, 2, 'Gradien atau persamaan diferensial dari orthogonal trajectories nya adalah'),
(143, 1, 2, 5, 3, '\\begin{aligned}\nm_{1} \\times m_{2} &=-1 \\\\\n-\\frac{x}{y} \\times m_{2} &=-1 \\\\\nm_{2} &=\\frac{y}{x}\\\\\ny^\\prime&=\\frac{y}{x}\n\\end{aligned}'),
(144, 1, 2, 5, 2, 'Sehingga gradien dari sebuah orthogonal trajectory pada titik $(x, y)$ dimana $x\\not =0$ dan $y \\not =0$ adalah $\\frac {dy}{dx} = \\frac y x$.'),
(145, 1, 2, 5, 1, 'Langkah 4'),
(146, 1, 2, 5, 2, 'Selesaikan dengan pemisahan variabel, lalu mengintegrasikan kedua ruas.'),
(147, 1, 2, 5, 3, '\\begin{aligned}\n\\frac {dy}{dx} &= \\frac y x \\\\\n\\frac{d y}{y}&=\\frac{d x}{x}\\\\\n\\int \\frac{d y}{y}&=\\int \\frac{d x}{x} \\\\\n\\ln y&=\\ln x+\\ln c\\\\\n\\ln y&=\\ln x.c\\\\\ny&=xc\n\\end{aligned}'),
(148, 1, 2, 5, 2, 'dimana $c$ adalah konstanta integrasi yang merepresentasikan keluarga kurva lurus.'),
(149, 1, 2, 5, 1, 'Langkah 5'),
(150, 1, 2, 5, 2, 'Plot grafik secara manual atau menggunakan <a style=\"color: #60a5fa;\" href=\"https://www.desmos.com/calculator\" target=\"_blank\">Kalkulator Grafik Desmos</a>.'),
(151, 1, 2, 5, 2, 'Hasil plot dari keluarga grafik persamaan $x^2 + y^2 = \\text{const.}$ adalah sebagai berikut.'),
(152, 1, 2, 5, 2, '<img src=\"https://physicsyourself.com/assets/img/archives/grafik-lingkaran-1-2-5.png\" style=\"margin-left: auto; margin-right: auto;\"><b>Gambar 1.</b> Grafik keluarga kurva lingkaran dengan variasi konstanta.'),
(153, 1, 2, 5, 2, 'Hasil plot dari keluarga grafik persamaan $y=xc$ adalah sebagai berikut.'),
(154, 1, 2, 5, 2, '<img src=\"https://physicsyourself.com/assets/img/archives/grafik-lurus-1-2-5.png\" style=\"margin-left: auto; margin-right: auto;\"><b>Gambar 2.</b> Grafik keluarga kurva lurus yang merupakan orthogonal trajectories-nya dengan variasi $c$.'),
(155, 1, 2, 5, 2, 'Berikut adalah plot kombinasi kedua keluarga kurva.'),
(156, 1, 2, 5, 2, '<img src=\"https://physicsyourself.com/assets/img/archives/grafik-lingkaran-lurus-1-2-5.png\" style=\"margin-left: auto; margin-right: auto;\"><b>Gambar 3.</b> Grafik kombinasi keluarga kurva lingkaran dan keluarga kurva orthogonal trajectories-nya.'),
(157, 1, 2, 6, 1, 'Langkah 1'),
(158, 1, 2, 6, 2, 'Kita harus menemukan orthogonal trajectories dari $y=k x^{n}$ dengan mengeliminasi konstantanya.'),
(159, 1, 2, 6, 1, 'Langkah 2'),
(160, 1, 2, 6, 2, 'Diketahui'),
(161, 1, 2, 6, 3, '\\begin{aligned}\n&y=k x^n \\\\\n&k=\\frac{y}{x^{n}}\n\\end{aligned}'),
(162, 1, 2, 6, 2, '$y$ dan $x^n$ adalah fungsi $x$, ingat kembali turunan dua fungsi dalam operasi pembagian'),
(163, 1, 2, 6, 3, '\\begin{aligned}\ny&=\\frac{u}{v} \\\\\n\\frac{d y}{d x}&=\\frac{u^{\\prime} v-v^{\\prime} u}{v^{2}} \\\\\n\\frac{d y}{d x}&=\\frac{v \\frac{d u}{d x}-u \\frac{d v}{d x}}{v^{2}}\n\\end{aligned}'),
(164, 1, 2, 6, 3, '\\begin{aligned}\nk &=\\frac{y}{x^{n}} \\\\\n\\frac{d}{d x}(k) &=\\frac{d}{d x}\\left(\\frac{y}{x^{n}}\\right) \\\\\n0&=\\frac{x^{n} \\frac{d y}{d x}-y \\frac{d}{d x}\\left(x^{n}\\right)}{\\left(x^{n}\\right)^{2}}\\\\\n0 &=\\frac{x^{n} \\frac{d y}{d x}-n x^{n-1} y}{\\left(x^{n}\\right)^{2}} \\\\\nx^{n} \\frac{d y}{d x}-n x^{n-1} y&=0 \\\\\nx^{n} \\frac{d y}{d x} &=n x^{n-1} y \\\\\nx . x^{n-1} \\frac{d y}{d x}&=n x^{n-1} y \\\\\nx \\frac{d y}{d x}&=n y \\\\\n\\frac{d y}{d x}&=\\frac{n y}{x}\n\\end{aligned}'),
(165, 1, 2, 6, 1, 'Langkah 3'),
(166, 1, 2, 6, 2, 'Persamaan diferensial orthogonal trajectories-nya untuk $\\frac{d y}{d x}=f(x, y)$ adalah'),
(167, 1, 2, 6, 3, '\\begin{aligned}\n&\\frac{d y}{d x}=-\\frac{1}{f(x, y)}\\\\\n&\\frac{d y}{d x}=-\\frac{1}{\\frac{n y}{x}} \\\\\n&\\frac{d y}{d x}=-\\frac{x}{n y}\n\\end{aligned}'),
(168, 1, 2, 6, 1, 'Langkah 4'),
(169, 1, 2, 6, 2, 'Selesaikan dengan pemisahan variabel lalu mengintegrasikan kedua ruas.'),
(170, 1, 2, 6, 3, '\\begin{aligned}\n\\frac{d y}{d x}&=-\\frac{x}{n y} \\\\\nn y d y&=-x d x \\\\\n\\int n y d y&=\\int-x d x\\\\\nn \\cdot \\frac{y^{2}}{2}&=-\\frac{x^{2}}{2}+C \\\\\n\\frac{n y^{2}}{2}&=-\\frac{x^{2}}{2}+C \\\\\n\\frac{n y^{2}+x^{2}}{2}&=C \\\\\nn y^{2}+x^{2}&=2 C\n\\end{aligned}'),
(171, 1, 2, 6, 2, 'dimana $C$ adalah konstanta integrasi.'),
(172, 1, 2, 6, 1, 'Langkah 5'),
(173, 1, 2, 6, 2, 'Plot grafik secara manual atau menggunakan <a style=\"color: #60a5fa;\" href=\"https://www.desmos.com/calculator\" target=\"_blank\">Kalkulator Grafik Desmos</a>.'),
(174, 1, 2, 6, 2, 'Hasil plot dari keluarga grafik persamaan $y=k x^n$ adalah sebagai berikut.'),
(175, 1, 2, 6, 2, '<img src=\"https://physicsyourself.com/assets/img/archives/grafik-kuadrat-1-2-5.png\" style=\"margin-left: auto; margin-right: auto;\"><b>Gambar 1.</b> Grafik keluarga kurva soal dengan nilai $n$ dan $k$ berbeda.'),
(176, 1, 2, 6, 2, 'Hasil plot dari keluarga grafik persamaan $ n y^{2}+x^{2}=2 C$ adalah sebagai berikut.'),
(177, 1, 2, 6, 2, '<img src=\"https://physicsyourself.com/assets/img/archives/kurva-oval.png\" style=\"margin-left: auto; margin-right: auto;\"><b>Gambar 2.</b> Grafik keluarga kurva yang merupakan orthogonal trajectories-nya dengan nilai $n$ dan $C$ berbeda.'),
(178, 1, 2, 6, 2, 'Berikut adalah plot kombinasi kedua keluarga kurva.'),
(179, 1, 2, 6, 2, '<img src=\"https://physicsyourself.com/assets/img/archives/grafik-kuadrat-oval.png\" style=\"margin-left: auto; margin-right: auto;\"><b>Gambar 3.</b> Grafik kombinasi keluarga kurva lingkaran dan keluarga kurva orthogonal trajectories-nya.'),
(180, 1, 2, 8, 1, 'Langkah 1'),
(181, 1, 2, 8, 2, 'Pada soal ini kita harus menemukan penyelesaian umum, penyelesaian khusus, slope field, kurva penyelesaian yang sesuai dengan slope field, kemudian baru penyelesaian singuler.'),
(182, 1, 2, 8, 1, 'Langkah 2'),
(183, 1, 2, 8, 2, 'Melakukan pemisahan variabel dan pengintegrasian untuk mendapatkan penyelesaian umum.'),
(184, 1, 2, 8, 3, '\\begin{aligned}\nx \\sqrt{1-y^{2}} d x+y \\sqrt{1-x^{2}} d y&=0 \\\\\nx \\sqrt{1-y^{2}} d x&=-y \\sqrt{1-x^{2}} d y \\\\\n\\frac{x}{\\sqrt{1-x^{2}}} d x&=- \\frac{y}{\\sqrt{1-y^{2}}} d y \\\\\n\\int \\frac{x}{\\sqrt{1-x^{2}}} d x&=\\int - \\frac{y}{\\sqrt{1-y^{2}}} d y\n\\end{aligned}'),
(185, 1, 2, 8, 1, 'Langkah 3'),
(186, 1, 2, 8, 2, 'Menggunakan metode subtitusi untuk menyelesaikan integrasi'),
(187, 1, 2, 8, 3, '\\begin{aligned}\nu&=1-x^{2} \\\\\n\\frac{d u}{d x}&=\\frac{d}{d x}\\left(1-x^{2}\\right) \\\\\n\\frac{d u}{d x}&=-2 x \\\\\nd x&=-\\frac{1}{2 x} d u\n\\end{aligned}'),
(188, 1, 2, 8, 3, '\\begin{aligned}\nv&=1-y^{2} \\\\\n\\frac{d v}{d y}&=\\frac{d}{d y}\\left(1-y^{2}\\right) \\\\\n\\frac{d v}{d y}&=-2 y \\\\\nd y&=-\\frac{1}{2 y} d v\n\\end{aligned}'),
(189, 1, 2, 8, 3, '\\begin{aligned}\n\\int \\frac{x}{\\sqrt{1-x^{2}}} d x &=\\int \\frac{-y}{\\sqrt{1-y^{2}}} d y \\\\\n\\int \\frac{x}{\\sqrt{u}}\\left(-\\frac{1}{2 x}\\right) d u&=\\int \\frac{-y}{\\sqrt{v}}\\left(-\\frac{1}{2 y}\\right) d v \\\\\n\\int-\\frac{1}{2 \\sqrt{u}} d u&=\\int \\frac{1}{2 \\sqrt{v}} d v \\\\\n\\int-\\frac{1}{2} u^{-\\frac{1}{2}} d u&=\\int \\frac{1}{2} v^{-\\frac{1}{2}} d v \\\\\n-\\frac{1}{2}\\left(\\frac{1}{-\\frac{1}{2}+1} u^{-\\frac{1}{2}+1}\\right)+C&= \\frac{1}{2}\\left(\\frac{1}{-\\frac{1}{2}+1} v^{-\\frac{1}{2}+1}\\right) \\\\\n-\\frac{1}{2}(2)\\left(\\sqrt{1-x^{2}}\\right)+C&=\\frac{1}{2}(2)\\left(\\sqrt{1-y^{2}}\\right) \\\\\n-\\sqrt{1-x^{2}}+C&=\\sqrt{1-y^{2}} \\\\\nC&=\\sqrt{1-y^{2}}+\\sqrt{1-x^{2}}\n\\end{aligned}'),
(190, 1, 2, 8, 2, 'dengan $C$ adalah konstanta integrasi.'),
(191, 1, 2, 8, 1, 'Langkah 4'),
(192, 1, 2, 8, 2, 'Memasukkan nilai  $y=\\frac {1}{2}$ dan $x=\\frac {1}{2}$ untuk mendapatkan nilai C.'),
(193, 1, 2, 8, 3, '\\begin{aligned}\n&C=\\sqrt{1-x^{2}}+\\sqrt{1-y^{2}} \\\\\n&C=\\sqrt{1-\\left(\\frac{1}{2}\\right)^{2}}+\\sqrt{1-\\left(\\frac{1}{2}\\right)^{2}} \\\\\n&C=\\sqrt{1-\\frac{1}{4}}+\\sqrt{1-\\left(\\frac{1}{4}\\right)} \\\\\n&C=\\sqrt{\\frac{3}{4}}+\\sqrt{\\frac{3}{4}} \\\\\n&C=2 \\sqrt{\\frac{3}{4}} \\\\\n&C=2 \\frac{\\sqrt{3}}{2} \\\\\n&C=\\sqrt{3}\n\\end{aligned}'),
(194, 1, 2, 8, 2, 'Sehingga penyelesaian khususnya adalah'),
(195, 1, 2, 8, 3, '\\begin{aligned}\n\\sqrt{1-y^{2}}+\\sqrt{1-x^{2}}&=C\\\\\n\\sqrt{1-y^{2}}+\\sqrt{1-x^{2}}&=\\sqrt{3}\n\\end{aligned}'),
(196, 1, 2, 8, 1, 'Langkah 5'),
(197, 1, 2, 8, 2, 'Untuk membuat slope field, kita membuatuhkan $\\frac {dy} {dx}$ dari soal.'),
(198, 1, 2, 8, 3, '\\begin{aligned}\nx \\sqrt{1-y^2} dx + y\\sqrt{1-x^2} dy &= 0\\\\\n\\frac {dy} {dx} &=  - \\frac {x} {y} \\frac {\\sqrt{1-y^2}} {\\sqrt{1-x^2}}\n\\end{aligned}'),
(199, 1, 2, 8, 2, 'Berikut ini adalah hasil slope field dan plot kurva penyelesaian yang melewati titik $(\\frac {1} {2}, \\frac {1} {2})$.'),
(200, 1, 2, 8, 2, '<img src=\"https://physicsyourself.com/assets/img/archives/1-2-8-1.png\" style=\"margin-left: auto; margin-right: auto;\"><b>Gambar 1.</b> Slope field untuk titik $(\\frac {1} {2}, \\frac {1} {2})$'),
(201, 1, 2, 8, 1, 'Langkah 6'),
(202, 1, 2, 8, 2, 'Untuk menemukan penyelesaian singuler, kita perhatikan nilai minimum dan maksimum $y$ pada slope field. Terdapat kurva penyelesaian $y \\equiv 1$ dan $y \\equiv -1$ seperti pada Contoh 8. Kita bisa melakukan pengecekan apakah kurva tersebut termasuk penyelesaian singuler dengan cara mengambil satu titik $(x, y)$ yang dilewati oleh kurva $y \\equiv 1$, misal titik $(\\frac {1} {2}, 1)$. Lalu, kita subtitusikan titik tersebut ke persamaan umum seperti berikut ini '),
(203, 1, 2, 8, 3, '\\begin{aligned}\nC&=\\sqrt{1-y^{2}}+\\sqrt{1-x^{2}} \\\\\nC&=\\sqrt{1-1^{2}}+\\sqrt{1-(0,5)^{2}} \\\\\nC&=0+\\sqrt{1-0,25} \\\\\nC&=0+\\sqrt{0,75} \\\\\nC&=\\sqrt{0,75}\n\\end{aligned}'),
(204, 1, 2, 8, 3, '\\begin{aligned}\nC&=\\sqrt{1-y^{2}}+\\sqrt{1-x^{2}} \\\\\n\\sqrt{0,75}&=\\sqrt{1-y^{2}}+\\sqrt{1-x^{2}} \\\\\n\\sqrt{1-y^{2}}&=\\sqrt{0,75}-\\sqrt{1-x^{2}} \\\\\n1-y^{2}&=\\left(\\sqrt{0,75}-\\sqrt{1-x^{2}}\\right)^{2} \\\\\ny^{2}&=1-\\left(\\sqrt{0,75}-\\sqrt{1-x^{2}}\\right)^{2} \\\\\ny&=\\sqrt{1-\\left(\\sqrt{0,75}-\\sqrt{1-x^{2}}\\right)^{2}}\n\\end{aligned}'),
(205, 1, 2, 8, 1, 'Langkah 7'),
(206, 1, 2, 8, 2, 'Terdapat langkah membagi dengan ${1-y^2}$ dalam proses pemisahan variabel sehingga seperti pada Contoh 8, kita tidak bisa mendapatkan semua penyelesaian khusus karena $y^2$ tidak boleh sama dengan 1. Setelah memplot persamaan penyelesaian khusus $y$ pada titik $(\\frac {1} {2}, 1)$ pada <a style=\"color: #60a5fa;\" href=\"https://c3d.libretexts.org/DirectionField/index.html\" target=\"_blank\">Direction Field Explorer app</a>, dan memasukkan titik $(\\frac {1} {2}, 1)$ dan klik Plot curves, kita dapatkan dua grafik yang berbeda seperti gambar di bawah ini.'),
(207, 1, 2, 8, 2, '<img src=\"https://physicsyourself.com/assets/img/archives/kurva-nolkomalima-satu.png\" style=\"margin-left: auto; margin-right: auto;\">'),
(208, 1, 2, 8, 2, '<img src=\"https://physicsyourself.com/assets/img/archives/kurva-nolkomalima-satu-zoom.png\" style=\"margin-left: auto; margin-right: auto;\"><b>Gambar 2.</b> Slope field untuk titik $(\\frac {1} {2}, \\frac {1} {2})$, $y \\equiv 1$ dan $y \\equiv -1$ untuk domain $(-1,1)$.'),
(209, 1, 2, 8, 2, 'Kita dapat menyimpulkan bahwa penyelesaian singuler pada persamaan diferensial ini adalah $y \\equiv 1$ dan $y \\equiv -1$. ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `6_card_answer`
--

CREATE TABLE `6_card_answer` (
  `id` int(11) NOT NULL,
  `materi` int(5) NOT NULL,
  `sub_materi` int(5) NOT NULL,
  `card` int(5) NOT NULL,
  `answ_1` varchar(1) DEFAULT NULL,
  `answ_2` varchar(1) DEFAULT NULL,
  `answ_3` varchar(1) DEFAULT NULL,
  `answ_4` varchar(1) DEFAULT NULL,
  `answ_5` varchar(1) DEFAULT NULL,
  `answ_6` varchar(1) DEFAULT NULL,
  `answ_7` varchar(1) DEFAULT NULL,
  `answ_8` varchar(1) DEFAULT NULL,
  `answ_9` varchar(1) DEFAULT NULL,
  `answ_10` varchar(1) DEFAULT NULL,
  `answ_11` varchar(1) DEFAULT NULL,
  `answ_12` varchar(1) DEFAULT NULL,
  `answ_13` varchar(1) DEFAULT NULL,
  `answ_14` varchar(1) DEFAULT NULL,
  `answ_15` varchar(1) DEFAULT NULL,
  `answ_16` varchar(1) DEFAULT NULL,
  `answ_17` varchar(1) DEFAULT NULL,
  `answ_18` varchar(1) DEFAULT NULL,
  `answ_19` varchar(1) DEFAULT NULL,
  `answ_20` varchar(1) DEFAULT NULL,
  `answ_21` varchar(1) DEFAULT NULL,
  `answ_22` varchar(1) DEFAULT NULL,
  `answ_23` varchar(1) DEFAULT NULL,
  `answ_24` varchar(1) DEFAULT NULL,
  `answ_25` varchar(1) DEFAULT NULL,
  `answ_26` varchar(1) DEFAULT NULL,
  `answ_27` varchar(1) DEFAULT NULL,
  `answ_28` varchar(1) DEFAULT NULL,
  `answ_29` varchar(1) DEFAULT NULL,
  `answ_30` varchar(1) DEFAULT NULL,
  `answ_31` varchar(1) DEFAULT NULL,
  `answ_32` varchar(1) DEFAULT NULL,
  `answ_33` varchar(1) DEFAULT NULL,
  `answ_34` varchar(1) DEFAULT NULL,
  `answ_35` varchar(1) DEFAULT NULL,
  `answ_36` varchar(1) DEFAULT NULL,
  `answ_37` varchar(1) DEFAULT NULL,
  `answ_38` varchar(1) DEFAULT NULL,
  `answ_39` varchar(1) DEFAULT NULL,
  `answ_40` varchar(1) DEFAULT NULL,
  `answ_41` varchar(1) DEFAULT NULL,
  `answ_42` varchar(1) DEFAULT NULL,
  `answ_43` varchar(1) DEFAULT NULL,
  `answ_44` varchar(1) DEFAULT NULL,
  `answ_45` varchar(1) DEFAULT NULL,
  `answ_46` varchar(1) DEFAULT NULL,
  `answ_47` varchar(1) DEFAULT NULL,
  `answ_48` varchar(1) DEFAULT NULL,
  `answ_49` varchar(1) DEFAULT NULL,
  `answ_50` varchar(1) DEFAULT NULL,
  `answ_51` varchar(1) DEFAULT NULL,
  `answ_52` varchar(1) DEFAULT NULL,
  `answ_53` varchar(1) DEFAULT NULL,
  `answ_54` varchar(1) DEFAULT NULL,
  `answ_55` varchar(1) DEFAULT NULL,
  `answ_56` varchar(1) DEFAULT NULL,
  `answ_57` varchar(1) DEFAULT NULL,
  `answ_58` varchar(1) DEFAULT NULL,
  `answ_59` varchar(1) DEFAULT NULL,
  `answ_60` varchar(1) DEFAULT NULL,
  `answ_61` varchar(1) DEFAULT NULL,
  `answ_62` varchar(1) DEFAULT NULL,
  `answ_63` varchar(1) DEFAULT NULL,
  `answ_64` varchar(1) DEFAULT NULL,
  `answ_65` varchar(1) DEFAULT NULL,
  `answ_66` varchar(1) DEFAULT NULL,
  `answ_67` varchar(1) DEFAULT NULL,
  `answ_68` varchar(1) DEFAULT NULL,
  `answ_69` varchar(1) DEFAULT NULL,
  `answ_70` varchar(1) DEFAULT NULL,
  `answ_71` varchar(1) DEFAULT NULL,
  `answ_72` varchar(1) DEFAULT NULL,
  `answ_73` varchar(1) DEFAULT NULL,
  `answ_74` varchar(1) DEFAULT NULL,
  `answ_75` varchar(1) DEFAULT NULL,
  `answ_76` varchar(1) DEFAULT NULL,
  `answ_77` varchar(1) DEFAULT NULL,
  `answ_78` varchar(1) DEFAULT NULL,
  `answ_79` varchar(1) DEFAULT NULL,
  `answ_80` varchar(1) DEFAULT NULL,
  `answ_81` varchar(1) DEFAULT NULL,
  `answ_82` varchar(1) DEFAULT NULL,
  `answ_83` varchar(1) DEFAULT NULL,
  `answ_84` varchar(1) DEFAULT NULL,
  `answ_85` varchar(1) DEFAULT NULL,
  `answ_86` varchar(1) DEFAULT NULL,
  `answ_87` varchar(1) DEFAULT NULL,
  `answ_88` varchar(1) DEFAULT NULL,
  `answ_89` varchar(1) DEFAULT NULL,
  `answ_90` varchar(1) DEFAULT NULL,
  `answ_91` varchar(1) DEFAULT NULL,
  `answ_92` varchar(1) DEFAULT NULL,
  `answ_93` varchar(1) DEFAULT NULL,
  `answ_94` varchar(1) DEFAULT NULL,
  `answ_95` varchar(1) DEFAULT NULL,
  `answ_96` varchar(1) DEFAULT NULL,
  `answ_97` varchar(1) DEFAULT NULL,
  `answ_98` varchar(1) DEFAULT NULL,
  `answ_99` varchar(1) DEFAULT NULL,
  `answ_100` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `6_card_answer`
--

INSERT INTO `6_card_answer` (`id`, `materi`, `sub_materi`, `card`, `answ_1`, `answ_2`, `answ_3`, `answ_4`, `answ_5`, `answ_6`, `answ_7`, `answ_8`, `answ_9`, `answ_10`, `answ_11`, `answ_12`, `answ_13`, `answ_14`, `answ_15`, `answ_16`, `answ_17`, `answ_18`, `answ_19`, `answ_20`, `answ_21`, `answ_22`, `answ_23`, `answ_24`, `answ_25`, `answ_26`, `answ_27`, `answ_28`, `answ_29`, `answ_30`, `answ_31`, `answ_32`, `answ_33`, `answ_34`, `answ_35`, `answ_36`, `answ_37`, `answ_38`, `answ_39`, `answ_40`, `answ_41`, `answ_42`, `answ_43`, `answ_44`, `answ_45`, `answ_46`, `answ_47`, `answ_48`, `answ_49`, `answ_50`, `answ_51`, `answ_52`, `answ_53`, `answ_54`, `answ_55`, `answ_56`, `answ_57`, `answ_58`, `answ_59`, `answ_60`, `answ_61`, `answ_62`, `answ_63`, `answ_64`, `answ_65`, `answ_66`, `answ_67`, `answ_68`, `answ_69`, `answ_70`, `answ_71`, `answ_72`, `answ_73`, `answ_74`, `answ_75`, `answ_76`, `answ_77`, `answ_78`, `answ_79`, `answ_80`, `answ_81`, `answ_82`, `answ_83`, `answ_84`, `answ_85`, `answ_86`, `answ_87`, `answ_88`, `answ_89`, `answ_90`, `answ_91`, `answ_92`, `answ_93`, `answ_94`, `answ_95`, `answ_96`, `answ_97`, `answ_98`, `answ_99`, `answ_100`) VALUES
(1, 1, 1, 6, 'P', 'B', 'B', 'P', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 1, 1, 7, 'L', '2', 'L', '5', 'N', '2', 'N', '2', 'L', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 1, 1, 10, 's', 'i', 'n', 'h', 'c', 'o', 's', 'h', 'c', 'o', 's', 'h', 's', 'i', 'n', 'h', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 1, 1, 11, '-', 'i', '-', 'i', 'i', 'i', 'i', '2', 'i', '2', 'i', '2', '-', '1', '2', '-', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 1, 1, 13, '1', '1', '1', '1', '0', '1', '0', 'B', 'B', '0', '2', '1', '2', '3', '2', '3', '4', '1', '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 1, 1, 14, '-', 'k', '-', 'k', 'x', 't', '0', '-', 'k', '-', 'k', '0', '-', 'k', '1', '-', 'k', '-', 'k', 'g', 'k', '0', '-', 'k', 'g', 'k', '-', 'k', '0', 'g', 'k', 'g', 'k', '-', 'k', 'g', 'k', 'x', 't', '-', 'k', 'g', 'k', 'k', '2', 'g', 'k', 't', 'k', '2', 'g', 'k', 't', 'k', '2', '-', 'k', '2', 'k', '2', 'g', 'k', 't', 'k', '2', 'g', 'k', 't', 'k', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 1, 2, 2, 'x', 'y', '1', 'y', 'x', '1', 'x', 'y', 'y', 'y', '1', 'x', 'x', '1', 'y', '1', '2', 'y', '0', '4', 'y', 'y', '4', 'x', '1', '2', 'x', '0', 'x', '2', 'y', 'y', '1', 'x', 'x', '1', '4', '2', '4', '2', '4', 'y', '1', '2', 'x', '1', '2', 'y', '1', 'x', '1', '2', 'y', '1', 'x', '1', 'y', '1', '2', 'x', '1', 'y', '1', '2', 'x', '1', 'e', 'y', '1', 'e', 'x', '1', 'y', '1', 'e', '4', 'x', '1', 'y', '1', 'x', '1', 'y', '1', 'x', '1', '0', '1', '2', '1', 'y', '1', 'x', '1', 'y', '1', 'x', '1', '', ''),
(8, 1, 2, 3, '2', 'π', 'r', 'r', '2', 'π', 'r', '2', 'π', 'r', '2', 'π', 'r', '2', 'π', '2', '1', '2', 'π', '0', '2', '0', '2', 'π', '-', '2', 'π', '2', 'r', '2', 'π', '-', '2', 'π', '2', 'r', '2', 'π', '-', '2', 'r', '2', 'r', '1', 'r', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 1, 2, 5, '2', '2', '0', '0', '-', 'x', 'y', '-', 'x', 'y', 'y', 'x', 'y', 'x', 'y', 'x', 'y', 'x', 'y', 'x', 'y', 'x', 'y', 'x', 'c', 'y', 'x', 'c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 1, 2, 6, '0', 'x', 'n', 'x', 'n', '0', 'x', 'n', 'n', 'n', '1', 'x', 'n', 'n', 'n', '1', '0', 'x', 'n', 'n', 'n', '1', 'x', 'n', 'n', '1', 'x', 'n', 'n', 'x', 'n', 'x', '-', 'x', 'n', '-', 'x', 'n', 'n', '-', 'x', 'n', '-', 'x', 'n', '2', '2', '-', 'x', '2', '2', 'n', '2', '2', '-', 'x', '2', '2', 'n', '2', 'x', '2', '2', 'n', '2', 'x', '2', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 1, 2, 8, 'u', '1', '2', 'u', '-', '2', '-', '2', 'u', 'v', '1', '2', 'v', '-', '2', '-', '2', 'v', '-', '2', '-', '2', '-', '2', '2', '-', '2', '-', '2', '2', '-', '2', '-', '2', '-', '2', '-', '2', '2', '-', '2', '-', '2', '-', '2', '2', '2', '2', '-', '1', '2', '1', '2', '1', '4', '1', '4', '3', '4', '3', '4', '3', '4', '3', '2', '3', '3', '-', 'x', 'y', '1', 'y', '1', 'x', '1', '-', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `7_total_pertanyaan`
--

CREATE TABLE `7_total_pertanyaan` (
  `id` int(11) NOT NULL,
  `materi` int(5) NOT NULL,
  `sub_materi` int(5) NOT NULL,
  `card` varchar(5) DEFAULT NULL,
  `total_pertanyaan` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `7_total_pertanyaan`
--

INSERT INTO `7_total_pertanyaan` (`id`, `materi`, `sub_materi`, `card`, `total_pertanyaan`) VALUES
(1, 1, 1, '6', 4),
(2, 1, 1, '7', 10),
(3, 1, 1, '10', 16),
(4, 1, 1, '11', 17),
(5, 1, 1, '13', 20),
(6, 1, 1, '14', 70),
(7, 1, 2, '2', 98),
(8, 1, 2, '3', 46),
(9, 1, 2, '5', 28),
(10, 1, 2, '6', 68),
(11, 1, 2, '8', 77);

-- --------------------------------------------------------

--
-- Struktur dari tabel `8_card_latihan_soal`
--

CREATE TABLE `8_card_latihan_soal` (
  `id` int(5) NOT NULL,
  `materi` int(11) NOT NULL,
  `sub_materi` int(11) NOT NULL,
  `card` int(11) NOT NULL,
  `no_soal` int(3) DEFAULT NULL,
  `kategori` int(1) NOT NULL,
  `grid_rows` int(4) DEFAULT NULL,
  `grid_cols` int(4) DEFAULT NULL,
  `row_start` int(5) DEFAULT NULL,
  `col_start` int(5) DEFAULT NULL,
  `class` varchar(128) DEFAULT NULL,
  `isi` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `8_card_latihan_soal`
--

INSERT INTO `8_card_latihan_soal` (`id`, `materi`, `sub_materi`, `card`, `no_soal`, `kategori`, `grid_rows`, `grid_cols`, `row_start`, `col_start`, `class`, `isi`) VALUES
(21, 1, 1, 6, 1, 1, 0, 0, 0, 0, NULL, '<b>PDB atau PDP</b>'),
(22, 1, 1, 6, 2, 1, 0, 0, 0, 0, NULL, 'Tentukan persamaan-persamaan berikut ini termasuk persamaan diferensial biasa (PDB) atau persamaan diferensial parsial (PDP).'),
(23, 1, 1, 6, 3, 1, 0, 0, 0, 0, NULL, '<b>Instruksi :</b></br>Isi kotak pertama dari kiri dengan <b>B</b> apabila persamaan tersebut termasuk <b>PDB</b> atau dengan <b>P</b> apabila persamaan tersebut termasuk <b>PDP</b>. Lalu tekan ENTER.'),
(24, 1, 1, 6, 4, 2, 70, 400, 0, 0, NULL, '\\begin{aligned}\n1.) \\quad \\frac{\\partial\\left(8 x^{4}\\right)}{\\partial x}+\\frac{\\partial\\left(y^{4}\\right)}{\\partial x}-\\frac{\\partial\\left(2 x y^{2}\\right)}{\\partial x}=0\n\\end{aligned}'),
(25, 1, 1, 6, 4, 3, 0, 0, 29, 350, 'pertanyaan-tk1 font-bold', 'P'),
(26, 1, 1, 6, 5, 2, 80, 400, 0, 0, NULL, '\\begin{aligned}\n2.) \\quad \\frac{d^{2} x}{d t^{2}}=A \\sin \\omega t\n\\end{aligned}'),
(27, 1, 1, 6, 5, 3, 0, 0, 29, 350, 'pertanyaan-tk1 font-bold', 'B'),
(28, 1, 1, 6, 6, 2, 70, 400, 0, 0, NULL, '\\begin{aligned}\n3.) \\quad \\frac{d^{3} y}{d x^{3}}+4 \\frac{d^{2} y}{d x^{2}}-5 \\frac{d y}{d x}+3 y=\\sin x\n\\end{aligned}'),
(29, 1, 1, 6, 6, 3, 0, 0, 29, 350, 'pertanyaan-tk1 font-bold', 'B'),
(30, 1, 1, 6, 7, 2, 70, 400, 0, 0, NULL, '\\begin{aligned}\n4.) \\quad \\frac{\\partial^{3} u}{\\partial x^{3}}+\\frac{\\partial^{2} u}{d y^{2}}=0\n\\end{aligned}'),
(31, 1, 1, 6, 7, 3, 0, 0, 29, 350, 'pertanyaan-tk1 font-bold', 'B'),
(32, 1, 1, 7, 1, 1, 0, 0, 0, 0, NULL, '<b>Kelinieran dan Orde</b>'),
(33, 1, 1, 7, 2, 1, 0, 0, 0, 0, NULL, 'Tentukan kelinieran dan orde dari persamaan-persamaan diferensial biasa berikut ini.'),
(37, 1, 1, 7, 3, 1, 0, 0, 0, 0, NULL, '<b>Instruksi :</b></br>Isi kotak pertama dari kiri dengan <b>L</b> apabila persamaan tersebut termasuk persamaan yang linier atau <b>N</b> apabila persamaan tersebut termasuk persamaan non linier. Kemudian pada kotak kedua, isi dengan orde (menggunakan <b>angka saja</b>) persamaan diferensial biasa tersebut. Lalu tekan ENTER.'),
(40, 1, 1, 7, 4, 2, 70, 350, 0, 0, NULL, '\\begin{aligned}\n1.) \\quad \\frac{d^{2} y}{d x^{2}}+4 \\frac{d y}{d x}+7 y=0\n\\end{aligned}'),
(41, 1, 1, 7, 4, 3, 0, 0, 29, 300, 'pertanyaan-tk1 font-bold', 'L'),
(42, 1, 1, 7, 4, 3, 0, 0, 29, 350, 'pertanyaan-tk1 font-bold', '2'),
(43, 1, 1, 7, 5, 2, 70, 350, 0, 0, NULL, '\\begin{aligned}\n2.) \\quad y^{(5)}+2 y^{\\prime \\prime \\prime}+y^{\\prime}=0\n\\end{aligned}'),
(44, 1, 1, 7, 5, 3, 0, 0, 29, 300, 'pertanyaan-tk1 font-bold', 'L'),
(45, 1, 1, 7, 5, 3, 0, 0, 29, 350, 'pertanyaan-tk1 font-bold', '5'),
(46, 1, 1, 7, 6, 2, 70, 350, 0, 0, NULL, '\\begin{aligned}\n3.) \\quad \\frac{d^{2} y}{d x^{2}}+5 \\frac{d y}{d x}+6 y^{2}=0\n\\end{aligned}'),
(47, 1, 1, 7, 6, 3, 0, 0, 29, 300, 'pertanyaan-tk1 font-bold', 'N'),
(48, 1, 1, 7, 6, 3, 0, 0, 29, 350, 'pertanyaan-tk1 font-bold', '2'),
(49, 1, 1, 7, 7, 2, 80, 350, 0, 0, NULL, '\\begin{aligned}\n4.) \\quad \\frac{d^{2} y}{d x^{2}}+5\\left(\\frac{d y}{d x}\\right)^{3}+6 y=0\n\\end{aligned}'),
(50, 1, 1, 7, 7, 3, 0, 0, 29, 300, 'pertanyaan-tk1 font-bold', 'N'),
(51, 1, 1, 7, 7, 3, 0, 0, 29, 350, 'pertanyaan-tk1 font-bold', '2'),
(52, 1, 1, 7, 8, 2, 80, 350, 0, 0, NULL, '\\begin{aligned}\n5.) \\quad y^{(4)}-2 y^{\\prime \\prime}=0\n\\end{aligned}'),
(53, 1, 1, 7, 8, 3, 0, 0, 29, 300, 'pertanyaan-tk1 font-bold', 'L'),
(54, 1, 1, 7, 8, 3, 0, 0, 29, 350, 'pertanyaan-tk1 font-bold', '4'),
(55, 1, 1, 10, 1, 1, 0, 0, 0, 0, NULL, '<b>Penyelesaian Umum Persamaan Diferensial Biasa</b>'),
(56, 1, 1, 10, 2, 1, 0, 0, 0, 0, NULL, 'Buktikan bahwa $y = \\cosh x$ dan $y = \\sinh x$ adalah solusi dari $y^{\\prime \\prime} = y$.'),
(57, 1, 1, 10, 3, 1, 0, 0, 0, 0, NULL, '<b>Instruksi :</b></br>Lengkapilah penyelesaian dari soal di atas dengan mengisi tiap kotak berwarna abu-abu dengan satu karakter yang sesuai kemudian tekan ENTER.'),
(58, 1, 1, 10, 4, 2, 195, 370, 0, 0, NULL, '\\begin{aligned}\n\\frac{d y}{d x} &=\\frac{d}{d x}(A \\cosh x+B \\sinh x) \\\\\ny^\\prime&=\\frac{d}{d x}(A \\cosh x)+\\frac{d}{d x}(B \\sinh x) \\\\\ny^\\prime&=A \\frac{d}{d x}(\\cosh x)+B \\frac{d}{d x}(\\sinh x) \\\\\ny^\\prime&=A {\\textcolor{white}{\\LARGE \\blacksquare}} {\\textcolor{white}{\\LARGE \\blacksquare}} {\\textcolor{white}{\\LARGE \\blacksquare}} {\\textcolor{white}{\\LARGE \\blacksquare}}\n(x)+B {\\textcolor{white}{\\LARGE \\blacksquare}} {\\textcolor{white}{\\LARGE \\blacksquare}} {\\textcolor{white}{\\LARGE \\blacksquare}} {\\textcolor{white}{\\LARGE \\blacksquare}} (x)\n\\end{aligned}'),
(59, 1, 1, 10, 4, 3, 0, 0, 158, 68, 'pertanyaan-tk1 katex-regular', 's'),
(60, 1, 1, 10, 4, 3, 0, 0, 158, 94, 'pertanyaan-tk1 katex-regular', 'i'),
(61, 1, 1, 10, 4, 3, 0, 0, 158, 120, 'pertanyaan-tk1 katex-regular', 'n'),
(62, 1, 1, 10, 4, 3, 0, 0, 158, 146, 'pertanyaan-tk1 katex-regular', 'h'),
(63, 1, 1, 10, 4, 3, 0, 0, 158, 237, 'pertanyaan-tk1 katex-regular', 'c'),
(64, 1, 1, 10, 4, 3, 0, 0, 158, 263, 'pertanyaan-tk1 katex-regular', 'o'),
(65, 1, 1, 10, 4, 3, 0, 0, 158, 289, 'pertanyaan-tk1 katex-regular', 's'),
(66, 1, 1, 10, 4, 3, 0, 0, 158, 315, 'pertanyaan-tk1 katex-regular', 'h'),
(67, 1, 1, 10, 5, 2, 220, 405, 0, 0, NULL, '\\begin{aligned}\n\\frac{d}{d x}\\left(y^{\\prime}\\right) &=\\frac{d}{d x}(A \\sinh x+B \\cosh x) \\\\\ny^{\\prime\\prime}&=\\frac{d}{d x}(A \\sinh x)+\\frac{d}{d x}(B \\cosh x) \\\\\ny^{\\prime\\prime}&=A \\frac{d}{d x}(\\sinh x)+B \\frac{d}{d x}(\\cosh x) \\\\\ny^{\\prime\\prime}&=A {\\textcolor{white}{\\LARGE \\blacksquare}} {\\textcolor{white}{\\LARGE \\blacksquare}} {\\textcolor{white}{\\LARGE \\blacksquare}} {\\textcolor{white}{\\LARGE \\blacksquare}}\n(x)+B {\\textcolor{white}{\\LARGE \\blacksquare}} {\\textcolor{white}{\\LARGE \\blacksquare}} {\\textcolor{white}{\\LARGE \\blacksquare}} {\\textcolor{white}{\\LARGE \\blacksquare}} (x)\\\\\ny^{\\prime\\prime}&=y\n\\end{aligned}'),
(68, 1, 1, 10, 5, 3, 0, 0, 158, 101, 'pertanyaan-tk1 katex-regular', 's'),
(69, 1, 1, 10, 5, 3, 0, 0, 158, 127, 'pertanyaan-tk1 katex-regular', 'i'),
(70, 1, 1, 10, 5, 3, 0, 0, 158, 153, 'pertanyaan-tk1 katex-regular', 'n'),
(71, 1, 1, 10, 5, 3, 0, 0, 158, 179, 'pertanyaan-tk1 katex-regular', 'h'),
(72, 1, 1, 10, 5, 3, 0, 0, 158, 270, 'pertanyaan-tk1 katex-regular', 'c'),
(73, 1, 1, 10, 5, 3, 0, 0, 158, 296, 'pertanyaan-tk1 katex-regular', 'o'),
(74, 1, 1, 10, 5, 3, 0, 0, 158, 322, 'pertanyaan-tk1 katex-regular', 's'),
(75, 1, 1, 10, 5, 3, 0, 0, 158, 348, 'pertanyaan-tk1 katex-regular', 'h'),
(76, 1, 1, 11, 1, 1, 0, 0, 0, 0, NULL, '<b>Penyelesaian Umum Persamaan Diferensial Biasa</b>'),
(77, 1, 1, 11, 2, 1, 0, 0, 0, 0, NULL, 'Buktikan bahwa $y=e^{-ix}$ dan $y=e^{ix}$ adalah penyelesaian dari $y^{\\prime\\prime}=-y$.'),
(78, 1, 1, 11, 3, 1, 0, 0, 0, 0, NULL, '<b>Instruksi :</b></br>Lengkapilah penyelesaian dari soal di atas dengan mengisi tiap kotak berwarna abu-abu dengan satu karakter yang sesuai kemudian tekan ENTER.'),
(79, 1, 1, 11, 4, 2, 170, 260, 0, 0, NULL, '\\begin{aligned}\n\\frac{d y}{d x} &=\\frac{d}{d x}\\left(A e^{-i x}+B e^{i x}\\right) \\\\\ny^\\prime&=A \\frac{d}{d x}\\left(e^{-i x}\\right)+B \\frac{d}{d x}\\left(e^{i x}\\right) \\\\\ny^\\prime&=(-i) A e^{-i x}+i B e^{i x} \\\\\ny^\\prime&=-i A e^{-i x}+i B e^{i x}\n\\end{aligned}'),
(80, 1, 1, 11, 5, 2, 360, 370, 0, 0, NULL, '\\begin{aligned}\n\\frac{d^{2} y}{d x^{2}}&=\\frac{d}{d x}\\left(-i A e^{-i x}+i B e^{i x}\\right) \\\\\ny^{\\prime \\prime}&=-i A \\frac{d}{d x}\\left(e^{-i x}\\right)+i B \\frac{d}{d x}\\left(e^{i x}\\right) \\\\\ny^{\\prime \\prime}&={\\textcolor{white}{\\LARGE \\blacksquare}} {\\textcolor{white}{\\LARGE \\blacksquare}} ({\\textcolor{white}{\\LARGE \\blacksquare}} {\\textcolor{white}{\\LARGE \\blacksquare}}) A e^{-i x}+{\\textcolor{white}{\\LARGE \\blacksquare}}({\\textcolor{white}{\\LARGE \\blacksquare}}) B e^{i x} \\\\\ny^{\\prime \\prime}&={\\textcolor{white}{\\LARGE \\blacksquare}}^{{\\textcolor{white}{\\Large \\blacksquare}}} A e^{-i x}+{\\textcolor{white}{\\LARGE \\blacksquare}}^{{\\textcolor{white}{\\Large \\blacksquare}}} B e^{i x} \\\\\ny^{\\prime \\prime}&={\\textcolor{white}{\\LARGE \\blacksquare}}^{{\\textcolor{white}{\\Large \\blacksquare}}}\\left(A e^{-i x}+B e^{i x}\\right)\\\\\ny^{\\prime \\prime}&=(\\sqrt{{\\textcolor{white}{\\LARGE \\blacksquare}} {\\textcolor{white}{\\LARGE \\blacksquare}}})^{{\\textcolor{white}{\\Large \\blacksquare}}}\\left(A e^{-i x}+B e^{i x}\\right) \\\\\ny^{\\prime \\prime}&={\\textcolor{white}{\\LARGE \\blacksquare}} {\\textcolor{white}{\\LARGE \\blacksquare}}\\left(A e^{-i x}+B e^{i x}\\right) \\\\\ny^{\\prime \\prime}&=-y\n\\end{aligned}'),
(81, 1, 1, 11, 5, 3, 0, 0, 114, 65, 'pertanyaan-tk1 katex-italic', '-'),
(82, 1, 1, 11, 5, 3, 0, 0, 114, 92, 'pertanyaan-tk1 katex-italic', 'i'),
(83, 1, 1, 11, 5, 3, 0, 0, 114, 124, 'pertanyaan-tk1 katex-italic', '-'),
(84, 1, 1, 11, 5, 3, 0, 0, 114, 150, 'pertanyaan-tk1 katex-italic', 'i'),
(85, 1, 1, 11, 5, 3, 0, 0, 114, 256, 'pertanyaan-tk1 katex-italic', 'i'),
(86, 1, 1, 11, 5, 3, 0, 0, 114, 288, 'pertanyaan-tk1 katex-italic', 'i'),
(87, 1, 1, 11, 5, 3, 0, 0, 164, 65, 'pertanyaan-tk1 katex-italic', 'i'),
(88, 1, 1, 11, 5, 3, 0, 0, 149, 91, 'pertanyaan-tk2 katex-regular', '2'),
(89, 1, 1, 11, 5, 3, 0, 0, 164, 185, 'pertanyaan-tk1 katex-italic', 'i'),
(90, 1, 1, 11, 5, 3, 0, 0, 149, 211, 'pertanyaan-tk2 katex-regular', '2'),
(91, 1, 1, 11, 5, 3, 0, 0, 213, 65, 'pertanyaan-tk1 katex-italic', 'i'),
(92, 1, 1, 11, 5, 3, 0, 0, 198, 91, 'pertanyaan-tk2 katex-regular', '2'),
(93, 1, 1, 11, 5, 3, 0, 0, 257, 92, 'pertanyaan-tk1 katex-italic', '-'),
(94, 1, 1, 11, 5, 3, 0, 0, 257, 118, 'pertanyaan-tk1 katex-regular', '1'),
(95, 1, 1, 11, 5, 3, 0, 0, 253, 149, 'pertanyaan-tk2 katex-regular', '2'),
(96, 1, 1, 11, 5, 3, 0, 0, 293, 65, 'pertanyaan-tk1 katex-italic', '-'),
(97, 1, 1, 11, 5, 3, 0, 0, 293, 92, 'pertanyaan-tk1 katex-regular', '1'),
(98, 1, 1, 13, 1, 1, 0, 0, 0, 0, NULL, '<b>Penyelesaian Khusus Persamaan Diferensial Biasa</b>'),
(99, 1, 1, 13, 2, 1, 0, 0, 0, 0, NULL, 'Jawablah Contoh 6 menggunakan penyelesaian umum $y=A\\sinh x +B\\cosh x$.'),
(100, 1, 1, 13, 3, 1, 0, 0, 0, 0, NULL, '<b>Instruksi :</b></br>Lengkapilah penyelesaian dari soal di atas dengan mengisi tiap kotak berwarna abu-abu dengan satu karakter yang sesuai kemudian tekan ENTER.'),
(101, 1, 1, 13, 4, 2, 100, 305, 0, 0, NULL, '\\begin{aligned}\ny&=A \\sinh x+B \\cosh x \\\\\n&=A\\left(\\frac{e^{x}-e^{-x}}{2}\\right)+B\\left(\\frac{e^{x}+e^{-x}}{2}\\right)\n\\end{aligned}'),
(102, 1, 1, 13, 5, 2, 300, 340, 0, 0, NULL, '\\begin{aligned}\ny&=A\\left(\\frac{e^{x}-e^{-x}}{2}\\right)+B\\left(\\frac{e^{x}+e^{-x}}{2}\\right) \\\\\n0&=A\\left(\\frac{e^{0}-e^{-0}}{2}\\right)+B\\left(\\frac{e^{0}+e^{-0}}{2}\\right) \\\\\n0&=A\\left(\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}}-{\\textcolor{white}{\\LARGE \\blacksquare}}}{2}\\right)+B\\left(\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}}+{\\textcolor{white}{\\LARGE \\blacksquare}}}{2}\\right) \\\\\n0&=A({\\textcolor{white}{\\LARGE \\blacksquare}})+B({\\textcolor{white}{\\LARGE \\blacksquare}}) \\\\\n{\\textcolor{white}{\\LARGE \\blacksquare}}&={\\textcolor{white}{\\LARGE \\blacksquare}} \\\\\n{\\textcolor{white}{\\LARGE \\blacksquare}}&={\\textcolor{white}{\\LARGE \\blacksquare}}\n\\end{aligned}'),
(103, 1, 1, 13, 5, 3, 0, 0, 125, 90, 'pertanyaan-tk1 katex-regular', '1'),
(104, 1, 1, 13, 5, 3, 0, 0, 125, 140, 'pertanyaan-tk1 katex-regular', '1'),
(105, 1, 1, 13, 5, 3, 0, 0, 125, 244, 'pertanyaan-tk1 katex-regular', '1'),
(106, 1, 1, 13, 5, 3, 0, 0, 125, 294, 'pertanyaan-tk1 katex-regular', '1'),
(107, 1, 1, 13, 5, 3, 0, 0, 191, 77, 'pertanyaan-tk1 katex-regular', '0'),
(108, 1, 1, 13, 5, 3, 0, 0, 191, 157, 'pertanyaan-tk1 katex-regular', '1'),
(109, 1, 1, 13, 5, 3, 0, 0, 226, 3, 'pertanyaan-tk1 katex-regular', '0'),
(110, 1, 1, 13, 5, 3, 0, 0, 226, 55, 'pertanyaan-tk1 katex-italic', 'B'),
(111, 1, 1, 13, 5, 3, 0, 0, 261, 3, 'pertanyaan-tk1 katex-italic', 'B'),
(112, 1, 1, 13, 5, 3, 0, 0, 261, 55, 'pertanyaan-tk1 katex-regular', '0'),
(113, 1, 1, 13, 6, 2, 410, 340, 0, 0, NULL, '\\begin{aligned}\n&y=A\\left(\\frac{e^{x}-e^{-x}}{2}\\right)+B\\left(\\frac{e^{x}+e^{-x}}{2}\\right) \\\\\n&\\frac{3}{4}=A\\left(\\frac{e^{\\ln 2}-e^{-\\ln 2}}{2}\\right)+(0)\\left(\\frac{e^{\\ln 2}+e^{-\\ln 2}}{2}\\right) \\\\\n&\\frac{3}{4}= A\\left(\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}}-\\frac{{\\textcolor{white}{\\Large \\blacksquare}}}{{\\textcolor{white}{\\Large \\blacksquare}}}}{2}\\right) \\\\\n&\\frac{3}{4}=A\\left(\\frac{\\frac{{\\textcolor{white}{\\Large \\blacksquare}}}{{\\textcolor{white}{\\Large \\blacksquare}}}}{2}\\right) \\\\\n&\\frac{3}{4}=A\\left(\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}}}{{\\textcolor{white}{\\LARGE \\blacksquare}}}\\right) \\\\\n&A={\\textcolor{white}{\\LARGE \\blacksquare}}\n\\end{aligned}'),
(114, 1, 1, 13, 6, 3, 0, 0, 130, 83, 'pertanyaan-tk1 katex-regular', '2'),
(115, 1, 1, 13, 6, 3, 0, 0, 121, 135, 'pertanyaan-tk2 katex-regular', '1'),
(116, 1, 1, 13, 6, 3, 0, 0, 143, 135, 'pertanyaan-tk2 katex-regular', '2'),
(117, 1, 1, 13, 6, 3, 0, 0, 212, 85, 'pertanyaan-tk2 katex-regular', '3'),
(118, 1, 1, 13, 6, 3, 0, 0, 234, 85, 'pertanyaan-tk2 katex-regular', '2'),
(119, 1, 1, 13, 6, 3, 0, 0, 308, 81, 'pertanyaan-tk1 katex-regular', '3'),
(120, 1, 1, 13, 6, 3, 0, 0, 342, 81, 'pertanyaan-tk1 katex-regular', '4'),
(121, 1, 1, 13, 6, 3, 0, 0, 373, 47, 'pertanyaan-tk1 katex-regular', '1'),
(122, 1, 1, 13, 7, 2, 115, 260, 0, 0, NULL, '\\begin{aligned}\n&y=A \\sinh x+B \\cosh x \\\\\n&y=({\\textcolor{white}{\\LARGE \\blacksquare}}) \\sinh x+({\\textcolor{white}{\\LARGE \\blacksquare}}) \\cosh x \\\\\n&y=\\sinh x\n\\end{aligned}'),
(123, 1, 1, 13, 7, 3, 0, 0, 49, 47, 'pertanyaan-tk1 katex-regular', '1'),
(124, 1, 1, 13, 7, 3, 0, 0, 49, 164, 'pertanyaan-tk1 katex-regular', '0'),
(125, 1, 1, 14, 1, 1, 0, 0, 0, 0, NULL, '<b>Penyelesaian Khusus Persamaan Diferensial Biasa</b>'),
(126, 1, 1, 14, 2, 1, 0, 0, 0, 0, NULL, 'Tentukan jarak yang ditempuh sebuah benda yang bergerak dalam waktu $t$ jika semula dalam keadaan diam dan percepatannya $d^{2}x/dt^2=ge^{-kt}$. Tunjukkan bahwa untuk waktu $t$ yang singkat hasilnya mendekati persamaan $(20)$, dan untuk waktu $t$ yang panjang, kelajuan $dx/dt$ mendekati konstan. Kekonstantan itu disebut kelajuan terminal. (Persoalan ini berkaitan secara kasar dengan gerak penerbang parasut).  '),
(127, 1, 1, 14, 3, 1, 0, 0, 0, 0, NULL, '<b>Instruksi :</b></br>Lengkapilah penyelesaian dari soal di atas dengan mengisi tiap kotak berwarna abu-abu dengan satu karakter yang sesuai kemudian tekan ENTER.'),
(128, 1, 1, 14, 4, 2, 70, 145, 0, 0, NULL, '\\begin{aligned}\na=\\frac{d^{2} x}{d t^{2}}=g e^{-k t}\n\\end{aligned}'),
(129, 1, 1, 14, 5, 1, 0, 0, 0, 0, NULL, 'Penyelesaian umum'),
(130, 1, 1, 14, 5, 2, 235, 230, 0, 0, '[NULL]', '\\begin{aligned}\nv=\\frac{d x}{d t} &=\\int g e^{-kt} d t \\\\\n\\frac{d x}{d t} &=g \\int e^{-kt} d t \\\\\n\\frac{d x}{d t} &=g\\left(\\frac{e^{-k t}}{{\\textcolor{white}{\\LARGE \\blacksquare}} {\\textcolor{white}{\\LARGE \\blacksquare}}}\\right)+A \\\\\n\\frac{d x}{d t} &={\\textcolor{white}{\\LARGE \\blacksquare}}\\frac{g}{{\\textcolor{white}{\\LARGE \\blacksquare}}} e^{-k t}+A\n\\end{aligned}'),
(131, 1, 1, 14, 5, 3, 0, 0, 141, 118, 'pertanyaan-tk1 katex-italic', '-'),
(132, 1, 1, 14, 5, 3, 0, 0, 141, 145, 'pertanyaan-tk1 katex-italic', 'k'),
(133, 1, 1, 14, 5, 3, 0, 0, 173, 88, 'pertanyaan-tk1 katex-italic', '-'),
(134, 1, 1, 14, 5, 3, 0, 0, 190, 119, 'pertanyaan-tk1 katex-italic', 'k'),
(135, 1, 1, 14, 6, 1, 0, 0, 0, 0, '[NULL]', 'Benda semula dalam keadaan diam.'),
(136, 1, 1, 14, 6, 2, 150, 130, 0, 0, '[NULL]', '\\begin{aligned}\nv=\\frac{d x}{d t} &=0 \\\\\n\\int\\frac{d x}{d t} &=0 \\\\\n{\\textcolor{white}{\\LARGE \\blacksquare}}({\\textcolor{white}{\\LARGE \\blacksquare}}) &={\\textcolor{white}{\\LARGE \\blacksquare}} \n\\end{aligned}'),
(137, 1, 1, 14, 6, 3, 0, 0, 115, 2, 'pertanyaan-tk1 katex-italic', 'x'),
(138, 1, 1, 14, 6, 3, 0, 0, 115, 37, 'pertanyaan-tk1 katex-italic', 't'),
(139, 1, 1, 14, 6, 3, 0, 0, 115, 94, 'pertanyaan-tk1 katex-regular', '0'),
(140, 1, 1, 14, 7, 2, 220, 200, 0, 0, '[NULL]', '\\begin{aligned}\n&\\frac{d x}{d t}={\\textcolor{white}{\\LARGE \\blacksquare}}\\frac{g}{{\\textcolor{white}{\\LARGE \\blacksquare}}} e^{-kt}+A \\\\\n&0={\\textcolor{white}{\\LARGE \\blacksquare}}\\frac{g}{{\\textcolor{white}{\\LARGE \\blacksquare}}} e^{-k({\\textcolor{white}{\\Large \\blacksquare}})}+A \\\\\n&0={\\textcolor{white}{\\LARGE \\blacksquare}}\\frac{g}{{\\textcolor{white}{\\LARGE \\blacksquare}}} ({\\textcolor{white}{\\LARGE \\blacksquare}})+A \\\\\n&A=\\frac{g}{k}\n\\end{aligned}'),
(141, 1, 1, 14, 7, 3, 0, 0, 23, 55, 'pertanyaan-tk1 katex-italic', '-'),
(142, 1, 1, 14, 7, 3, 0, 0, 39, 84, 'pertanyaan-tk1 katex-italic', 'k'),
(143, 1, 1, 14, 7, 3, 0, 0, 77, 38, 'pertanyaan-tk1 katex-italic', '-'),
(144, 1, 1, 14, 7, 3, 0, 0, 93, 67, 'pertanyaan-tk1 katex-italic', 'k'),
(145, 1, 1, 14, 7, 3, 0, 0, 72, 127, 'pertanyaan-tk2 katex-regular', '0'),
(146, 1, 1, 14, 7, 3, 0, 0, 126, 38, 'pertanyaan-tk1 katex-regular', '-'),
(147, 1, 1, 14, 7, 3, 0, 0, 140, 67, 'pertanyaan-tk1 katex-italic', 'k'),
(148, 1, 1, 14, 7, 3, 0, 0, 126, 103, 'pertanyaan-tk1 katex-regular', '1'),
(149, 1, 1, 14, 8, 1, 0, 0, 0, 0, '[NULL]', 'Subtitusi konstanta'),
(150, 1, 1, 14, 8, 2, 150, 210, 0, 0, '[NULL]', '\\begin{aligned}\n&\\frac{d x}{d t}={\\textcolor{white}{\\LARGE \\blacksquare}}\\frac{g}{{\\textcolor{white}{\\LARGE \\blacksquare}}} e^{-kt}+A \\\\\n&\\frac{d x}{d t}={\\textcolor{white}{\\LARGE \\blacksquare}}\\frac{g}{{\\textcolor{white}{\\LARGE \\blacksquare}}} e^{-kt}+\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}}}{{\\textcolor{white}{\\LARGE \\blacksquare}}}\n\\end{aligned}'),
(151, 1, 1, 14, 8, 3, 0, 0, 23, 57, 'pertanyaan-tk1 katex-italic', '-'),
(152, 1, 1, 14, 8, 3, 0, 0, 39, 82, 'pertanyaan-tk1 katex-italic', 'k'),
(153, 1, 1, 14, 8, 3, 0, 0, 85, 54, 'pertanyaan-tk1 katex-italic', '-'),
(154, 1, 1, 14, 8, 3, 0, 0, 100, 82, 'pertanyaan-tk1 katex-italic', 'k'),
(155, 1, 1, 14, 8, 3, 0, 0, 72, 170, 'pertanyaan-tk1 katex-italic', 'g'),
(156, 1, 1, 14, 8, 3, 0, 0, 100, 170, 'pertanyaan-tk1 katex-italic', 'k'),
(157, 1, 1, 14, 9, 1, 0, 0, 0, 0, '[NULL]', 'Untuk nilai $t$ yang besar'),
(158, 1, 1, 14, 9, 2, 85, 105, 0, 0, '[NULL]', '\\begin{aligned}\nt & \\rightarrow \\infty \\\\\ne^{-kt} & \\rightarrow {\\textcolor{white}{\\LARGE \\blacksquare}}\n\\end{aligned}'),
(159, 1, 1, 14, 9, 3, 0, 0, 48, 66, 'pertanyaan-tk1 katex-regular', '1'),
(160, 1, 1, 14, 10, 2, 240, 215, 0, 0, '[NULL]', '\\begin{aligned}\n\\frac{d x}{d t} &={\\textcolor{white}{\\LARGE \\blacksquare}}\\frac{g}{{\\textcolor{white}{\\LARGE \\blacksquare}}} e^{-k t}+\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}}}{{\\textcolor{white}{\\LARGE \\blacksquare}}} \\\\\n&={\\textcolor{white}{\\LARGE \\blacksquare}}\\frac{g}{{\\textcolor{white}{\\LARGE \\blacksquare}}}({\\textcolor{white}{\\LARGE \\blacksquare}})+\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}}}{{\\textcolor{white}{\\LARGE \\blacksquare}}} \\\\\n&=\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}}}{{\\textcolor{white}{\\LARGE \\blacksquare}}} \\\\\n&=\\text { konstan }\n\\end{aligned}'),
(161, 1, 1, 14, 10, 3, 0, 0, 32, 54, 'pertanyaan-tk1 katex-italic', '-'),
(162, 1, 1, 14, 10, 3, 0, 0, 47, 82, 'pertanyaan-tk1 katex-italic', 'k'),
(163, 1, 1, 14, 10, 3, 0, 0, 19, 172, 'pertanyaan-tk1 katex-italic', 'g'),
(164, 1, 1, 14, 10, 3, 0, 0, 47, 172, 'pertanyaan-tk1 katex-italic', 'k'),
(165, 1, 1, 14, 10, 3, 0, 0, 94, 54, 'pertanyaan-tk1 katex-italic', '-'),
(166, 1, 1, 14, 10, 3, 0, 0, 110, 82, 'pertanyaan-tk1 katex-italic', 'k'),
(167, 1, 1, 14, 10, 3, 0, 0, 94, 118, 'pertanyaan-tk1 katex-regular', '0'),
(168, 1, 1, 14, 10, 3, 0, 0, 81, 178, 'pertanyaan-tk1 katex-italic', 'g'),
(169, 1, 1, 14, 10, 3, 0, 0, 110, 178, 'pertanyaan-tk1 katex-italic', 'k'),
(170, 1, 1, 14, 10, 3, 0, 0, 144, 56, 'pertanyaan-tk1 katex-italic', 'g'),
(171, 1, 1, 14, 10, 3, 0, 0, 173, 56, 'pertanyaan-tk1 katex-italic', 'k'),
(172, 1, 1, 14, 11, 2, 230, 360, 0, 0, '[NULL]', '\\begin{aligned}\n\\int\\frac{d x}{d t} &={\\textcolor{white}{\\LARGE \\blacksquare}}\\frac{g}{{\\textcolor{white}{\\LARGE \\blacksquare}}} \\int e^{-k t} d t+\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}}}{{\\textcolor{white}{\\LARGE \\blacksquare}}} \\int d t \\\\\n{\\textcolor{white}{\\LARGE \\blacksquare}}({\\textcolor{white}{\\LARGE \\blacksquare}}) &={\\textcolor{white}{\\LARGE \\blacksquare}}\\frac{g}{{\\textcolor{white}{\\LARGE \\blacksquare}}} \\int e^{-k t} d t+\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}}}{{\\textcolor{white}{\\LARGE \\blacksquare}}} \\int d t \\\\\n&=\\frac{g}{{\\textcolor{white}{\\LARGE \\blacksquare}}^{{\\textcolor{white}{\\Large \\blacksquare}}}} e^{-k t}+\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}}}{{\\textcolor{white}{\\LARGE \\blacksquare}}} {\\textcolor{white}{\\LARGE \\blacksquare}}+B\n\\end{aligned}'),
(173, 1, 1, 14, 11, 3, 0, 0, 33, 98, 'pertanyaan-tk1 katex-italic', '-'),
(174, 1, 1, 14, 11, 3, 0, 0, 48, 124, 'pertanyaan-tk1 katex-italic', 'k'),
(175, 1, 1, 14, 11, 3, 0, 0, 21, 255, 'pertanyaan-tk1 katex-italic', 'g'),
(176, 1, 1, 14, 11, 3, 0, 0, 48, 255, 'pertanyaan-tk1 katex-italic', 'k'),
(177, 1, 1, 14, 11, 3, 0, 0, 94, 2, 'pertanyaan-tk1 katex-italic', 'x'),
(178, 1, 1, 14, 11, 3, 0, 0, 94, 37, 'pertanyaan-tk1 katex-italic', 't'),
(179, 1, 1, 14, 11, 3, 0, 0, 94, 96, 'pertanyaan-tk1 katex-regular', '-'),
(180, 1, 1, 14, 11, 3, 0, 0, 111, 124, 'pertanyaan-tk1 katex-italic', 'k'),
(181, 1, 1, 14, 11, 3, 0, 0, 82, 254, 'pertanyaan-tk1 katex-italic', 'g'),
(182, 1, 1, 14, 11, 3, 0, 0, 111, 254, 'pertanyaan-tk1 katex-italic', 'k'),
(183, 1, 1, 14, 11, 3, 0, 0, 186, 99, 'pertanyaan-tk1 katex-italic', 'k'),
(184, 1, 1, 14, 11, 3, 0, 0, 172, 124, 'pertanyaan-tk2 katex-regular', '2'),
(185, 1, 1, 14, 11, 3, 0, 0, 144, 208, 'pertanyaan-tk1 katex-italic', 'g'),
(186, 1, 1, 14, 11, 3, 0, 0, 172, 208, 'pertanyaan-tk1 katex-italic', 'k'),
(187, 1, 1, 14, 11, 3, 0, 0, 156, 236, 'pertanyaan-tk1 katex-italic', 't'),
(188, 1, 1, 14, 12, 2, 230, 260, 0, 0, '[NULL]', '\\begin{aligned}\n&x=\\frac{g}{{\\textcolor{white}{\\LARGE \\blacksquare}}^{{\\textcolor{white}{\\Large \\blacksquare}}}} e^{-k t}+\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}}}{{\\textcolor{white}{\\LARGE \\blacksquare}}} {\\textcolor{white}{\\LARGE \\blacksquare}}+B\\\\\n&0=\\frac{g}{{\\textcolor{white}{\\LARGE \\blacksquare}}^{{\\textcolor{white}{\\Large \\blacksquare}}}} e^{-k(0)}+\\frac{g}{k}(0)+B \\\\\n&B={\\textcolor{white}{\\LARGE \\blacksquare}}\\frac{g}{{\\textcolor{white}{\\LARGE \\blacksquare}}^{{\\textcolor{white}{\\Large \\blacksquare}}}}\n\\end{aligned}'),
(189, 1, 1, 14, 12, 3, 0, 0, 62, 42, 'pertanyaan-tk1 katex-italic', 'k'),
(190, 1, 1, 14, 12, 3, 0, 0, 48, 67, 'pertanyaan-tk2 katex-regular', '2'),
(191, 1, 1, 14, 12, 3, 0, 0, 21, 152, 'pertanyaan-tk1 katex-italic', 'g'),
(192, 1, 1, 14, 12, 3, 0, 0, 48, 152, 'pertanyaan-tk1 katex-italic', 'k'),
(193, 1, 1, 14, 12, 3, 0, 0, 33, 181, 'pertanyaan-tk1 katex-italic', 't'),
(194, 1, 1, 14, 12, 3, 0, 0, 124, 42, 'pertanyaan-tk1 katex-italic', 'k'),
(195, 1, 1, 14, 12, 3, 0, 0, 111, 67, 'pertanyaan-tk2 katex-regular', '2'),
(196, 1, 1, 14, 12, 3, 0, 0, 158, 45, 'pertanyaan-tk1 katex-italic', '-'),
(197, 1, 1, 14, 12, 3, 0, 0, 186, 70, 'pertanyaan-tk1 katex-italic', 'g'),
(198, 1, 1, 14, 12, 3, 0, 0, 173, 99, 'pertanyaan-tk2 katex-regular', 'k'),
(199, 1, 1, 14, 13, 2, 185, 320, 0, 0, '[NULL]', '\\begin{aligned}\nx(t) &=\\frac{g}{{\\textcolor{white}{\\LARGE \\blacksquare}}^{{\\textcolor{white}{\\Large \\blacksquare}}}} e^{-k t}+\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}}}{{\\textcolor{white}{\\LARGE \\blacksquare}}} {\\textcolor{white}{\\LARGE \\blacksquare}}+B \\\\\n&=\\frac{g}{{\\textcolor{white}{\\LARGE \\blacksquare}}^{{\\textcolor{white}{\\Large \\blacksquare}}}} e^{-k t}+\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}}}{{\\textcolor{white}{\\LARGE \\blacksquare}}} {\\textcolor{white}{\\LARGE \\blacksquare}}-\\frac{g}{{\\textcolor{white}{\\LARGE \\blacksquare}}^{{\\textcolor{white}{\\Large \\blacksquare}}}}\n\\end{aligned}'),
(200, 1, 1, 14, 13, 3, 0, 0, 63, 63, 'pertanyaan-tk1 katex-italic', 'k'),
(201, 1, 1, 14, 13, 3, 0, 0, 49, 89, 'pertanyaan-tk2 katex-regular', '2'),
(202, 1, 1, 14, 13, 3, 0, 0, 21, 173, 'pertanyaan-tk1 katex-italic', 'g'),
(203, 1, 1, 14, 13, 3, 0, 0, 49, 173, 'pertanyaan-tk1 katex-italic', 'k'),
(204, 1, 1, 14, 13, 3, 0, 0, 34, 200, 'pertanyaan-tk1 katex-italic', 't'),
(205, 1, 1, 14, 13, 3, 0, 0, 139, 63, 'pertanyaan-tk1 katex-regular', 'k'),
(206, 1, 1, 14, 13, 3, 0, 0, 125, 89, 'pertanyaan-tk2 katex-regular', '2'),
(207, 1, 1, 14, 13, 3, 0, 0, 97, 173, 'pertanyaan-tk1 katex-italic', 'g'),
(208, 1, 1, 14, 13, 3, 0, 0, 125, 173, 'pertanyaan-tk1 katex-italic', 'k'),
(209, 1, 1, 14, 13, 3, 0, 0, 109, 200, 'pertanyaan-tk1 katex-italic', 't'),
(210, 1, 1, 14, 13, 3, 0, 0, 139, 253, 'pertanyaan-tk1 katex-regular', 'k'),
(211, 1, 1, 14, 13, 3, 0, 0, 125, 279, 'pertanyaan-tk2 katex-regular', '2'),
(212, 1, 2, 2, 1, 1, 0, 0, 0, 0, '[NULL]', '<b>Penyelesaian Umum Persamaan Diferensial Biasa</b>'),
(213, 1, 2, 2, 2, 1, 0, 0, 0, 0, '[NULL]', 'Pisahkan persamaan diferensial di bawah ini dan temukan sebuah penyelesaian yang mengandung satu konstanta bebas. Lalu temukan nilai dari konstanta tersebut  untuk menentukan penyelesaian khususnya yang memenuhi kondisi batas yang sudah diketahui.'),
(214, 1, 2, 2, 2, 2, 90, 385, 0, 0, '[NULL]', '\\begin{aligned}\r\ny^{\\prime}=\\frac{2 x y^{2}+x}{x^{2} y-y} \\quad \\text { untuk } \\quad y=0 \\text {, saat } x=\\sqrt{2}\r\n\\end{aligned}'),
(215, 1, 2, 2, 3, 1, 0, 0, 0, 0, '[NULL]', '<b>Instruksi :</b></br>Lengkapilah penyelesaian dari soal di atas dengan mengisi tiap kotak berwarna abu-abu dengan satu karakter yang sesuai kemudian tekan ENTER.'),
(216, 1, 2, 2, 4, 2, 320, 420, 0, 0, '[NULL]', '\\begin{aligned}\ny^{\\prime}&=\\frac{2 x y^{2}+x}{x^{2} y-y} \\\\\n\\frac{d y}{d x}&=\\frac{2 x y^{2}+x}{x^{2} y-y} \\\\\n\\frac{d y}{d x}&=\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}}\\left(2 {\\textcolor{white}{\\LARGE \\blacksquare}}^{2}+{\\textcolor{white}{\\LARGE \\blacksquare}}\\right)}{{\\textcolor{white}{\\LARGE \\blacksquare}}\\left({\\textcolor{white}{\\LARGE \\blacksquare}}^{2}-{\\textcolor{white}{\\LARGE \\blacksquare}}\\right)}&=\\frac {{\\textcolor{white}{\\LARGE \\blacksquare}}(u)} {{\\textcolor{white}{\\LARGE \\blacksquare}}(v)} \\\\\n\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}} d y}{\\left(2 {\\textcolor{white}{\\LARGE \\blacksquare}}^{2}+{\\textcolor{white}{\\LARGE \\blacksquare}}\\right)}&=\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}}d x}{\\left({\\textcolor{white}{\\LARGE \\blacksquare}}^{2}-{\\textcolor{white}{\\LARGE \\blacksquare}}\\right)}\n\\end{aligned}'),
(217, 1, 2, 2, 4, 3, 0, 0, 129, 164, 'pertanyaan-tk1 katex-italic', 'x'),
(218, 1, 2, 2, 4, 3, 0, 0, 129, 212, 'pertanyaan-tk1 katex-italic', 'y'),
(219, 1, 2, 2, 4, 3, 0, 0, 129, 272, 'pertanyaan-tk1 katex-regular', '1'),
(220, 1, 2, 2, 4, 3, 0, 0, 180, 164, 'pertanyaan-tk1 katex-italic', 'y'),
(221, 1, 2, 2, 4, 3, 0, 0, 180, 208, 'pertanyaan-tk1 katex-italic', 'x'),
(222, 1, 2, 2, 4, 3, 0, 0, 180, 268, 'pertanyaan-tk1 katex-regular', '1'),
(223, 1, 2, 2, 4, 3, 0, 0, 140, 355, 'pertanyaan-tk1 katex-italic', 'x'),
(224, 1, 2, 2, 4, 3, 0, 0, 175, 355, 'pertanyaan-tk1 katex-italic', 'y'),
(227, 1, 2, 2, 4, 3, 0, 0, 228, 41, 'pertanyaan-tk1 katex-italic', 'y'),
(228, 1, 2, 2, 4, 3, 0, 0, 267, 35, 'pertanyaan-tk1 katex-italic', 'y'),
(229, 1, 2, 2, 4, 3, 0, 0, 267, 86, 'pertanyaan-tk1 katex-regular', '1'),
(230, 1, 2, 2, 4, 3, 0, 0, 228, 190, 'pertanyaan-tk1 katex-italic', 'x'),
(231, 1, 2, 2, 4, 3, 0, 0, 267, 177, 'pertanyaan-tk1 katex-italic', 'x'),
(232, 1, 2, 2, 4, 3, 0, 0, 267, 228, 'pertanyaan-tk1 katex-regular', '1'),
(233, 1, 2, 2, 5, 2, 190, 210, 0, 0, '[NULL]', '\\begin{aligned}\n2 {\\textcolor{white}{\\LARGE \\blacksquare}}^{2}+{\\textcolor{white}{\\LARGE \\blacksquare}}&=u \\\\\n{\\textcolor{white}{\\LARGE \\blacksquare}}.2 {\\textcolor{white}{\\LARGE \\blacksquare}} d y+{\\textcolor{white}{\\LARGE \\blacksquare}}&=d u \\\\\n{\\textcolor{white}{\\LARGE \\blacksquare}} {\\textcolor{white}{\\LARGE \\blacksquare}} d y&=d u \\\\\n{\\textcolor{white}{\\LARGE \\blacksquare}} d y&=\\frac{d u}{{\\textcolor{white}{\\LARGE \\blacksquare}}}\n\\end{aligned}'),
(234, 1, 2, 2, 5, 3, 0, 0, 24, 58, 'pertanyaan-tk1 katex-italic', 'y'),
(235, 1, 2, 2, 5, 3, 0, 0, 24, 113, 'pertanyaan-tk1 katex-regular', '1'),
(236, 1, 2, 2, 5, 3, 0, 0, 61, 3, 'pertanyaan-tk1 katex-regular', '2'),
(237, 1, 2, 2, 5, 3, 0, 0, 61, 43, 'pertanyaan-tk1 katex-italic', 'y'),
(238, 1, 2, 2, 5, 3, 0, 0, 61, 113, 'pertanyaan-tk1 katex-regular', '0'),
(239, 1, 2, 2, 5, 3, 0, 0, 94, 68, 'pertanyaan-tk1 katex-regular', '4'),
(240, 1, 2, 2, 5, 3, 0, 0, 94, 94, 'pertanyaan-tk1 katex-italic', 'y'),
(241, 1, 2, 2, 5, 3, 0, 0, 133, 94, 'pertanyaan-tk1 katex-italic', 'y'),
(242, 1, 2, 2, 5, 3, 0, 0, 149, 170, 'pertanyaan-tk1 katex-regular', '4'),
(243, 1, 2, 2, 6, 2, 180, 190, 0, 0, '[NULL]', '\\begin{aligned}\n{\\textcolor{white}{\\LARGE \\blacksquare}}^{2}-{\\textcolor{white}{\\LARGE \\blacksquare}}&=v \\\\\n{\\textcolor{white}{\\LARGE \\blacksquare}} {\\textcolor{white}{\\LARGE \\blacksquare}} d x-{\\textcolor{white}{\\LARGE \\blacksquare}}&=d v \\\\\n{\\textcolor{white}{\\LARGE \\blacksquare}} d x&=\\frac{d v}{{\\textcolor{white}{\\LARGE \\blacksquare}}}\n\\end{aligned}'),
(244, 1, 2, 2, 6, 3, 0, 0, 23, 42, 'pertanyaan-tk1 katex-italic', 'x'),
(245, 1, 2, 2, 6, 3, 0, 0, 23, 103, 'pertanyaan-tk1 katex-regular', '1'),
(246, 1, 2, 2, 6, 3, 0, 0, 58, 3, 'pertanyaan-tk1 katex-regular', '2'),
(247, 1, 2, 2, 6, 3, 0, 0, 58, 29, 'pertanyaan-tk1 katex-italic', 'x'),
(248, 1, 2, 2, 6, 3, 0, 0, 58, 99, 'pertanyaan-tk1 katex-regular', '0'),
(249, 1, 2, 2, 6, 3, 0, 0, 97, 79, 'pertanyaan-tk1 katex-italic', 'x'),
(250, 1, 2, 2, 6, 3, 0, 0, 114, 155, 'pertanyaan-tk1 katex-regular', '2'),
(251, 1, 2, 2, 7, 2, 805, 500, 0, 0, '[NULL]', '\\begin{aligned}\n\\int \\frac{{\\textcolor{white}{\\LARGE \\blacksquare}} d y}{\\left(2 {\\textcolor{white}{\\LARGE \\blacksquare}}^{2}+{\\textcolor{white}{\\LARGE \\blacksquare}}\\right)}&=\\int \\frac{{\\textcolor{white}{\\LARGE \\blacksquare}}d x}{\\left({\\textcolor{white}{\\LARGE \\blacksquare}}^{2}-{\\textcolor{white}{\\LARGE \\blacksquare}}\\right)} \\\\\n\\frac{1}{{\\textcolor{white}{\\LARGE \\blacksquare}}} \\int \\frac{d u}{u}&=\\frac{1}{{\\textcolor{white}{\\LARGE \\blacksquare}}} \\int \\frac{d v}{v} \\\\\n\\frac{1}{{\\textcolor{white}{\\LARGE \\blacksquare}}} \\ln u&=\\frac{1}{{\\textcolor{white}{\\LARGE \\blacksquare}}} \\ln v+C \\\\\n\\frac{1}{{\\textcolor{white}{\\LARGE \\blacksquare}}} \\ln \\left(2 {\\textcolor{white}{\\LARGE \\blacksquare}}^{2}+{\\textcolor{white}{\\LARGE \\blacksquare}}\\right)&=\\frac{1}{{\\textcolor{white}{\\LARGE \\blacksquare}}} \\ln \\left({\\textcolor{white}{\\LARGE \\blacksquare}}^{2}-{\\textcolor{white}{\\LARGE \\blacksquare}}\\right)+C \\\\\n\\frac{1}{{\\textcolor{white}{\\LARGE \\blacksquare}}} \\ln \\left(2 {\\textcolor{white}{\\LARGE \\blacksquare}}^{2}+{\\textcolor{white}{\\LARGE \\blacksquare}}\\right)&=\\ln \\left({\\textcolor{white}{\\LARGE \\blacksquare}}^{2}-{\\textcolor{white}{\\LARGE \\blacksquare}}\\right)+2 C \\\\\n\\frac{1}{{\\textcolor{white}{\\LARGE \\blacksquare}}} \\ln \\left(2 {\\textcolor{white}{\\LARGE \\blacksquare}}^{2}+{\\textcolor{white}{\\LARGE \\blacksquare}}\\right)-\\ln \\left({\\textcolor{white}{\\LARGE \\blacksquare}}^{2}-{\\textcolor{white}{\\LARGE \\blacksquare}}\\right)&=2 C \\\\\n\\ln \\left(\\frac{\\left(2 {\\textcolor{white}{\\LARGE \\blacksquare}}^{2}+{\\textcolor{white}{\\LARGE \\blacksquare}}\\right)^{1 / {\\textcolor{white}{\\Large \\blacksquare}}}}{{\\textcolor{white}{\\LARGE \\blacksquare}}^{2}-{\\textcolor{white}{\\LARGE \\blacksquare}}}\\right)&=2 C \\\\\n\\frac{\\left(2 {\\textcolor{white}{\\LARGE \\blacksquare}}^{2}+{\\textcolor{white}{\\LARGE \\blacksquare}}\\right)^{1 / {\\textcolor{white}{\\Large \\blacksquare}}}}{{\\textcolor{white}{\\LARGE \\blacksquare}}^{2}-{\\textcolor{white}{\\LARGE \\blacksquare}}}&={\\textcolor{white}{\\LARGE \\blacksquare}}^{2 c} \\\\\n\\sqrt{2 {\\textcolor{white}{\\LARGE \\blacksquare}}^{2}+{\\textcolor{white}{\\LARGE \\blacksquare}}}&={\\textcolor{white}{\\LARGE \\blacksquare}}^{2 C}\\left({\\textcolor{white}{\\LARGE \\blacksquare}}^{2}-{\\textcolor{white}{\\LARGE \\blacksquare}}\\right) \\\\\n2 {\\textcolor{white}{\\LARGE \\blacksquare}}^{2}+{\\textcolor{white}{\\LARGE \\blacksquare}}&={\\textcolor{white}{\\LARGE \\blacksquare}}^{{\\textcolor{white}{\\Large \\blacksquare}} C}\\left({\\textcolor{white}{\\LARGE \\blacksquare}}^{2}-{\\textcolor{white}{\\LARGE \\blacksquare}}\\right)^{2} \\\\\n2 {\\textcolor{white}{\\LARGE \\blacksquare}}^{2}+{\\textcolor{white}{\\LARGE \\blacksquare}}&=A\\left({\\textcolor{white}{\\LARGE \\blacksquare}}^{2}-{\\textcolor{white}{\\LARGE \\blacksquare}}\\right)^{2}\n\\end{aligned}'),
(252, 1, 2, 2, 7, 3, 0, 0, 20, 248, 'pertanyaan-tk1 katex-italic', 'y'),
(253, 1, 2, 2, 7, 3, 0, 0, 60, 237, 'pertanyaan-tk1 katex-italic', 'y'),
(254, 1, 2, 2, 7, 3, 0, 0, 60, 292, 'pertanyaan-tk1 katex-regular', '1'),
(255, 1, 2, 2, 7, 3, 0, 0, 20, 412, 'pertanyaan-tk1 katex-italic', 'x'),
(256, 1, 2, 2, 7, 3, 0, 0, 60, 404, 'pertanyaan-tk1 katex-italic', 'x'),
(257, 1, 2, 2, 7, 3, 0, 0, 60, 461, 'pertanyaan-tk1 katex-regular', '1'),
(258, 1, 2, 2, 7, 3, 0, 0, 126, 254, 'pertanyaan-tk1 katex-regular', '4'),
(259, 1, 2, 2, 7, 3, 0, 0, 126, 362, 'pertanyaan-tk1 katex-regular', '2'),
(260, 1, 2, 2, 7, 3, 0, 0, 181, 272, 'pertanyaan-tk1 katex-regular', '4'),
(261, 1, 2, 2, 7, 3, 0, 0, 181, 363, 'pertanyaan-tk1 katex-regular', '2'),
(262, 1, 2, 2, 7, 3, 0, 0, 234, 162, 'pertanyaan-tk1 katex-regular', '4'),
(263, 1, 2, 2, 7, 3, 0, 0, 217, 237, 'pertanyaan-tk1 katex-italic', 'y'),
(264, 1, 2, 2, 7, 3, 0, 0, 217, 294, 'pertanyaan-tk1 katex-regular', '1'),
(265, 1, 2, 2, 7, 3, 0, 0, 234, 362, 'pertanyaan-tk1 katex-regular', '2'),
(266, 1, 2, 2, 7, 3, 0, 0, 217, 428, 'pertanyaan-tk1 katex-italic', 'x'),
(267, 1, 2, 2, 7, 3, 0, 0, 217, 485, 'pertanyaan-tk1 katex-regular', '1'),
(268, 1, 2, 2, 7, 3, 0, 0, 287, 162, 'pertanyaan-tk1 katex-regular', '2'),
(269, 1, 2, 2, 7, 3, 0, 0, 270, 237, 'pertanyaan-tk1 katex-italic', 'y'),
(270, 1, 2, 2, 7, 3, 0, 0, 270, 294, 'pertanyaan-tk1 katex-regular', '1'),
(271, 1, 2, 2, 7, 3, 0, 0, 270, 394, 'pertanyaan-tk1 katex-italic', 'x'),
(272, 1, 2, 2, 7, 3, 0, 0, 270, 451, 'pertanyaan-tk1 katex-regular', '1'),
(273, 1, 2, 2, 7, 3, 0, 0, 343, 7, 'pertanyaan-tk1 katex-regular', '2'),
(274, 1, 2, 2, 7, 3, 0, 0, 324, 82, 'pertanyaan-tk1 katex-italic', 'y'),
(275, 1, 2, 2, 7, 3, 0, 0, 324, 139, 'pertanyaan-tk1 katex-regular', '1'),
(276, 1, 2, 2, 7, 3, 0, 0, 324, 237, 'pertanyaan-tk1 katex-italic', 'x'),
(277, 1, 2, 2, 7, 3, 0, 0, 324, 294, 'pertanyaan-tk1 katex-regular', '1'),
(278, 1, 2, 2, 7, 3, 0, 0, 394, 180, 'pertanyaan-tk1 katex-italic', 'y'),
(279, 1, 2, 2, 7, 3, 0, 0, 394, 235, 'pertanyaan-tk1 katex-regular', '1'),
(280, 1, 2, 2, 7, 3, 0, 0, 372, 290, 'pertanyaan-tk2 katex-regular', '2'),
(281, 1, 2, 2, 7, 3, 0, 0, 444, 192, 'pertanyaan-tk1 katex-italic', 'x'),
(282, 1, 2, 2, 7, 3, 0, 0, 444, 249, 'pertanyaan-tk1 katex-regular', '1'),
(283, 1, 2, 2, 7, 3, 0, 0, 527, 200, 'pertanyaan-tk1 katex-italic', 'y'),
(284, 1, 2, 2, 7, 3, 0, 0, 527, 258, 'pertanyaan-tk1 katex-regular', '1'),
(285, 1, 2, 2, 7, 3, 0, 0, 506, 312, 'pertanyaan-tk2 katex-regular', '2'),
(286, 1, 2, 2, 7, 3, 0, 0, 576, 213, 'pertanyaan-tk1 katex-italic', 'x'),
(296, 1, 2, 2, 7, 3, 0, 0, 576, 270, 'pertanyaan-tk1 katex-regular', '1'),
(297, 1, 2, 2, 7, 3, 0, 0, 553, 358, 'pertanyaan-tk1 katex-italic', 'e'),
(298, 1, 2, 2, 7, 3, 0, 0, 617, 254, 'pertanyaan-tk1 katex-italic', 'y'),
(299, 1, 2, 2, 7, 3, 0, 0, 617, 310, 'pertanyaan-tk1 katex-regular', '1'),
(300, 1, 2, 2, 7, 3, 0, 0, 617, 362, 'pertanyaan-tk1 katex-italic', 'e'),
(301, 1, 2, 2, 7, 3, 0, 0, 617, 425, 'pertanyaan-tk1 katex-italic', 'x'),
(302, 1, 2, 2, 7, 3, 0, 0, 617, 481, 'pertanyaan-tk1 katex-regular', '1'),
(303, 1, 2, 2, 7, 3, 0, 0, 678, 251, 'pertanyaan-tk1 katex-italic', 'y'),
(304, 1, 2, 2, 7, 3, 0, 0, 678, 310, 'pertanyaan-tk1 katex-regular', '1'),
(305, 1, 2, 2, 7, 3, 0, 0, 678, 362, 'pertanyaan-tk1 katex-italic', 'e'),
(306, 1, 2, 2, 7, 3, 0, 0, 661, 385, 'pertanyaan-tk2 katex-regular', '4'),
(307, 1, 2, 2, 7, 3, 0, 0, 678, 437, 'pertanyaan-tk1 katex-italic', 'x'),
(308, 1, 2, 2, 7, 3, 0, 0, 678, 495, 'pertanyaan-tk1 katex-regular', '1'),
(309, 1, 2, 2, 7, 3, 0, 0, 735, 251, 'pertanyaan-tk1 katex-italic', 'y'),
(310, 1, 2, 2, 7, 3, 0, 0, 735, 310, 'pertanyaan-tk1 katex-regular', '1'),
(311, 1, 2, 2, 7, 3, 0, 0, 735, 391, 'pertanyaan-tk1 katex-italic', 'x'),
(312, 1, 2, 2, 7, 3, 0, 0, 735, 446, 'pertanyaan-tk1 katex-regular', '1'),
(313, 1, 2, 2, 8, 1, 0, 0, 0, 0, '[NULL]', 'Subtitusi $y=0$ dan $x=\\sqrt 2$'),
(314, 1, 2, 2, 8, 2, 240, 330, 0, 0, '[NULL]', '\\begin{aligned}\n2 {\\textcolor{white}{\\LARGE \\blacksquare}}^{2}+{\\textcolor{white}{\\LARGE \\blacksquare}} &=A\\left({\\textcolor{white}{\\LARGE \\blacksquare}}^{2}-{\\textcolor{white}{\\LARGE \\blacksquare}}\\right) \\\\\n2({\\textcolor{white}{\\LARGE \\blacksquare}})+{\\textcolor{white}{\\LARGE \\blacksquare}} &=A\\left((\\sqrt{{\\textcolor{white}{\\LARGE \\blacksquare}}})^{2}-{\\textcolor{white}{\\LARGE \\blacksquare}}\\right) \\\\\n1 &=A(2-1) \\\\\n1 &=A \\\\\nA &=1\n\\end{aligned}'),
(315, 1, 2, 2, 8, 3, 0, 0, 25, 21, 'pertanyaan-tk1 katex-italic', 'y'),
(316, 1, 2, 2, 8, 3, 0, 0, 25, 78, 'pertanyaan-tk1 katex-regular', '1'),
(317, 1, 2, 2, 8, 3, 0, 0, 25, 161, 'pertanyaan-tk1 katex-italic', 'x'),
(318, 1, 2, 2, 8, 3, 0, 0, 25, 219, 'pertanyaan-tk1 katex-regular', '1'),
(319, 1, 2, 2, 8, 3, 0, 0, 84, 21, 'pertanyaan-tk1 katex-regular', '0'),
(320, 1, 2, 2, 8, 3, 0, 0, 84, 78, 'pertanyaan-tk1 katex-regular', '1'),
(321, 1, 2, 2, 8, 3, 0, 0, 84, 190, 'pertanyaan-tk1 katex-regular', '2'),
(322, 1, 2, 2, 8, 3, 0, 0, 84, 255, 'pertanyaan-tk1 katex-regular', '1'),
(323, 1, 2, 2, 9, 1, 0, 0, 0, 0, '[NULL]', 'Subtitusi $A$ ke dalam persamaan'),
(324, 1, 2, 2, 9, 2, 140, 280, 0, 0, '[NULL]', '\\begin{aligned}\n&2 {\\textcolor{white}{\\LARGE \\blacksquare}}^{2}+{\\textcolor{white}{\\LARGE \\blacksquare}}=A\\left({\\textcolor{white}{\\LARGE \\blacksquare}}^{2}-{\\textcolor{white}{\\LARGE \\blacksquare}}\\right)^{2} \\\\\n&2 {\\textcolor{white}{\\LARGE \\blacksquare}}^{2}+{\\textcolor{white}{\\LARGE \\blacksquare}}=\\left({\\textcolor{white}{\\LARGE \\blacksquare}}^{2}-{\\textcolor{white}{\\LARGE \\blacksquare}}\\right)^{2}\n\\end{aligned}'),
(325, 1, 2, 2, 9, 3, 0, 0, 29, 16, 'pertanyaan-tk1 katex-italic', 'y'),
(326, 1, 2, 2, 9, 3, 0, 0, 29, 74, 'pertanyaan-tk1 katex-regular', '1'),
(327, 1, 2, 2, 9, 3, 0, 0, 29, 157, 'pertanyaan-tk1 katex-italic', 'x'),
(328, 1, 2, 2, 9, 3, 0, 0, 29, 215, 'pertanyaan-tk1 katex-regular', '1'),
(329, 1, 2, 2, 9, 3, 0, 0, 85, 16, 'pertanyaan-tk1 katex-italic', 'y'),
(333, 1, 2, 2, 9, 3, 0, 0, 85, 74, 'pertanyaan-tk1 katex-regular', '1'),
(334, 1, 2, 2, 9, 3, 0, 0, 85, 139, 'pertanyaan-tk1 katex-italic', 'x'),
(335, 1, 2, 2, 9, 3, 0, 0, 85, 197, 'pertanyaan-tk1 katex-regular', '1'),
(336, 1, 2, 3, 1, 1, 0, 0, 0, 0, '[NULL]', '<b>Separable Equations</b>'),
(337, 1, 2, 3, 2, 1, 0, 0, 0, 0, '[NULL]', 'Panas hilang pada laju yang konstan [$\\frac {dQ} {dt}$ adalah konstan] melalui dinding-dinding sebuah pipa silinder yang panjang. Tentukan temperatur $T$ pada sebuah jarak $r$ dari garis sumbu pusat silinder jika dinding bagian dalamnya memiliki jari-jari $r=1$ dan temperatur $t=100$ dan dinding bagian luarnya memiliki jari-jari $r=2$ dan $T=0$.'),
(338, 1, 2, 3, 3, 1, 0, 0, 0, 0, '[NULL]', '<b>Instruksi :</b></br>Lengkapilah penyelesaian dari soal di atas dengan mengisi tiap kotak berwarna abu-abu dengan satu karakter yang sesuai kemudian tekan ENTER.'),
(339, 1, 2, 3, 4, 1, 0, 0, 0, 0, '[NULL]', 'Persamaan pelepasan panas'),
(340, 1, 2, 3, 4, 2, 80, 210, 0, 0, '[NULL]', '\\begin{aligned}\n\\frac{d Q}{d T}=k A \\frac{d T}{d r}\n\\end{aligned}'),
(341, 1, 2, 3, 5, 1, 0, 0, 0, 0, '[NULL]', 'Laju pelepasan panas adalah konstan'),
(342, 1, 2, 3, 5, 2, 80, 210, 0, 0, '[NULL]', '\\begin{aligned}\nC=k A \\frac{d T}{d r}\n\\end{aligned}'),
(343, 1, 2, 3, 6, 1, 0, 0, 0, 0, '[NULL]', 'Pipa berbentuk silinder, maka luas permukaannya menjadi'),
(344, 1, 2, 3, 6, 2, 80, 210, 0, 0, '[NULL]', '\\begin{aligned}\nC=k({\\textcolor{white}{\\LARGE \\blacksquare}} {\\textcolor{white}{\\LARGE \\blacksquare}} {\\textcolor{white}{\\LARGE \\blacksquare}} l) \\frac{d T}{d r}\n\\end{aligned}'),
(345, 1, 2, 3, 6, 3, 0, 0, 24, 62, 'pertanyaan-tk1 katex-regular', '2'),
(346, 1, 2, 3, 6, 3, 0, 0, 24, 89, 'pertanyaan-tk1 katex-math-italic', 'π'),
(347, 1, 2, 3, 6, 3, 0, 0, 24, 115, 'pertanyaan-tk1 katex-italic', 'r'),
(348, 1, 2, 3, 7, 1, 0, 0, 0, 0, '[NULL]', 'Pemisahan variabel'),
(349, 1, 2, 3, 7, 2, 90, 210, 0, 0, '[NULL]', '\\begin{aligned}\nC \\frac{d r}{{\\textcolor{white}{\\LARGE \\blacksquare}}}=k({\\textcolor{white}{\\LARGE \\blacksquare}} {\\textcolor{white}{\\LARGE \\blacksquare}} l) d T\n\\end{aligned}'),
(350, 1, 2, 3, 7, 3, 0, 0, 40, 21, 'pertanyaan-tk1 katex-italic', 'r'),
(351, 1, 2, 3, 7, 3, 0, 0, 24, 93, 'pertanyaan-tk1 katex-regular', '2'),
(352, 1, 2, 3, 7, 3, 0, 0, 24, 119, 'pertanyaan-tk1 katex-math-italic', 'π'),
(353, 1, 2, 3, 8, 1, 0, 0, 0, 0, '[NULL]', 'Mengintegrasikan kedua sisi'),
(354, 1, 2, 3, 8, 2, 115, 250, 0, 0, '[NULL]', '\\begin{aligned}\nC \\int \\frac{d r}{{\\textcolor{white}{\\LARGE \\blacksquare}}}&=k({\\textcolor{white}{\\LARGE \\blacksquare}} {\\textcolor{white}{\\LARGE \\blacksquare}} l) \\int d T \\\\\nC \\ln {\\textcolor{white}{\\LARGE \\blacksquare}}&=k({\\textcolor{white}{\\LARGE \\blacksquare}} {\\textcolor{white}{\\LARGE \\blacksquare}} l) T\n\\end{aligned}'),
(355, 1, 2, 3, 8, 3, 0, 0, 40, 46, 'pertanyaan-tk1 katex-italic', 'r'),
(356, 1, 2, 3, 8, 3, 0, 0, 24, 119, 'pertanyaan-tk1 katex-regular', '2'),
(357, 1, 2, 3, 8, 3, 0, 0, 24, 146, 'pertanyaan-tk1 katex-math-italic', 'π'),
(358, 1, 2, 3, 8, 3, 0, 0, 73, 51, 'pertanyaan-tk1 katex-italic', 'r'),
(359, 1, 2, 3, 8, 3, 0, 0, 73, 119, 'pertanyaan-tk1 katex-regular', '2'),
(360, 1, 2, 3, 8, 3, 0, 0, 73, 146, 'pertanyaan-tk1 katex-math-italic', 'π'),
(361, 1, 2, 3, 9, 1, 0, 0, 0, 0, '[NULL]', 'Diketahui $T=100$ saat $r=1$ dan $T=0$ saat $r=2$, maka persamaan menjadi'),
(362, 1, 2, 3, 9, 2, 205, 365, 0, 0, '[NULL]', '\\begin{aligned}\nC \\ln {\\textcolor{white}{\\LARGE \\blacksquare}}&=k({\\textcolor{white}{\\LARGE \\blacksquare}} {\\textcolor{white}{\\LARGE \\blacksquare}} l) T\\\\\nC(\\ln {\\textcolor{white}{\\LARGE \\blacksquare}}-\\ln {\\textcolor{white}{\\LARGE \\blacksquare}})&=k({\\textcolor{white}{\\LARGE \\blacksquare}} {\\textcolor{white}{\\LARGE \\blacksquare}} l)({\\textcolor{white}{\\LARGE \\blacksquare}}-100)\\\\\nC(\\ln {\\textcolor{white}{\\LARGE \\blacksquare}}-{\\textcolor{white}{\\LARGE \\blacksquare}})&=k({\\textcolor{white}{\\LARGE \\blacksquare}} {\\textcolor{white}{\\LARGE \\blacksquare}} l)(-100)\\\\\nC&={\\textcolor{white}{\\LARGE \\blacksquare}}\\frac{k({\\textcolor{white}{\\LARGE \\blacksquare}} {\\textcolor{white}{\\LARGE \\blacksquare}} l) 100}{(\\ln {\\textcolor{white}{\\LARGE \\blacksquare}})}\n\\end{aligned}'),
(363, 1, 2, 3, 9, 3, 0, 0, 19, 121, 'pertanyaan-tk1 katex-italic', 'r'),
(364, 1, 2, 3, 9, 3, 0, 0, 19, 194, 'pertanyaan-tk1 katex-regular', '2'),
(365, 1, 2, 3, 9, 3, 0, 0, 19, 218, 'pertanyaan-tk1 katex-math-italic', 'π'),
(366, 1, 2, 3, 9, 3, 0, 0, 56, 46, 'pertanyaan-tk1 katex-regular', '2'),
(367, 1, 2, 3, 9, 3, 0, 0, 56, 114, 'pertanyaan-tk1 katex-regular', '1'),
(368, 1, 2, 3, 9, 3, 0, 0, 56, 192, 'pertanyaan-tk1 katex-regular', '2'),
(369, 1, 2, 3, 9, 3, 0, 0, 56, 219, 'pertanyaan-tk1 katex-math-italic', 'π'),
(370, 1, 2, 3, 9, 3, 0, 0, 56, 266, 'pertanyaan-tk1 katex-regular', '0'),
(371, 1, 2, 3, 9, 3, 0, 0, 91, 66, 'pertanyaan-tk1 katex-regular', '2'),
(372, 1, 2, 3, 9, 3, 0, 0, 91, 115, 'pertanyaan-tk1 katex-math-regular', '0'),
(373, 1, 2, 3, 9, 3, 0, 0, 91, 193, 'pertanyaan-tk1 katex-regular', '2'),
(374, 1, 2, 3, 9, 3, 0, 0, 91, 220, 'pertanyaan-tk1 katex-math-italic', 'π'),
(375, 1, 2, 3, 9, 3, 0, 0, 140, 174, 'pertanyaan-tk1 katex-regular', '-'),
(376, 1, 2, 3, 9, 3, 0, 0, 127, 221, 'pertanyaan-tk1 katex-regular', '2'),
(377, 1, 2, 3, 9, 3, 0, 0, 127, 248, 'pertanyaan-tk1 katex-math-italic', 'π'),
(378, 1, 2, 3, 9, 3, 0, 0, 160, 256, 'pertanyaan-tk1 katex-regular', '2'),
(379, 1, 2, 3, 10, 1, 0, 0, 0, 0, '[NULL]', 'Subtitusi $C$ ke dalam persamaan '),
(380, 1, 2, 3, 10, 2, 195, 350, 0, 0, '[NULL]', '\\begin{aligned}\nC \\ln {\\textcolor{white}{\\LARGE \\blacksquare}}&={\\textcolor{white}{\\LARGE \\blacksquare}} {\\textcolor{white}{\\LARGE \\blacksquare}} k l T \\\\\n{\\textcolor{white}{\\LARGE \\blacksquare}}\\frac{k({\\textcolor{white}{\\LARGE \\blacksquare}} {\\textcolor{white}{\\LARGE \\blacksquare}} l) 100}{(\\ln {\\textcolor{white}{\\LARGE \\blacksquare}})} \\ln {\\textcolor{white}{\\LARGE \\blacksquare}}&=k({\\textcolor{white}{\\LARGE \\blacksquare}} {\\textcolor{white}{\\LARGE \\blacksquare}} l) T \\\\\nT&={\\textcolor{white}{\\LARGE \\blacksquare}}\\frac{100}{(\\ln {\\textcolor{white}{\\LARGE \\blacksquare}})} \\ln {\\textcolor{white}{\\LARGE \\blacksquare}}\n\\end{aligned}'),
(381, 1, 2, 3, 10, 3, 0, 0, 20, 168, 'pertanyaan-tk1 katex-italic', 'r'),
(382, 1, 2, 3, 10, 3, 0, 0, 20, 220, 'pertanyaan-tk1 katex-regular', '2'),
(383, 1, 2, 3, 10, 3, 0, 0, 20, 246, 'pertanyaan-tk1 katex-math-italic', 'π'),
(384, 1, 2, 3, 10, 3, 0, 0, 68, 7, 'pertanyaan-tk1 katex-regular', '-'),
(385, 1, 2, 3, 10, 3, 0, 0, 56, 49, 'pertanyaan-tk1 katex-regular', '2'),
(386, 1, 2, 3, 10, 3, 0, 0, 56, 76, 'pertanyaan-tk1 katex-math-italic', 'π'),
(387, 1, 2, 3, 10, 3, 0, 0, 90, 84, 'pertanyaan-tk1 katex-regular', '2'),
(388, 1, 2, 3, 10, 3, 0, 0, 68, 170, 'pertanyaan-tk1 katex-italic', 'r'),
(389, 1, 2, 3, 10, 3, 0, 0, 68, 239, 'pertanyaan-tk1 katex-regular', '2'),
(390, 1, 2, 3, 10, 3, 0, 0, 68, 266, 'pertanyaan-tk1 katex-math-italic', 'π'),
(391, 1, 2, 3, 10, 3, 0, 0, 126, 222, 'pertanyaan-tk1 katex-regular', '-'),
(392, 1, 2, 3, 10, 3, 0, 0, 146, 274, 'pertanyaan-tk1 katex-regular', '2'),
(393, 1, 2, 3, 10, 3, 0, 0, 126, 335, 'pertanyaan-tk1 katex-italic', 'r'),
(394, 1, 2, 3, 11, 1, 0, 0, 0, 0, '[NULL]', 'Temperatur $T$ pada jarak $r$ dari garis axis silinder adalah'),
(395, 1, 2, 3, 11, 2, 155, 250, 0, 0, '[NULL]', '\\begin{aligned}\nT&=100-\\frac{100}{(\\ln {\\textcolor{white}{\\LARGE \\blacksquare}})} \\ln {\\textcolor{white}{\\LARGE \\blacksquare}} \\\\\nT&=100\\left({\\textcolor{white}{\\LARGE \\blacksquare}}-\\frac{\\ln {\\textcolor{white}{\\LARGE \\blacksquare}}}{(\\ln {\\textcolor{white}{\\LARGE \\blacksquare}})}\\right)\n\\end{aligned}'),
(396, 1, 2, 3, 11, 3, 0, 0, 43, 126, 'pertanyaan-tk1 katex-regular', '2'),
(397, 1, 2, 3, 11, 3, 0, 0, 24, 184, 'pertanyaan-tk1 katex-italic', 'r'),
(398, 1, 2, 3, 11, 3, 0, 0, 89, 91, 'pertanyaan-tk1 katex-regular', '1'),
(399, 1, 2, 3, 11, 3, 0, 0, 77, 170, 'pertanyaan-tk1 katex-italic', 'r'),
(400, 1, 2, 3, 11, 3, 0, 0, 110, 170, 'pertanyaan-tk1 katex-regular', '2'),
(401, 1, 2, 5, 1, 1, 0, 0, 0, 0, '[NULL]', '<b>Orthogonal Trajectories</b>'),
(402, 1, 2, 5, 2, 1, 0, 0, 0, 0, '[NULL]', 'Tentukan orthogonal trajectories dari keluarga kurva $x^2 + y^2 = \\text{const.}$, gambar beberapa kurvanya dan beberapa kurva orthogonal trajectories-nya. Lihat persamaan $(32)$ dan $(34)$.'),
(403, 1, 2, 5, 3, 1, 0, 0, 0, 0, '[NULL]', '<b>Instruksi :</b></br>Lengkapilah penyelesaian dari soal di atas dengan mengisi tiap kotak berwarna abu-abu dengan satu karakter yang sesuai kemudian tekan ENTER.'),
(404, 1, 2, 5, 4, 2, 240, 280, 0, 0, '[NULL]', '\\begin{aligned}\n\\frac{d}{d x}\\left(x^{2}+y^{2}\\right) &=\\frac{d}{d x} \\text{constant}\\\\\n{\\textcolor{white}{\\LARGE \\blacksquare}} x+{\\textcolor{white}{\\LARGE \\blacksquare}} y \\frac{d y}{d x} &={\\textcolor{white}{\\LARGE \\blacksquare}} \\\\\nx+y \\frac{d y}{d x} &={\\textcolor{white}{\\LARGE \\blacksquare}} \\\\\n\\frac{d y}{d x} &={\\textcolor{white}{\\LARGE \\blacksquare}}\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}}}{{\\textcolor{white}{\\LARGE \\blacksquare}}}\n\\end{aligned}'),
(405, 1, 2, 5, 4, 3, 0, 0, 70, 4, 'pertanyaan-tk1 katex-regular', '2'),
(406, 1, 2, 5, 4, 3, 0, 0, 70, 64, 'pertanyaan-tk1 katex-regular', '2'),
(407, 1, 2, 5, 4, 3, 0, 0, 70, 152, 'pertanyaan-tk1 katex-regular', '0'),
(408, 1, 2, 5, 4, 3, 0, 0, 116, 152, 'pertanyaan-tk1 katex-regular', '0'),
(409, 1, 2, 5, 4, 3, 0, 0, 170, 152, 'pertanyaan-tk1 katex-italic', '-'),
(410, 1, 2, 5, 4, 3, 0, 0, 157, 180, 'pertanyaan-tk1 katex-italic', 'x'),
(411, 1, 2, 5, 4, 3, 0, 0, 186, 180, 'pertanyaan-tk1 katex-italic', 'y'),
(412, 1, 2, 5, 5, 2, 250, 200, 0, 0, '[NULL]', '\\begin{aligned}\nm_{1} \\times m_{2} &=-1 \\\\\n{\\textcolor{white}{\\LARGE \\blacksquare}}\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}}}{{\\textcolor{white}{\\LARGE \\blacksquare}}} \\times m_{2} &=-1 \\\\\nm_{2} &=\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}}}{{\\textcolor{white}{\\LARGE \\blacksquare}}}\\\\\ny^\\prime&=\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}}}{{\\textcolor{white}{\\LARGE \\blacksquare}}}\n\\end{aligned}'),
(413, 1, 2, 5, 5, 3, 0, 0, 63, 4, 'pertanyaan-tk1 katex-italic', '-'),
(414, 1, 2, 5, 5, 3, 0, 0, 50, 32, 'pertanyaan-tk1 katex-italic', 'x'),
(415, 1, 2, 5, 5, 3, 0, 0, 78, 32, 'pertanyaan-tk1 katex-italic', 'y'),
(416, 1, 2, 5, 5, 3, 0, 0, 111, 136, 'pertanyaan-tk1 katex-italic', 'y'),
(417, 1, 2, 5, 5, 3, 0, 0, 139, 136, 'pertanyaan-tk1 katex-italic', 'x'),
(418, 1, 2, 5, 5, 3, 0, 0, 174, 136, 'pertanyaan-tk1 katex-italic', 'y'),
(419, 1, 2, 5, 5, 3, 0, 0, 202, 136, 'pertanyaan-tk1 katex-italic', 'x');
INSERT INTO `8_card_latihan_soal` (`id`, `materi`, `sub_materi`, `card`, `no_soal`, `kategori`, `grid_rows`, `grid_cols`, `row_start`, `col_start`, `class`, `isi`) VALUES
(420, 1, 2, 5, 6, 2, 310, 200, 0, 0, '[NULL]', '\\begin{aligned}\n\\frac {dy}{dx} &= \\frac {\\textcolor{white}{\\LARGE \\blacksquare}} {\\textcolor{white}{\\LARGE \\blacksquare}} \\\\\n\\frac{d y}{{\\textcolor{white}{\\LARGE \\blacksquare}}}&=\\frac{d x}{{\\textcolor{white}{\\LARGE \\blacksquare}}}\\\\\n\\int \\frac{d y}{{\\textcolor{white}{\\LARGE \\blacksquare}}}&=\\int \\frac{d x}{{\\textcolor{white}{\\LARGE \\blacksquare}}} \\\\\n\\ln {\\textcolor{white}{\\LARGE \\blacksquare}}&=\\ln {\\textcolor{white}{\\LARGE \\blacksquare}}+\\ln c\\\\\n\\ln {\\textcolor{white}{\\LARGE \\blacksquare}}&=\\ln {\\textcolor{white}{\\LARGE \\blacksquare}}.{\\textcolor{white}{\\LARGE \\blacksquare}}\\\\\n{\\textcolor{white}{\\LARGE \\blacksquare}}&={\\textcolor{white}{\\LARGE \\blacksquare}}{\\textcolor{white}{\\LARGE \\blacksquare}}\n\\end{aligned}'),
(421, 1, 2, 5, 6, 3, 0, 0, 22, 82, 'pertanyaan-tk1 katex-italic', 'y'),
(422, 1, 2, 5, 6, 3, 0, 0, 49, 82, 'pertanyaan-tk1 katex-italic', 'x'),
(423, 1, 2, 5, 6, 3, 0, 0, 102, 28, 'pertanyaan-tk1 katex-italic', 'y'),
(424, 1, 2, 5, 6, 3, 0, 0, 102, 82, 'pertanyaan-tk1 katex-italic', 'x'),
(425, 1, 2, 5, 6, 3, 0, 0, 155, 28, 'pertanyaan-tk1 katex-italic', 'y'),
(426, 1, 2, 5, 6, 3, 0, 0, 155, 108, 'pertanyaan-tk1 katex-italic', 'x'),
(427, 1, 2, 5, 6, 3, 0, 0, 187, 30, 'pertanyaan-tk1 katex-italic', 'y'),
(428, 1, 2, 5, 6, 3, 0, 0, 187, 102, 'pertanyaan-tk1 katex-italic', 'x'),
(429, 1, 2, 5, 6, 3, 0, 0, 224, 30, 'pertanyaan-tk1 katex-italic', 'y'),
(430, 1, 2, 5, 6, 3, 0, 0, 224, 102, 'pertanyaan-tk1 katex-italic', 'x'),
(431, 1, 2, 5, 6, 3, 0, 0, 224, 136, 'pertanyaan-tk1 katex-italic', 'c'),
(432, 1, 2, 5, 6, 3, 0, 0, 259, 28, 'pertanyaan-tk1 katex-italic', 'y'),
(433, 1, 2, 5, 6, 3, 0, 0, 259, 84, 'pertanyaan-tk1 katex-italic', 'x'),
(434, 1, 2, 5, 6, 3, 0, 0, 259, 108, 'pertanyaan-tk1 katex-italic', 'c'),
(435, 1, 2, 5, 7, 1, 0, 0, 0, 0, '[NULL]', 'Plot grafik secara manual atau menggunakan <a style=\"color: #60a5fa;\" href=\"https://www.desmos.com/calculator\" target=\"_blank\">Kalkulator Grafik Desmos</a> dan cocokkan dengan jawaban.'),
(436, 1, 2, 6, 1, 1, 0, 0, 0, 0, '[NULL]', '<b>Orthogonal Trajectories</b>'),
(437, 1, 2, 6, 2, 1, 0, 0, 0, 0, '[NULL]', 'Tentukan orthogonal trajectories dari keluarga kurva $y=k x^{n}$ (asumsikan bahwa $n$ adalah sebuah angka yang diketahui; keluarga kurva yang berbeda memiliki nilai $k$ yang berbeda), gambar beberapa kurvanya dan beberapa kurva orthogonal trajectories-nya. Lihat persamaan $(32)$ dan $(34)$.'),
(438, 1, 2, 6, 3, 1, 0, 0, 0, 0, '[NULL]', '<b>Instruksi :</b></br>Lengkapilah penyelesaian dari soal di atas dengan mengisi tiap kotak berwarna abu-abu dengan satu karakter yang sesuai kemudian tekan ENTER.'),
(439, 1, 2, 6, 4, 2, 100, 80, 0, 0, '[NULL]', '\\begin{aligned}\n&y=k x^n \\\\\n&k=\\frac{y}{x^{n}}\n\\end{aligned}'),
(440, 1, 2, 6, 5, 1, 0, 0, 0, 0, '[NULL]', 'Ingat kembali'),
(441, 1, 2, 6, 5, 2, 175, 180, 0, 0, '[NULL]', '\\begin{aligned}\ny&=\\frac{u}{v} \\\\\n\\frac{d y}{d x}&=\\frac{u^{\\prime} v-v^{\\prime} u}{v^{2}} \\\\\n\\frac{d y}{d x}&=\\frac{v \\frac{d u}{d x}-u \\frac{d v}{d x}}{v^{2}}\n\\end{aligned}'),
(442, 1, 2, 6, 6, 2, 570, 480, 0, 0, '[NULL]', '\\begin{aligned}\nk &=\\frac{y}{x^{n}} \\\\\n\\frac{d}{d x}(k) &=\\frac{d}{d x}\\left(\\frac{y}{x^{n}}\\right) \\\\\n{\\textcolor{white}{\\LARGE \\blacksquare}}&=\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}}^{{\\textcolor{white}{\\Large \\blacksquare}}} \\frac{d y}{d x}-y \\frac{d}{d x}\\left({\\textcolor{white}{\\LARGE \\blacksquare}}^{{\\textcolor{white}{\\Large \\blacksquare}}}\\right)}{\\left(x^{n}\\right)^{2}}\\\\\n{\\textcolor{white}{\\LARGE \\blacksquare}} &=\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}}^{{\\textcolor{white}{\\Large \\blacksquare}}} \\frac{d y}{d x}-{\\textcolor{white}{\\LARGE \\blacksquare}} x^{{\\textcolor{white}{\\Large \\blacksquare}}-{\\textcolor{white}{\\Large \\blacksquare}}} y}{\\left(x^{n}\\right)^{2}} \\\\\n{\\textcolor{white}{\\LARGE \\blacksquare}}^{{\\textcolor{white}{\\Large \\blacksquare}}} \\frac{d y}{d x}-{\\textcolor{white}{\\LARGE \\blacksquare}} x^{{\\textcolor{white}{\\Large \\blacksquare}}-{\\textcolor{white}{\\Large \\blacksquare}}} y&={\\textcolor{white}{\\LARGE \\blacksquare}} \\\\\n{\\textcolor{white}{\\LARGE \\blacksquare}}^{{\\textcolor{white}{\\Large \\blacksquare}}} \\frac{d y}{d x} &={\\textcolor{white}{\\LARGE \\blacksquare}} x^{{\\textcolor{white}{\\Large \\blacksquare}}-{\\textcolor{white}{\\Large \\blacksquare}}} y \\\\\n{\\textcolor{white}{\\LARGE \\blacksquare}} \\cdot x^{n-1} \\frac{d y}{d x}&={\\textcolor{white}{\\LARGE \\blacksquare}} x^{{\\textcolor{white}{\\Large \\blacksquare}}-{\\textcolor{white}{\\Large \\blacksquare}}} y \\\\\n{\\textcolor{white}{\\LARGE \\blacksquare}} \\frac{d y}{d x}&={\\textcolor{white}{\\LARGE \\blacksquare}} y \\\\\n\\frac{d y}{d x}&=\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}} y}{{\\textcolor{white}{\\LARGE \\blacksquare}}}\n\\end{aligned}'),
(443, 1, 2, 6, 6, 3, 0, 0, 153, 178, 'pertanyaan-tk1 katex-regular', '0'),
(444, 1, 2, 6, 6, 3, 0, 0, 119, 232, 'pertanyaan-tk1 katex-italic', 'x'),
(445, 1, 2, 6, 6, 3, 0, 0, 107, 258, 'pertanyaan-tk2 katex-italic', 'n'),
(446, 1, 2, 6, 6, 3, 0, 0, 119, 372, 'pertanyaan-tk1 katex-italic', 'x'),
(447, 1, 2, 6, 6, 3, 0, 0, 107, 398, 'pertanyaan-tk2 katex-italic', 'n'),
(448, 1, 2, 6, 6, 3, 0, 0, 230, 178, 'pertanyaan-tk1 katex-regular', '0'),
(449, 1, 2, 6, 6, 3, 0, 0, 215, 232, 'pertanyaan-tk1 katex-italic', 'x'),
(450, 1, 2, 6, 6, 3, 0, 0, 201, 258, 'pertanyaan-tk2 katex-italic', 'n'),
(451, 1, 2, 6, 6, 3, 0, 0, 215, 323, 'pertanyaan-tk1 katex-italic', 'n'),
(452, 1, 2, 6, 6, 3, 0, 0, 210, 360, 'pertanyaan-tk2 katex-italic', 'n'),
(453, 1, 2, 6, 6, 3, 0, 0, 210, 392, 'pertanyaan-tk2 katex-regular', '1'),
(454, 1, 2, 6, 6, 3, 0, 0, 294, 3, 'pertanyaan-tk1 katex-italic', 'x'),
(455, 1, 2, 6, 6, 3, 0, 0, 278, 29, 'pertanyaan-tk2 katex-italic', 'n'),
(456, 1, 2, 6, 6, 3, 0, 0, 294, 101, 'pertanyaan-tk1 katex-italic', 'n'),
(457, 1, 2, 6, 6, 3, 0, 0, 287, 139, 'pertanyaan-tk2 katex-italic', 'n'),
(458, 1, 2, 6, 6, 3, 0, 0, 287, 170, 'pertanyaan-tk2 katex-regular', '1'),
(459, 1, 2, 6, 6, 3, 0, 0, 294, 229, 'pertanyaan-tk1 katex-regular', '0'),
(460, 1, 2, 6, 6, 3, 0, 0, 350, 129, 'pertanyaan-tk1 katex-italic', 'x'),
(461, 1, 2, 6, 6, 3, 0, 0, 335, 155, 'pertanyaan-tk2 katex-italic', 'n'),
(462, 1, 2, 6, 6, 3, 0, 0, 350, 229, 'pertanyaan-tk1 katex-italic', 'n'),
(463, 1, 2, 6, 6, 3, 0, 0, 342, 267, 'pertanyaan-tk2 katex-italic', 'n'),
(464, 1, 2, 6, 6, 3, 0, 0, 342, 299, 'pertanyaan-tk2 katex-regular', '1'),
(465, 1, 2, 6, 6, 3, 0, 0, 396, 104, 'pertanyaan-tk1 katex-italic', 'x'),
(466, 1, 2, 6, 6, 3, 0, 0, 396, 230, 'pertanyaan-tk1 katex-italic', 'n'),
(467, 1, 2, 6, 6, 3, 0, 0, 389, 267, 'pertanyaan-tk2 katex-italic', 'n'),
(468, 1, 2, 6, 6, 3, 0, 0, 389, 299, 'pertanyaan-tk2 katex-regular', '1'),
(469, 1, 2, 6, 6, 3, 0, 0, 441, 152, 'pertanyaan-tk1 katex-italic', 'x'),
(470, 1, 2, 6, 6, 3, 0, 0, 441, 230, 'pertanyaan-tk1 katex-italic', 'n'),
(471, 1, 2, 6, 6, 3, 0, 0, 483, 231, 'pertanyaan-tk1 katex-italic', 'n'),
(472, 1, 2, 6, 6, 3, 0, 0, 511, 237, 'pertanyaan-tk1 katex-italic', 'x'),
(473, 1, 2, 6, 7, 2, 230, 150, 0, 0, '[NULL]', '\\begin{aligned}\n&\\frac{d y}{d x}=-\\frac{1}{f(x, y)}\\\\\n&\\frac{d y}{d x}=-\\frac{1}{\\frac{{\\textcolor{white}{\\Large \\blacksquare}} y}{{\\textcolor{white}{\\Large \\blacksquare}}}} \\\\\n&\\frac{d y}{d x}={\\textcolor{white}{\\LARGE \\blacksquare}}\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}}}{{\\textcolor{white}{\\LARGE \\blacksquare}} y}\n\\end{aligned}'),
(474, 1, 2, 6, 7, 3, 0, 0, 91, 74, 'pertanyaan-tk2 katex-italic', 'n'),
(475, 1, 2, 6, 7, 3, 0, 0, 112, 78, 'pertanyaan-tk2 katex-italic', 'x'),
(476, 1, 2, 6, 7, 3, 0, 0, 157, 55, 'pertanyaan-tk1 katex-italic', '-'),
(477, 1, 2, 6, 7, 3, 0, 0, 144, 88, 'pertanyaan-tk1 katex-italic', 'x'),
(478, 1, 2, 6, 7, 3, 0, 0, 177, 83, 'pertanyaan-tk1 katex-italic', 'n'),
(479, 1, 2, 6, 8, 2, 460, 320, 0, 0, '[NULL]', '\\begin{aligned}\n\\frac{d y}{d x}&={\\textcolor{white}{\\LARGE \\blacksquare}}\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}}}{{\\textcolor{white}{\\LARGE \\blacksquare}} y} \\\\\n{\\textcolor{white}{\\LARGE \\blacksquare}} y d y&={\\textcolor{white}{\\LARGE \\blacksquare}}{\\textcolor{white}{\\LARGE \\blacksquare}} d x \\\\\n\\int {\\textcolor{white}{\\LARGE \\blacksquare}} y d y&=\\int{\\textcolor{white}{\\LARGE \\blacksquare}}{\\textcolor{white}{\\LARGE \\blacksquare}} d x\\\\\n{\\textcolor{white}{\\LARGE \\blacksquare}} \\cdot \\frac{y^{{\\textcolor{white}{\\Large \\blacksquare}}}}{{\\textcolor{white}{\\LARGE \\blacksquare}}}&={\\textcolor{white}{\\LARGE \\blacksquare}}\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}}^{{\\textcolor{white}{\\Large \\blacksquare}}}}{{\\textcolor{white}{\\LARGE \\blacksquare}}}+C \\\\\n\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}} y^{{\\textcolor{white}{\\Large \\blacksquare}}}}{{\\textcolor{white}{\\LARGE \\blacksquare}}}&={\\textcolor{white}{\\LARGE \\blacksquare}}\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}}^{{\\textcolor{white}{\\Large \\blacksquare}}}}{{\\textcolor{white}{\\LARGE \\blacksquare}}}+C \\\\\n\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}} y^{{\\textcolor{white}{\\Large \\blacksquare}}}+{\\textcolor{white}{\\LARGE \\blacksquare}}^{{\\textcolor{white}{\\Large \\blacksquare}}}}{{\\textcolor{white}{\\LARGE \\blacksquare}}}&=C \\\\\n{\\textcolor{white}{\\LARGE \\blacksquare}} y^{{\\textcolor{white}{\\Large \\blacksquare}}}+{\\textcolor{white}{\\LARGE \\blacksquare}}^{{\\textcolor{white}{\\Large \\blacksquare}}}&={\\textcolor{white}{\\LARGE \\blacksquare}} C\n\\end{aligned}'),
(480, 1, 2, 6, 8, 3, 0, 0, 34, 166, 'pertanyaan-tk1 katex-regular', '-'),
(481, 1, 2, 6, 8, 3, 0, 0, 21, 198, 'pertanyaan-tk1 katex-italic', 'x'),
(482, 1, 2, 6, 8, 3, 0, 0, 54, 194, 'pertanyaan-tk1 katex-italic', 'n'),
(483, 1, 2, 6, 8, 3, 0, 0, 86, 83, 'pertanyaan-tk1 katex-italic', 'n'),
(484, 1, 2, 6, 8, 3, 0, 0, 86, 165, 'pertanyaan-tk1 katex-regular', '-'),
(485, 1, 2, 6, 8, 3, 0, 0, 86, 192, 'pertanyaan-tk1 katex-italic', 'x'),
(486, 1, 2, 6, 8, 3, 0, 0, 124, 83, 'pertanyaan-tk1 katex-italic', 'n'),
(487, 1, 2, 6, 8, 3, 0, 0, 124, 188, 'pertanyaan-tk1 katex-regular', '-'),
(488, 1, 2, 6, 8, 3, 0, 0, 124, 214, 'pertanyaan-tk1 katex-italic', 'x'),
(489, 1, 2, 6, 8, 3, 0, 0, 198, 62, 'pertanyaan-tk1 katex-italic', 'n'),
(490, 1, 2, 6, 8, 3, 0, 0, 179, 114, 'pertanyaan-tk2 katex-regular', '2'),
(491, 1, 2, 6, 8, 3, 0, 0, 218, 107, 'pertanyaan-tk1 katex-regular', '2'),
(492, 1, 2, 6, 8, 3, 0, 0, 198, 165, 'pertanyaan-tk1 katex-regular', '-'),
(493, 1, 2, 6, 8, 3, 0, 0, 185, 194, 'pertanyaan-tk1 katex-italic', 'x'),
(494, 1, 2, 6, 8, 3, 0, 0, 171, 219, 'pertanyaan-tk2 katex-regular', '2'),
(495, 1, 2, 6, 8, 3, 0, 0, 218, 205, 'pertanyaan-tk1 katex-italic', '2'),
(496, 1, 2, 6, 8, 3, 0, 0, 261, 78, 'pertanyaan-tk1 katex-italic', 'n'),
(497, 1, 2, 6, 8, 3, 0, 0, 248, 114, 'pertanyaan-tk2 katex-regular', '2'),
(498, 1, 2, 6, 8, 3, 0, 0, 294, 95, 'pertanyaan-tk1 katex-regular', '2'),
(499, 1, 2, 6, 8, 3, 0, 0, 274, 165, 'pertanyaan-tk1 katex-regular', '-'),
(500, 1, 2, 6, 8, 3, 0, 0, 261, 194, 'pertanyaan-tk1 katex-italic', 'x'),
(501, 1, 2, 6, 8, 3, 0, 0, 247, 219, 'pertanyaan-tk2 katex-regular', '2'),
(502, 1, 2, 6, 8, 3, 0, 0, 294, 204, 'pertanyaan-tk1 katex-regular', '2'),
(503, 1, 2, 6, 8, 3, 0, 0, 336, 7, 'pertanyaan-tk1 katex-italic', 'n'),
(504, 1, 2, 6, 8, 3, 0, 0, 323, 42, 'pertanyaan-tk2 katex-regular', '2'),
(505, 1, 2, 6, 8, 3, 0, 0, 336, 89, 'pertanyaan-tk1 katex-italic', 'x'),
(506, 1, 2, 6, 8, 3, 0, 0, 323, 114, 'pertanyaan-tk2 katex-regular', '2'),
(507, 1, 2, 6, 8, 3, 0, 0, 370, 59, 'pertanyaan-tk1 katex-regular', '2'),
(508, 1, 2, 6, 8, 3, 0, 0, 412, 9, 'pertanyaan-tk1 katex-italic', 'n'),
(509, 1, 2, 6, 8, 3, 0, 0, 408, 44, 'pertanyaan-tk2 katex-regular', '2'),
(510, 1, 2, 6, 8, 3, 0, 0, 412, 91, 'pertanyaan-tk1 katex-italic', 'x'),
(511, 1, 2, 6, 8, 3, 0, 0, 398, 117, 'pertanyaan-tk2 katex-regular', '2'),
(512, 1, 2, 6, 8, 3, 0, 0, 412, 166, 'pertanyaan-tk1 katex-regular', '2'),
(513, 1, 2, 6, 9, 1, 0, 0, 0, 0, '[NULL]', 'Plot grafik secara manual atau menggunakan <a style=\"color: #60a5fa;\" href=\"https://www.desmos.com/calculator\" target=\"_blank\">Kalkulator Grafik Desmos</a> dan cocokkan dengan jawaban.'),
(514, 1, 2, 8, 1, 1, 0, 0, 0, 0, '[NULL]', '<b>Nonlinear Differential Equations</b>'),
(515, 1, 2, 8, 2, 1, 0, 0, 0, 0, '[NULL]', 'Tentukan sebuah penyelesaian (atau beberapa penyelesaian) dari persamaan diferensial $x \\sqrt{1-y^2} dx + y\\sqrt{1-x^2} dy = 0$  dengan $y=\\frac {1}{2}$ saat $x=\\frac {1}{2}$ yang tidak bisa didapatkan dengan menentukan nilai dari konstanta pada penyelesaian umum. Petunjuk : Lihat Contoh 10.'),
(516, 1, 2, 8, 3, 1, 0, 0, 0, 0, '[NULL]', '<b>Instruksi :</b></br>Lengkapilah penyelesaian dari soal di atas dengan mengisi tiap kotak berwarna abu-abu dengan satu karakter yang sesuai kemudian tekan ENTER.'),
(517, 1, 2, 8, 4, 2, 200, 420, 0, 0, '[NULL]', '\\begin{aligned}\nx \\sqrt{1-y^{2}} d x+y \\sqrt{1-x^{2}} d y&=0 \\\\\nx \\sqrt{1-y^{2}} d x&=-y \\sqrt{1-x^{2}} d y \\\\\n\\frac{x}{\\sqrt{1-x^{2}}} d x&=- \\frac{y}{\\sqrt{1-y^{2}}} d y \\\\\n\\int \\frac{x}{\\sqrt{1-x^{2}}} d x&=\\int - \\frac{y}{\\sqrt{1-y^{2}}} d y\n\\end{aligned}'),
(518, 1, 2, 8, 5, 2, 225, 225, 0, 0, '[NULL]', '\\begin{aligned}\nu&=1-x^{2} \\\\\n\\frac{d {\\textcolor{white}{\\LARGE \\blacksquare}}}{d x}&=\\frac{d}{d x}\\left({\\textcolor{white}{\\LARGE \\blacksquare}}-x^{{\\textcolor{white}{\\Large \\blacksquare}}}\\right) \\\\\n\\frac{d {\\textcolor{white}{\\LARGE \\blacksquare}}}{d x}&={\\textcolor{white}{\\LARGE \\blacksquare}}{\\textcolor{white}{\\LARGE \\blacksquare}} x \\\\\nd x&={\\textcolor{white}{\\LARGE \\blacksquare}}\\frac{1}{{\\textcolor{white}{\\LARGE \\blacksquare}} x} d {\\textcolor{white}{\\LARGE \\blacksquare}}\n\\end{aligned}'),
(519, 1, 2, 8, 5, 3, 0, 0, 49, 16, 'pertanyaan-tk1 katex-italic', 'u'),
(520, 1, 2, 8, 5, 3, 0, 0, 63, 114, 'pertanyaan-tk1 katex-regular', '1'),
(521, 1, 2, 8, 5, 3, 0, 0, 59, 174, 'pertanyaan-tk2 katex-regular', '2'),
(522, 1, 2, 8, 5, 3, 0, 0, 109, 16, 'pertanyaan-tk1 katex-italic', 'u'),
(523, 1, 2, 8, 5, 3, 0, 0, 123, 70, 'pertanyaan-tk1 katex-regular', '-'),
(524, 1, 2, 8, 5, 3, 0, 0, 123, 96, 'pertanyaan-tk1 katex-regular', '2'),
(525, 1, 2, 8, 5, 3, 0, 0, 167, 70, 'pertanyaan-tk1 katex-regular', '-'),
(526, 1, 2, 8, 5, 3, 0, 0, 188, 99, 'pertanyaan-tk1 katex-regular', '2'),
(527, 1, 2, 8, 5, 3, 0, 0, 167, 147, 'pertanyaan-tk1 katex-italic', 'u'),
(528, 1, 2, 8, 6, 2, 235, 225, 0, 0, '[NULL]', '\\begin{aligned}\nv&=1-y^{2} \\\\\n\\frac{d {\\textcolor{white}{\\LARGE \\blacksquare}}}{d y}&=\\frac{d}{d y}\\left({\\textcolor{white}{\\LARGE \\blacksquare}}-y^{{\\textcolor{white}{\\Large \\blacksquare}}}\\right) \\\\\n\\frac{d {\\textcolor{white}{\\LARGE \\blacksquare}}}{d y}&={\\textcolor{white}{\\LARGE \\blacksquare}}{\\textcolor{white}{\\LARGE \\blacksquare}} y \\\\\nd y&={\\textcolor{white}{\\LARGE \\blacksquare}}\\frac{1}{{\\textcolor{white}{\\LARGE \\blacksquare}} y} d {\\textcolor{white}{\\LARGE \\blacksquare}}\n\\end{aligned}'),
(529, 1, 2, 8, 6, 3, 0, 0, 49, 16, 'pertanyaan-tk1 katex-italic', 'v'),
(530, 1, 2, 8, 6, 3, 0, 0, 63, 112, 'pertanyaan-tk1 katex-regular', '1'),
(531, 1, 2, 8, 6, 3, 0, 0, 59, 172, 'pertanyaan-tk2 katex-regular', '2'),
(532, 1, 2, 8, 6, 3, 0, 0, 109, 16, 'pertanyaan-tk1 katex-italic', 'v'),
(533, 1, 2, 8, 6, 3, 0, 0, 123, 70, 'pertanyaan-tk1 katex-regular', '-'),
(534, 1, 2, 8, 6, 3, 0, 0, 123, 96, 'pertanyaan-tk1 katex-regular', '2'),
(535, 1, 2, 8, 6, 3, 0, 0, 171, 73, 'pertanyaan-tk1 katex-regular', '-'),
(536, 1, 2, 8, 6, 3, 0, 0, 192, 99, 'pertanyaan-tk1 katex-regular', '2'),
(537, 1, 2, 8, 6, 3, 0, 0, 171, 147, 'pertanyaan-tk1 katex-italic', 'v'),
(538, 1, 2, 8, 7, 2, 475, 590, 0, 0, '[NULL]', '\\begin{aligned}\n\\int \\frac{x}{\\sqrt{1-x^{2}}} d x &=\\int \\frac{-y}{\\sqrt{1-y^{2}}} d y \\\\\n\\int \\frac{x}{\\sqrt{u}}\\left({\\textcolor{white}{\\LARGE \\blacksquare}}\\frac{1}{{\\textcolor{white}{\\LARGE \\blacksquare}} x}\\right) d u&=\\int \\frac{-y}{\\sqrt{v}}\\left({\\textcolor{white}{\\LARGE \\blacksquare}}\\frac{1}{{\\textcolor{white}{ \\LARGE \\blacksquare}} y}\\right) d v \\\\\n\\int{\\textcolor{white}{\\LARGE \\blacksquare}}\\frac{1}{{\\textcolor{white}{\\LARGE \\blacksquare}} \\sqrt{u}} d u&=\\int \\frac{1}{{\\textcolor{white}{\\LARGE \\blacksquare}} \\sqrt{v}} d v \\\\\n\\int{\\textcolor{white}{\\LARGE \\blacksquare}}\\frac{1}{{\\textcolor{white}{\\LARGE \\blacksquare}}} u^{{\\textcolor{white}{\\Large \\blacksquare}}\\frac{1}{{\\textcolor{white}{\\Large \\blacksquare}}}} d u&=\\int \\frac{1}{{\\textcolor{white}{\\LARGE \\blacksquare}}} v^{{\\textcolor{white}{\\Large \\blacksquare}}\\frac{1}{{\\textcolor{white}{\\Large \\blacksquare}}}} d v \\\\\n{\\textcolor{white}{\\LARGE \\blacksquare}}\\frac{1}{{\\textcolor{white}{\\LARGE \\blacksquare}}}\\left(\\frac{1}{{\\textcolor{white}{\\Large \\blacksquare}}\\frac{1}{{\\textcolor{white}{\\Large \\blacksquare}}}+1} u^{{\\textcolor{white}{\\Large \\blacksquare}}\\frac{1}{{\\textcolor{white}{\\Large \\blacksquare}}}+1}\\right)+C&= \\frac{1}{{\\textcolor{white}{\\LARGE \\blacksquare}}}\\left(\\frac{1}{{\\textcolor{white}{\\Large \\blacksquare}}\\frac{1}{{\\textcolor{white}{\\Large \\blacksquare}}}+1} v^{{\\textcolor{white}{\\Large \\blacksquare}}\\frac{1}{{\\textcolor{white}{\\Large \\blacksquare}}}+1}\\right) \\\\\n{\\textcolor{white}{\\LARGE \\blacksquare}}\\frac{1}{{\\textcolor{white}{\\LARGE \\blacksquare}}}({\\textcolor{white}{\\LARGE \\blacksquare}})\\left(\\sqrt{1-x^{2}}\\right)+C&=\\frac{1}{{\\textcolor{white}{\\LARGE \\blacksquare}}}({\\textcolor{white}{\\LARGE \\blacksquare}})\\left(\\sqrt{1-y^{2}}\\right) \\\\\n{\\textcolor{white}{\\LARGE \\blacksquare}}\\sqrt{1-x^{2}}+C&=\\sqrt{1-y^{2}} \\\\\nC&=\\sqrt{1-y^{2}}+\\sqrt{1-x^{2}}\n\\end{aligned}'),
(539, 1, 2, 8, 7, 3, 0, 2, 86, 194, 'pertanyaan-tk1 katex-regular', '-'),
(540, 1, 2, 8, 7, 3, 0, 0, 106, 222, 'pertanyaan-tk1 katex-regular', '2'),
(541, 1, 2, 8, 7, 3, 0, 0, 86, 397, 'pertanyaan-tk1 katex-regular', '-'),
(542, 1, 2, 8, 7, 3, 0, 0, 106, 426, 'pertanyaan-tk1 katex-regular', '2'),
(543, 1, 2, 8, 7, 3, 0, 3, 142, 194, 'pertanyaan-tk1 katex-regular', '-'),
(544, 1, 2, 8, 7, 3, 0, 0, 163, 222, 'pertanyaan-tk1 katex-regular', '2'),
(545, 1, 2, 8, 7, 3, 0, 0, 163, 350, 'pertanyaan-tk1 katex-regular', '2'),
(546, 1, 2, 8, 7, 3, 0, 4, 210, 161, 'pertanyaan-tk1 katex-regular', '-'),
(547, 1, 2, 8, 7, 3, 0, 0, 225, 190, 'pertanyaan-tk1 katex-regular', '2'),
(548, 1, 2, 8, 7, 3, 0, 0, 196, 229, 'pertanyaan-tk2 katex-regular', '-'),
(549, 1, 2, 8, 7, 3, 0, 0, 205, 253, 'pertanyaan-tk2 katex-regular', '2'),
(550, 1, 2, 8, 7, 3, 0, 0, 225, 350, 'pertanyaan-tk1 katex-regular', '2'),
(551, 1, 2, 8, 7, 3, 0, 0, 196, 389, 'pertanyaan-tk2 katex-regular', '-'),
(552, 1, 2, 8, 7, 3, 0, 0, 205, 413, 'pertanyaan-tk2 katex-regular', '2'),
(553, 1, 2, 8, 7, 3, 0, 5, 276, 3, 'pertanyaan-tk1 katex-regular', '-'),
(554, 1, 2, 8, 7, 3, 0, 0, 292, 32, 'pertanyaan-tk1 katex-regular', '2'),
(555, 1, 2, 8, 7, 3, 0, 0, 287, 83, 'pertanyaan-tk2 katex-regular', '-'),
(556, 1, 2, 8, 7, 3, 0, 0, 303, 107, 'pertanyaan-tk2 katex-regular', '2'),
(557, 1, 2, 8, 7, 3, 0, 0, 257, 177, 'pertanyaan-tk2 katex-regular', '-'),
(558, 1, 2, 8, 7, 3, 0, 0, 269, 201, 'pertanyaan-tk2 katex-regular', '2'),
(559, 1, 2, 8, 7, 3, 0, 0, 290, 328, 'pertanyaan-tk1 katex-regular', '2'),
(560, 1, 2, 8, 7, 3, 0, 0, 287, 378, 'pertanyaan-tk2 katex-regular', '-'),
(561, 1, 2, 8, 7, 3, 0, 0, 304, 402, 'pertanyaan-tk2 katex-regular', '2'),
(562, 1, 2, 8, 7, 3, 0, 0, 262, 472, 'pertanyaan-tk2 katex-regular', '-'),
(563, 1, 2, 8, 7, 3, 0, 0, 269, 496, 'pertanyaan-tk2 katex-regular', '2'),
(564, 1, 2, 8, 7, 3, 0, 6, 340, 65, 'pertanyaan-tk1 katex-regular', '-'),
(565, 1, 2, 8, 7, 3, 0, 0, 355, 93, 'pertanyaan-tk1 katex-regular', '2'),
(566, 1, 2, 8, 7, 3, 0, 0, 340, 130, 'pertanyaan-tk1 katex-regular', '2'),
(567, 1, 2, 8, 7, 3, 0, 0, 355, 328, 'pertanyaan-tk1 katex-regular', '2'),
(568, 1, 2, 8, 7, 3, 0, 0, 340, 364, 'pertanyaan-tk1 katex-regular', '2'),
(569, 1, 2, 8, 7, 3, 0, 7, 388, 162, 'pertanyaan-tk1 katex-regular', '-'),
(570, 1, 2, 8, 8, 1, 0, 0, 0, 0, '[NULL]', 'Subtitusi nilai  $y=\\frac {1}{2}$ dan $x=\\frac {1}{2}$ untuk mendapatkan nilai $C$.'),
(571, 1, 2, 8, 8, 2, 460, 345, 0, 0, '[NULL]', '\\begin{aligned}\n&C=\\sqrt{1-x^{2}}+\\sqrt{1-y^{2}} \\\\\n&C=\\sqrt{1-\\left(\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}}}{{\\textcolor{white}{\\LARGE \\blacksquare}}}\\right)^{2}}+\\sqrt{1-\\left(\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}}}{{\\textcolor{white}{\\LARGE \\blacksquare}}}\\right)^{2}} \\\\\n&C=\\sqrt{1-\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}}}{{\\textcolor{white}{\\LARGE \\blacksquare}}}}+\\sqrt{1-\\left(\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}}}{{\\textcolor{white}{\\LARGE \\blacksquare}}}\\right)} \\\\\n&C=\\sqrt{\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}}}{{\\textcolor{white}{\\LARGE \\blacksquare}}}}+\\sqrt{\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}}}{{\\textcolor{white}{\\LARGE \\blacksquare}}}} \\\\\n&C=2 \\sqrt{\\frac{{\\textcolor{white}{\\LARGE \\blacksquare}}}{{\\textcolor{white}{\\LARGE \\blacksquare}}}} \\\\\n&C=2 \\frac{\\sqrt{{\\textcolor{white}{\\LARGE \\blacksquare}}}}{{\\textcolor{white}{\\LARGE \\blacksquare}}} \\\\\n&C=\\sqrt{{\\textcolor{white}{\\LARGE \\blacksquare}}}\n\\end{aligned}'),
(572, 1, 2, 8, 8, 3, 0, 2, 62, 116, 'pertanyaan-tk1 katex-regular', '1'),
(573, 1, 2, 8, 8, 3, 0, 0, 91, 116, 'pertanyaan-tk1 katex-regular', '2'),
(574, 1, 2, 8, 8, 3, 0, 0, 62, 262, 'pertanyaan-tk1 katex-regular', '1'),
(575, 1, 2, 8, 8, 3, 0, 0, 91, 262, 'pertanyaan-tk1 katex-regular', '2'),
(576, 1, 2, 8, 8, 3, 0, 3, 132, 101, 'pertanyaan-tk1 katex-regular', '1'),
(577, 1, 2, 8, 8, 3, 0, 0, 160, 101, 'pertanyaan-tk1 katex-regular', '4'),
(578, 1, 2, 8, 8, 3, 0, 0, 132, 224, 'pertanyaan-tk1 katex-regular', '1'),
(579, 1, 2, 8, 8, 3, 0, 0, 160, 224, 'pertanyaan-tk1 katex-regular', '4'),
(580, 1, 2, 8, 8, 3, 0, 4, 202, 67, 'pertanyaan-tk1 katex-regular', '3'),
(581, 1, 2, 8, 8, 3, 0, 0, 231, 67, 'pertanyaan-tk1 katex-regular', '4'),
(582, 1, 2, 8, 8, 3, 0, 0, 202, 144, 'pertanyaan-tk1 katex-regular', '3'),
(583, 1, 2, 8, 8, 3, 0, 0, 231, 144, 'pertanyaan-tk1 katex-regular', '4'),
(584, 1, 2, 8, 8, 3, 0, 5, 268, 77, 'pertanyaan-tk1 katex-regular', '3'),
(585, 1, 2, 8, 8, 3, 0, 0, 298, 77, 'pertanyaan-tk1 katex-regular', '4'),
(586, 1, 2, 8, 8, 3, 0, 6, 338, 77, 'pertanyaan-tk1 katex-regular', '3'),
(587, 1, 2, 8, 8, 3, 0, 0, 367, 67, 'pertanyaan-tk1 katex-regular', '2'),
(588, 1, 2, 8, 8, 3, 0, 7, 408, 66, 'pertanyaan-tk1 katex-regular', '3'),
(589, 1, 2, 8, 9, 1, 0, 0, 0, 0, '[NULL]', 'Penyelesaian khusus persamaan'),
(590, 1, 2, 8, 9, 2, 100, 245, 0, 0, '[NULL]', '\\begin{aligned}\n\\sqrt{1-y^{2}}+\\sqrt{1-x^{2}}&=C\\\\\n\\sqrt{1-y^{2}}+\\sqrt{1-x^{2}}&=\\sqrt{{\\textcolor{white}{\\LARGE \\blacksquare}}}\n\\end{aligned}'),
(591, 1, 2, 8, 9, 3, 0, 0, 62, 214, 'pertanyaan-tk1 katex-regular', '3'),
(592, 1, 2, 8, 10, 1, 0, 0, 0, 0, '[NULL]', 'Menentukan $\\frac {d y} {d x}$ untuk slope field.'),
(593, 1, 2, 8, 10, 2, 150, 470, 0, 0, '[NULL]', '\\begin{aligned}\n{\\textcolor{white}{\\LARGE \\blacksquare}} x\\sqrt{1-y^2} dx + y\\sqrt{1-x^2} dy &= 0\\\\\n\\frac {dy} {dx} &=  {\\textcolor{white}{\\LARGE \\blacksquare}} \\frac {{\\textcolor{white}{\\LARGE \\blacksquare}}} {{\\textcolor{white}{\\LARGE \\blacksquare}}} \\frac {\\sqrt{{\\textcolor{white}{\\LARGE \\blacksquare}}-{\\textcolor{white}{\\LARGE \\blacksquare}}^2}} {\\sqrt{{\\textcolor{white}{\\LARGE \\blacksquare}}-{\\textcolor{white}{\\LARGE \\blacksquare}}^2}}\n\\end{aligned}'),
(594, 1, 2, 8, 10, 3, 0, 0, 78, 282, 'pertanyaan-tk1 katex-regular', '-'),
(595, 1, 2, 8, 10, 3, 0, 0, 65, 313, 'pertanyaan-tk1 katex-italic', 'x'),
(598, 1, 2, 8, 10, 3, 0, 0, 93, 313, 'pertanyaan-tk1 katex-italic', 'y'),
(599, 1, 2, 8, 10, 3, 0, 0, 65, 364, 'pertanyaan-tk1 katex-regular', '1'),
(600, 1, 2, 8, 10, 3, 0, 0, 65, 411, 'pertanyaan-tk1 katex-italic', 'y'),
(601, 1, 2, 8, 10, 3, 0, 0, 107, 364, 'pertanyaan-tk1 katex-regular', '1'),
(602, 1, 2, 8, 10, 3, 0, 0, 107, 411, 'pertanyaan-tk1 katex-italic', 'x'),
(603, 1, 2, 8, 11, 1, 0, 0, 0, 0, '[NULL]', 'Plot slope field menggunakan <a style=\"color: #60a5fa;\" href=\"https://c3d.libretexts.org/DirectionField/index.html\" target=\"_blank\">Direction Field Explorer app</a>. Kemudian, masukkan titik $(\\frac {1} {2}, \\frac {1} {2})$, lalu klik plot kurva penyelesaian yang melewati titik tersebut.'),
(604, 1, 2, 8, 12, 1, 0, 0, 0, 0, '[NULL]', 'Berdasarkan slope field penyelesaian singuler adalah  '),
(605, 1, 2, 8, 13, 2, 125, 110, 0, 0, '[NULL]', '\\begin{aligned}\ny \\equiv {\\textcolor{white}{\\LARGE \\blacksquare}}\\\\\n\\text {dan} \\\\\ny \\equiv {\\textcolor{white}{\\LARGE \\blacksquare}} {\\textcolor{white}{\\LARGE \\blacksquare}}\n\\end{aligned}'),
(606, 1, 2, 8, 13, 3, 0, 0, 23, 68, 'pertanyaan-tk1 katex-regular', '1'),
(607, 1, 2, 8, 13, 3, 0, 0, 84, 39, 'pertanyaan-tk1 katex-regular', '-'),
(608, 1, 2, 8, 13, 3, 0, 0, 84, 68, 'pertanyaan-tk1 katex-regular', '1'),
(609, 1, 2, 8, 14, 1, 0, 0, 0, 0, '[NULL]', 'Informasi tambahan mengenai penyelesaian singuler ini dapat dilihat pada kunci jawaban. ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `card_answer_user`
--

CREATE TABLE `card_answer_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `materi` int(5) NOT NULL,
  `sub_materi` int(5) NOT NULL,
  `card` int(5) NOT NULL,
  `benar` int(3) DEFAULT NULL,
  `total_pertanyaan` int(3) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `answ_1` varchar(1) DEFAULT NULL,
  `answ_2` varchar(1) DEFAULT NULL,
  `answ_3` varchar(1) DEFAULT NULL,
  `answ_4` varchar(1) DEFAULT NULL,
  `answ_5` varchar(1) DEFAULT NULL,
  `answ_6` varchar(1) DEFAULT NULL,
  `answ_7` varchar(1) DEFAULT NULL,
  `answ_8` varchar(1) DEFAULT NULL,
  `answ_9` varchar(1) DEFAULT NULL,
  `answ_10` varchar(1) DEFAULT NULL,
  `answ_11` varchar(1) DEFAULT NULL,
  `answ_12` varchar(1) DEFAULT NULL,
  `answ_13` varchar(1) DEFAULT NULL,
  `answ_14` varchar(1) DEFAULT NULL,
  `answ_15` varchar(1) DEFAULT NULL,
  `answ_16` varchar(1) DEFAULT NULL,
  `answ_17` varchar(1) DEFAULT NULL,
  `answ_18` varchar(1) DEFAULT NULL,
  `answ_19` varchar(1) DEFAULT NULL,
  `answ_20` varchar(1) DEFAULT NULL,
  `answ_21` varchar(1) DEFAULT NULL,
  `answ_22` varchar(1) DEFAULT NULL,
  `answ_23` varchar(1) DEFAULT NULL,
  `answ_24` varchar(1) DEFAULT NULL,
  `answ_25` varchar(1) DEFAULT NULL,
  `answ_26` varchar(1) DEFAULT NULL,
  `answ_27` varchar(1) DEFAULT NULL,
  `answ_28` varchar(1) DEFAULT NULL,
  `answ_29` varchar(1) DEFAULT NULL,
  `answ_30` varchar(1) DEFAULT NULL,
  `answ_31` varchar(1) DEFAULT NULL,
  `answ_32` varchar(1) DEFAULT NULL,
  `answ_33` varchar(1) DEFAULT NULL,
  `answ_34` varchar(1) DEFAULT NULL,
  `answ_35` varchar(1) DEFAULT NULL,
  `answ_36` varchar(1) DEFAULT NULL,
  `answ_37` varchar(1) DEFAULT NULL,
  `answ_38` varchar(1) DEFAULT NULL,
  `answ_39` varchar(1) DEFAULT NULL,
  `answ_40` varchar(1) DEFAULT NULL,
  `answ_41` varchar(1) DEFAULT NULL,
  `answ_42` varchar(1) DEFAULT NULL,
  `answ_43` varchar(1) DEFAULT NULL,
  `answ_44` varchar(1) DEFAULT NULL,
  `answ_45` varchar(1) DEFAULT NULL,
  `answ_46` varchar(1) DEFAULT NULL,
  `answ_47` varchar(1) DEFAULT NULL,
  `answ_48` varchar(1) DEFAULT NULL,
  `answ_49` varchar(1) DEFAULT NULL,
  `answ_50` varchar(1) DEFAULT NULL,
  `answ_51` varchar(1) DEFAULT NULL,
  `answ_52` varchar(1) DEFAULT NULL,
  `answ_53` varchar(1) DEFAULT NULL,
  `answ_54` varchar(1) DEFAULT NULL,
  `answ_55` varchar(1) DEFAULT NULL,
  `answ_56` varchar(1) DEFAULT NULL,
  `answ_57` varchar(1) DEFAULT NULL,
  `answ_58` varchar(1) DEFAULT NULL,
  `answ_59` varchar(1) DEFAULT NULL,
  `answ_60` varchar(1) DEFAULT NULL,
  `answ_61` varchar(1) DEFAULT NULL,
  `answ_62` varchar(1) DEFAULT NULL,
  `answ_63` varchar(1) DEFAULT NULL,
  `answ_64` varchar(1) DEFAULT NULL,
  `answ_65` varchar(1) DEFAULT NULL,
  `answ_66` varchar(1) DEFAULT NULL,
  `answ_67` varchar(1) DEFAULT NULL,
  `answ_68` varchar(1) DEFAULT NULL,
  `answ_69` varchar(1) DEFAULT NULL,
  `answ_70` varchar(1) DEFAULT NULL,
  `answ_71` varchar(1) DEFAULT NULL,
  `answ_72` varchar(1) DEFAULT NULL,
  `answ_73` varchar(1) DEFAULT NULL,
  `answ_74` varchar(1) DEFAULT NULL,
  `answ_75` varchar(1) DEFAULT NULL,
  `answ_76` varchar(1) DEFAULT NULL,
  `answ_77` varchar(1) DEFAULT NULL,
  `answ_78` varchar(1) DEFAULT NULL,
  `answ_79` varchar(1) DEFAULT NULL,
  `answ_80` varchar(1) DEFAULT NULL,
  `answ_81` varchar(1) DEFAULT NULL,
  `answ_82` varchar(1) DEFAULT NULL,
  `answ_83` varchar(1) DEFAULT NULL,
  `answ_84` varchar(1) DEFAULT NULL,
  `answ_85` varchar(1) DEFAULT NULL,
  `answ_86` varchar(1) DEFAULT NULL,
  `answ_87` varchar(1) DEFAULT NULL,
  `answ_88` varchar(1) DEFAULT NULL,
  `answ_89` varchar(1) DEFAULT NULL,
  `answ_90` varchar(1) DEFAULT NULL,
  `answ_91` varchar(1) DEFAULT NULL,
  `answ_92` varchar(1) DEFAULT NULL,
  `answ_93` varchar(1) DEFAULT NULL,
  `answ_94` varchar(1) DEFAULT NULL,
  `answ_95` varchar(1) DEFAULT NULL,
  `answ_96` varchar(1) DEFAULT NULL,
  `answ_97` varchar(1) DEFAULT NULL,
  `answ_98` varchar(1) DEFAULT NULL,
  `answ_99` varchar(1) DEFAULT NULL,
  `answ_100` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `card_layout`
--

CREATE TABLE `card_layout` (
  `id` int(1) NOT NULL,
  `layout` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `card_layout`
--

INSERT INTO `card_layout` (`id`, `layout`) VALUES
(1, '1 kolom'),
(2, '2 kolom');

-- --------------------------------------------------------

--
-- Struktur dari tabel `course_desc`
--

CREATE TABLE `course_desc` (
  `id` int(5) NOT NULL,
  `materi` int(5) NOT NULL,
  `course_desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `course_desc`
--

INSERT INTO `course_desc` (`id`, `materi`, `course_desc`) VALUES
(1, 1, 'Matematika dalam fisika memiliki peran tidak hanya sebagai alat tetapi sebagai bahasa yang digunakan untuk mengartikulasikan konsep-konsep fisika secara tepat dan kompak. MK Fisika Matematika 1 membekali mahasiswa untuk menguasai metode matematika yang sangat diperlukan untuk mempelajari berbagai fenomena fisika secara mendalam. Setelah mengikuti mata kuliah ini mahasiswa diharapkan menguasai berbagai metode matematika, serta mampu menggunakannya untuk menjelaskan dan menyelesaikan kasus berbagai fenomena fisis. Metode matematika yang diberikan terkait dengan materi kuliah: Deret Tak hingga, Bilangan Kompleks, Matriks dan Vektor, Integral Lipat, Deret Fourier, Diferensiasi Parsial, Analisis Vektor dan Tensor, dan Persamaan Diferensial Biasa. Perkuliahan dilakukan secara interaktif dengan menitikberatkan pada aktivitas mahasiswa. Selain pemecahan masalah, kegiatan perkuliahan dikelola agar mahasiswa dapat mengerjakannya dalam bentuk proyek kelompok (Team Based Project). Penguasaan metode matematika terkait materi kuliah dievaluasi melalui tugas mandiri, tugas kelompok, dan tes tertulis di tengah dan akhir semester.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cpl`
--

CREATE TABLE `cpl` (
  `id` int(5) NOT NULL,
  `materi` int(5) NOT NULL,
  `cpl` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cpl`
--

INSERT INTO `cpl` (`id`, `materi`, `cpl`) VALUES
(1, 1, 'Dapat menganalisis berbagai solusi-solusi alternatif yang ada untuk permasalahan fisis dan menyimpulkannya untuk mengambil keputusan yang tepat.'),
(2, 1, 'Menguasai dasar-dasar ilmu pengetahuan yaitu fisika, matematika, kimia dan biologi.'),
(3, 1, 'Mampu menghasilkan model matematis atau model fisik yang sesuai dengan hipotesis atau prakiraan dampak fenomena yang menjadi pokok bahasan.'),
(4, 1, 'Mampu merumuskan gejala dan masalah fisik melalui analisis berdasarkan hasil pengamatan dan percobaan.'),
(5, 1, 'Memahami dan memahami prosedur analitis untuk menggambarkan sifat fisis benda alam yang ditinjau.'),
(6, 1, 'Menunjukkan sikap tanggung jawab untuk bekerja di bidang keahliannya secara mandiri.'),
(7, 1, 'Mampu menunjukkan kinerja yang mandiri, berkualitas dan terukur.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cpmk`
--

CREATE TABLE `cpmk` (
  `id` int(5) NOT NULL,
  `materi` int(5) NOT NULL,
  `cpmk` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cpmk`
--

INSERT INTO `cpmk` (`id`, `materi`, `cpmk`) VALUES
(1, 1, 'Mampu menunjukkan kinerja yang mandiri, berkualitas dan terukur.'),
(2, 1, 'Menunjukkan sikap tanggung jawab untuk bekerja di bidang keahliannya secara mandiri.'),
(3, 1, 'Mampu menghasilkan model matematis atau model fisik yang sesuai dengan hipotesis atau prakiraan dampak fenomena yang menjadi pokok bahasan.'),
(4, 1, 'Mampu menerapkan pemikiran logis, kritis, sistematis, dan inovatif dalam rangka pengembangan atau penerapan ilmu pengetahuan dan teknologi yang memperhatikan dan menerapkan nilai-nilai humaniora sesuai dengan bidang keahliannya.'),
(5, 1, 'Memahami dan memahami prosedur analitis untuk menggambarkan sifat fisis benda alam yang ditinjau.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `is_active`
--

CREATE TABLE `is_active` (
  `id` int(11) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `is_active`
--

INSERT INTO `is_active` (`id`, `status`) VALUES
(0, 'Belum Aktif'),
(1, 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(1) NOT NULL,
  `tabel` varchar(50) NOT NULL,
  `nomor` int(1) NOT NULL,
  `kategori` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `tabel`, `nomor`, `kategori`) VALUES
(1, 'card_category', 1, 'Belajar'),
(2, 'card_category', 2, 'Latihan Soal'),
(3, 'card_latihan_soal', 1, 'Materi'),
(4, 'card_latihan_soal', 2, 'Persamaan'),
(5, 'card_latihan_soal', 3, 'Pertanyaan'),
(6, 'card_materi', 1, 'Materi'),
(7, 'card_materi', 2, 'Video'),
(8, 'card_materi', 3, 'Persamaan'),
(9, 'kunci_jawaban', 1, 'Langkah'),
(10, 'kunci_jawaban', 2, 'Penjelasan'),
(11, 'kunci_jawaban', 3, 'Persamaan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keterangan_jenis_card`
--

CREATE TABLE `keterangan_jenis_card` (
  `id` int(11) NOT NULL,
  `jenis_card` int(1) NOT NULL,
  `keterangan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `keterangan_jenis_card`
--

INSERT INTO `keterangan_jenis_card` (`id`, `jenis_card`, `keterangan`) VALUES
(1, 1, 'belajar'),
(2, 2, 'latihan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `materi`
--

CREATE TABLE `materi` (
  `id` int(11) NOT NULL,
  `materi` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `materi`
--

INSERT INTO `materi` (`id`, `materi`) VALUES
(1, 'Persamaan Diferensial Biasa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `referensi`
--

CREATE TABLE `referensi` (
  `id` int(11) NOT NULL,
  `sumber` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `referensi`
--

INSERT INTO `referensi` (`id`, `sumber`) VALUES
(1, 'https://www.splashlearn.com/math-vocabulary/algebra/term'),
(2, 'Boas Edisi ketiga'),
(3, 'https://c3d.libretexts.org/DirectionField/index.html'),
(4, 'https://www.zenius.net/blog/rumus-persamaan-lingkaran'),
(5, 'https://www.desmos.com/calculator'),
(6, 'Serway and Jewett Physics for Science and Engineering tabel Pengintegralan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_id`
--

CREATE TABLE `role_id` (
  `id` int(11) NOT NULL,
  `role` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role_id`
--

INSERT INTO `role_id` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `show_answers_log`
--

CREATE TABLE `show_answers_log` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `materi` int(11) NOT NULL,
  `sub_materi` int(11) NOT NULL,
  `card` int(11) NOT NULL,
  `jumlah_klik` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `subject_matter`
--

CREATE TABLE `subject_matter` (
  `id` int(5) NOT NULL,
  `materi` int(5) NOT NULL,
  `subject_matter` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `subject_matter`
--

INSERT INTO `subject_matter` (`id`, `materi`, `subject_matter`) VALUES
(1, 1, 'Introduction to ordinary differential equations (ODE), its scope and benefits.'),
(2, 1, 'Separable Equations'),
(3, 2, 'ODE of order one.'),
(4, 2, 'ODE of order 2 is homogeneous.'),
(5, 2, 'ODE applications in physics.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_learning_log`
--

CREATE TABLE `user_learning_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `materi_id` int(5) NOT NULL,
  `materi` varchar(128) NOT NULL,
  `sub_materi_id` int(5) NOT NULL,
  `sub_materi` varchar(128) NOT NULL,
  `card_number` int(5) NOT NULL,
  `total_card` int(5) NOT NULL,
  `started_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_log`
--

CREATE TABLE `user_log` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `email` varchar(128) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `1_sub_materi`
--
ALTER TABLE `1_sub_materi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `2_card`
--
ALTER TABLE `2_card`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `3_card_category`
--
ALTER TABLE `3_card_category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `4_card_materi`
--
ALTER TABLE `4_card_materi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `5_kunci_jawaban`
--
ALTER TABLE `5_kunci_jawaban`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `6_card_answer`
--
ALTER TABLE `6_card_answer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `7_total_pertanyaan`
--
ALTER TABLE `7_total_pertanyaan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `8_card_latihan_soal`
--
ALTER TABLE `8_card_latihan_soal`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `card_answer_user`
--
ALTER TABLE `card_answer_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `card_layout`
--
ALTER TABLE `card_layout`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `course_desc`
--
ALTER TABLE `course_desc`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cpl`
--
ALTER TABLE `cpl`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cpmk`
--
ALTER TABLE `cpmk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `keterangan_jenis_card`
--
ALTER TABLE `keterangan_jenis_card`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `referensi`
--
ALTER TABLE `referensi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role_id`
--
ALTER TABLE `role_id`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `show_answers_log`
--
ALTER TABLE `show_answers_log`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `subject_matter`
--
ALTER TABLE `subject_matter`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_learning_log`
--
ALTER TABLE `user_learning_log`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `1_sub_materi`
--
ALTER TABLE `1_sub_materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `3_card_category`
--
ALTER TABLE `3_card_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `4_card_materi`
--
ALTER TABLE `4_card_materi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;

--
-- AUTO_INCREMENT untuk tabel `5_kunci_jawaban`
--
ALTER TABLE `5_kunci_jawaban`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT untuk tabel `6_card_answer`
--
ALTER TABLE `6_card_answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `7_total_pertanyaan`
--
ALTER TABLE `7_total_pertanyaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `8_card_latihan_soal`
--
ALTER TABLE `8_card_latihan_soal`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=610;

--
-- AUTO_INCREMENT untuk tabel `card_answer_user`
--
ALTER TABLE `card_answer_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `course_desc`
--
ALTER TABLE `course_desc`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `cpl`
--
ALTER TABLE `cpl`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `cpmk`
--
ALTER TABLE `cpmk`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `keterangan_jenis_card`
--
ALTER TABLE `keterangan_jenis_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `materi`
--
ALTER TABLE `materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `referensi`
--
ALTER TABLE `referensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `show_answers_log`
--
ALTER TABLE `show_answers_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `subject_matter`
--
ALTER TABLE `subject_matter`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `user_learning_log`
--
ALTER TABLE `user_learning_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user_log`
--
ALTER TABLE `user_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
