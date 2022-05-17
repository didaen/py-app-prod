<!-- KEYBOARD -->
<div class="flex flex-row mt-1 mb-1 items-center border border-white rounded w-32">
    <input type="checkbox" class="form-checkbox toggle-keyboard w-5 h-5 absolute z-10 opacity-0 cursor-pointer">
    <div class="flex w-6 flex-row bg-gray-200" id="logo-keyboard">
        <img src="<?= base_url(); ?>assets/img/keyboard.png" alt="Keyboard Greek Alphabeth" class="w-4 mx-auto">
    </div>
    <div class="flex flex-row text-xs font-bold text-blue-1300 mx-auto">
        <div>Greek Alphabeth</div>
    </div>

</div>
<div class="text-base bg-gray-100 text-center rounded p-1 border-2 border-white hidden" id="keyboard">
    <div class="grid grid-cols-13 lg:grid-cols-25 italic items-center katex-math-italic">
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="2">2</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="β">β</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="γ">γ</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="δ">δ</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="ε">ε</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="ζ">ζ</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="η">η</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="θ">θ</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="ι">ι</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="κ">κ</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="λ">λ</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="μ">μ</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="ν">ν</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="ξ">ξ</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="o">o</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="π">π</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="ρ">ρ</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="ς">ς</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="σ">σ</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="τ">τ</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="υ">υ</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="ϕ">ϕ</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="χ">χ</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="ψ">ψ</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="ω">ω</div>
    </div>
    <div class="grid grid-cols-13 lg:grid-cols-25 items-center times-new-roman">
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="A">A</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Β">Β</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Γ">Γ</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Δ">Δ</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Ε">Ε</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Ζ">Ζ</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Η">Η</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Θ">Θ</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Ι">Ι</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Κ">Κ</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Λ">Λ</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Μ">Μ</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Ν">Ν</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Ξ">Ξ</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Ο">Ο</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Π">Π</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Ρ">Ρ</div>
        <div></div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Σ">Σ</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Τ">Τ</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white text-sm" value="$\Upsilon$">$\Upsilon$</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Φ">Φ</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Χ">Χ</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Ψ">Ψ</div>
        <div class="greek-alphabet bg-gray-200 border border-white rounded hover:bg-gray-300 hover:text-white" value="Ω">Ω</div>
    </div>
</div>
<!-- AKHIR KEYBOARD -->