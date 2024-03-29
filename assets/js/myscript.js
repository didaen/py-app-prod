if ( window.history.replaceState ) {
	window.history.replaceState( null, null, window.location.href );
}

// Function yang akan mereload setiap hit BACK dari browser

window.addEventListener( "pageshow", function ( event ) {
	var perfEntries = performance.getEntriesByType("navigation");
	if (perfEntries[0].type === "back_forward") {
	  location.reload();
	  sudahDijawab();
	}
   });


// var perfEntries = performance.getEntriesByType("navigation");

// if () {
//     location.reload(true);
// }



// MEMUNCULKAN NAVIGASI MENU SAAT KLIK IKON HAMBURGER
function klikNav(checkboxNav) {

	// JIKA CHECKBOX TERCENTANG
	if (checkboxNav.checked) {

		// AMBIL ELEMENT DENGAN ID menu-navigasi, LALU DISPLAY GANTI FLEX
		document.getElementById("menu-navigasi").style.display = "flex";

		// JIKA CHECKBOX TIDAK TERCENTANG
	} else {

		// AMBIL ELEMENT DENGAN ID menu-navigasi, LALU DISPLAYNYA DIKOSONGI
		document.getElementById("menu-navigasi").style.display = "";
	}
}




// FUNCTION CEK SCROLLBAR, TAMPIL PERINGATAN
function hasScrollbar() {

	// Mengambil semua element dengan class white-box dan memasukkannya ke dalam variabel whiteBox
	const whiteBox = document.querySelectorAll(".white-box");
	
	// Mengambil semua elemen dengan class equation-box dan memasukkannya ke dalam constant equationBox
	const equationBox = document.querySelectorAll(".equation-box");

	// UNTUK MASING-MASING ELEMENT PADA HTMLCollection DENGAN CLASS whiteBox
	for (let i = 0; i < whiteBox.length; i++) {

		// DAN UNTUK MASING-MASING ELEMENT PADA HTMLCollection DENGAN CLASS equationBox
		if (equationBox[i].clientHeight > whiteBox[i].clientHeight || whiteBox[i].scrollWidth > whiteBox[i].clientWidth) {

			// UBAH DISPLAY DARI ELEMENT DENGAN ID peringatan MANJADI GRID
			document.getElementById("peringatan").style.display = "grid";
			break;

		// JIKA KONDISI TIDAK TERPENUHI
		} else {

			// UBAH DISPLAY DARI ELEMENT DENGAN ID peringatan MANJADI GRID
			document.getElementById("peringatan").style.display = "";
		}
		
	}
}




// MENAMBAHKAN EVENT LOAD KE WINDOW
window.addEventListener("load", function () {
	// APABILA WINDOW DIRESIZE, JALANKAN FUNCTION
	hasScrollbar();
});




// MENAMBAHKAN EVENT RESIZE KE WINDOW
window.addEventListener("resize", function () {
	// APABILA WINDOW DIRESIZE, JALANKAN FUNCTION
	hasScrollbar();
});




// FUNCTION UNTUK MENGIRIMKAN DATA MATERI, SUB MATERI, DAN CARD NUMBER APABILA USER MELAKUKAN BACK TANPA MELALUI TOMBOL BACK YANG SUDAH DISEDIAKAN
function kirimDataCard() {

	// Seleksi semua elemen dengan class pertanyaan
	const semuaPertanyaan = document.querySelectorAll(".pertanyaan");

	// PADA TIAP-TIAP ELEMENT CLASS PERTANYAAN
	semuaPertanyaan.forEach(pertanyaan => {

		// Tambahkan event click pada elemen tersebut
		pertanyaan.addEventListener('click', function(event) {
	
			// Seleksi elemen yang memiliki id materi-id, kemudiam masukkan ke dalam variabel materiId
			let materiId = document.getElementById('materi-id');
	
			// Seleksi elemen yang memiliki id sub-materi-id, kemudiam masukkan ke dalam variabel subMateriId
			let subMateriId = document.getElementById('sub-materi-id');
	
			// Seleksi elemen yang memiliki id card-number, kemudiam masukkan ke dalam variabel cardNumber
			let cardNumber = document.getElementById('card-number');
			
				
				// Menginisiasi object baru FormData
				let postData = new FormData();
	
				// Mempersiapkan data-data yang akan dikirim menggunakan FETCH POST
				postData.append('materi_id', materiId.value);
				postData.append('sub_materi_id', subMateriId.value);
				postData.append('card_number', cardNumber.value);
				
				// FETCH POST UNTUK MENYIMPAN DATA KE TABEL user_learning_log untuk menyimpan data pembelajaran terakhir user
				fetch('http://[::1]/py-app-prod/materi/dataPembelajaranTerakhir', {
					method: 'POST',
					mode: 'no-cors',
					headers: {
						"Content-Type": "application/json"
					},
					body: postData
				}).then((res) => {
					res;
				}).catch(console.log);
	
			event.preventDefault();
		});
	});

}
kirimDataCard();



// FUNCTION UNTUK MEMBATASI HANYA INPUT 1 KARAKTER
function satuKarakter() {
	// AMBIL HTMLCOLLECTION DENGAN CLASS PERTANYAAN
	const semuaPertanyaan = document.querySelectorAll(".pertanyaan");

	// PADA TIAP-TIAP ELEMENT CLASS PERTANYAAN
	semuaPertanyaan.forEach(pertanyaan => {
		// SAAT MELAKUKAN INPUT
		pertanyaan.addEventListener("input", function () {
			// POTONG KARAKTER KEDUA JIKA USER MEMASUKKAN LEBIH DARI 1 KARAKTER
			pertanyaan.value = pertanyaan.value.slice(0, 1);

			// KEMUDIAN UBAH BGCOLORNYA MENJADI KUNING
			pertanyaan.style.backgroundColor = "#fef08a";

			// JIKA DIHAPUS
			if (pertanyaan.value == "") {
				// UBAH WARNANYA SEPERTI SEMULA, ABU-ABU
				pertanyaan.style.backgroundColor = "";
			}
		});
	});

	// KEMBALIKAN
	return;
}

// JALANKAN FUNCTION
satuKarakter();



// Function untuk melakukan konfirmasi sebelum user melakukan logout
function logout() {

	// Buat variabel yang berisi semua elemen dengan class logout
	let logoutButton = document.querySelectorAll(".logout");

	// Untuk tiap elemen tersebut
	logoutButton.forEach((lb) => {

		// Ketika user melakukan klik
		lb.addEventListener("click", function (event) {

			// Muncul konfirmasi
			logoutConfirm = confirm("Apakah Anda ingin logout?");

			// Jika user memilih YES
			if (logoutConfirm) {

				// Kembalikan, atau keluar dari function
				return lb;
			}

			// Menhindari tombol logout berjalan jika tidak diklik
			event.preventDefault();
		});
	});
}

// Menjalankan function logout
logout();



// Funtion ini untuk melakukan penambahan attribut action pada saat memilih card atau menu dropdown card
function klikGantiAction() {
	let selectCard = document.getElementById("card");
	let selectCardValue = selectCard.value;

	let formCard = document.getElementById("form-card");
	formCard.setAttribute("action", "card/" + selectCardValue);
}



// Funtion ini untuk menambahkan attribut action pada menu dropdown tiap-tiap card
// Ini digunakan untuk navigasi card ketika sedang membuka card
function klikGantiActionCardInternal() {
	let selectCardInternal = document.getElementById("card-internal");
	let selectCardInternalValue = selectCardInternal.value;

	let formCard = document.getElementById("form-card-internal");
	formCard.setAttribute("action", selectCardInternalValue);
}



// Function ini untuk menambahkan attribute action pada saat user klik tombol BACK
function klikGantiActionBack() {
	let cardNumberJudul = document.getElementById("card-number-judul");
	let cardNumberJudulInnerHtml = parseInt(cardNumberJudul.innerHTML);

	let formCard = document.getElementById("form-card-internal");
	formCard.setAttribute("action", cardNumberJudulInnerHtml - 1);
}



// Funtion ini untuk menyembunyikan tombol BACK saat user berada pada card 1
function sembunyikanTombolBack() {
	
	if (document.getElementById("card-number-judul") != null) {
		let cardNumberJudul = document.getElementById("card-number-judul");
		let cardNumberJudulInnerHtml = parseInt(cardNumberJudul.innerHTML);

		let tombolBack = document.getElementById("tombol-back");

		if (cardNumberJudulInnerHtml === 1) {
			tombolBack.style.display = "none";
		} else {
			tombolBack.style.display = "";
		}
	}
}

// Menjalankan function
sembunyikanTombolBack();



// Function ini untuk menambahkan attribute action pada saat user klik tombol NEXT
function klikGantiActionNext() {
	let cardNumberJudul = document.getElementById("card-number-judul");
	let cardNumberJudulInnerHtml = parseInt(cardNumberJudul.innerHTML);
	let formCard = document.getElementById("form-card-internal");
	formCard.setAttribute("action", cardNumberJudulInnerHtml + 1);
}



// Funtion ini untuk menyembunyikan tombol NEXT saat user berada pada card 1
function sembunyikanTombolNext() {

	if (document.getElementById("card-number-judul") != null) {
		let cardNumberJudul = document.getElementById("card-number-judul");
		let cardNumberJudulInnerHtml = parseInt(cardNumberJudul.innerHTML);

		let totalCard = document.getElementById("total-card");
		let nomerCardTerakhir = parseInt(totalCard.value);

		let tombolNext = document.getElementById("tombol-next");

		if (cardNumberJudulInnerHtml === nomerCardTerakhir) {
			tombolNext.style.display = "none";
		} else {
			tombolNext.style.display = "";
		}
	}
}

// Menjalankan function
sembunyikanTombolNext();



// Function ini untuk menambahkan attribute action pada saat user klik tombol LANJUTKAN BELAJAR
function klikGantiActionLanjutkanBelajar() {
	let selectCard = document.getElementById("card-lanjutkan-belajar");
	let selectCardValue = selectCard.value;

	let formCard = document.getElementById("form-card-lanjutkan-belajar");
	formCard.setAttribute("action", "materi/sub_materi/card/" + selectCardValue);
}



// Function ini untuk menyembunyikan tombol lanjutkan belajar apabila user masih baru atau masih belum ada record belajar terakhir
function sembunyikanLanjutkanBelajarBtn() {
	let lanjutkanBelajarBtn = document.getElementById("lanjutkan-belajar");

	if (document.getElementById("card-lanjutkan-belajar") != null) {
		let inputHiddenCard = document.getElementById("card-lanjutkan-belajar");
		let inputHiddenCardValue = inputHiddenCard.value;

		if (inputHiddenCardValue == "") {
			lanjutkanBelajarBtn.style.display = "none";
		} else {
			lanjutkanBelajarBtn.style.display = "";
		}
	}
}

// Menjalankan function
sembunyikanLanjutkanBelajarBtn();



// Tombol Reset untuk mengilangkan SEMUA JAWABAN pada card tersebut atau untuk mereset CARD
function tombolReset() {

	if (document.getElementById("reset") != null) {

		const resetButton =  document.getElementById("reset");
		const semuaPertanyaan = document.querySelectorAll(".pertanyaan");
	
		resetButton.addEventListener("click", function (event) {
			resetConfirm = confirm("Apakah Anda yakin ingin menghapus semua jawaban pada card ini?");
			if (resetConfirm) {
	
				// MENGIRIMKAN JAWABAN BENAR KE DATABASE
				let postData = new FormData();
				semuaPertanyaan.forEach(pertanyaan => {
					postData.append(pertanyaan.id, pertanyaan.value = "");
				});
	
				fetch('http://[::1]/py-app-prod/materi/hapusJawabanCard', {
					method: 'POST',
					mode: 'no-cors',
					headers: {
						"Content-Type": "application/json"
					},
					body: postData
				}).then((res) => {
					res;
				}).catch(console.log);
						
			}
			event.preventDefault();

			// Tunggu 1 detik
			setTimeout(() => {
				window.location.reload()
			}, 1000);
	
			// Reload halaman
			
		});
	
	}

}

// Menjalankan function
tombolReset();



// Tombol Tunjukkan jawaban untuk mencatat apakah user memencet tombol tunjukkan jawaban atau tidak
function showAnswers() {

	// Jika ditemukan element dengan id tunjukkan-jawaban
	if (document.getElementById("tunjukkan-jawaban") != null) {

		// Masukkan element tersebut ke variabel showAnswersBtn
		let showAnswersBtn = document.getElementById("tunjukkan-jawaban");

		// Variabel jumlah klik
		// let jumlahKlik = 0;
		
		// Ketika element tersebut diklik
		showAnswersBtn.addEventListener("click", function(event){
			
			fetch('http://[::1]/py-app-prod/materi/klikTunjukkanJawabanTersimpan', {
				method: 'POST',
				credentials: 'same-origin',
				mode: 'no-cors',
				headers: {
					'Accept': 'application/json',
					'Content-Type': 'application/json'
				},
			})
				.then(response => response.json())
				.then(response => {

					let klikTersimpan = parseInt(response['jumlah_klik']);

					let postData = new FormData();
					postData.append("klik_tersimpan", klikTersimpan);
					postData.append("jumlah_klik", 1);

					fetch('http://[::1]/py-app-prod/materi/userLihatJawaban', {
						method: 'POST',
						mode: 'no-cors',
						headers: {
							"Content-Type": "application/json"
						},
						body: postData
					}).then((res) => {
						res;
					}).catch(console.log);

					// FETCH POST UNTUK MENGAMBI JAWABAN PADA MYSQL
					let kunciJawaban = document.getElementById("kunci-jawaban");
					let kunciPerBaris = '';


					fetch('http://[::1]/py-app-prod/materi/tunjukkanKunciJawaban', {
						method: 'POST',
						credentials: 'same-origin',
						mode: 'no-cors',
						headers: {
							'Accept': 'application/json',
							'Content-Type': 'application/json'
						},
					})
						.then(response => response.json())
						.then(response => {

							response.forEach(res => {

								if(res['kategori'] == '1') {
									
									kunciPerBaris += 
									`
										<div class="font-medium text-center py-1 bg-gray-300">
											${res['isi']}
										</div>
									`;

								} else if(res['kategori'] == '2') {

									kunciPerBaris += 
									`
										<div>
											${res['isi']}
										</div>
									`;

								} else {

									kunciPerBaris += 
									`
										<div class="white-box overscroll-auto overflow-auto">
											<div class="equation-box grid">
												$$
												${res['isi']}
												$$
											</div>
										</div>
									`;
								}

								kunciJawaban.innerHTML = kunciPerBaris;

								renderMathInElement(
									kunciJawaban,
									{
										delimiters: [
											{left: "$$", right: "$$", display: true},
											{left: "$", right: "$", display: false},
											{left: "\\begin{equation}", right: "\\end{equation}", display: true},
											{left: "\\begin{align}", right: "\\end{align}", display: true},
											{left: "\\begin{alignat}", right: "\\end{alignat}", display: true},
											{left: "\\begin{gather}", right: "\\end{gather}", display: true},
											{left: "\\(", right: "\\)", display: false},
											{left: "\\[", right: "\\]", display: true}
										]
									}
								);
							});

							hasScrollbar();

							// MENAMBAHKAN EVENT LOAD KE WINDOW
							window.addEventListener("load", function () {
								// APABILA WINDOW DIRESIZE, JALANKAN FUNCTION
								hasScrollbar();
							});
						
						});
				
			});

			event.preventDefault();
			
		});
		
	}	
}
showAnswers();


// FUNCTION UNTUK MELIHAT JAWABAN BENAR ATAU SALAH
function sudahDijawab() {

	// Jika ada class pertanyaan yang mana merupakan class yang ada pada card kategori Latihan Soal
	if(document.getElementById("latihan") !== null) {

		// Seleksi semua elemen dengan class pertanyaan
		let semuaPertanyaan = document.querySelectorAll(".pertanyaan");
	
		// Seleksi elemen dengan id durasi kemudian masukkan ke dalam variabel durasi
		const durasi = document.querySelector("#durasi");
	
		// Menghitung panjang array semuaPertanyaan kemudian masukkan ke dalam variabel jumlahPertanyaan
		let jumlahPertanyaan = semuaPertanyaan.length;
	
	
		// MENDEKLARASIKAN VARIABEL persenPengerjaan
		let persenPengerjaan = 0;

		// Nilai awal dari pertanyaanBelumDiisi sama dengan jumlahPertanyaan
		let pertanyaanBelumDiisi = jumlahPertanyaan;

		// Membuat array kosong arrayIdPertanyaan untuk menyimpan kumpulan id elemen dengan class pertanyaan
		let arrayIdPertanyaan = [];
			
		// Membuat array kosong arrayJawabanUser untuk menyimpan kumpulan jawaban user pada input dengan class pertanyaan
		let arrayJawabanUser = [];

		// Pada tiap elemen class pertanyaan
		semuaPertanyaan.forEach(pertanyaan => {
					
			// Masukkan id ke dalam arrayIdPertanyaan
			arrayIdPertanyaan.push(pertanyaan.id);
				
			// Masukkan jawaban yang diinput user ke dalam arrayJawabanUser
			arrayJawabanUser.push(pertanyaan.value);

		});

		// Membuat array kosong arrayKunciJawaban untuk menyimpan kumpulan kunci jawaban dari FETCH POST
		let arrayKunciJawaban = [];

		let nomorIndex = 0;

		// FETCH POST jawaban untuk question box dengan id tersebut
		fetch('http://[::1]/py-app-prod/materi/py_anw', {
			method: 'POST',
			credentials: 'same-origin',
			mode: 'no-cors',
			headers: {
				'Accept': 'application/json',
				'Content-Type': 'application/json'
			},
		})
			.then(response => response.json())
			.then(response => {
						
		
				arrayIdPertanyaan.forEach(kolom => {
		
					arrayKunciJawaban[nomorIndex] = response[kolom];
											
					nomorIndex++
				});
				
		
				for(let i = 0; i < arrayKunciJawaban.length; i++) {
		
					// JIKA JAWABAN YANG DIINPUT OLEH USER SAMA DENGAN jawabanBenar
					if (arrayJawabanUser[i] == arrayKunciJawaban[i]) {
					
						// BGCOLORNYA BERUBAH MENJADI HIJAU
						semuaPertanyaan[i].style.backgroundColor = "#a3e635";
					
						// TAMBAHKAN ATTRIBUTE readonly AGAR TIDAK BISA DIEDIT LAGI.
						semuaPertanyaan[i].setAttribute("readonly", "");
					
						// JUMLAH PERTANYAAN BERKURANG 1
						pertanyaanBelumDiisi -= 1;
				
		
					} else if(arrayJawabanUser[i] == '') {
					
						// APABILA JAWABAN KOSONG TETAP
						semuaPertanyaan[i].style.backgroundColor = "";
		
						pertanyaanBelumDiisi = pertanyaanBelumDiisi;
		
					} else {
						// APABILA JAWABAN SALAH BGCOLOR BERUBAH JADI MERAH
						semuaPertanyaan[i].style.backgroundColor = "#f87171";
		
						pertanyaanBelumDiisi = pertanyaanBelumDiisi;
		
					}
				}
		
				// persenPengerjaan BERTAMBAH
				persenPengerjaan = Math.round((1 - pertanyaanBelumDiisi / jumlahPertanyaan) * 100);
					
				// WIDTH PROGRESS BAR AKAN BERTAMBAH
				durasi.style.width = persenPengerjaan + "%";
		
				// WARNA PROGRESS BAR MENJADI HIJAU
				durasi.style.backgroundColor = "#a3e635";
		
				// TULISAN PADA PROGRESS BAR AKAN MENJADI BERTAMBAH
				durasi.innerHTML = persenPengerjaan + "%";
					
				
			})
			.catch((error) => console.log(error));	
		
		// KEMBALIKAN
		
	}

	
}
sudahDijawab();



// FUNCTION UNTUK MELIHAT JAWABAN BENAR ATAU SALAH
function userMenjawab() {

	// Jika ada class pertanyaan yang mana merupakan class yang ada pada card kategori Latihan Soal
	if(document.getElementById("latihan") !== null) {

		// Seleksi semua elemen dengan class pertanyaan
		let semuaPertanyaan = document.querySelectorAll(".pertanyaan");
	
		// Seleksi elemen dengan id durasi kemudian masukkan ke dalam variabel durasi
		const durasi = document.querySelector("#durasi");
	
		// Menghitung panjang array semuaPertanyaan kemudian masukkan ke dalam variabel jumlahPertanyaan
		let jumlahPertanyaan = semuaPertanyaan.length;
	
	
		// MENDEKLARASIKAN VARIABEL persenPengerjaan
		let persenPengerjaan = 0;

		// FETCH POST jawaban untuk question box dengan id tersebut
		fetch('http://[::1]/py-app-prod/materi/py_anw', {
			method: 'POST',
			credentials: 'same-origin',
			mode: 'no-cors',
			headers: {
				'Accept': 'application/json',
				'Content-Type': 'application/json'
			},
		})
			.then(response => response.json())
			.then(response => {
				
				// PADA TIAP-TIAP ELEMENT CLASS PERTANYAAN
				semuaPertanyaan.forEach(pertanyaan => {
			
					// Setiap user melakukan input jawaban
					pertanyaan.addEventListener("keyup", function (event) {
		
						event.preventDefault();
		
						if (event.keyCode === 13) {
		
							// Nilai awal dari pertanyaanBelumDiisi sama dengan jumlahPertanyaan
							let pertanyaanBelumDiisi = jumlahPertanyaan;
		
							// Membuat array kosong arrayIdPertanyaan untuk menyimpan kumpulan id elemen dengan class pertanyaan
							let arrayIdPertanyaan = [];
						
							// Membuat array kosong arrayJawabanUser untuk menyimpan kumpulan jawaban user pada input dengan class pertanyaan
							let arrayJawabanUser = [];
		
							// Membuat array kosong arrayKunciJawaban untuk menyimpan kumpulan kunci jawaban dari FETCH POST
							let arrayKunciJawaban = [];
		
							let nomorIndex = 0;
									
							// Pada tiap elemen class pertanyaan
							semuaPertanyaan.forEach(pertanyaan => {
							
								// Masukkan id ke dalam arrayIdPertanyaan
								arrayIdPertanyaan.push(pertanyaan.id);
							
								// Masukkan jawaban yang diinput user ke dalam arrayJawabanUser
								arrayJawabanUser.push(pertanyaan.value);
		
							});
				
			
							arrayIdPertanyaan.forEach(kolom => {
			
								arrayKunciJawaban[nomorIndex] = response[kolom];
										
								nomorIndex++
							});
									
							let postData = new FormData();
			
							for(let i = 0; i < arrayKunciJawaban.length; i++) {
			
								// JIKA JAWABAN YANG DIINPUT OLEH USER SAMA DENGAN jawabanBenar
								if (arrayJawabanUser[i] == arrayKunciJawaban[i]) {
				
									// BGCOLORNYA BERUBAH MENJADI HIJAU
									semuaPertanyaan[i].style.backgroundColor = "#a3e635";
				
									// TAMBAHKAN ATTRIBUTE readonly AGAR TIDAK BISA DIEDIT LAGI.
									semuaPertanyaan[i].setAttribute("readonly", "");
				
									// JUMLAH PERTANYAAN BERKURANG 1
									pertanyaanBelumDiisi -= 1;
					
									postData.append(semuaPertanyaan[i].id, semuaPertanyaan[i].value);
			
			
								} else if(arrayJawabanUser[i] == '') {
				
									// APABILA JAWABAN KOSONG TETAP
									semuaPertanyaan[i].style.backgroundColor = "";
			
									pertanyaanBelumDiisi = pertanyaanBelumDiisi;
			
								} else {
									// APABILA JAWABAN SALAH BGCOLOR BERUBAH JADI MERAH
									semuaPertanyaan[i].style.backgroundColor = "#f87171";
			
									pertanyaanBelumDiisi = pertanyaanBelumDiisi;
			
									postData.append(semuaPertanyaan[i].id, semuaPertanyaan[i].value);
								}
							}
			
							let jawabanBenar = jumlahPertanyaan - pertanyaanBelumDiisi;
			
							// Mengirimkan data pertanyaan yang terisi dan jumlah pertanyaan
							postData.append('jawabanBenar', jawabanBenar);
			

			
							// persenPengerjaan BERTAMBAH
							persenPengerjaan = Math.round((1 - pertanyaanBelumDiisi / jumlahPertanyaan) * 100);
				
							// WIDTH PROGRESS BAR AKAN BERTAMBAH
							durasi.style.width = persenPengerjaan + "%";
			
							// WARNA PROGRESS BAR MENJADI HIJAU
							durasi.style.backgroundColor = "#a3e635";
			
							// TULISAN PADA PROGRESS BAR AKAN MENJADI BERTAMBAH
							durasi.innerHTML = persenPengerjaan + "%";
			
							fetch('http://[::1]/py-app-prod/materi/jawabanUser', {
								method: 'POST',
								mode: 'no-cors',
								headers: {
								"Content-Type": "application/json"
								},
								body: postData
			
								}).then((res) => {
									res;
								}).catch(console.log);
								
						}
					});
				});
				
			})
			.catch((error) => console.log(error));
		
		// KEMBALIKAN
		
	}

	
}
userMenjawab();

function kosong() {

}



// MEMUNCULKAN NAVIGASI MENU SAAT KLIK IKON HAMBURGER
function klikKey(checkboxKey) {

	// JIKA CHECKBOX TERCENTANG
	if (checkboxKey.checked) {

		// AMBIL ELEMENT DENGAN ID keyboard, LALU DISPLAY GANTI FLEX
		document.getElementById("keyboard").style.display = "grid";

		// JIKA CHECKBOX TIDAK TERCENTANG
	} else {

		// AMBIL ELEMENT DENGAN ID keyboard, LALU DISPLAYNYA DIKOSONGI
		document.getElementById("keyboard").style.display = "";
	}
}



// EVENT BINDING UNTUK MEMASUKKAN HASIL YANG DIKLIK KE DALAM INPUT
function greekKeyboard() {

	let question = document.getElementById("question");

	let keyboard = document.getElementById("keyboard");

	let pertanyaanIni = '';

	question.addEventListener('click', function(event) {

		if(event.target.classList.contains('pertanyaan')) {
			pertanyaanIni = event.target;
		}

		event.preventDefault();
		
	});

	keyboard.addEventListener('click', function(event) {

		pertanyaanIni.value = event.target.value;

		pertanyaanIni.focus();

		pertanyaanIni.style.backgroundColor = "#fef08a";

		event.preventDefault();
	})
	

}




// MEMUNCULKAN NAVIGASI CPL SAAT KLIK TOMBOL SHOW
function klikCpl(checkboxKey) {

	// JIKA CHECKBOX TERCENTANG
	if (checkboxKey.checked) {

		// AMBIL ELEMENT DENGAN ID cpl, LALU DISPLAY GANTI block
		document.getElementById("cpl").style.display = "block";

		// GANTI TULISAN show menjadi hide
		document.getElementById("label-cpl").innerHTML = "hide";

		// JIKA CHECKBOX TIDAK TERCENTANG
	} else {

		// AMBIL ELEMENT DENGAN ID keyboard, LALU DISPLAYNYA DIKOSONGI
		document.getElementById("cpl").style.display = "";

		// GANTI TULISAN hide menjadi show
		document.getElementById("label-cpl").innerHTML = "show";
	}
}




// MEMUNCULKAN NAVIGASI CPMK SAAT KLIK TOMBOL SHOW
function klikCpmk(checkboxKey) {

	// JIKA CHECKBOX TERCENTANG
	if (checkboxKey.checked) {

		// AMBIL ELEMENT DENGAN ID cpmk, LALU DISPLAY GANTI BLOCK
		document.getElementById("cpmk").style.display = "block";

		// GANTI TULISAN show menjadi hide
		document.getElementById("label-cpmk").innerHTML = "hide";

		// JIKA CHECKBOX TIDAK TERCENTANG
	} else {

		// AMBIL ELEMENT DENGAN ID keyboard, LALU DISPLAYNYA DIKOSONGI
		document.getElementById("cpmk").style.display = "";

		// GANTI TULISAN hide menjadi show
		document.getElementById("label-cpmk").innerHTML = "show";
	}
}




// MEMUNCULKAN COURSE DESCRIPTION SAAT KLIK TOMBOL SHOW
function klikCd(checkboxKey) {

	// JIKA CHECKBOX TERCENTANG
	if (checkboxKey.checked) {

		// AMBIL ELEMENT DENGAN ID cd, LALU DISPLAY GANTI BLOCK
		document.getElementById("cd").style.display = "block";

		// GANTI TULISAN show menjadi hide
		document.getElementById("label-cd").innerHTML = "hide";

		// JIKA CHECKBOX TIDAK TERCENTANG
	} else {

		// AMBIL ELEMENT DENGAN ID keyboard, LALU DISPLAYNYA DIKOSONGI
		document.getElementById("cd").style.display = "";

		// GANTI TULISAN hide menjadi show
		document.getElementById("label-cd").innerHTML = "show";
	}
}




// MEMUNCULKAN COURSE DESCRIPTION SAAT KLIK TOMBOL SHOW
function klikSm(checkboxKey) {

	// JIKA CHECKBOX TERCENTANG
	if (checkboxKey.checked) {

		// AMBIL ELEMENT DENGAN ID sm, LALU DISPLAY GANTI BLOCK
		document.getElementById("sm").style.display = "block";

		// GANTI TULISAN show menjadi hide
		document.getElementById("label-sm").innerHTML = "hide";

		// JIKA CHECKBOX TIDAK TERCENTANG
	} else {

		// AMBIL ELEMENT DENGAN ID keyboard, LALU DISPLAYNYA DIKOSONGI
		document.getElementById("sm").style.display = "";

		// GANTI TULISAN hide menjadi show
		document.getElementById("label-sm").innerHTML = "show";
	}
}