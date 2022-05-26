// Apabila pada database user sudah pernah menjawabnya, maka buat attribute read-only dan latar belakang warna ijo
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
			console.log(persenPengerjaan);

			// WIDTH PROGRESS BAR AKAN BERTAMBAH
			durasi.style.width = persenPengerjaan + "%";

			// WARNA PROGRESS BAR MENJADI HIJAU
			durasi.style.backgroundColor = "#a3e635";

			// TULISAN PADA PROGRESS BAR AKAN MENJADI BERTAMBAH
			durasi.innerHTML = persenPengerjaan + "%";
		}
	});
}
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
	const whiteBox = document.querySelectorAll(".white-box");
	
	const equationBox = document.querySelectorAll(".equation-box");


	// UNTUK MASING-MASING ELEMENT PADA HTMLCollection DENGAN CLASS whiteBox
	for (let i = 0; i < whiteBox.length; i++) {
		// DAN UNTUK MASING-MASING ELEMENT PADA HTMLCollection DENGAN CLASS equationBox
		
		if (
			equationBox[i].clientHeight > whiteBox[i].clientHeight || whiteBox[i].scrollWidth > whiteBox[i].clientWidth
		) {

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



// MENAMBAHKAN EVENT RESIZE KE WINDOW
window.addEventListener("load", function () {
	// APABILA WINDOW DIRESIZE, JALANKAN FUNCTION
	hasScrollbar();
});



// MENAMBAHKAN EVENT RESIZE KE WINDOW
window.addEventListener("resize", function () {
	// APABILA WINDOW DIRESIZE, JALANKAN FUNCTION
	hasScrollbar();
});



function kirimDataCard() {
	let equationBox = document.querySelector('.isi-card');
	equationBox.addEventListener('click', function(event) {
		let pertanyaanIni = event.target;
		let materiId = document.getElementById('materi-id');
		let subMateriId = document.getElementById('sub-materi-id');
		let cardNumber = document.getElementById('card-number');
		
		if(pertanyaanIni.classList.contains('pertanyaan')) {
			
			// MENGIRIMKAN JAWABAN BENAR KE DATABASE
			let postData = new FormData();
			postData.append('materi_id', materiId.value);
			postData.append('sub_materi_id', subMateriId.value);
			postData.append('card_number', cardNumber.value);
			
			
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
	// AMBIL HTMLCOLLECTION DENGAN CLASS PERTANYAAN
	const semuaPertanyaan = document.querySelectorAll(".pertanyaan");

	// MENGAMBIL ELEMEN DENGAN id durasi
	const durasi = document.querySelector("#durasi");

	// MEMASUKKAN pertanyaan.length ke dalam variabel jumlahPertanyaan
	let jumlahPertanyaan = semuaPertanyaan.length;

	// NILAI AWAL DARI pertanyaanBelumDiisi sama dengan jumlahPertanyaan
	let pertanyaanBelumDiisi = jumlahPertanyaan;
	
	semuaPertanyaan.forEach(pertanyaan => {

		// JIKA SUDAH PERNAH DIJAWAB MAKA
		if(pertanyaan.value !== '') {
			pertanyaanBelumDiisi -= 1;
		}
	});

	console.log(pertanyaanBelumDiisi);

	// MENDEKLARASIKAN VARIABEL persenPengerjaan
	let persenPengerjaan = 0;
	console.log(persenPengerjaan);

	// PADA TIAP-TIAP ELEMENT CLASS PERTANYAAN
	semuaPertanyaan.forEach(pertanyaan => {

		// SETIAP USER MEMASUKKAN JAWABAN
		pertanyaan.addEventListener("keyup", function (event) {

			// ARRAY-ARRAY YANG AKAN DIKIRMKAN MELALUI FORM DATA
			let arrayIdPertanyaan = [];
			let arrayJawabanUser = [];
			semuaPertanyaan.forEach(pertanyaan => {
				arrayIdPertanyaan.push(pertanyaan.id);
				arrayJawabanUser.push(pertanyaan.value);
			});
			console.log(arrayIdPertanyaan); 
			console.log(arrayJawabanUser);


			answ = pertanyaan.id;
			console.log(answ);
			answValue = pertanyaan.value;
			console.log(answValue);

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
					console.log(response[answ]);
					// JIKA USER MENEKAN TOMBOL ENTER
					if (event.keyCode === 13) {
					// JIKA JAWABAN YANG DIINPUT OLEH USER SAMA DENGAN jawabanBenar
						if (answValue == response[answ]) {

							// BGCOLORNYA BERUBAH MENJADI HIJAU
							pertanyaan.style.backgroundColor = "#a3e635";

							// TAMBAHKAN ATTRIBUTE readonly AGAR TIDAK BISA DIEDIT LAGI.
							pertanyaan.setAttribute("readonly", "");

							// JUMLAH PERTANYAAN BERKURANG 1
							pertanyaanBelumDiisi -= 1;

							// persenPengerjaan BERTAMBAH
							persenPengerjaan =
								Math.round((1 - pertanyaanBelumDiisi / jumlahPertanyaan) * 100);
							console.log(persenPengerjaan);

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
		});
	});
	// KEMBALIKAN
	return;
}

// JALANKAM FUNCTION
tekanEnter();



function logout() {
	let logoutButton = document.querySelectorAll(".logout");
	logoutButton.forEach((lb) => {
		lb.addEventListener("click", function (event) {
			logoutConfirm = confirm("Apakah Anda ingin logout?");
			if (logoutConfirm) {
				return lb;
			}
			event.preventDefault();
		});
	});
}
logout();



function klikGantiAction() {
	let selectCard = document.getElementById("card");
	let selectCardValue = selectCard.value;

	let formCard = document.getElementById("form-card");
	formCard.setAttribute("action", "card/" + selectCardValue);
}



function klikGantiActionCardInternal() {
	let selectCardInternal = document.getElementById("card-internal");
	let selectCardInternalValue = selectCardInternal.value;

	let formCard = document.getElementById("form-card-internal");
	formCard.setAttribute("action", selectCardInternalValue);
}



function klikGantiActionBack() {
	let cardNumberJudul = document.getElementById("card-number-judul");
	let cardNumberJudulInnerHtml = parseInt(cardNumberJudul.innerHTML);

	let formCard = document.getElementById("form-card-internal");
	formCard.setAttribute("action", cardNumberJudulInnerHtml - 1);
}



function sembunyikanTombolBack() {
	let tombolBack = document.getElementById("tombol-back");

	if (document.getElementById("card-number-judul") != null) {
		let cardNumberJudul = document.getElementById("card-number-judul");
		let cardNumberJudulInnerHtml = parseInt(cardNumberJudul.innerHTML);

		if (cardNumberJudulInnerHtml === 1) {
			tombolBack.style.display = "none";
		} else {
			tombolBack.style.display = "";
		}
	}
}
sembunyikanTombolBack();



function klikGantiActionNext() {
	let cardNumberJudul = document.getElementById("card-number-judul");
	let cardNumberJudulInnerHtml = parseInt(cardNumberJudul.innerHTML);
	console.log(cardNumberJudulInnerHtml);
	let formCard = document.getElementById("form-card-internal");
	formCard.setAttribute("action", cardNumberJudulInnerHtml + 1);
}



function klikGantiActionLanjutkanBelajar() {
	let selectCard = document.getElementById("card-lanjutkan-belajar");
	let selectCardValue = selectCard.value;

	let formCard = document.getElementById("form-card-lanjutkan-belajar");
	formCard.setAttribute("action", "materi/sub_materi/card/" + selectCardValue);
}



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
sembunyikanLanjutkanBelajarBtn();



// Tombol Reset untuk mengilangkan isi dari form
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
					console.log(klikTersimpan);

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


					fetch('http://localhost/py-app/materi/tunjukkanKunciJawaban', {
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
							console.log(response);

							response.forEach(response => {
								kunciJawaban.innerHTML += response['isi'];
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
						
						});

				
			});

			event.preventDefault();
			
		});
	}	
}
showAnswers();



