<template>
    <div class="tw-relative ">
        <div class="tw-flex tw-flex-col lg:tw-flex-row tw-mt-10 lg:tw-mt-16 tw-px-3 lg:tw-px-12">
            <div class="tw-px-5 lg:tw-px-10">
                <p class="tw-text-lg lg:tw-text-3xl tw-font-black">Lembaga Keuangan</p>
                <p class="tw-text-sm lg:tw-text-lg tw-mt-2 lg:tw-mt-4 tw-text-gray-400">Several selected lender, who already believe in our service.</p>
            </div>
            <div class="tw-grid tw-grid-cols-4 tw-gap-10 tw-mt-5 lg:tw-mt-0">
                <div v-for="img in image" :key="img.Title" class="tw-flex tw-items-center">
                    <img :src="img.Url" :alt="img.Title" :width="img.Width">
                </div>
            </div>
        </div>

        <div class=" tw-mt-10 tw-overflow-hidden">
            <div class="tw-flex tw-flex-col tw-px-5 lg:tw-flex-row lg:tw-px-24">
                <div style="z-index: 1;" class="tw-flex-none">
                    <div class="tw-flex tw-justify-center lg:tw-justify-start">
                        <img src="img/multi-device.svg" alt="Multi Device" width="410">
                    </div>
                </div>
                <div class="tw-shrink tw-pt-0 lg:tw-pt-20">
                    <p class="tw-text-sm lg:tw-text-lg">Smart Income hadir untuk membantu anda menjadi Partner Layanan Keuangan sehingga anda dapat membantu masyarakat yang berada diluar jangkauan Lembaga Keuangan. Anda akan mendapatkan komisi dari setiap transaksi yang berhasil.</p>
                    <div class="tw-mt-3">
                        <a href="#">Lihat selengkapnya >></a>
                    </div>
                </div>
            </div>
            
        </div>
        <div style="z-index: 0;" class="tw-hidden tw-absolute tw-bottom-32 lg:tw-block lg:tw-bottom-10 md:tw-bottom-9 ">
            <img src="img/Rectangle.svg" alt="" width="190">
        </div>
    </div>
</template>

<script>

const image = [
    {
        Title: 'Logo Smart',
        Url: 'img/smart.png',
        Width: 150,
    },
    {
        Title: 'Gadai Mulia',
        Url: 'img/gadaimulia.png',
        Width: 250,
    },
    {
        Title: 'Gadai Mas',
        Url: 'img/gadaimas.png',
        Width: 120,
    },
    {
        Title: 'Danain',
        Url: 'img/danain.png',
        Width: 130,
    }
]

export default {
    name: 'lembaga-keuangan',
    setup() {
        return {
            image,
        }
    },
}
</script>