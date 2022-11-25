<div class="min-h-screen flex items-center justify-center">


    <div class="bg-white py-6 px-10 rounded shadow-2xl w-4/5 sm:w-1/2 lg:w-1/4">

        <!-- LOGO DAN JUDUL PHYSICS YOURSELF -->
        <div class="flex items-center space-x-2 mb-4">

            <img src="<?= base_url(); ?>assets/img/pylightgray.png" class="w-12 rounded-full" alt="Physics Yourself">

            <h2 class="text-2xl font-bold text-gray-700">Verifikasi Akun</h2>

        </div>
        <!-- AKHIR LOGO DAN JUDUL PHYSICS YOURSELF -->

        <!-- MENAMPILKAN FLASHDATA -->
        <?php if ($this->session->flashdata('akun_baru')) : ?>
            <div class="w-full bg-green-100 text-green-600 border border-green-300 px-3 py-1 mb-4 rounded">
                <?= $this->session->flashdata('akun_baru'); ?>
            </div>

        <?php elseif ($this->session->flashdata('token_salah')) : ?>
            <div class="w-full bg-red-100 text-red-600 border border-red-300 px-3 py-1 mb-4 rounded">
                <?= $this->session->flashdata('token_salah'); ?>
            </div>

        <?php endif; ?>
        <!-- AKHIR MENAMPILKAN FLASHDATA -->

        <!-- VERIFIKASI AKUN FORM -->

        <form method="post" action="<?= base_url('auth/verificationCode'); ?>" class="space-y-5">

            <div>

                <label for="token" class="block text-gray-700">Kode Verifikasi</label>

                <input type="text" class="input" name="token" id="token">

                <!-- Jika terdapat error pada field Username akan ditampilkan di sini -->
                <?= form_error('token', '<p class="text-sm text-red-600 italic">', '</p>'); ?>

            </div>

    
            <div class="flex justify-end">
                <button type="submit" class="btn">Submit</button>
            </div>


        </form>

        <!-- VERIFIKASI AKUN FORM -->

        <!-- KEMBALI KE LOGIN -->

        <div class="text-center mt-5">

            <a href="<?= base_url('auth/forgotpassword'); ?>" class="text-blue-600">Kembali ke login</a>

        </div>

        <!-- AKHIR KEMBALI KE LOGIN -->

    </div>

</div>