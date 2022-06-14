// FUNCTION UNTUK MENAMPILKAN MENAMPILKAN JAWABAN MENJADI READ-ONLY DAN MENGHITUNG PERSENTASE PENGERJAAN CARD
function sudahDiJawab() {

	// AMBIL SEMUA ELEMEN DENGAN CLASS pertanyaan
	const semuaPertanyaan = document.querySelectorAll(".pertanyaan");

	// MEMASUKKAN pertanyaan.length ke dalam variabel jumlahPertanyaan
	let jumlahPertanyaan = semuaPertanyaan.length;

	// NILAI AWAL DARI pertanyaanBelumDiisi sama dengan jumlahPertanyaan
	let pertanyaanBelumDiisi = jumlahPertanyaan;

	// PADA MASING-MASING ELEMEN
	semuaPertanyaan.forEach(pertanyaan => {

		// JIKA SUDAH PERNAH DIJAWAB MAKA
		if(pertanyaan.value !== '') {

			// BGCOLORNYA BERUBAH MENJADI HIJAU
			pertanyaan.style.backgroundColor = "#a3e635";

			// TAMBAHKAN ATTRIBUTE readonly AGAR TIDAK BISA DIEDIT LAGI.
			pertanyaan.setAttribute("readonly", "");

			// JUMLAH PERTANYAAN BERKURANG 1
			pertanyaanBelumDiisi -= 1;

			// persenPengerjaan BERTAMBAH
			persenPengerjaan =
				Math.round((1 - pertanyaanBelumDiisi / jumlahPertanyaan) * 100);

			// WIDTH PROGRESS BAR AKAN BERTAMBAH
			durasi.style.width = persenPengerjaan + "%";

			// WARNA PROGRESS BAR MENJADI HIJAU
			durasi.style.backgroundColor = "#a3e635";

			// TULISAN PADA PROGRESS BAR AKAN MENJADI BERTAMBAH
			durasi.innerHTML = persenPengerjaan + "%";
		}
	});
}

// PEMANGGILAN FUNCTION
sudahDiJawab();




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

	// Pilih elemen dengan id isi-card, masukkan ke variabel equationBox
	let equationBox = document.getElementById('isi-card');

	// Tambahkan event click pada elemen tersebut
	equationBox.addEventListener('click', function(event) {

		// Masukkan elemen apa saja yang diklik oleh user yang berada di dalam elemen tersebut ke dalam variabel pertanyaanIni
		let pertanyaanIni = event.target;

		// Seleksi elemen yang memiliki id materi-id, kemudiam masukkan ke dalam variabel materiId
		let materiId = document.getElementById('materi-id');

		// Seleksi elemen yang memiliki id sub-materi-id, kemudiam masukkan ke dalam variabel subMateriId
		let subMateriId = document.getElementById('sub-materi-id');

		// Seleksi elemen yang memiliki id card-number, kemudiam masukkan ke dalam variabel cardNumber
		let cardNumber = document.getElementById('card-number');
		
		// Jika variabel pertanyaanIni mempunyai class pertanyaan
		if(pertanyaanIni.classList.contains('pertanyaan')) {
			
			// Menginisiasi object baru FormData
			let postData = new FormData();

			// Mempersiapkan data-data yang akan dikirim menggunakan FETCH POST
			postData.append('materi_id', materiId.value);
			postData.append('sub_materi_id', subMateriId.value);
			postData.append('card_number', cardNumber.value);
			
			// FETCH POST UNTUK MENYIMPAN DATA KE TABEL user_learning_log untuk menyimpan data pembelajaran terakhir user
			fetch('https://www.physicsyourself.com/materi/dataPembelajaranTerakhir', {
				method: 'POST',
				mode: 'no-cors',
				headers: {
					"Content-Type": "application/json"
				},
				body: postData
			}).then((res) => {
				console.log(res);
			}).catch(console.log);
		}
	});
}




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




// FUNCTION UNTUK MELIHAT JAWABAN BENAR ATAU SALAH
function tekanEnter() {

	// Seleksi semua elemen dengan class pertanyaan
	const semuaPertanyaan = document.querySelectorAll(".pertanyaan");

	// Seleksi elemen dengan id durasi kemudian masukkan ke dalam variabel durasi
	const durasi = document.querySelector("#durasi");

	// Menghitung panjang array semuaPertanyaan kemudian masukkan ke dalam variabel jumlahPertanyaan
	let jumlahPertanyaan = semuaPertanyaan.length;

	// Nilai awal dari pertanyaanBelumDiisi sama dengan jumlahPertanyaan
	let pertanyaanBelumDiisi = jumlahPertanyaan;
	
	// untuk masing-masing tiap elemen pada array semuaPertanyaan
	semuaPertanyaan.forEach(pertanyaan => {

		// Jika kotak pertanyaan ada isinya
		if(pertanyaan.value !== '') {

			// Maka pertanyaanBelumDiisi jadi berkurang 1
			pertanyaanBelumDiisi -= 1;
		}
	});

	// MENDEKLARASIKAN VARIABEL persenPengerjaan
	let persenPengerjaan = 0;

	// PADA TIAP-TIAP ELEMENT CLASS PERTANYAAN
	semuaPertanyaan.forEach(pertanyaan => {

		// Setiap user melakukan input jawaban
		pertanyaan.addEventListener("keyup", function (event) {

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

			// Ketika user memasukkan jawaban pada input dengan class pertanyaan, ambil id-nya
			let answ = pertanyaan.id;
			
			// Ambil value yang dimasukkan oleh user
			let answValue = pertanyaan.value;

			// FETCH POST jawaban untuk question box dengan id tersebut
			fetch('https://www.physicsyourself.com/materi/answers', {
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
					
					// JIKA USER MENEKAN TOMBOL ENTER
					if (event.keyCode === 13) {

					// JIKA JAWABAN YANG DIINPUT OLEH USER SAMA DENGAN jawabanBenar
						if (answValue == response[answ]) {
                                         
                                                        // Mengisi value dengan jawaban
                                                        pertanyaan.value = answValue;

							// BGCOLORNYA BERUBAH MENJADI HIJAU
							pertanyaan.style.backgroundColor = "#a3e635";

							// TAMBAHKAN ATTRIBUTE readonly AGAR TIDAK BISA DIEDIT LAGI.
							pertanyaan.setAttribute("readonly", "");

							// JUMLAH PERTANYAAN BERKURANG 1
							pertanyaanBelumDiisi -= 1;

							// persenPengerjaan BERTAMBAH
							persenPengerjaan =
								Math.round((1 - pertanyaanBelumDiisi / jumlahPertanyaan) * 100);

							// WIDTH PROGRESS BAR AKAN BERTAMBAH
							durasi.style.width = persenPengerjaan + "%";

							// WARNA PROGRESS BAR MENJADI HIJAU
							durasi.style.backgroundColor = "#a3e635";

							// TULISAN PADA PROGRESS BAR AKAN MENJADI BERTAMBAH
							durasi.innerHTML = persenPengerjaan + "%";

							// MENGIRIMKAN JAWABAN BENAR KE DATABASE
							let postData = new FormData();
							semuaPertanyaan.forEach(pertanyaan => {
								postData.append(pertanyaan.id, pertanyaan.value);
							});
							
							fetch('https://www.physicsyourself.com/materi/jawabanUser', {
								method: 'POST',
								mode: 'no-cors',
								headers: {
									"Content-Type": "application/json"
								},
								body: postData
							}).then((res) => {
								console.log(res);
							}).catch(console.log);
						} else {

							// APABILA JAWABAN SALAH BGCOLOR BERUBAH JADI MERAH
							pertanyaan.style.backgroundColor = "#f87171";
						}
					}
				})
				.catch((error) => console.log(error));

                event.preventDefault();
		});
	});
	// KEMBALIKAN
	
}

// JALANKAM FUNCTION
tekanEnter();



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

	if(document.getElementById("reset") !== null) {
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
				
				fetch('https://www.physicsyourself.com/materi/hapusJawabanCard', {
					method: 'POST',
					mode: 'no-cors',
					headers: {
						"Content-Type": "application/json"
					},
					body: postData
				}).then((res) => {
					console.log(res);
				}).catch(console.log);

				location.reload();
			}
			event.preventDefault();
		});
	}
}

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
			
			fetch('https://www.physicsyourself.com/materi/klikTunjukkanJawabanTersimpan', {
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

					fetch('https://www.physicsyourself.com/materi/userLihatJawaban', {
						method: 'POST',
						mode: 'no-cors',
						headers: {
							"Content-Type": "application/json"
						},
						body: postData
					}).then((res) => {
						console.log(res);
					}).catch(console.log);

					// FETCH POST UNTUK MENGAMBI JAWABAN PADA MYSQL
					let kunciJawaban = document.getElementById("kunci-jawaban");
					let kunciPerBaris = '';


					fetch('https://www.physicsyourself.com/materi/tunjukkanKunciJawaban', {
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
										<p>
											${res['isi']}
										</p>
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
