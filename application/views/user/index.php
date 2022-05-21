<div class="mb-10">
    <!-- ________________________________PROFIL USER_____________________________-->
    <div>
        <h1 class="bg-gray-300 text-lg font-bold text-blue-1300 text-center py-3">Profil</h1>

        <div class="p-4 bg-white border-dashed border-l-8 border-r-8 border-blue-1000">

            <!-- PESAN BERHASIL UBAH PROFIL -->
            <?php if ($this->session->flashdata('ganti_profil')) : ?>
                <div class="w-full bg-green-100 text-green-600 border border-green-300 px-3 py-1 mb-4 rounded">
                    <?= $this->session->flashdata('ganti_profil'); ?>
                </div>

            <?php elseif ($this->session->flashdata('ganti_password')) : ?>
                <div class="w-full bg-green-100 text-green-600 border border-green-300 px-3 py-1 mb-4 rounded">
                    <?= $this->session->flashdata('ganti_password'); ?>
                </div>
                
            <?php endif; ?>
            <!-- AKHIR PESAN BERHASIL UBAH PROFIL -->
    
            <div class="flex flex-col sm:flex-row items-center gap-4">
                
                <div>
                    <img src="<?= base_url('assets/img/profile/') . $user['image']; ?>" alt="Pengembang" class="w-20 sm:w-28">
                </div>
                <div class="sm:flex flex-row items-center gap-4 text-gray-600 hidden">
                    <div class="font-medium">
                        <div>Username</div>
                        <div>Role</div>
                        <div>NIM</div>
                        <div>Email</div>
                        <div>Status</div>
                    </div>
                    <div>
                        <div>:</div>
                        <div>:</div>
                        <div>:</div>
                        <div>:</div>
                        <div>:</div>
                    </div>
                    <div>
                        <div><?= $user['username']; ?></div>
                        <div><?= $role['role']; ?></div>
                        <div><?= $user['nim']; ?></div>
                        <div><?= $user['email']; ?></div>
                        <div><?= $status['status']; ?></div>
                    </div>
                </div>
                <div>
                    <div class="block sm:hidden text-gray-600 text-center">
                        <div class="font-medium">Username</div>
                        <div><?= $user['username']; ?></div>
                        <div class="font-medium">Role</div>
                        <div><?= $role['role']; ?></div>
                        <div class="font-medium">NIM</div>
                        <div><?= $user['nim']; ?></div>
                        <div class="font-medium">Email</div>
                        <div><?= $user['email']; ?></div>
                        <div class="font-medium">Status</div>
                        <div><?= $status['status']; ?></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ________________________________AKHIR PROFIL USER_____________________________-->

    <!-- TOMBOL UBAH PASSWORD DAN EDIT PROFIL -->
    <div class="flex flex-row justify-end mx-2 mb-5 space-x-2">

        <a href="<?= base_url('user/konfirmasipassword'); ?>" class="bg-red-500 hover:bg-red-400 p-1 rounded text-white text-sm text-center">Ubah Password</a>
        <a href="<?= base_url('user/edit'); ?>" class="bg-blue-500 hover:bg-blue-400 p-1 rounded text-white text-sm text-center">Edit Profil</a>

    </div>
    <!-- TOMBOL UBAH PASSWORD DAN EDIT PROFIL -->

    <!-- ________________________________AKTIFITAS TERAKHIR_____________________________-->
    <div>
        <h1 class="bg-gray-300 text-lg font-bold text-blue-1300 text-center py-3">Aktifitas Terakhir</h1>

        <!-- ________________________________AKHIR AKTIFITAS TERAKHIR LAYAR KECIL_____________________________-->
        <div class="flex sm:hidden flex-col gap-4 p-4 bg-white border-dashed border-l-8 border-r-8 border-blue-1000">
            <div class="w-full grid grid-cols-5 grid-rows-2 items-center text-center text-xs">
                <div class="row-start-1 row-end-2 col-start-1 col-end-3 font-medium">
                    Waktu
                </div>
                <div class="row-start-1 row-end-2 col-start-3 col-end-4 font-medium">
                    Materi
                </div>
                <div class="row-start-1 row-end-2 col-start-4 col-end-5 font-medium">
                    Sub
                </div>
                <div class="row-start-1 row-end-2 col-start-5 col-end-6 font-medium">
                    Card
                </div>
                <div class="row-start-2 row-end-3 col-start-1 col-end-3">
                    <?= $belajar['started_at']; ?>
                </div>
                <div class="row-start-2 row-end-3 col-start-3 col-end-4">
                    <?= $belajar['materi_id']; ?>
                </div>
                <div class="row-start-2 row-end-3 col-start-4 col-end-5">
                    <?= $belajar['sub_materi_id']; ?>
                </div>
                <div class="row-start-2 row-end-3 col-start-5 col-end-6">
                    <?= $belajar['card_number']; ?>
                </div>
            </div>
        </div>
        <!-- ________________________________AKHIR AKTIFITAS TERAKHIR LAYAR KECIL_____________________________-->

        <!-- ________________________________AKTIFITAS TERAKHIR LAYAR BESAR_____________________________-->
        <div class="hidden sm:flex flex-col gap-4 p-4 bg-white border-dashed border-l-8 border-r-8 border-blue-1000">
            <div class="w-full grid grid-cols-5 grid-rows-2 gap-x-2 items-center text-center text-xs">
                <div class="row-start-1 row-end-2 col-start-1 col-end-3 font-medium">
                    Waktu
                </div>
                <div class="row-start-1 row-end-2 col-start-3 col-end-4 font-medium">
                    Materi
                </div>
                <div class="row-start-1 row-end-2 col-start-4 col-end-5 font-medium">
                    Sub
                </div>
                <div class="row-start-1 row-end-2 col-start-5 col-end-6 font-medium">
                    Card
                </div>
                <div class="row-start-2 row-end-3 col-start-1 col-end-3">
                    <?= $belajar['started_at']; ?>
                </div>
                <div class="row-start-2 row-end-3 col-start-3 col-end-4">
                    <?= $belajar['materi']; ?>
                </div>
                <div class="row-start-2 row-end-3 col-start-4 col-end-5">
                    <?= $belajar['sub_materi']; ?>
                </div>
                <div class="row-start-2 row-end-3 col-start-5 col-end-6">
                    <?= $belajar['card_number']; ?>
                </div>
            </div>
            <!-- ________________________________AKTIFITAS TERAKHIR LAYAR BESAR_____________________________-->

        </div>
    </div>
    <!-- ________________________________AKHIR AKTIFITAS TERAKHIR_____________________________-->

    <!-- ________________________________HIDDEN FORM_____________________________-->
    <form method="post" id="form-card-lanjutkan-belajar">
        <input type="hidden" name="materi-id" value="<?= $belajar['materi_id']; ?>" />
        <input type="hidden" name="sub-materi-id" value="<?= $belajar['sub_materi_id']; ?>" />
        <input type="hidden" name="total-card" value="<?= $belajar['total_card']; ?>" />
        <input type="hidden" id="card-lanjutkan-belajar" value="<?= $belajar['card_number']; ?>" />

        <!-- TOMBOL LANJUTKAN BELAJAR -->
        <div class="flex flex-row justify-end mx-2 mb-5 space-x-2">

            <button type="submit" class="bg-blue-500 hover:bg-blue-400 p-1 rounded text-white text-sm text-center" id="lanjutkan-belajar" onclick="klikGantiActionLanjutkanBelajar()">Lanjutkan Belajar</button>

        </div>
        <!-- AKHIR TOMBOL LANJUTKAN BELAJAR -->

    </form>
    <!-- ________________________________AKHIR HIDDEN FORM_____________________________-->


</div>