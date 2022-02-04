<template>
    <div class=" tw-mt-20 tw-text-teal-700">
        <div class=" tw-flex tw-flex-col tw-px-5 lg:tw-px-16 tw-text-right">
            <div class=" tw-font-black tw-text-lg lg:tw-text-2xl">
                {{ plk }}
            </div>
            <p class=" tw-text-xs tw-mt-2"><span class=" tw-font-black">smartincome.co.id</span> fokus kepada <span class=" tw-font-black">produk pinjaman</span> untuk membantu masyarakat</p>
        </div>

        <div class="tw-grid tw-grid-cols-1 md:tw-grid-cols-2 lg:tw-grid-cols-4 tw-gap-3 md:tw-gap-5 lg:tw-gap-3 tw-px-5 md:tw-px-20 lg:tw-px-24 tw-mt-16">
            <div v-for="product in products" :key="product.header" class="tw-bg-white tw-px-10 lg:tw-px-2 tw-py-7 tw-rounded-lg tw-shadow-lg">
                <div class="tw-text-center">
                    <p class="tw-text-lg tw-font-black">{{ product.title }}</p>
                    <p class="tw-text-sm tw-font-black">{{ product.header }}</p>
                </div>
                <div v-if="product.body.length !== null" class="md:tw-h-24 tw-mt-5 tw-mb-2">
                    <ul v-for="(body, index) in product.body" :key="index" class="tw-text-xs tw-list-disc tw-px-3">
                        <li>{{ body }}</li>
                    </ul>
                </div>
                <div v-else>
                    <ul>
                        <li>Text not found</li>
                    </ul>
                </div>
                <div class="tw-flex tw-justify-center">
                    <img :src="product.image" alt="mobil" style="width: 134px; height: 94px;">
                </div>
                <div class="tw-flex tw-justify-center tw-mt-3">
                    <a href="#" class=" tw-w-44 tw-mt-3 tw-text-xs tw-bg-teal-700 tw-rounded-lg tw-font-extrabold tw-text-white tw-px-5 tw-py-2 tw-transition tw-duration-300 tw-ease-in-out hover:tw-bg-teal-800 tw-shadow-md ">
                        Lihat selengkapnya >>
                    </a>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
const products = [
    {
        title: 'Pinjaman Dana',
        header: 'Jaminan BPKB Kendaraan',
        body: ['BPKB Mobil & Motor', 'Dana Pinjaman mulai dari 2 juta - 2 Miliyar', 'Kendaraan milik pribadi', 'Lokasi : Jabodetabek'],
        image: 'mobil.svg'
    },
    {
        title: 'Pinjaman Dana',
        header: 'Jaminan SHM, AJB,dll',
        body: ['Jaminan SHM, AJB', 'Dana Pinjaman hingga 5 Miliyar', 'Rumah atas nama sendiri', 'Lokasi : Jabodetabek'],
        image: 'rumah.svg'
    },
    {
        title: 'Pinjaman Dana',
        header: 'Gadai Kendaraan',
        body: ['Mobil & Motor', 'Dana Pinjaman mulai dari 2 juta - 200 Jt', 'Kendaraan milik pribadi', 'Lokasi : Jabodetabek'],
        image: 'vespa.svg'
    },
    {
        title: 'Pinjaman Dana',
        header: 'Gadai Emas',
        body: ['Emas Murni 24 karat', 'Dana Pinjaman mulai dari 2 juta - 200 Jt', 'Lokasi : Jabodetabek'],
        image: 'emas.svg'
    },
]

import { defineComponent } from 'vue'

export default defineComponent({
    name: 'product-layanan-keuangan',
    setup() {
        return {
            products,
            plk: 'Produk Layanan Keuangan <<'
        }
    },
})
</script>
