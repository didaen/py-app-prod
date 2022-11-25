<div class="min-h-screen flex items-center justify-center">


    <div class="bg-white py-6 px-10 rounded shadow-2xl w-4/5 sm:w-1/2 lg:w-1/4">

        <!-- LOGO DAN JUDUL PHYSICS YOURSELF -->
        <div class="flex items-center space-x-2 mb-4">

            <img src="<?= base_url(); ?>assets/img/pylightgray.png" class="w-12 rounded-full" alt="Physics Yourself">

            <h2 class="text-xl font-bold text-gray-700">Lupa Password</h2>

        </div>
        <!-- AKHIR LOGO DAN JUDUL PHYSICS YOURSELF -->

        <!-- MENAMPILKAN FLASHDATA -->
        <?php if ($this->session->flashdata('email_belum_terdaftar')) : ?>
            <div class="w-full bg-red-100 text-red-600 border border-red-300 px-3 py-1 mb-4 rounded">
                <?= $this->session->flashdata('email_belum_terdaftar'); ?>
            </div>

        <?php endif; ?>
        <!-- AKHIR MENAMPILKAN FLASHDATA -->

        <!-- LOGIN FORM -->

        <form method="post" action="<?= base_url('auth/forgotpassword'); ?>" class="space-y-8">

            <!-- EMAIL -->
            <div>

                <label for="email" class="block text-gray-700">Email</label>

                <input type="text" class="input" name="email" id="email" value="<?= set_value('email'); ?>">

                <!-- Jika terdapat error pada field email akan ditampilkan di sini -->
                <?= form_error('email', '<p class="text-sm text-red-600 italic">', '</p>'); ?>

            </div>
            <!-- AKHIR EMAIL -->
            
            <div class="flex justify-end">
                <button type="submit" class="btn-kecil">Reset Password</button>
            </div>


        </form>

        <!-- AKHIR LOGIN FORM -->

        <!-- KEMBALI KE LOGIN -->

        <div class="text-center mt-5">

            <a href="<?= base_url('auth'); ?>" class="text-blue-600">Kembali ke login</a>

        </div>

        <!-- AKHIR KEMBALI KE LOGIN -->



    </div>

</div>