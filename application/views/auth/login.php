<div class="min-h-screen flex items-center justify-center bg-blue-1700">

    <!-- LOGO DAN JUDUL PHYSICS YOURSELF -->
    <div>
    </div>
    <!-- AKHIR LOGO DAN JUDUL PHYSICS YOURSELF -->


    <div class="bg-white py-6 px-10 rounded shadow-2xl w-4/5 sm:w-1/2 lg:w-1/4">

        <!-- LOGO DAN JUDUL PHYSICS YOURSELF -->
        <div class="flex items-center space-x-2 mb-4">

            <img src="<?= base_url(); ?>assets/img/pylightgray.png" class="w-12 rounded-full" alt="Physics Yourself">

            <h2 class="text-2xl font-bold text-gray-700">Login</h2>

        </div>
        <!-- AKHIR LOGO DAN JUDUL PHYSICS YOURSELF -->

        <!-- MENAMPILKAN FLASHDATA -->
        <?php if ($this->session->flashdata('salah_password')) : ?>
            <div class="w-full bg-red-100 text-red-600 border border-red-300 px-3 py-1 mb-4 rounded">
                <?= $this->session->flashdata('salah_password'); ?>
            </div>

        <?php elseif ($this->session->flashdata('belum_aktivasi')) : ?>
            <div class="w-full bg-red-100 text-red-600 border border-red-300 px-3 py-1 mb-4 rounded">
                <?= $this->session->flashdata('belum_aktivasi'); ?>
            </div>

        <?php elseif ($this->session->flashdata('belum_daftar')) : ?>
            <div class="w-full bg-red-100 text-red-600 border border-red-300 px-3 py-1 mb-4 rounded">
                <?= $this->session->flashdata('belum_daftar'); ?>
            </div>

        <?php elseif ($this->session->flashdata('akun_baru')) : ?>
            <div class="w-full bg-green-100 text-green-600 border border-green-300 px-3 py-1 mb-4 rounded">
                <?= $this->session->flashdata('akun_baru'); ?>
            </div>

        <?php elseif ($this->session->flashdata('logout')) : ?>
            <div class="w-full bg-blue-100 text-blue-600 border border-blue-600 px-3 py-1 mb-4 rounded">
                <?= $this->session->flashdata('logout'); ?>
            </div>

        <?php elseif ($this->session->flashdata('ganti_password')) : ?>
            <div class="w-full bg-green-100 text-green-600 border border-green-300 px-3 py-1 mb-4 rounded">
                <?= $this->session->flashdata('ganti_password'); ?>
            </div>

        <?php elseif ($this->session->flashdata('gagal_aktivasi')) : ?>
            <div class="w-full bg-red-100 text-red-600 border border-red-300 px-3 py-1 mb-4 rounded">
                <?= $this->session->flashdata('gagal_aktivasi'); ?>
            </div>

        <?php elseif ($this->session->flashdata('token_salah')) : ?>
            <div class="w-full bg-red-100 text-red-600 border border-red-300 px-3 py-1 mb-4 rounded">
                <?= $this->session->flashdata('token_salah'); ?>
            </div>

        <?php elseif ($this->session->flashdata('akun_aktif')) : ?>
            <div class="w-full bg-green-100 text-green-600 border border-green-300 px-3 py-1 mb-4 rounded">
                <?= $this->session->flashdata('akun_aktif'); ?>
            </div>

        <?php elseif ($this->session->flashdata('token_digunakan')) : ?>
            <div class="w-full bg-red-100 text-red-600 border border-red-300 px-3 py-1 mb-4 rounded">
                <?= $this->session->flashdata('token_digunakan'); ?>
            </div>

        <?php elseif ($this->session->flashdata('waktu_habis')) : ?>
            <div class="w-full bg-red-100 text-red-600 border border-red-300 px-3 py-1 mb-4 rounded">
                <?= $this->session->flashdata('waktu_habis'); ?>
            </div>

        <?php endif; ?>
        <!-- AKHIR MENAMPILKAN FLASHDATA -->

        <!-- LOGIN FORM -->

        <form method="post" action="<?= base_url('auth'); ?>" class="space-y-5">

            <div>

                <label for="username" class="block text-gray-700">Username</label>

                <input type="text" class="input" name="username" id="username" value="<?= set_value('username'); ?>">

                <!-- Jika terdapat error pada field Username akan ditampilkan di sini -->
                <?= form_error('username', '<p class="text-sm text-red-600 italic">', '</p>'); ?>

            </div>

            <div>
                <label for="password" class="block text-gray-700">Password</label>

                <input type="password" class="input" name="password" id="password" value="<?= set_value('password'); ?>">

                <!-- Jika terdapat error pada field Username akan ditampilkan di sini -->
                <?= form_error('password', '<p class="text-sm text-red-600 italic">', '</p>'); ?>

            </div>
            <div class="flex justify-end">
                <button type="submit" class="btn">Login</button>
            </div>


        </form>

        <!-- AKHIR LOGIN FORM -->

        <!-- FORGOT PASSWORD -->

        <div class="text-center mt-5">

            <a href="<?= base_url('auth/forgotpassword'); ?>" class="text-blue-600">Lupa password?</a>

        </div>

        <!-- AKHIR FORGOT PASSWORD -->



        <!-- DAFTAR -->

        <div class="text-center mt-2">

            <p>Belum punya akun?</p>

            <a href="<?= base_url('auth/registration'); ?>" class="text-blue-600">Daftar di sini</a>

        </div>

        <!-- AKHIR DAFTAR -->

    </div>

</div>