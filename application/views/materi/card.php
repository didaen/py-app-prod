<!-- DROPDOWN PILIH MATERI -->
<div class="mb-10">

    <h1 class="bg-gray-300 text-lg font-bold text-blue-1300 text-center py-3">Card Sub Materi</h1>

    <div class="bg-white text-gray-600 rounded px-4 sm:px-8 py-8 border-dashed border-l-8 border-r-8 border-blue-1400">

        <form method="post" id="form-card">
            <input type="hidden" name="materi-id" value="<?= $card['materi'] ?>" />
            <input type="hidden" name="sub-materi-id" value="<?= $card['sub_materi'] ?>" />
            <input type="hidden" name="total-card" value="<?= $card['total_card'] ?>" />

            <label class="block mb-1" for="card">Pilih Card : </label>
            <div class="flex flex-col space-y-4">
                <select class="block h-10 px-2 rounded border-2" id="card" name="card-number">
                    <?php for ($i = 1; $i <= $card['total_card']; $i++) : ?>
                        <option value="<?= $i; ?>"><?= $i; ?></option>
                    <?php endfor; ?>
                </select>
                <div class="flex justify-end">
                    <button type="submit" name="pilih-card" class="btn" id="pilih-card" onclick="klikGantiAction()">Pilih</button>
                </div>

            </div>
        </form>
    </div>

</div>
<!-- AKHIR DROPDOWN PILIH MATERI -->