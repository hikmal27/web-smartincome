<template>
    <div class=" tw-text-teal-700">
        <div class=" tw-flex tw-flex-col tw-px-5 sm:tw-px-10 lg:tw-px-16 tw-text-left">
            <div class="tw-font-black tw-text-lg lg:tw-text-2xl">>> Bagaimana cara saya bergabung ?</div>
            <p class="tw-text-xs tw-ml-8 tw-mt-2">Sangat mudah untuk bergabung menjadi partner smartincome.co.id</p>
        </div>

        <div class="tw-px-5  lg:tw-px-20 tw-scroll-py-12">
            <div class="tw-grid md:tw-grid-cols-2 lg:tw-grid-cols-4 tw-py-10 tw-gap-5 lg:tw-gap-5">
                <div v-for="daftar in listDaftar" :key="daftar.no" class="tw-bg-yellow-300 tw-px-1 tw-py-5 tw-rounded-xl tw-shadow-lg ">
                    <div class=" tw-h-20 tw-flex ">
                        <div class="tw-flex tw-items-center">
                            <div class="tw-flex tw-items-center tw-h-3/4 tw-border-r-2 tw-border-teal-700 tw-px-3">
                                <div>
                                    <p class="tw-text-3xl tw-font-black tw-text-teal-700 ">{{ daftar.no }}</p>
                                </div>
                            </div>
                        </div>
                        <div class="tw-mt-1 tw-px-3">
                            <p class="tw-text-sm tw-font-black ">{{ daftar.title }}</p>
                            <p style="font-size: 10px;" class="tw-mt-1 tw-leading-3">{{ daftar.body }}</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Daftar sekarang -->
            <div>
                <div class="tw-flex tw-justify-center tw-mt-0 lg:tw-mt-5">
                    <div class=" tw-w-4/5 lg:tw-w-3/5 tw-flex tw-items-center tw-justify-around lg:tw-flex-row tw-flex-col tw-space-y-5 lg:tw-space-y-0">
                        <div class=" tw-space-y-5">
                            <a href="#" class="tw-flex tw-bg-yellow-300 tw-rounded-full tw-font-black tw-text-teal-700 tw-px-3 tw-py-1 tw-transition tw-duration-300 tw-ease-in-out hover:tw-bg-yellow-400 tw-shadow-md">
                                <div>
                                    <img src="icon.svg" alt="icon" class="tw-w-7">
                                </div>
                                <div class="tw-mt-1 tw-ml-1">
                                    <p>Daftar Sekarang</p>
                                </div>
                            </a>
                        </div>
                        <div class="tw-w-60 lg:tw-w-40">
                            <p class="tw-text-sm tw-text-center lg:tw-text-left">atau kamu adalah komunitas dan entitas bisnis ?</p>
                        </div>
                        <div>
                            <a href="#" class="tw-flex tw-bg-yellow-300 tw-rounded-full tw-font-extrabold tw-text-teal-700 tw-px-3 lg:tw-px-3 tw-py-1 tw-transition tw-duration-300 tw-ease-in-out hover:tw-bg-yellow-400 tw-shadow-md">
                                <div>
                                    <img src="icon.svg" alt="icon" class="tw-w-7">
                                </div>
                                <div class="tw-mt-1 tw-ml-1">
                                    Atur Jadwal Meeting
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>

const listDaftar = [
    {
        no: '1',
        title: 'Daftar',
        body: 'Daftarkan diri anda melalui web smartincome dan lakukan verifikasi melalui kode OTP'
    },
    {
        no: '2',
        title: 'Aktivasi',
        body: 'Anda akan di hubungi oleh tim kami. Setelah semua data valid, kami mengirimkan username dan password'
    },
    {
        no: '3',
        title: 'Edukasi',
        body: 'Mulai bergabung dengan Kelas Smartincome secara gratis.  '
    },
    {
        no: '4',
        title: 'Transaksi',
        body: 'Dapatkan Fee setelah transaksi pertama kamu berhasil, kami selalu mendukung agar kamu terus produktif'
    },
]

export default {
    name: 'cara-bergabung',
    setup() {
        return {
            listDaftar
        }
    },
}
</script>