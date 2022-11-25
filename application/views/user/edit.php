<div class="flex flex-col">

    <!-- JUDUL EDIT PROFIL -->
    <h2 class="w-full bg-gray-300 text-lg font-bold text-blue-1300 text-center py-3">Edit Profil</h2>
    <!-- AKHIR JUDUL EDIT PROFIL -->

    <div class="bg-white py-6 px-10 sm:px-16 border-dashed border-l-8 border-r-8 border-blue-1400 w-full">

        <?php if ($this->session->flashdata('gagal_ganti_profil')) : ?>
            <div class="w-full bg-red-100 text-red-600 border border-red-300 px-3 py-1 mb-4 rounded">
                <?= $this->session->flashdata('gagal_ganti_profil'); ?>
            </div>
        <?php endif; ?>

        <!-- REGISTRATION FORM -->
        <?= form_open_multipart('user/editprofil', 'class="space-y-6"'); ?>

            <!-- USERNAME -->
            <div>
                <label for="username" class="block text-gray-700">Username</label>

                <input type="text" class="w-full border-b-2 border-gray-200 px-3 py-1 outline-none focus:border-blue-1200" name="username" id="username" value="<?= $user['username']; ?>">

                <!-- Jika terdapat error pada field Username akan ditampilkan di sini -->
                <?= form_error('username', '<p class="text-sm text-red-600 italic">', '</p>'); ?>
            </div>
            <!-- AKHIR USERNAME -->

            <!-- EDIT FOTO PROFIL -->
            <div class="space-y-2">
                <label for="image" class="block text-gray-700">Foto Profil</label>

                <div class="flex flex-col sm:flex-row sm:space-x-4 space-y-4 sm:space-y-0">
                    <img src="<?= base_url('assets/img/profile/') . $user['image']; ?>" alt="Foto Profil User" class="w-16">
    
                    <input type="file" name="image" id="image" class="text-xs sm:text-sm self-start sm:self-center">
                </div>

            </div>
            <p class="py-1 text-xs italic text-gray-700">Ukuran Max. 2 MB, format .jpg atau .png</p>
            <!-- AKHIR EDIT FOTO PROFIL -->


            <!-- TOMBOL EDIT PROFIL -->
            <div class="flex justify-end">
                <button type="submit" name="pilih-materi" class="btn">Edit Profil</button>
            </div>
            <!-- AKHIR TOMBOL EDIT PROFIL -->

        </form>
        <!-- AKHIR LOGIN FORM -->

    </div>

</div>