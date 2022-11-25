<div class="min-h-screen flex items-center justify-center bg-blue-1400">


    <div class="bg-white py-6 px-10 rounded shadow-2xl w-4/5 sm:w-1/2 lg:w-1/4">

        <!-- LOGO DAN JUDUL PHYSICS YOURSELF -->
        <div class="flex items-center space-x-2 mb-4">

            <img src="<?= base_url(); ?>assets/img/pylightgray.png" class="w-12 rounded-full" alt="Physics Yourself">

            <h2 class="text-xl font-bold text-gray-700">Reset Password</h2>

        </div>
        <!-- AKHIR LOGO DAN JUDUL PHYSICS YOURSELF -->

        <!-- MENAMPILKAN FLASHDATA -->

        <?php if ($this->session->flashdata('ganti_password')) : ?>
            <div class="w-full bg-green-100 text-green-600 border border-green-300 px-3 py-1 mb-4 rounded">
                <?= $this->session->flashdata('ganti_password'); ?>
            </div>
        <?php endif; ?>
        <!-- AKHIR MENAMPILKAN FLASHDATA -->

        <!-- REGISTRATION FORM -->
        <form method="post" action="<?= base_url('auth/ubahpassword'); ?>" class="space-y-8">

            <!-- PASSWORD DAN ULANGI PASSWORD -->
            <div class="flex flex-col space-y-5">

                <div>
                    <label for="password1" class="text-gray-700">Password Baru</label>

                    <input type="password" class="flex-1 w-full border-b-2 border-gray-200 px-3 py-1 outline-none focus:border-blue-1200" name="password1" id="password1">

                    <p class="py-1 text-xs italic text-gray-700">Min. 6 karakter</p>

                    <!-- Jika terdapat error pada field Password akan ditampilkan di sini -->
                    <?= form_error('password1', '<p class="text-sm text-red-600 italic">', '</p>'); ?>
                </div>

                <div>
                    <label for="password2" class="text-gray-700">Ulangi Password</label>

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

        <!-- KEMBALI KE LOGIN -->

        <div class="text-center mt-5">

            <a href="<?= base_url('auth'); ?>" class="text-blue-600">Kembali ke login</a>

        </div>

        <!-- AKHIR KEMBALI KE LOGIN -->



    </div>

</div>