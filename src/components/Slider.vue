<template>
    <div class=" tw-mt-20 tw-text-teal-700">
        <div class=" tw-flex tw-flex-col tw-px-5 lg:tw-px-16">
            <div class="tw-font-black text-lg lg:tw-text-2xl">
                >> Berapa Keuntungan yang saya dapatkan ?
            </div>
            <p class="tw-text-xs tw-ml-5 lg:tw-ml-8 tw-mt-2">Dapatkan <span class="tw-font-black">jutaan rupiah</span> setiap bulannya dengan membantu masyarakat dalam memenuhi kebutuhannya</p>
        </div>

        <div class=" tw-px-5 lg:tw-px-16 tw-py-12 ">
            <div class="tw-bg-white tw-px-5 lg:tw-px-20 tw-py-14 tw-rounded-xl tw-space-y-3 lg:tw-space-y-0">
                <div class="tw-flex tw-flex-col lg:tw-flex-row">
                    <div class="tw-w-full lg:tw-w-2/5">
                        <p class="tw-text-sm lg:tw-text-lg">Jumlah Customer yang saya bantu ?</p>
                    </div>
                    <div class="tw-flex tw-flex-col tw-flex-1">
                        <q-slider :min="0" :max="100" label v-model="jmlCustomer" track-size="12px" thumb-size="25px" track-color="secondary" selection-color="transparent" />
                        <div class="tw-flex tw-justify-between">
                            <div>
                                <p class="tw-text-sm lg:tw-text-lg">1</p>
                            </div>
                            <div>
                                <p class="tw-text-sm lg:tw-text-lg">100</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tw-flex tw-flex-col lg:tw-flex-row tw-mt-2">
                    <div class=" tw-w-full lg:tw-w-2/5">
                        <p class="tw-text-sm lg:tw-text-lg">Jumlah Tim yang saya punya ?</p>
                    </div>
                    <div class="tw-flex tw-flex-col tw-flex-1">
                        <q-slider :min="0" :max="10" label v-model="jmlTim" track-size="12px" thumb-size="25px" track-color="secondary" selection-color="transparent" />
                        <div class="tw-flex tw-justify-between">
                            <div>
                                <p class="tw-text-sm lg:tw-text-lg">0</p>
                            </div>
                            <div>
                                <p class="tw-text-sm lg:tw-text-lg">10</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tw-flex tw-flex-col lg:tw-flex-row tw-mt-2">
                    <div class="tw-w-full lg:tw-w-2/5">
                        <p class="tw-text-sm lg:tw-text-lg">Total pinjaman seluruh Customer saya ?</p>
                    </div>
                    <div class="tw-flex tw-flex-col tw-flex-1">
                        <q-slider :min="0" :max="1000" label v-model="totalPinjaman" track-size="12px" thumb-size="25px" track-color="secondary" selection-color="transparent" />
                        <div class="tw-flex tw-justify-between">
                            <div>
                                <p class="tw-text-sm lg:tw-text-lg">1 Juta</p>
                            </div>
                            <div>
                                <p class="tw-text-sm lg:tw-text-lg">1000 Juta</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tw-flex tw-flex-col lg:tw-flex-row tw-mt-2">
                    <div class="tw-w-full lg:tw-w-2/5">
                        <p class="tw-text-sm lg:tw-text-lg">Fee (%) yang saya peroleh ?</p>
                    </div>
                    <div class="tw-flex tw-flex-col tw-flex-1">
                        <q-slider :min="0" :max="10" label v-model="fee" track-size="12px" thumb-size="25px" track-color="secondary" selection-color="transparent" />
                        <div class="tw-flex tw-justify-between">
                            <div>
                                <p class="tw-text-sm lg:tw-text-lg">1 %</p>
                            </div>
                            <div>
                                <p class="tw-text-sm lg:tw-text-lg">10 %</p>
                            </div>
                        </div>
                    </div>
                </div>

                <a href="">
                    <div class="tw-flex tw-justify-end tw-pt-10">
                        <div class="tw-flex tw-justify-center tw-w-28 tw-bg-yellow-300 tw-px-3 tw-py-2 tw-rounded-full tw-shadow-xl">
                            <p class="tw-font-black tw-text-sm">Hitung</p>
                        </div>
                    </div>
                </a>
                
                <div class="tw-flex tw-justify-between tw-mt-2">
                    <div class=" tw-w-3/5 lg:tw-w-2/5 tw-bg-yellow-300 tw-px-3 lg:tw-px-11 tw-py-3 lg:tw-py-6 tw-rounded-xl tw-shadow-xl ">
                        <div>
                            <p class="tw-text-sm lg:tw-text-lg tw-font-black">Estimasi Benefit Bulanan</p>
                            <p class="tw-text-xl lg:tw-text-3xl tw-font-black tw-my-1">Rp 9.999.999</p>
                            <p class="tw-mt-2" style="font-size: 8px;">Angka dapat berubah sesuai dengan Fee dari Lembaga Keuangan</p>
                        </div>
                    </div>

                    <div class="tw-flex tw-items-end">
                        <div>
                            <p style="font-size: 9px;" class="tw-text-right tw-text-gray-400">Supported by :</p>
                            <p class="tw-font-black">Smart<span class="tw-text-xl tw-font-black"><q-icon name="eva-paper-plane-outline" /></span>Income</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import { ref } from 'vue'

const slider = [
    {
        title: 'Jumlah Customer yang saya bantu ?',
        min: 1,
        max: 100
    },
    {
        title: 'Jumlah Tim yang saya punya ?',
        min: 0,
        max: 10
    },
    {
        title: 'Total pinjaman seluruh Customer saya ?',
        min: 1,
        max: 1000
    },
    {
        title: 'Fee (%) yang saya peroleh ?',
        min: 1,
        max: 10
    },
];

export default {
    name: 'slider',
    setup() {
        return {
            slider,
            jmlCustomer: ref(10),
            jmlTim: ref(2),
            totalPinjaman: ref(4),
            fee: ref(6)
        }
    },
}
</script>