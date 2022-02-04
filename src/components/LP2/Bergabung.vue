<template>
    <div class="tw-relative tw-flex tw-flex-col lg:tw-flex-row tw-px-5 lg:tw-px-28">
        <div class="tw-flex tw-items-center tw-mt-20 lg:tw-mt-0 lg:tw-w-2/5 tw-pr-1">
            <div style="z-index: 1;" class="">
                <div>
                    <p class="tw-font-black tw-text-3xl lg:tw-text-4xl">Kenapa Bergabung Bersama Kami</p>
                    <p class="tw-mt-4">smartincome.co.id bekerja sama dengan banyak lembaga keuangan yang akan memudahkan anda sebagai Partner Layanan Keuangan</p>
                </div>
            </div>
            
        </div>
        <div style="z-index: 1;" class="tw-flex-1">
            <div class="tw-grid lg:tw-grid-cols-2 lg:tw-gap-x-8 tw-px-5 tw-space-y-10 lg:tw-space-y-0">
                <!-- Kiri -->
                <div class="tw-mt-20 tw-space-y-10">
                    <div class="tw-bg-white tw-px-5 tw-py-8 tw-rounded-3xl">
                        <div class="tw-flex tw-justify-center">
                            <img src="img/icon-tanpa modal.svg" alt="Tanpa Modal dan Biaya Investasi">
                        </div>
                        <div class="tw-text-center">
                            <p class="tw-mt-5 tw-text-2xl tw-font-black">Tanpa Modal dan Biaya Investasi</p>
                            <p class="tw-mt-2">Smartincome tidak memungut biaya apapun, kami menerima keuntungan dari setiap transaksi yang berhasil.</p>
                        </div>
                    </div>
                    <div class="tw-bg-white tw-px-5 tw-py-8 tw-rounded-3xl">
                        <div class="tw-flex tw-justify-center">
                            <img src="img/icon-mudah&cepat.svg" alt="Mudah & Cepat">
                        </div>
                        <div class="tw-text-center">
                            <p class="tw-mt-5 tw-text-2xl tw-font-black">Mudah & Cepat</p>
                            <p class="tw-mt-2">Kami berkomitmen untuk menajaga semua proses berlangsung dengan mudah dan cepat, juga transparansi setiap transaksi yang berhasil.</p>
                        </div>
                    </div>
                </div>
                <!-- Kanan -->
                <div class=" tw-space-y-10">
                    <div class="tw-bg-white tw-px-5 tw-py-8 tw-rounded-3xl">
                        <div class="tw-flex tw-justify-center">
                            <img src="img/icon-nilai-tambah-bisnis.svg" alt="Nilai Tambah Bisnis Anda">
                        </div>
                        <div class="tw-text-center">
                            <p class="tw-mt-5 tw-text-2xl tw-font-black">Nilai Tambah Bisnis Anda</p>
                            <p class="tw-mt-2">Dengan menjadi partner layanan keuangan, anda dapat membantu siapapun yang membutuhkan dana</p>
                        </div>
                    </div>
                    <div class="tw-bg-white tw-px-5 tw-py-8 tw-rounded-3xl">
                        <div class="tw-flex tw-justify-center">
                            <img src="img/icon-keuntungan-lebih.svg" alt="Dapatkan Keuntungan Lebih">
                        </div>
                        <div class="tw-text-center">
                            <p class="tw-mt-5 tw-text-2xl tw-font-black">Dapatkan Keuntungan Lebih</p>
                            <p class="tw-mt-2">Kami menjadi wadah bagi anda yang ingin mencari keuntungan tambahan.</p>
                        </div>
                    </div>
                </div>
                <!-- <div class="tw-col-start-1 tw-rounded-3xl tw-bg-white tw-shadow-lg tw-px-5 tw-py-8">
                    <div class="tw-flex tw-justify-center">
                        <img src="img/icon-tanpa modal.svg" alt="Tanpa Modal">
                    </div>
                    <div class="tw-text-center">
                        <p class="tw-mt-5 tw-text-2xl tw-font-black">Tanpa Modal dan Biaya Investasi</p>
                        <p class="tw-mt-2 ">Smartincome tidak memungut biaya apapun, kami menerima keuntungan dari setiap transaksi yang berhasil.</p>
                    </div>
                </div>
                <div class="tw-col-start-2 tw-rounded-3xl tw-bg-white tw-shadow-lg tw-px-5 tw-py-8">
                    <div class="tw-flex tw-justify-center">
                        <img src="img/icon-nilai-tambah-bisnis.svg" alt="Nilai Tambah">
                    </div>
                    <div class="tw-text-center">
                        <p class="tw-mt-5 tw-text-2xl tw-font-black">Nilai Tambah Bisnis Anda</p>
                        <p class="tw-mt-2 ">Dengan menjadi partner layanan keuangan, anda dapat membantu siapapun yang membutuhkan dana</p>
                    </div>
                </div>
                <div class=" tw-rounded-3xl tw-bg-white tw-shadow-lg tw-px-5 tw-py-8">
                    <div class="tw-flex tw-justify-center">
                        <img src="img/icon-mudah&cepat.svg" alt="Mudah & Cepat">
                    </div>
                    <div class="tw-text-center">
                        <p class="tw-mt-5 tw-text-2xl tw-font-black">Mudah & Cepat</p>
                        <p class="tw-mt-2 ">Kami berkomitmen untuk menajaga semua proses berlangsung dengan mudah dan cepat, juga transparansi setiap transaksi yang berhasil.</p>
                    </div>
                </div>
                <div class=" tw-rounded-3xl tw-bg-white tw-shadow-lg tw-px-5 tw-py-8">
                    <div class="tw-flex tw-justify-center">
                        <img src="img/icon-mudah&cepat.svg" alt="Dapatkan Keuntungan Lebih">
                    </div>
                    <div class="tw-text-center">
                        <p class="tw-mt-5 tw-text-2xl tw-font-black">Dapatkan Keuntungan Lebih</p>
                        <p class="tw-mt-2 ">Kami menjadi wadah bagi anda yang ingin mencari keuntungan tambahan.</p>
                    </div>
                </div> -->
                <!-- <div v-for="gabung in bergabung" :key="gabung.Title" class=" tw-rounded-3xl tw-bg-white tw-shadow-lg tw-px-5 tw-py-8">
                    <div class="tw-flex tw-justify-center">
                        <img :src="gabung.Url" :alt="gabung.Title">
                    </div>
                    <div class="tw-text-center">
                        <p class="tw-mt-5 tw-text-2xl tw-font-black">{{ gabung.Title }}</p>
                        <p class="tw-mt-2 ">{{ gabung.Body }}</p>
                    </div>
                </div> -->
            </div>
        </div>

        <div style="z-index: 0;" class="tw-hidden tw-absolute lg:tw-block tw-bottom-96 tw-left-16">
            <img src="img/Rectangle25.svg" alt="">
        </div>

        <div style="z-index: 0;" class="tw-hidden tw-absolute tw-bottom-28 tw-left-22 lg:tw-block">
            <img src="img/DotOrnament2.svg" alt="">
        </div>
        <!-- Linkaran -->
        <div style="z-index: 0;" class="tw-hidden tw-absolute tw-bottom-14 tw-right-24 lg:tw-block">
            <img src="img/Ellipse87.svg" alt="">
        </div>

        <!-- Rectangle Kanan -->
        <div style="z-index: 0;" class="tw-hidden tw-absolute tw-bottom-40 tw-right-0 lg:tw-block">
            <img src="img/Rectangle9545.svg" alt="">
        </div>
    </div>
</template>

<script>

const bergabung = [
    {
        Title: 'Tanpa Modal dan Biaya Investasi',
        Body: 'Smartincome tidak memungut biaya apapun, kami menerima keuntungan dari setiap transaksi yang berhasil.',
        Url: 'img/icon-tanpa modal.svg',
    },
    {
        Title: 'Nilai Tambah Bisnis Anda',
        Body: 'Dengan menjadi partner layanan keuangan, anda dapat membantu siapapun yang membutuhkan dana',
        Url: 'img/icon-nilai-tambah-bisnis.svg',
    },
    {
        Title: 'Mudah & Cepat',
        Body: 'Kami berkomitmen untuk menajaga semua proses berlangsung dengan mudah dan cepat, juga transparansi setiap transaksi yang berhasil.',
        Url: 'img/icon-mudah&cepat.svg',
    },
    {
        Title: 'Dapatkan Keuntungan Lebih',
        Body: 'Kami menjadi wadah bagi anda yang ingin mencari keuntungan tambahan.',
        Url: 'img/icon-keuntungan-lebih.svg',
    },
]

export default {
    name: 'bergabung',
    setup() {
        return {
            bergabung,
        }
    },
}
</script>