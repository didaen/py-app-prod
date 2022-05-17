<div class="flex flex-col">

    <!-- JUDUL EDIT PROFIL -->
    <h2 class="w-full bg-gray-300 text-lg font-bold text-blue-1300 text-center py-3">Password Baru</h2>
    <!-- AKHIR JUDUL EDIT PROFIL -->

    <div class="bg-white py-6 px-10 sm:px-16 border-dashed border-l-8 border-r-8 border-blue-1000 w-full">

        <!-- REGISTRATION FORM -->
        <form method="post" action="<?= base_url('user/ubahpassword'); ?>" class="space-y-8">

            <!-- PASSWORD DAN ULANGI PASSWORD -->
            <div class="flex flex-col sm:flex-row space-y-5 sm:space-y-0 sm:space-x-4 lg:space-x-8 justify-between">

                <div>
                    <label for="password1" class="text-gray-500">Password</label>

                    <input type="password" class="flex-1 w-full border-b-2 border-gray-200 px-3 py-1 outline-none focus:border-blue-1200" name="password1" id="password1">

                    <p class="py-1 text-xs italic text-gray-500">Min. 6 karakter</p>

                    <!-- Jika terdapat error pada field Password akan ditampilkan di sini -->
                    <?= form_error('password1', '<p class="text-sm text-red-600 italic">', '</p>'); ?>
                </div>

                <div>
                    <label for="password2" class="text-gray-500">Ulangi Password</label>

                    <input type="password" class="flex-1 w-full border-b-2 border-gray-200 px-3 py-1 outline-none focus:border-blue-1200" name="password2" id="password2">

                    <!-- Jika terdapat error pada field  Ulangi Password akan ditampilkan di sini -->
                    <?= form_error('password2', '<p class="text-sm text-red-600 italic">', '</p>'); ?>
                </div>

            </div>
            <!-- AKHIR PASSWORD DAN ULANGI PASSWORD -->

            <!-- TOMBOL EDIT PROFIL -->
            <div class="flex justify-end">
                <button type="submit" name="pilih-materi" class="btn">Ubah Password</button>
            </div>
            <!-- AKHIR TOMBOL EDIT PROFIL -->

        </form>
        <!-- AKHIR LOGIN FORM -->

    </div>

</div>