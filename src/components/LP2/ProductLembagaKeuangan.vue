<template>
    <div class="tw-relative">
        <div class=" tw-flex tw-flex-col tw-py-20 lg:tw-flex-row lg:tw-py-20">
            <div class="lg:tw-w-3/5 tw-z-10">
                <div class="tw-grid tw-px-8 lg:tw-px-0 lg:tw-grid-cols-2 lg:tw-gap-x-8 lg:tw-pl-20 lg:tw-pr-16">
                    <!-- Kiri -->
                    <div class="tw-space-y-10">
                        <div class="tw-bg-white tw-px-5 tw-py-8 tw-rounded-3xl">
                            <div class="tw-flex tw-justify-center">
                                <img src="img/Mobil.svg" alt="Mobil">
                            </div>
                            <div class="tw-text-center">
                                <p class="tw-mt-5 tw-text-xl tw-font-black">Pinjaman Dana Jaminan BPKB Kendaraan</p>
                                <p class="tw-mt-2">BPKB Mobil & Motor Dana Pinjaman mulai dari 2 juta - 2 Milyar Kendaraan milik pribadi Lokasi: Jabodetabek</p>
                            </div>
                        </div>
                        <div class="tw-bg-white tw-px-5 tw-py-8 tw-rounded-3xl">
                            <div class="tw-flex tw-justify-center">
                                <img src="img/Vespa.svg" alt="Vespa">
                            </div>
                            <div class="tw-text-center">
                                <p class="tw-mt-5 tw-text-xl tw-font-black">Pinjaman Dana Gadai Kendaraan </p>
                                <p class="tw-mt-2">Mobil & Motor Dana Pinjaman mulai dari 2 juta - 200 Jt Kendaraan milik pribadi Lokasi : Jabodetabek.</p>
                            </div>
                        </div>
                    </div>
                    <!-- Kanan -->
                    <div class="tw-mt-10 tw-space-y-10 lg:tw-mt-20">
                        <div class="tw-bg-white tw-px-5 tw-py-8 tw-rounded-3xl ">
                            <div class="tw-flex tw-justify-center">
                                <img src="img/Rumah.svg" alt="Rumah">
                            </div>
                            <div class="tw-text-center">
                                <p class="tw-mt-5 tw-text-xl tw-font-black">Pinjaman Dana Jaminan SHM, AJB,dll</p>
                                <p class="tw-mt-2">Jaminan SHM, AJB, Dana Pinjaman hingga 5 Milyar Rumah atas nama sendiri Lokasi : Jabodetabek</p>
                            </div>
                        </div>
                        <div class="tw-bg-white tw-px-5 tw-py-8 tw-rounded-3xl ">
                            <div class="tw-flex tw-justify-center">
                                <img src="img/Emas.svg" alt="Emas">
                            </div>
                            <div class="tw-text-center">
                                <p class="tw-mt-5 tw-text-xl tw-font-black">Pinjaman Dana Gadai Emas</p>
                                <p class="tw-mt-2">Emas Murni 24 karat Dana Pinjaman mulai dari 2 juta - 200 Jt Lokasi : Jabodetabek</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tw-order-first tw-flex tw-items-center tw-mb-16 tw-flex-1 tw-px-5 lg:tw-order-last lg:tw-px-12 tw-z-10 lg:tw-mb-0" >
                <div>
                    <div>
                        <p class="tw-font-black tw-text-3xl lg:tw-text-4xl">Product Lembaga Keuangan</p>
                        <p class="tw-mt-4">smartincome.co.id bekerja sama dengan banyak lembaga keuangan yang akan memudahkan anda sebagai Partner Layanan Keuangan</p>
                    </div>
                </div>
            </div>


            <!-- Rectangle Kanan -->
            <div class="tw-absolute tw-right-1/4 tw-top-80 tw-z-0">
                <img src="img/Rectangle26.svg" alt="">
            </div>

            
        </div>
        
        <cara-bergabung />
        
        <div class="tw-absolute tw-bottom-1/4 lg:tw-bottom-96 tw-z-0">
            <img src="img/Rectangle9546.svg" alt="" class=" tw-w-2/3 lg:tw-w-full">
        </div>
    </div>
</template>

<script>
import CaraBergabung from '../LP2/CaraBergabung.vue'

export default {
    name: 'product-lembaga-keuangan',
    components: {
        CaraBergabung
    },
    setup() {
        return {

        }
    },
}
</script>