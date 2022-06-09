<div class="mb-10">
    <h1 class="bg-gray-300 text-lg font-bold text-blue-1300 text-center py-3">Pengembang</h1>
    <div class="flex flex-col sm:flex-row items-center gap-4 px-4 sm:px-8 py-8 bg-white border-dashed border-l-8 border-r-8 border-blue-1400">
        <div>
            <img src="<?= base_url('assets/img/pylightgray.png'); ?>" alt="Pengembang" class="w-20">
        </div>
        <div class="sm:flex flex-row items-center gap-4 text-gray-600 hidden">
            <div class="font-medium">
                <div>Nama</div>
                <div>Email</div>
                <div>Intagram</div>
            </div>
            <div>
                <div>:</div>
                <div>:</div>
                <div>:</div>
            </div>
            <div>
                <div>Firda Nur Baiti</div>
                <div>physicsyourself@gmail.com</div>
                <div>@didaen</div>
            </div>
        </div>
        <div>
            <div class="block sm:hidden text-gray-600 text-center">
                <div class="font-medium">Nama</div>
                <div>Firda Nur Baiti</div>
                <div class="font-medium">Email</div>
                <div>physicsyourself@gmail.com</div>
                <div class="font-medium">Intagram</div>
                <div>@didaen</div>
            </div>
        </div>
    </div>

</div>

<div class="mb-10">

    <h2 class="bg-gray-300 text-lg font-bold text-blue-1300 text-center py-3">Sekilas tentang pengembang</h2>
    <div class="bg-white text-gray-600 px-4 sm:px-8 py-8 border-dashed border-l-8 border-r-8 border-blue-1400">
        <p class="text-justify">
            Pengembang adalah mahasiswa akhir Universitas Negeri Semarang yang sedang mengerjakan skripsi. Web ini dibuat oleh pengembang karena terispirasi oleh buku Matematika Teknik oleh K.A Stroud dan web Personal Tutor oleh K.A. Stroud. Pengembang berharap dapat segera menyelesaikan skripsinya dan dapat menambah wawasan pengguna tentang fisika dan matematika.
        </p>
    </div>
</div>


<div class="mb-10">

    <h2 class="bg-gray-300 text-lg font-bold text-blue-1300 text-center py-3">Referensi</h2>
    <div class="bg-white text-gray-600 px-4 sm:px-8 py-8 border-dashed border-l-8 border-r-8 border-blue-1400">
        <div>
            <?php $nomer = 1; ?>
            <?php foreach ($referensi as $ref) : ?>
                <div class="flex flex-row">
                    <div>
                        <?= $nomer; ?>
                    </div>
                    <div >
                        <?= $ref['sumber']; ?>
                    </div>
                </div>
                
                <?php $nomer++; ?>
            <?php endforeach; ?>
        </div>
    </div>
</div>