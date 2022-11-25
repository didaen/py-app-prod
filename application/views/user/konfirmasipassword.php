<div class="flex flex-col">

    <!-- JUDUL EDIT PROFIL -->
    <h2 class="w-full bg-gray-300 text-lg font-bold text-blue-1300 text-center py-3">Ubah Password</h2>
    <!-- AKHIR JUDUL EDIT PROFIL -->

    <div class="w-full bg-white py-6 px-10 sm:px-16 border-dashed border-l-8 border-r-8 border-blue-1700">

        <?php if ($this->session->flashdata('salah_password')) : ?>
            <div class="w-full bg-red-100 text-red-600 border border-red-300 px-3 py-1 mb-4 rounded">
                <?= $this->session->flashdata('salah_password'); ?>
            </div>
        <?php endif;?>

        <!-- REGISTRATION FORM -->
        <form method="post" action="<?= base_url('user/konfirmasipassword'); ?>" class="space-y-8">

            <!-- PASSWORD DAN ULANGI PASSWORD -->
            <div class="flex flex-col">

                <label for="password1" class="text-gray-700">Password lama</label>

                <input type="password" class="flex-1 w-full border-b-2 border-gray-200 px-3 py-1 outline-none focus:border-blue-1200" name="password" id="password">

                <!-- Jika terdapat error pada field Password akan ditampilkan di sini -->
                <?= form_error('password', '<p class="text-sm text-red-600 italic">', '</p>'); ?>
                

            </div>
            <!-- AKHIR PASSWORD DAN ULANGI PASSWORD -->

            <!-- TOMBOL EDIT PROFIL -->
            <div class="flex justify-end">
                <button type="submit" name="pilih-materi" class="btn">Konfirmasi</button>
            </div>
            <!-- AKHIR TOMBOL EDIT PROFIL -->

        </form>
        <!-- AKHIR LOGIN FORM -->

    </div>

</div>