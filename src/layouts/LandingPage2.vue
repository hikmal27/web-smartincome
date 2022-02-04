<template>
    <q-layout view="hHh lpR fFf" class="tw-font-poppins tw-bg-gray-100">
        <!-- Navbar -->
        <div class="tw-hidden lg:tw-block tw-px-16">
            <nav class="tw-w-full tw-flex tw-justify-between ">
                <div class="tw-flex tw-flex-col tw-pt-12">
                    <div>
                        <a href="#" class=" tw-bg-yellow-300 tw-rounded-full tw-font-extrabold tw-text-teal-700 tw-px-7 tw-py-3 tw-transition tw-duration-300 tw-ease-in-out hover:tw-bg-yellow-400 tw-shadow-md tw-text-lg">
                            Smart<q-icon name="eva-paper-plane-outline" class="tw-text-2xl"/>Income
                        </a>
                    </div>
                    <div class="tw-mt-5 tw-font-black tw-text-center">
                        <a href="#" class="tw-text-md tw-no-underline tw-text-teal-700 hover:tw-text-teal-800">Community</a>
                        <a href="#" class="tw-text-md tw-no-underline tw-text-teal-700 hover:tw-text-teal-800 tw-ml-4">Enterprise</a>
                    </div>
                </div>
                <div class="tw-flex tw-pt-12">
                    <a href="/three" class="tw-text-lg tw-no-underline tw-mt-4 tw-text-teal-700 hover:tw-text-teal-800 tw-font-extrabold ">ID <span class=" tw-text-yellow-400">|</span> EN</a>
                    <a href="#" class="tw-pt-1">
                        <div class="tw-flex tw-bg-yellow-300 tw-rounded-full tw-font-black tw-text-teal-700 tw-px-8 tw-py-3 tw-transition tw-duration-300 tw-ease-in-out hover:tw-bg-yellow-400 tw-shadow-md tw-ml-5 tw-text-lg">
                            <div>
                                Masuk
                            </div>
                        </div>
                    </a>
                    <!-- <a href="#" class=" tw-bg-yellow-300 tw-rounded-full tw-font-black tw-text-teal-700 tw-px-5 tw-py-2 tw-transition tw-duration-300 tw-ease-in-out hover:tw-bg-yellow-400 tw-mr-6 tw-shadow-md tw-ml-5">
                        Masuk
                    </a> -->
                </div>
            </nav>

            <nav class=" tw-flex tw-flex-col tw-text-center sm:tw-flex-row sm:tw-text-left sm:tw-justify-end tw-px-1 sm:tw-items-baseline tw-w-full">
                <div>
                    <a v-for="link in linksList" :key="link.Url" :href="link.Url" @click="dataLink(link.MenuTitle)" :active="menuActive === link.MenuTitle" class-active="" class=" tw-text-lg tw-no-underline tw-text-teal-700 hover:tw-text-teal-800 tw-ml-4">
                        {{ link.MenuTitle }}
                    </a>
                </div>
            </nav>
        </div>

        <!-- Navbar mobile -->
        <div class="tw-flex tw-justify-between tw-px-3 tw-py-3 lg:tw-hidden">
            <div>
                <a href="#" class=" tw-bg-yellow-300 tw-rounded-full tw-font-extrabold tw-text-teal-700 tw-px-5 tw-py-2 tw-transition tw-duration-300 tw-ease-in-out hover:tw-bg-yellow-400 tw-mr-6 tw-shadow-md">
                    Smart<span class="tw-text-xl tw-font-black"><q-icon name="eva-paper-plane-outline" /></span>Income
                </a>
            </div>

            <!-- Hamburger menu -->
            <div class="tw-flex tw-items-center">
                <q-icon :name="burgerMenu ? 'eva-close-outline' : 'eva-menu-2-outline'" class="tw-text-3xl tw-text-teal-700" @click="burgerMenu = !burgerMenu"></q-icon>
                
            </div>
        </div>

        <!-- Dropdown Menu -->
        <nav v-if="burgerMenu === true" class="tw-bg-gray-100 tw-text-teal-700 tw-px-5 tw-transition tw-delay-150 tw-duration-300 tw-ease-in ">
            <div v-for="link in linksList" :key="link.Url" class="tw-px-2 tw-py-2 tw-rounded-md dark-mode:tw-bg-gray-800 hover:tw-bg-teal-700 hover:tw-text-white tw-space-y-2">
                <a :href="link.Url">{{ link.MenuTitle }}</a>
            </div>
        </nav>

        <!-- Jumbotron -->
        <div class="tw-relative tw-mt-2 tw-bg-teal-700 tw-overflow-hidden">
            <div class="tw-flex tw-flex-row tw-justify-between">
                <div class="tw-flex-1 tw-flex tw-flex-row tw-justify-center lg:tw-justify-start tw-px-3 tw-py-10 md:tw-py-0 md:tw-mt-16 lg:tw-px-0 lg:tw-py-0 lg:tw-mt-32 lg:tw-ml-24">
                    <div style="z-index: 1;" class=" tw-text-white">
                        <div class=" tw-bottom-16 tw-mb-20">
                            <p class="tw-text-2xl md:tw-text-4xl lg:tw-text-4xl tw-font-black">Bantuan Lembaga Keuangan</p>
                            <p class="tw-text-2xl md:tw-text-4xl lg:tw-text-4xl tw-font-black tw-mt-1 lg:tw-mt-2">Menjangkau Masyarakat</p>
                            <p class="tw-mt-5">Dapatkan Keuntungan Tambahan hingga Jutaan Rupiah</p>
                            <p>dengan menjadi Partner Lembaga Keuangan.</p>
                            <div class="tw-flex tw-flex-row tw-mt-7">
                                <a href=""  class="tw-flex tw-bg-yellow-300 tw-rounded-full tw-font-extrabold tw-text-teal-700 tw-px-3 lg:tw-px-7 tw-py-3 tw-transition tw-duration-300 tw-ease-in-out hover:tw-bg-yellow-500 tw-mr-3 lg:tw-mr-5 tw-shadow-md">
                                    <p class="tw-text-sm lg:tw-text-lg tw-font-black">
                                        Daftar Yuk
                                    </p>
                                </a>
                                <a href="" class="tw-flex tw-bg-yellow-300 tw-rounded-full tw-font-extrabold tw-text-teal-700 tw-px-3 lg:tw-px-5 tw-py-3 tw-transition tw-duration-300 tw-ease-in-out hover:tw-bg-yellow-500 tw-mr-3 tw-shadow-lg">
                                    <p class="tw-text-sm lg:tw-text-lg tw-font-black">
                                        Download Bussines Desk
                                    </p>
                                </a>
                            </div>
                        </div>
                        
                        
                    </div>

                    
                    
                </div>
                <div class="tw-hidden lg:tw-flex tw-flex-col tw-flex-1">
                    <img src="img/phone.png" alt="Phone">
                    <div class="tw-flex tw-justify-end tw-mr-10">
                        <div class="tw-w-8 tw-h-8 tw-flex tw-mb-10 tw-items-center tw-bg-yellow-300 tw-rounded-full">
                            <q-icon name="play_arrow" class=" tw-mx-auto tw-text-teal-700 tw-text-3xl" />
                        </div>
                         <p class="tw-mt-2 tw-ml-3 tw-text-sm tw-text-yellow-300">Watch a demo</p>
                    </div>
                </div>
            </div>
            <div style="z-index: 0" class="tw-absolute tw-bottom-12 tw-left-0 md:tw-bottom-0 md:tw-left-16 lg:tw-bottom-32 lg:tw-left-14">
                <img src="img/DotOrnament.svg" alt="" class=" tw-w-3/5 md:tw-w-3/4 lg:tw-w-full">
            </div>
        </div>

        <!-- Lembaga Keuangan -->
        <lembaga-keuangan />

        <!-- Bergabung bersam kami -->
        <bergabung />

        <!-- Product Lembaga Keuangan -->
        <product-layanan-keuangan />

        <!-- Partner Smartincome -->
        <partner-smartincome />

        <!-- Footer -->
        <FooterLP2 />

    </q-layout>
</template>

<script>
import { ref } from 'vue'

import LembagaKeuangan from 'src/components/LP2/LembagaKeuangan.vue'
import Bergabung from 'src/components/LP2/Bergabung.vue'
import ProductLayananKeuangan from 'src/components/LP2/ProductLembagaKeuangan.vue'
import PartnerSmartincome from 'src/components/LP2/PartnerSmartincome.vue'
import FooterLP2 from 'src/components/LP2/FooterLP2.vue'

const linksList = [
    {
        MenuTitle: "Tentang Kami",
        Url: "/tentang-kami"
    },
    {
        MenuTitle: "Promo & Event",
        Url: "/promo-event"
    },
    {
        MenuTitle: "Blog",
        Url: "/blog"
    },
    {
        MenuTitle: "Testimoni",
        Url: "/testimoni"
    },
    {
        MenuTitle: "FAQ",
        Url: "/faq"
    },
    {
        MenuTitle: "Contact Us",
        Url: "/contactus"
    },
]

export default {
    name: 'landing-page-2',
    components: {
        LembagaKeuangan,
        Bergabung,
        ProductLayananKeuangan,
        PartnerSmartincome,
        FooterLP2
    },
    setup() {
        return {
            linksList,
            menuActive: ref(null),
            burgerMenu: ref(false)
        }
    },
    methods: {
        dataLink(data) {
            this.menuActive = data
        }
    }
}
</script>