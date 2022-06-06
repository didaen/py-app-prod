<!-- CARD -->
<div>

    <!-- ________________________________PEMBUNGKUS SUB MATERI DAN ISI CARD_____________________________-->
    <div>

        <!-- JUDUL MATERI, SUB MATERI ID, DAN SUB MATERI -->
        <div class="bg-gray-300 text-blue-1300 text-center py-3">
            <h3 class="text-xs">
                <?= $belajar['materi']; ?>
            </h3>
            <h1 class="text-lg font-bold">
                <?= $belajar['sub_materi_id']; ?>. <?= $belajar['sub_materi']; ?>
            </h1>
        </div>
        <!-- AKHIR JUDUL MATERI, SUB MATERI ID, DAN SUB MATERI -->

        <!-- PEMBUNGKUS NOMOR CARD -->
        <div class="flex bg-blue-1500 rounded-tr-xl">

            <!-- NOMOR CARD -->
            <div class="bg-gray-400 px-6 py-1 text-white font-bold text-center">
                <h3 class="text-xs">
                    Card
                </h3>
                <h1 class="text-lg" id="card-number-judul">
                    <?= $belajar['card_number']; ?>
                </h1>
                <input type="hidden" id="card-number" value="<?= $belajar['card_number']; ?>" />
            </div>
            <!-- AKHIR NOMOR CARD -->

            <!-- JUDUL -->
            <div class="flex flex-col justify-center text-white text-lg text-center ml-4">
                <div><?= $judul; ?></div>
            </div>
            <!-- AKHIR JUDUL -->

        </div>
        <!-- AKHIR PEMBUNGKUS NOMOR CARD -->

        <!-- ___FORM DAN ISI___ -->
        <div class="isi-card flex flex-col text-base text-justify bg-white text-gray-600 px-4 sm:px-8 py-8 border-dashed border-l-8 border-r-8 border-blue-1400">

            <form action="" method="post">
            
                <!-- VARIABEL UNTUK JAWABAN -->
                <?php $box_number = 1; ?>
                <!-- AKHIR VARIABEL UNTUK JAWABAN -->

                <!-- TEMPLATE SQUARE -->
                <div>
                    $
                    {\textcolor{black}{\LARGE \square}}
                    {\textcolor{black}{\LARGE \blacksquare}}
                    {\textcolor{black}{\Large \blacksquare}}
                    $
                </div>
                <!-- AKHIR TEMPLATE SQUARE -->


                <!-- TEMPLATE LATIHAN SOAL -->
                <div id="pelajaran">
                    <?php foreach($pelajaran as $pel) : ?>

                        <?php if($pel['layout'] == '1') : ?>

                            <?php if($pel['kategori'] == '1') : ?>
                                <div class="flex flex-col mb-4">
                                    <p>
                                        <?= $pel['isi']; ?>
                                    </p>
                                </div>

                            <?php elseif($pel['kategori'] == '2') : ?>
                                <iframe src="<?= $pel['isi']; ?>" frameborder="0" class="w-full">
                                </iframe>
                            
                            <?php else : ?>

                                <div class="white-box overscroll-auto overflow-auto text-sm mb-4">
                                    <div class="equation-box grid">
                                        <?= $pel['isi']; ?>
                                    </div>
                                </div>

                            <?php endif; ?>


                        <?php else : ?>

                            
                            <?php if($pel['kolom'] == '1') : ?>
                                
                                <div class="flex flex-col sm:flex-row gap-y-4 mb-4 sm:gap-x-8">

                                    <?php if($pel['kategori'] == '1') : ?>

                                        <p>
                                            <?= $pel['isi']; ?>
                                        </p>

                                    <?php elseif($pel['kategori'] == '2') : ?>
                                        
                                        <iframe src="<?= $pel['isi']; ?>" frameborder="0" class="w-full h-full">
                                        </iframe>
                                    
                            
                                    <?php else : ?>

                                        <div class="white-box overscroll-auto overflow-auto text-sm">
                                            <div class="equation-box grid">
                                                <?= $pel['isi']; ?>
                                            </div>
                                        </div>

                                    <?php endif; ?>

                            <?php else : ?>

                                    <?php if($pel['kategori'] == 1) : ?>

                                        <p>
                                            <?= $pel['isi']; ?>
                                        </p>

                                    <?php elseif($pel['kategori'] == '2') : ?>
                                        
                                        <iframe src="<?= $pel['isi']; ?>" frameborder="0" class="w-full h-full">
                                        </iframe>


                                    <?php else : ?>

                                        <div class="white-box overscroll-auto overflow-auto text-sm">
                                            <div class="equation-box grid">
                                                <?= $pel['isi']; ?>
                                            </div>
                                        </div>

                                    <?php endif; ?>

                                </div>

                            <?php endif; ?>


                        <?php endif; ?>

                    <?php endforeach; ?>
                </div>
                <!-- AKHIR TEMPLATE LATIHAN SOAL -->

                <!-- PEMBIUNGKUS TOMBOL DAN KUNCI JAWABAN -->
                <div>

                    <!-- TOMBOL TUNJUKKAN JAWABAN -->
                    <div class="mt-10 flex flex-row justify-end">
                        <button type="submit" name="tunjukkan-jawaban" class="px-4 py-1 text-sm bg-gray-500 hover:bg-gray-400 text-white rounded transition duration-300" id="tunjukkan-jawaban">
                            Tunjukkan jawaban
                        </button>
                    </div>
                    <!-- AKHIR TOMBOL TUNJUKKAN JAWABAN -->

                    <!-- JAWABAN -->
                    <div class="mt-5 flex flex-col space-y-5" id="kunci-jawaban">
                    </div>
                    <!-- JAWABAN -->
                </div>
                <!-- AKHIR PEMBIUNGKUS TOMBOL DAN KUNCI JAWABAN -->

            </form>

        </div>
        <!-- ___AKHIR FORM DAN ISI___ -->

    </div>
    <!-- ________________________________AKHIR PEMBUNGKUS SUB MATERI DAN ISI CARD_____________________________-->

    <!-- PEMBUNGKUS NOMOR CARD -->
    <div class="flex bg-blue-1500 rounded-bl-xl rounded-br-xl justify-center">

        <!-- NOMOR CARD -->
        <div class="px-6 py-1 text-white font-bold text-center">
            <h3 class="text-base tracking-widest">
                Card <?= $belajar['card_number']; ?>
            </h3>
        </div>
        <!-- AKHIR NOMOR CARD -->

    </div>
    <!-- AKHIR PEMBUNGKUS NOMOR CARD -->

    <!-- _____________________________PEMBUNGKUS PERINGATAN, TOMBOL-TOMBOL, DAN DROPDOWN__________________________-->
    <div>

        <!-- PERINGATAN APABILA ADA SCROLLBAR -->
        <div class="w-full text-gray-600 bg-red-300 hidden text-center text-sm px-4" id="peringatan">
            Persamaan masih panjang. Geser kotak di atas.
        </div>
        <!-- AKHIR PERINGATAN APABILA ADA SCROLLBAR -->
    

        <!-- FORM DROPDOWN -->
        <form method="post" id="form-card-internal">
            <input type="hidden" name="materi-id" id="materi-id" value="<?= $belajar['materi_id'] ?>" />
            <input type="hidden" name="sub-materi-id" id="sub-materi-id" value="<?= $belajar['sub_materi_id'] ?>" />
            <input type="hidden" name="total-card" id="total-card" value="<?= $belajar['total_card'] ?>" />

            <!-- PEMBUNGKUS PROGRESS BAR DAN TOMBOL-TOMBOL -->
            <div class="w-full grid grid-rows-2 gap-2 sm:gap-0 grid-cols-3 sm:flex sm:flex-row mt-2">

                <!-- TOMBOL RESET -->
                <div class="row-start-2 sm:flex-none">
                    <button class="btn-kecil-merah" id="reset">
                        Reset
                    </button>
                </div>
                <!-- AKHIR TOMBOL RESET -->

                <!-- PEMBUNGKUS PROGRESS BAR -->
                <div class="col-start-1 col-end-4 sm:grow flex flex-col justify-center px-4 text-xs bg-gray-400 text-center rounded">
                    <p>Progress pengerjaan</p>

                    <!-- KOTAK WARNA ABU PROGRESS BAR -->
                    <div class="bungkus bg-gray-400 p-1 rounded-full">

                        <!-- DURASI BELUM TERPAKAI WARNA PUTIH -->
                        <div class="bg-white rounded-full" id="durasi-terpakai">

                            <!-- DURASI SUDAH TERPAKAI WARNA HIJAU -->
                            <div class="text-center text-gray-700 rounded-full" id="durasi">0%</div>
                            <!-- AKHIR DURASI SUDAH TERPAKAI WARNA HIJAU -->

                        </div>
                        <!-- AKHIR DURASI BELUM TERPAKAI WARNA PUTIH -->

                    </div>
                    <!-- AKHIR KOTAK WARNA ABU PROGRESS BAR -->

                </div>
                <!-- AKHIR PEMBUNGKUS PROGRESS BAR -->

                <!-- PEMBUNGKUS TOMBOL NEXT DAN BACK -->
                <div class="row-start-2 col-span-2 justify-self-end items-start flex sm:flex-none">

                    <!-- TOMBOL BACK -->
                    <button type="submit" class="btn-kecil" id="tombol-back" onclick="klikGantiActionBack()">
                        Back
                    </button>

                    <!-- TOMBOL NEXT -->
                    <button type="submit" class="btn-kecil" id="tombol-next" onclick="klikGantiActionNext()">
                        Next
                    </button>

                </div>
                <!-- AKHIR PEMBUNGKUS TOMBOL NEXT DAN BACK -->
                    
            </div>        
            <!-- AKHIR PEMBUNGKUS PROGRESS BAR DAN TOMBOL-TOMBOL -->

            <!-- MENU DROPDOWN -->
            <div class="my-5 px-4 sm:px-8 py-4 text-gray-600">

                <!-- LABEL PILIH CARD -->
                <label class="block text-sm mb-1" for="card-internal">
                    Pilih card :
                </label>
                <!-- AKHIR LABEL PILIH CARD -->

                <!-- PEMBUNGKUS DROPDOWN -->
                <div class="flex flex-row items-center space-x-2">

                    <!-- SELECT -->
                    <select class="w-full h-6 px-2 rounded outline-none bg-white" id="card-internal" name="card-number">
                        <?php for ($i = 1; $i <= $belajar['total_card']; $i++) : ?>
                            <option value="<?= $i; ?>"><?= $i; ?></option>
                        <?php endfor; ?>
                    </select>
                    <!-- AKHIR SELECT -->

                    <!-- TOMBOL PILIH -->
                    <button type="submit" name="pilih-card-internal" class="px-4 py-1 text-sm bg-blue-500 hover:bg-blue-400 text-white rounded transition duration-300" onclick="klikGantiActionCardInternal()">
                        Pilih
                    </button>
                    <!-- AKHIR TOMBOL PILIH -->

                </div>
                <!-- AKHIR PEMBUNGKUS DROPDOWN  -->

            </div>
            <!-- AKHIR MENU DROP DOWN -->

        </form>
        <!-- AKHIR FORM DROPDOWN -->

    </div>
    <!-- _________________________AKHIR PEMBUNGKUS PERINGATAN, TOMBOL-TOMBOL, DAN DROPDOWN______________________-->
    
</div>
<!-- AKHIR CARD -->