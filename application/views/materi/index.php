<!-- DROPDOWN PILIH MATERI -->
<div class="mb-10">
    <h1 class="bg-gray-300 text-lg font-bold text-blue-1300 text-center py-3">Materi Pembelajaran</h1>

    <div class="bg-white text-gray-600 rounded px-4 sm:px-8 py-8 border-dashed border-l-8 border-r-8 border-blue-1400">


        <!-- CPL -->
        <div class="mb-4">
            <div class="flex flex-row justify-between space-x-4">

                <div class="mb-4">
                    Graduate learning outcome (GLO)
                </div>

                <div class="flex justify-center">

                    <input type="checkbox" class="w-5 h-5 absolute z-10 opacity-0" id="cpl-btn" onchange="klikCpl(this)" autocomplete="off" />
                    <label for="cpl" class="text-sm cursor-pointer px-1 bg-blue-500 hover:bg-blue-400 text-white text-center rounded transition duration-300">show</label>
                </div>

            </div>
    
            <div class="white-box overscroll-auto overflow-auto text-sm hidden" id="cpl">
    
                <div class="equation-box grid">                         
                                  
                    <?php $nomer = 1; ?>
                    <?php foreach ($cpl as $cplku) : ?>
                        <div class="flex flex-row mb-4">
                            <div class="pr-4">
                                <?= $nomer; ?>.
                            </div>
                            <div >
                                <?= $cplku['cpl']; ?>
                            </div>
                        </div>
                        
                        <?php $nomer++; ?>
                    <?php endforeach; ?>
                    
                </div>
                                    
            </div>
        </div>
        <!-- AKHIR CPL -->


        <!-- CPMK -->
        <div class="mb-4">

            <p>
                Course learning outcome (GLO)
            </p>
    
            <div class="white-box overscroll-auto overflow-auto text-sm">
    
                <div class="equation-box grid">                         
                                  
                    <?php $nomer = 1; ?>
                    <?php foreach ($cpmk as $cpmk) : ?>
                        <div class="flex flex-row mb-4">
                            <div class="pr-4">
                                <?= $nomer; ?>.
                            </div>
                            <div >
                                <?= $cpmk['cpmk']; ?>
                            </div>
                        </div>
                        
                        <?php $nomer++; ?>
                    <?php endforeach; ?>
    
                </div>
                                    
            </div>
        </div>
        <!-- AKHIR CPMK -->


        <!-- COURSE DESCRIPTION -->
        <div class="mb-4">

            <p>
                Course Description
            </p>
    
            <div class="white-box overscroll-auto overflow-auto text-sm">
    
                <div class="equation-box grid">                         
                                  
                    <div class="flex flex-row mb-4">
    
                        <div >
                            <?= $course_desc['course_desc']; ?>
                        </div>
    
                    </div>
    
                </div>
                                    
            </div>
        </div>
        <!-- AKHIR COURSE DESCRIPTION -->

        <form action="<?= base_url(); ?>materi/sub_materi" method="post">
            <label class="block mb-1" for="sub_materi">Pilih Materi : </label>
            <div class="flex flex-col space-y-4">
                <select class="block h-10 px-2 rounded border-2 outline-none bg-white" id="materi" name="materi">
                    <?php foreach ($materi as $materi) : ?>
                        <option value="<?= $materi['id']; ?>"><?= $materi['materi']; ?></option>
                    <?php endforeach; ?>
                </select>
                <div class="flex justify-end">
                    <button type="submit" name="pilih-materi" class="btn">Pilih</button>
                </div>

            </div>
        </form>


        <!-- SUBJECT MATTER -->
        <div class="mb-4">

            <p>
                Subject Matter
            </p>
    
            <div class="white-box overscroll-auto overflow-auto text-sm">
    
                <div class="equation-box grid">                         
                                  
                    <?php $nomer = 1; ?>
                    <?php foreach ($subject_matter as $sm) : ?>
                        <div class="flex flex-row mb-4">
                            <div class="pr-4">
                                <?= $nomer; ?>.
                            </div>
                            <div >
                                <?= $sm['subject_matter']; ?>
                            </div>
                        </div>
                        
                        <?php $nomer++; ?>
                    <?php endforeach; ?>
    
                </div>
                                    
            </div>
        </div>
        <!-- AKHIR SUBJECT MATTER -->

    </div>
</div>

<!-- AKHIR DROPDOWN PILIH MATERI -->