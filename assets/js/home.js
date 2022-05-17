// jQuery, siapkan document
$(function() {

    // Membuat agar user hanya bisa memasukkan 1 karakter dalam input
    $('.pertanyaan').on("input", function () {     
        if (this.value.length > 1)         
            this.value = this.value.slice(0,1); 
    });

    var semuaPertanyaan = $('.pertanyaan');
    var pertanyaanDijawab = 0;
    var persenDijawab = 0;


    // Membuat beberapa event pada class pertanyaan. Event pada class pertanyaan ada banyak sehingga dibuat penataan multi event
    $(".pertanyaan").on({
        // Ketika class pertanyaan di klik
        click: function(e){
            // maka bgcolornya berubah menjadi berwarna kuning
            $(".pertanyaan").css("background-color", "white");
            $(".pertanyaan").attr("id", "");
            $(".pertanyaan").attr("value", "");
            $(e.target).css("background-color", "yellow").attr("id", "terpilih");
        },
       
        // Ketika kita menekan tombol pada keyboard
        keypress: function(e){
            // Ambil value yang diketikkan. Lalu jika sama dengan 2
            var valueManual = this.value;
            $(e.target).attr("value", valueManual);
            // if(valueManual == 2) {
            //     // Jika tombol enter ditekan, bgcolor berubah menjadi hijau
            //     if(e.which == 13) {
            //         $(this).css("background-color", "green");
            //         pertanyaanDijawab = pertanyaanDijawab + 1;
            //         $('#durasi').css("width", pertanyaanDijawab / semuaPertanyaan.length * 100 + "%");
            //         $('#durasi').text(pertanyaanDijawab + " / " + semuaPertanyaan.length);
            //     }
            // // Jika value yang diketikkan tidak sama dengan 2   
            // } else if(this.value != 2) {
            //     persenDijawab = pertanyaanDijawab / semuaPertanyaan.length * 100;
            //     // Ketika tombol enter ditekan
            //     if(e.which == 13) {
            //         // bgcolor berubah menjadi warna merah
            //         $(this).css("background-color", "red");
            //         pertanyaanDijawab = pertanyaanDijawab + 1;
            //         $('#durasi').css("width", pertanyaanDijawab / semuaPertanyaan.length * 100 + "%");
            //         $('#durasi').text(pertanyaanDijawab + " / " + semuaPertanyaan.length);
            //     }
            // }
        }
    });


    // FUNCTION JQUERY UNTUK MENGETAHUI APAKAH ADA SCROLL BAR ATAU TIDAK
    (function($) {
        $.fn.hasScrollBar = function() {
            var e = this.get(0);
            return {
                vertical: e.scrollHeight > e.clientHeight,
                horizontal: e.scrollWidth > e.clientWidth
            };
        }
    })(jQuery);
    

    // Jika pada id equation-box memiliki scrollbar horizontal
    if($('#equation-box').hasScrollBar().horizontal) {
        // maka class peringatan akan berubah dari display none ke grid
        $("#peringatan").css("display", "grid");
    }
    // Jika pada id equation-box memiliki scrollbar vertical
    else if($('#equation-box').hasScrollBar().vertical) {
        // maka class peringatan akan berubah dari display none ke grid
        $("#peringatan").css("display", "grid");
    } else {
        // Jika kedua kondisi tersebut tidak terpenuhi, maka id peringatan akan masih memiliki display none atau tidak ditampilkan
        $('#peringatan').css("display", "none");
    }


    // EVENT INI AKA BEKERJA SAAT LAYAR DIRESIZE!!
    $(window).on("resize", function(){ 

        // Jika pada id equation-box memiliki scrollbar horizontal
        if($('#equation-box').hasScrollBar().horizontal) {
            // maka class peringatan akan berubah dari display none ke grid
            $("#peringatan").css("display", "grid");
        }
        // Jika pada id equation-box memiliki scrollbar vertical
        else if($('#equation-box').hasScrollBar().vertical) {
            // maka class peringatan akan berubah dari display none ke grid
            $("#peringatan").css("display", "grid");
        } else {
            // Jika kedua kondisi tersebut tidak terpenuhi, maka id peringatan akan masih memiliki display none atau tidak ditampilkan
            $('#peringatan').css("display", "none");
        }

    });


    // MEMBUAT EVENT UNTUK NAVBAR
    // Pada saat terjadi perubahan pada class checkbox-transparan
    $(".checkbox-transparan").change(function() {
        // Jika dicek atau saat user menekan hamburger menu
        if(this.checked) {
            // class menu-navigasi akan mengeluarhakan navbar secara dropdown
            $(".menu-navigasi").animate({
                // heightnya akan dianimasikan secara lambat saat klik pertama, namun saat klik menutup menu drop down tidak. Gerakannya cepat sekali.
                height: "toggle",
            });

            // Saat checkbox-transparan dicek, maka displaynya menjadi flex

            // class bar-1 akan memiliki sumbu putar di top left, dan memutar 48 derajat
            $(".bar-1").css({'transform-origin':'top left', 'transform':'rotate(48deg)'});

            // class bar-2 akan mengecil dan menjadi transparan seperti menghilang
            $(".bar-2").css({'transform':'scale(0)', 'opacity':'0'});

            // dan class bar-3 akan memiliki sumbu putar pada bottom left dan berputar 48 derajat ke arah sebaliknya. Sehingga dari class bar-1 dan bar-3 akan membuat tanda silang
            $(".bar-3").css({'transform-origin':'bottom left', 'transform':'rotate(-48deg)'});
        }
        else {

            // Ini adalah keadaan saat class checkbox transparan tidak dalam keadaan dicek

            // class menu-navigasi akan memiliki display kosong pada inline css karena secara default di html kita sudah membuatnya bernilai display none (hidden) menggunakan Tailwind CSS
            $(".menu-navigasi").animate({
                // heightnya akan dianimasikan secara lambat saat klik pertama, namun saat klik menutup menu drop down tidak. Gerakannya cepat sekali.
                height: "toggle",
            });

            // Class bar-1 akan kembali ke bentuk semula
            $(".bar-1").css({'transform-origin':'top left', 'transform':'rotate(0deg)'});

            // class bar-2 akan muncul kembali
            $(".bar-2").css({'transform':'scale(1)', 'opacity':'1'});

            // Class bar-3 akan kembali ke bentuk semula
            $(".bar-3").css({'transform-origin':'bottom left', 'transform':'rotate(-0deg)'});
        }
    });


    $(".toggle-keyboard").change(function() {
        // Jika dicek atau saat user menekan hamburger menu
        if(this.checked) {
            // class menu-navigasi akan mengeluarhakan navbar secara dropdown
            $("#keyboard").animate({
                // heightnya akan dianimasikan secara lambat saat klik pertama, namun saat klik menutup menu drop down tidak. Gerakannya cepat sekali.
                height: "toggle",
            });

            $("#logo-keyboard").css("background-color", "white");
        }
        else {
            $("#keyboard").animate({
                // heightnya akan dianimasikan secara lambat saat klik pertama, namun saat klik menutup menu drop down tidak. Gerakannya cepat sekali.
                height: "toggle",
            });

            $("#logo-keyboard").css("background-color", "#e5e7eb");
        }
    });


    var pertanyaan = document.getElementsByClassName("pertanyaan")[0];
    $(".greek-alphabet").on('click', function() {
        var num = $(this).attr('value');
        //arr.push(num);
        $("#terpilih").attr('value', num);
      
      //console.log(arr);

    });

    // $( ".pertanyaan" ).click(function( event ) {
    //     alert( event.currentTarget === this ); // true
    //   });

    
    
});


// KEYBOARD
    // let greekKeyboard = document.getElementById("keyboard");

    // greekKeyboard.addEventListener('click', (e) => {
    //     if(e.target.className == 'greek-alphabet') {
    //         console.log('ok');
    //     }
    // });
// AKHIR KEYBOARD


















// Membuat tombol, memberinya event click untuk menghentikan setInterval() dengan clearInterval()
const tombol = document.getElementById('tombol');

// PROGRAM HITUNG MUNDUR

const sekarang = new Date().getTime();
const tanggalTujuan = sekarang + (1000 * 60 * 30);
const selisih = tanggalTujuan - sekarang;




// Membuat waktu hitung mundur terus terupdate tiap 1 detik
const tes = setInterval(() => {
    // new Date untuk mendapatkan waktu saat ini
    // new Date().getTime() untuk mendapatkan waktu saat ini dalam satuan mili detik
    const sekarang = new Date().getTime();
    // console.log(sekarang);

    // Mencari selisih waktu tujuan dengan waktu sekarang
    const selisih = tanggalTujuan - sekarang;
    // console.log(selisih);

    // Merubah selisih waktu dengan satuan hari, jam, menit, dan detik
    // Waktu yang tersisa dari satuan mili detik dirubah ke dalam satuan hari

    // Hari yang tersisa
    const hari = Math.floor(selisih / (1000 * 60 * 60 * 24));

    // Jam yang tersisa
    const jamTersisa = selisih % (1000 * 60 * 60 * 24);
    const jam = Math.floor(jamTersisa / (1000 * 60 * 60));

    // Menit yang tersisa
    const menitTersisa = jamTersisa % (1000 * 60 * 60);
    const menit = Math.floor(menitTersisa / (1000 * 60));

    // Detik yang tersisa
    const detikTersisa = menitTersisa % (1000 * 60);
    const detik = Math.floor(detikTersisa / (1000));

    // Menampilkan waktu penghitung mundur yang belum secara otomatis terupdate
    teks.innerHTML = 'Waktu tersisa ' + jam + ' jam ' + menit + ' menit ' + detik + ' detik.';

    // Jika selisih waktu lebih kecil atau sama dengan nol maka hentikan waktu dan ganti waktu dengan tulisan selesai
    if(selisih <= 0) {
        clearInterval(tes);
        teks.innerHTML = 'SELESAI';
    }

}, 1000);


// Menmbahkan event click pada tombol
tombol.addEventListener('click', () => {
    // Menghentikan setInterval() pewaktu
    clearInterval(tes);
    console.log('selesai');
});

