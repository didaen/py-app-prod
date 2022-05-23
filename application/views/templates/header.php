<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- TAILWIND -->
    <link rel="stylesheet" href="<?= base_url('assets/'); ?>css/output.css">
    <!-- AKHIR TAILWIND -->

    <!-- KATEX -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.13.11/dist/katex.min.css" integrity="sha384-Um5gpz1odJg5Z4HAmzPtgZKdTBHZdw8S29IecapCSB31ligYPhHQZMIlWLYQGVoc" crossorigin="anonymous">
    <script defer src="https://cdn.jsdelivr.net/npm/katex@0.13.11/dist/katex.min.js" integrity="sha384-YNHdsYkH6gMx9y3mRkmcJ2mFUjTd0qNQQvY9VYZgQd7DcN7env35GzlmFaZ23JGp" crossorigin="anonymous"></script>
    <script defer src="https://cdn.jsdelivr.net/npm/katex@0.13.11/dist/contrib/auto-render.min.js" integrity="sha384-vZTG03m+2yp6N6BNi5iM4rW4oIwk5DfcNdFfxkk9ZWpDriOkXX8voJBFrAO7MpVl" crossorigin="anonymous"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            renderMathInElement(document.body, {
                // customised options
                // • auto-render specific keys, e.g.:
                delimiters: [{
                        left: '$$',
                        right: '$$',
                        display: true
                    },
                    {
                        left: '$',
                        right: '$',
                        display: false
                    },
                    {
                        left: '\\(',
                        right: '\\)',
                        display: false
                    },
                    {
                        left: '\\[',
                        right: '\\]',
                        display: true
                    }
                ],
                // • rendering keys, e.g.:
                throwOnError: false
            });
        });
    </script>
    <!-- AKHIR KATEX -->

    <title><?= $judul; ?></title>
</head>

<body>

    <!-- PEMBUNGKUS HEADER, ISI DENGAN FOOTER -->
    <div class="lg:w-3/5 flex flex-col min-h-screen mx-auto justify-between bg-blue-1400">


        <!-- LATAR BELAKANG BIRU MUDA -->


        <!-- PEMBUNGKUS NAVBAR DAN ISI -->
        <div class="flex flex-col pt-3 sm:pt-0 sm:px-12">

            <!-- NAMA USER YANG LOGIN DAN LOGOUT -->
            <div class="sm:flex flex-row hidden justify-end py-3 font-medium">

                <!-- USERNAME -->
                <a href="<?= base_url('user'); ?>" class="text-white hover:text-blue-1100 mr-5"><?= $user['username']; ?></a>

                <!-- LOGOUT -->
                <a href="<?= base_url('auth/logout'); ?>" class="logout text-blue-1100 hover:text-white">
                    Logout
                </a>

            </div>
            <!-- AKHIR NAMA USER YANG LOGIN DAN LOGOUT -->

            <!-- NAVBAR -->
            <nav class="text-blue-1100 w-full flex flex-col sm:flex-row justify-between pb-0 sm:pb-3 px-6 sm:px-0 sm:space-x-5">

                <!-- PEMBUNGKUS TOGGLE MENU DAN BRAND -->
                <div class="flex flex-row justify-between space-x-5">

                    <!-- BRAND -->
                    <div class="flex flex-row items-center text-2xl mb-2 sm:mb-0 space-x-3">

                        <!-- LOGO GAMBAR -->
                        <a href="<?= base_url('home'); ?>" class="flex-shrink-0"><img src="<?= base_url(); ?>assets/img/pylightgray.png" class="w-12 border-2 border-white rounded-full" alt="Physics Yourself">
                        </a>
                        <!-- AKHIR LOGO GAMBAR -->

                        <!-- TULISAN BRAND -->
                        <a href="<?= base_url('home'); ?>" class="tracking-wider leading-none text-white lovelo-bold" id="nama-website">
                            Physics Yourself
                        </a>
                        <!-- AKHIR TULISAN BRAND -->

                    </div>
                    <!-- AKHIR BRAND -->

                    <!-- TOGGLE MENU -->
                    <div class="menu-toggle flex flex-col justify-center mb-2 sm:mb-0 sm:hidden relative">

                        <!-- CHECKBOX TOGGLE MENU -->
                        <input type="checkbox" class="w-7 h-7 absolute -left-1 z-10 opacity-0" id="checkbox-nav" onchange="klikNav(this)" autocomplete="off">
                        <!-- AKHIR CHECKBOX TOGGLE MENU -->

                        <!-- TIGA GARIS HORIZONTAL -->
                        <span class="bar-1 transition duration-500 ease-in-out w-6 h-1 bg-blue-1200 mt-1 relative"></span>
                        <span class="bar-2 transition duration-500 ease-in-out w-6 h-1 bg-blue-1200 mt-1 relative"></span>
                        <span class="bar-3 transition duration-500 ease-in-out w-6 h-1 bg-blue-1200 mt-1 relative origin-top-left "></span>
                        <!-- AKHIR TIGA GARIS HORIZONTAL -->

                    </div>
                    <!-- AKHIR TOGGLE MENU -->

                </div>
                <!-- PEMBUNGKUS TOGGLE MENU DAN BRAND -->

                <!-- PEMBUNGKUS MENU NEVIGASI MHORIZONTAL -->
                <div class="flex-shrink-0 flex flex-col justify-center">

                    <!-- MENU NAVIGASI HORIZONTAL -->
                    <ul class="flex-col sm:flex sm:flex-row font-medium text-center hidden" id="menu-navigasi">

                        <!-- BERANDA -->
                        <a href="<?= base_url('home'); ?>">
                            <li class="p-1 mx-1 sm:p-1 border-b border-t sm:border-0 border-white hover:bg-blue-1100 hover:text-white">
                                Beranda
                            </li>
                        </a>
                        <!-- AKHIR BERANDA -->

                        <!-- Belajar -->
                        <a href="<?= base_url('materi'); ?>">
                            <li class="p-1 mx-1 sm:p-1 border-b sm:border-0 border-white hover:bg-blue-1100 hover:text-white">
                                Belajar
                            </li>
                        </a>
                        <!-- AKHIR Belajar -->

                        <!-- TENTANG -->
                        <a href="<?= base_url('tentang'); ?>" class="flex-shrink-0">
                            <li class="p-1 mx-1 sm:p-1 border-b sm:border-0 border-white hover:bg-blue-1100 hover:text-white">
                                Tentang
                            </li>
                        </a>
                        <!-- AKHIR TENTANG -->

                        <!-- USER -->
                        <a href="<?= base_url('user'); ?>" class="block sm:hidden">
                            <li class="p-1 mx-1 sm:p-1 border-b sm:border-0 border-white hover:bg-blue-1100 text-white">
                                <?= $user['username']; ?>
                            </li>
                        </a>
                        <!-- AKHIR USER -->

                        <!-- LOGOUT -->
                        <a href="<?= base_url('auth/logout'); ?>" class="logout block sm:hidden">
                            <li class="p-1 mx-1 sm:p-1 border-b sm:border-0 border-white active:bg-blue-1100 active:text-white">
                                Logout
                            </li>
                        </a>
                        <!-- AKHIR LOGOUT -->

                    </ul>
                    <!-- AKHIR MENU NAVIGASI HORIZONTAL -->

                </div>
                <!-- AKHIR PEMBUNGKUS MENU NEVIGASI MENDATAR -->

            </nav>
            <!-- AKHIR NAVBAR -->

            <!-- CONTAINER LUAR PERSAMAAN -->
            <div class="flex flex-col">