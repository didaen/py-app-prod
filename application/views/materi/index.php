<!-- DROPDOWN PILIH MATERI -->
<div class="mb-10">
    <h1 class="bg-gray-300 text-lg font-bold text-blue-1300 text-center py-3">Materi Pembelajaran</h1>

    <div class="bg-white text-gray-600 rounded px-4 sm:px-8 py-8 border-dashed border-l-8 border-r-8 border-blue-1400">

        <form action="<?= base_url(); ?>materi/sub_materi" method="post">
            <label class="block mb-1" for="sub_materi">Pilih Materi : </label>
            <div class="flex flex-col space-y-4">
                <select class="block h-10 px-2 rounded border-2" id="materi" name="materi">
                    <?php foreach ($materi as $materi) : ?>
                        <option value="<?= $materi['id']; ?>"><?= $materi['materi']; ?></option>
                    <?php endforeach; ?>
                </select>
                <div class="flex justify-end">
                    <button type="submit" name="pilih-materi" class="btn">Pilih</button>
                </div>

            </div>
        </form>

    </div>
</div>

<!-- AKHIR DROPDOWN PILIH MATERI -->