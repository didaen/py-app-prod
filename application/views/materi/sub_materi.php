<!-- DROPDOWN PILIH SUB MATERI -->
<div class="mb-10">

    <h1 class="bg-gray-300 text-lg font-bold text-blue-1300 text-center py-3">Sub Materi Pembelajaran</h1>

    <div class="bg-white text-gray-700 rounded px-4 sm:px-8 py-8 border-dashed border-l-8 border-r-8 border-blue-1700">


        <form action="<?= base_url(); ?>materi/sub_materi/card" method="post">
            <input type="hidden" name="materi" id="materi-id" value="<?= $sub_materi[0]['materi']; ?>" />
            <label class="block mb-1" for="sub_materi">Pilih Sub Materi : </label>
            <div class="flex flex-col space-y-4">
                <select class="block h-10 px-2 rounded border-2 outline-none bg-white" id="sub-materi" name="sub-materi">
                    <?php foreach ($sub_materi as $sub_materi) : ?>
                        <option value="<?= $sub_materi['id']; ?>"><?= $sub_materi['sub_materi']; ?></option>
                    <?php endforeach; ?>
                </select>
                <div class="flex justify-end">
                    <button type="submit" name="pilih-materi" class="btn">Pilih</button>
                </div>

            </div>
        </form>

    </div>

</div>
<!-- AKHIR DROPDOWN PILIH SUB MATERI -->