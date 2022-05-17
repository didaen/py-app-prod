<!-- KOTAK WARNA PUTIH HEIGHT UKURAN KONKRET -->
<div class="white-box h-96 bg-white rounded overscroll-auto overflow-auto">
    <!-- KOTAK BACKGROUND WARNA PUTIH -->
    <div class="equation-box grid grid-cols-29 grid-rows-9-32px p-5">

        <!-- SOAL 1 -->
        <div class="grid-dalam grid grid-cols-225-1px grid-rows-175-1px col-start-1 row-start-1">

            <!-- PERSAMAAN 1 -->
            <div class="col-start-1 row-start-1">
                $$
                \begin{aligned}
                \nabla \times \vec{\mathbf{\textcolor{#fff}{\LARGE \square}}} -\, \frac1c\, \frac{\partial\vec{\mathbf{E}}}{\partial t} & = \frac{4\pi}{c}\vec{\mathbf{j}} \\   
                \nabla \cdot \vec{\mathbf{E}} & = 4 \pi \rho \\
                \nabla \times \vec{\mathbf{E}}\, +\, \frac1c\, \frac{\partial\vec{\mathbf{B}}}{\partial t} & = \vec{\mathbf{0}} \\
                \nabla \cdot \vec{\mathbf{B}} & = 0 \end{aligned}
                $$
            </div>
            <!-- AKHIR PERSAMAAN 1 -->

            <!-- PERTANYAAN -->
            <div class="col-start-47 row-start-27 z-10">
                <input type="text" class="pertanyaan pertanyaan-tk1 katex-italic font-bold" name="jwb-1">
            </div>
            <!-- AKHIR PERTANYAAN -->

        </div>
        <!-- AKHIR SOAL 1 -->

        <!-- SOAL 2 -->
        <div class="grid grid-cols-700-1px grid-rows-125-1px col-start-1 row-start-5">

            <!-- PERSAMAAN 1 -->
            <div class="col-start-1 row-start-1">
                $$
                1 +  \frac{{x^{\textcolor{#fff}{\LARGE \square}}}^{\textcolor{#fff}{\LARGE \square}}}{(1-q)}+\frac{{{q^6}^7}^8}{(1-q)(1-q^2)}+\cdots = \prod_{j=0}^{\infty}\frac{1}{(1-q^{5j+{\textcolor{#fff}{\LARGE \square}}})(1-q^{5j+3})}
                $$
            </div>
            <!-- AKHIR PERSAMAAN 1 -->

            <!-- PERTANYAAN 1 -->
            <div class="col-start-65 row-start-15 z-10">
                <input type="text" class="pertanyaan pertanyaan-tk2 katex-regular">
            </div>
            <!-- AKHIR PERTANYAAN 1 -->

            <!-- PERTANYAAN 2 -->
            <div class="col-start-48 row-start-32 z-10">
                <input type="text" class="pertanyaan pertanyaan-tk2 katex-italic">
            </div>
            <!-- AKHIR PERTANYAAN 2 -->

            <!-- PERTANYAAN 3 -->
            <div class="col-start-437 row-start-79 z-10">
                <input type="text" class="pertanyaan pertanyaan-tk2 katex-regular">
            </div>
            <!-- AKHIR PERTANYAAN 3 -->

        </div>
        <!-- AKHIR SOAL 2 -->

    </div>
    <!-- AKHIR KOTAK BACKGROUND WARNA PUTIH -->

</div>
<!-- AKHIR KOTAK WARNA PUTIH HEIGHT UKURAN KONKRET -->

<!-- PERINGATAN APABILA ADA SCROLLBAR -->
<div class="p-1 font-bold bg-red-300 text-gray-600 hidden text-center text-xs" id="peringatan">PERSAMAAN MASIH PANJANG. SILAHKAN GESER KOTAK DI ATAS</div>
<!-- AKHIR PERINGATAN APABILA ADA SCROLLBAR -->

<div class="w-full grid grid-rows-2 grid-cols-3 sm:flex sm:flex-row">

    <div class="row-start-2 col-span-1 sm:flex-none">
        <button class="btn-kecil-merah" id="reset">
            Reset
        </button>
    </div>

    <div class="col-start-1 col-end-4 sm:grow flex flex-col justify-center px-2 text-xs bg-gray-400 text-center rounded">
        <p>Progress pengerjaan</p>
        <!-- PEMBUNGKUS PROGRESS BAR -->
        <div class="bungkus bg-gray-400 p-1 rounded-full">

            <!-- DURASI BELUM TERPAKAI -->
            <div class="bg-white rounded-full" id="durasi-terpakai">

                <!-- DURASI SUDAH TERPAKAI -->
                <div class="text-center text-gray-700 rounded-full" id="durasi">0%</div>
                <!-- AKHIR DURASI SUDAH TERPAKAI -->

            </div>
            <!-- AKHIR DURASI BELUM TERPAKAI -->

        </div>
        <!-- AKHIR PEMBUNGKUS PROGRESS BAR -->
    </div>
    
    <div class="row-start-2 col-span-2 justify-self-end flex sm:flex-none">
        <button class="btn-kecil" id="next">
            Back
        </button>
        <button class="btn-kecil" id="back">
            Next
        </button>
    </div>
    
</div>
<!-- AKHIR PEWAKTU UNTUK TES -->

$$
\begin{equation}
\begin{split}   a &=b+c\\
    &=e+f
\end{split}
\end{equation}
$$