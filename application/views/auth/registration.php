<div class="min-h-screen flex items-center justify-center bg-blue-1700">

    <div class="bg-white py-6 px-10 sm:px-16 rounded shadow-2xl w-5/6 sm:w-2/3 md:1/2 lg:w-2/5 2xl:w-1/3">

        <!-- REGISTRATION FORM -->

        <!-- LOGO DAN JUDUL PHYSICS YOURSELF -->
        <div class="flex items-center space-x-2 mb-4">

            <img src="<?= base_url(); ?>assets/img/pylightgray.png" class="w-12 rounded-full" alt="Physics Yourself">

            <h2 class="text-2xl leading-none font-bold text-gray-700">Buat Akun</h2>

        </div>
        <!-- AKHIR LOGO DAN JUDUL PHYSICS YOURSELF -->

        <form method="post" action="<?= base_url('auth/registration'); ?>" class="space-y-5">

            <div>
                <label for="username" class="block text-gray-700">Username</label>

                <input type="text" class="w-full border-b-2 border-gray-200 px-3 py-1 outline-none focus:border-blue-1200" name="username" id="username" placeholder="Dida_En97" value="<?= set_value('username'); ?>">

                <p class="py-1 text-xs italic text-gray-700">Huruf, angka, dash ( - ), dan underscore ( _ )</p>

                <!-- Jika terdapat error pada field Username akan ditampilkan di sini -->
                <?= form_error('username', '<p class="text-sm text-red-600 italic">', '</p>'); ?>

            </div>

            <div>

                <label for="nim" class="block text-gray-700">NIM</label>

                <input type="text" class="w-full border-b-2 border-gray-200 px-3 py-1 outline-none focus:border-blue-1200" name="nim" id="nim" placeholder="4201415035" value="<?= set_value('nim'); ?>">

                <!-- Jika terdapat error pada field NIM akan ditampilkan di sini -->
                <?= form_error('nim', '<p class="text-sm text-red-600 italic">', '</p>'); ?>

            </div>

            <div>

                <label for="email" class="block text-gray-700">Email</label>

                <input type="text" class="w-full border-b-2 border-gray-200 px-3 py-1 outline-none focus:border-blue-1200" name="email" id="email" placeholder="firda@gmail.com" value="<?= set_value('email'); ?>">

                <!-- Jika terdapat error pada field Email akan ditampilkan di sini -->
                <?= form_error('email', '<p class="text-sm text-red-600 italic">', '</p>'); ?>

            </div>

            <div class="flex flex-col sm:flex-row space-y-5 sm:space-y-0 sm:space-x-4 lg:space-x-8 justify-between">

                <div>

                    <label for="password1" class="text-gray-700">Password</label>

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

            <div class="flex justify-end">
                <button type="submit" name="pilih-materi" class="btn">Daftar</button>
            </div>

        </form>

        <!-- AKHIR LOGIN FORM -->

        <!-- DAFTAR -->

        <div class="text-center mt-5">

            <p>Sudah punya akun?
                <a href="<?= base_url('auth'); ?>" class="text-blue-600">Login</a>

            </p>

        </div>

        <!-- AKHIR DAFTAR -->

    </div>

</div>