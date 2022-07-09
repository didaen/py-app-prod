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
                <input type="hidden" id="judul" value="<?= $judul; ?>" />
            </div>
            <!-- AKHIR JUDUL -->

        </div>
        <!-- AKHIR PEMBUNGKUS NOMOR CARD -->

        <!-- ___FORM DAN ISI___ -->
        <div class="flex flex-col text-base text-justify bg-white text-gray-600 px-4 sm:px-8 py-8 border-dashed border-l-8 border-r-8 border-blue-1400" id="latihan">

            
            
                <!-- VARIABEL UNTUK JAWABAN -->
                <?php $box_number = 1; ?>
                <!-- AKHIR VARIABEL UNTUK JAWABAN -->
                

                <!-- TEMPLATE LATIHAN SOAL -->
                <div class="flex flex-col">
                    
                    <?php $j = 0; ?>
                    <?php $persamaan = false; ?>

                    <?php foreach($latihan_soal as $latsol) : ?>


                        <?php $i = (int)$latsol['no_soal']; ?>
                        
                        <?php if($latsol['kategori'] == '1') : ?>

                                <div class="mb-4">
                                    <?= $latsol['isi']; ?>
                                </div>

                        <?php elseif($latsol['kategori'] == '2') : ?>

                            <!-- UNTUK MENANDAI BAHWA TERDAPAT PERSAMAAN -->
                            <?php $persamaan = true; ?>

                            <!-- SOAL DENGAN KOTAK PERTANYAAN -->
                            <div class="white-box overscroll-auto overflow-auto mb-8">

                                <!-- GRID SOAL -->
                                <div class="equation-box grid">

                                    <!-- SOAL 1 -->
                                    <div class="grid" style="grid-template-rows: repeat(<?= $latsol['grid_rows']; ?>, 1px);grid-template-columns: repeat(<?= $latsol['grid_cols']; ?>, 1px);">

                                        <!-- PERSAMAAN 1 -->
                                        <div class="col-start-1 row-start-1">
                                            $$
                                            <?= $latsol['isi']; ?>
                                            $$
                                        </div>
                                        <!-- AKHIR PERSAMAAN 1 -->

                        <?php else : ?>

                            <!-- UNTUK MENANDAI BAHWA TERDAPAT PERSAMAAN -->
                            <?php $persamaan = true; ?>

                                        <!-- PERTANYAAN -->
                                        <div style="grid-row-start: <?= $latsol['row_start']; ?>; grid-column-start: <?= $latsol['col_start']; ?>; z-index: 10;" class="question">
                                            
                                            <iframe name="form_<?= $box_number; ?>" style="display: none;"></iframe>
                                            <form method="post" id="form_<?= $box_number; ?>" onsubmit="kosong(); return false;">
                                                <input
                                                type="text"
                                                class="pertanyaan <?= $latsol['class']; ?>"
                                                id="answ_<?= $box_number; ?>"
                                                value="<?= $jawaban_user['answ_' . $box_number] ?>"
                                                data-nomer-form="<?= $box_number; ?>"
                                                autocomplete="off"
                                                onclick="greekKeyboard()"
                                                />
                                            </form>
                                        </div>

                                        <?php $box_number++ ?>
                                        <!-- AKHIR PERTANYAAN -->

                        <?php endif; ?>

                        <!-- Jika index atau baris selanjutnya masih ada atau kurang dari total baris -->
                        <?php if($j + 1 < count($latihan_soal) && $persamaan == true) : ?>
                            
                            <!-- Jika nomor soal untuk baris selanjutnya tidak sama dengan nomer soal baris yang sekarang -->
                            <?php if($i != (int)$latihan_soal[$j + 1]['no_soal']) : ?>
                                
                                <!-- maka tambahkan 3 penutup ini -->
                                </div></div></div>
                            
                            <?php endif; ?>
                        
                        <!-- Jika index selanjutnya sama dengan total indek (karena index dimulai dari 0, maka harus + 1) -->
                        <?php elseif($j + 1 == count($latihan_soal) && $persamaan == true) : ?>

                            <!-- maka isi variabel k dengan nomor soal sekarang + 1 -->
                            <?php $k = (int)$latihan_soal[$j]['no_soal'] + 1; ?>

                            <!-- Jika nomor soal pada baris yang sekarang tidak sama dengan nomor soal pada baris selanjutnya atau sudah beda soal (karena dibuat. Ini sebagai penanda akhir baris) -->
                            <?php if($i != $k) : ?>
                                
                                <!-- maka tambahkan tiga penutup ini -->
                                </div></div></div>
                            
                            <?php endif; ?>

                        <?php endif; ?>

                        <!-- Penambahan index atau pergantian baris -->
                        <?php $j++; ?>

                    <?php endforeach; ?>

                </div>
                <!-- AKHIR TEMPLATE LATIHAN SOAL -->

                <!-- PEMBIUNGKUS TOMBOL DAN KUNCI JAWABAN -->
                <div>

                    <!-- TOMBOL TUNJUKKAN JAWABAN -->
                    <div class="flex flex-row justify-between">

                        <!-- TOGGLE KEYBOARD -->
                        <div class="flex flex-row mt-1 mb-1 items-center border border-white rounded w-32">
                            <input type="checkbox" class="w-5 h-5 absolute z-10 opacity-0 cursor-pointer" id="checkbox-nav" onchange="klikKey(this)" autocomplete="off">

                            <div class="flex w-6 flex-row bg-gray-200" id="logo-keyboard">
                                <img src="<?= base_url(); ?>assets/img/keyboard.png" alt="Keyboard Greek Alphabeth" class="w-4 mx-auto">
                            </div>
                            
                            <div class="flex flex-row text-xs font-bold text-blue-1300 mx-auto">
                                <div>Greek Alphabeth</div>
                            </div>

                        </div>
                        <!-- AKHIR TOGGLE KEYBOARD -->

                        <button type="submit" name="tunjukkan-jawaban" class="px-4 py-1 text-sm bg-gray-500 hover:bg-gray-400 text-white rounded transition duration-300" id="tunjukkan-jawaban">
                            Tunjukkan jawaban
                        </button>
                    </div>
                    <!-- AKHIR TOMBOL TUNJUKKAN JAWABAN -->

                    <!-- KEYBOARD -->
                    <div class="text-base bg-gray-100 text-center rounded p-1 border-2 border-white mt-2 hidden" id="keyboard">
                        <div class="grid grid-cols-13 lg:grid-cols-25 italic items-center katex-math-italic">
                            <button type="button" class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="2">2</button>
                            <button type="button" class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="β">β</button>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="γ">γ</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="δ">δ</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="ε">ε</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="ζ">ζ</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="η">η</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="θ">θ</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="ι">ι</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="κ">κ</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="λ">λ</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="μ">μ</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="ν">ν</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="ξ">ξ</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="o">o</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="π">π</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="ρ">ρ</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="ς">ς</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="σ">σ</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="τ">τ</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="υ">υ</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="ϕ">ϕ</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="χ">χ</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="ψ">ψ</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="ω">ω</div>
                        </div>
                        <div class="grid grid-cols-13 lg:grid-cols-25 items-center times-new-roman">
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="A">A</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Β">Β</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Γ">Γ</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Δ">Δ</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Ε">Ε</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Ζ">Ζ</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Η">Η</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Θ">Θ</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Ι">Ι</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Κ">Κ</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Λ">Λ</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Μ">Μ</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Ν">Ν</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Ξ">Ξ</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Ο">Ο</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Π">Π</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Ρ">Ρ</div>
                            <div></div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Σ">Σ</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Τ">Τ</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white text-sm" value="$\Upsilon$">$\Upsilon$</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Φ">Φ</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Χ">Χ</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Ψ">Ψ</div>
                            <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Ω">Ω</div>
                        </div>
                    </div>
                    <!-- AKHIR KEYBOARD -->

                    <!-- JAWABAN -->
                    <div class="mt-5 flex flex-col space-y-5" id="kunci-jawaban">
                    </div>
                    <!-- JAWABAN -->
                </div>
                <!-- AKHIR PEMBIUNGKUS TOMBOL DAN KUNCI JAWABAN -->

            <!-- DISPLAY HIDDEN -->
            <div class="katex-italic"></div>
            <div class="katex-regular"></div>
            <div class="katex-bold"></div>
            <div class="katex-math-italic"></div>
            <div class="times-new-roman"></div>
            <!-- AKHIR DISPLAY HIDDEN -->

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
        <div class="w-full text-gray-600 bg-red-300 hidden text-center text-sm px-4 py-2" id="peringatan">
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
                    <div>Progress pengerjaan</div>

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
                    <select class="w-full h-6 px-2 rounded outline-none bg-white" id="card-internal" name="card-number" value="<?= $belajar['card_number']; ?>">
                        <option value="<?= $belajar['card_number']; ?>" hidden><?= $belajar['card_number']; ?>. <?= $judul_card; ?></option>
                        <?php $i = 1; ?>
                        <?php foreach ($info_card as $info) : ?>
                            <option value="<?= $i; ?>"><?= $i; ?>. <?= $info['judul_card']; ?></option>
                            <?php $i++; ?>
                        <?php endforeach; ?>
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
