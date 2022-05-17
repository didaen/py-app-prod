// jQuery, siapkan document
$(function() {

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
    if($('.persamaan-over').hasScrollBar().horizontal) {
        // maka class peringatan akan berubah dari display none ke grid
        $("#peringatan").css("display", "grid");
    }
    // Jika pada id equation-box memiliki scrollbar vertical
    else if($('.persamaan-over').hasScrollBar().vertical) {
        // maka class peringatan akan berubah dari display none ke grid
        $("#peringatan").css("display", "grid");
    } else {
        // Jika kedua kondisi tersebut tidak terpenuhi, maka id peringatan akan masih memiliki display none atau tidak ditampilkan
        $('#peringatan').css("display", "none");
    }
    

    // EVENT INI AKA BEKERJA SAAT LAYAR DIRESIZE!!
    $(window).on("resize", function(){ 

        // Jika pada id equation-box memiliki scrollbar horizontal
        if($('.persamaan-over').hasScrollBar().horizontal) {
            // maka class peringatan akan berubah dari display none ke grid
            $("#peringatan").css("display", "grid");
        }
        // Jika pada id equation-box memiliki scrollbar vertical
        else if($('.persamaan-over').hasScrollBar().vertical) {
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
    
    
});
