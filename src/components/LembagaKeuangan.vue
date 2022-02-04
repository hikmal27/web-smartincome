<template>
    <div class=" tw-mt-10 tw-text-teal-700">
        <div class=" tw-flex tw-flex-col tw-px-5 lg:tw-px-16 tw-text-right">
            <div class="tw-font-black tw-text-lg lg:tw-text-2xl">
                {{ lembagaKeuangan }}
            </div>
            <p class="tw-text-xs tw-mt-2">smartincome menjadi wadah bagi anda, para pelaku usaha untuk mendapatkan keuntungan tambahan</p>
        </div>

        <div class="tw-px-5 lg:tw-px-24 tw-py-12">
            <div class="tw-grid tw-grid-cols-2 tw-gap-16 tw-py-12 lg:tw-grid-cols-4 lg:tw-gap-24 lg:tw-px-36 lg:tw-py-8 tw-bg-white tw-rounded-xl">
                <div v-for="image in tirai" :key="image.image" class="tw-relative tw-flex tw-items-center ">
                    <img :src="image.image" :alt="image.image" class="tw-mx-auto tw-w-3/5">
                    <img :src="image.tirai" :alt="image.tirai" class="tw-absolute tw-w-full">
                </div>
            </div>
        </div>
    </div>  
</template>

<script>

const tirai = [
    {
        image: 'LogoHD.png',
        tirai: 'tirai.png'
    },
    {
        image: 'image-removebg-preview.png',
        tirai: 'tirai.png'
    },
    {
        image: 'gadaimas.png',
        tirai: 'tirai.png'
    },
    {
        image: 'danain.png',
        tirai: 'tirai.png'
    },
]

export default {
    name: 'lembaga-keuangan',
    setup() {
       return {
           tirai,
           lembagaKeuangan: 'Lembaga Keuangan yang SIAP Berkolaborasi <<'
       } 
    },
}
</script>