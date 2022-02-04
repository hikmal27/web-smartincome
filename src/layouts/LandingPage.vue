<template>
    <q-layout view="hHh lpR fFf" class="tw-font-['Poppins'] tw-bg-gray-100">
        <!-- Navbar -->
        <div class="tw-hidden lg:tw-block">
            <nav class=" tw-flex tw-flex-col tw-text-center sm:tw-flex-row sm:tw-text-left sm:tw-justify-between tw-py-4 tw-px-20 sm:tw-items-baseline tw-w-full">
                <div class="tw-mb-2 tw-mt-8 sm:tw-mb-0">
                    <a href="#" class=" tw-bg-yellow-300 tw-rounded-full tw-font-extrabold tw-text-teal-700 tw-px-5 tw-py-2 tw-transition tw-duration-300 tw-ease-in-out hover:tw-bg-yellow-400 tw-mr-6 tw-shadow-md">
                        Smart<span class="tw-text-xl tw-font-black"><q-icon name="eva-paper-plane-outline" /></span>Income
                    </a>
                </div>
                <div class="tw-flex">
                    <a href="/three" class="tw-text-lg tw-no-underline tw-mt-2 tw-text-teal-700 hover:tw-text-teal-800 tw-font-extrabold ">ID <span class=" tw-text-yellow-400">|</span> EN</a>
                    <a href="#" class="tw-pt-1">
                        <div class="tw-flex tw-bg-yellow-300 tw-rounded-full tw-font-black tw-text-teal-700 tw-px-3 tw-py-1 tw-transition tw-duration-300 tw-ease-in-out hover:tw-bg-yellow-400 tw-mr-6 tw-shadow-md tw-ml-5">
                            <div>
                                <img src="icon.svg" alt="icon" class="tw-w-7">
                            </div>
                            <div class="tw-mt-1 tw-ml-1">
                                Masuk
                            </div>
                        </div>
                    </a>
                    <!-- <a href="#" class=" tw-bg-yellow-300 tw-rounded-full tw-font-black tw-text-teal-700 tw-px-5 tw-py-2 tw-transition tw-duration-300 tw-ease-in-out hover:tw-bg-yellow-400 tw-mr-6 tw-shadow-md tw-ml-5">
                        Masuk
                    </a> -->
                </div>
            </nav>
            <nav class=" tw-flex tw-flex-col tw-text-center sm:tw-flex-row sm:tw-text-left sm:tw-justify-between tw-px-20 sm:tw-items-baseline tw-w-full">
                <div class="tw-mb-2 sm:tw-mb-0">
                    <a href="#" class="tw-text-md tw-no-underline tw-text-teal-700 hover:tw-text-teal-800">Community</a>
                    <a href="#" class="tw-text-md tw-no-underline tw-text-teal-700 hover:tw-text-teal-800 tw-ml-4">Enterprise</a>
                </div>
                <div>
                    <a v-for="link in linksList" :key="link.Url" :href="link.Url" @click="dataLink(link.MenuTitle)" :active="menuActive === link.MenuTitle" class-active="" class="tw-text-md tw-no-underline tw-text-teal-700 hover:tw-text-teal-800 tw-ml-4">
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
        <div style="background: url(./rectangle.png) no-repeat center;" class="tw-mt-3">
            <div class="tw-flex tw-justify-between tw-mt-0 tw-px-5 lg:tw-px-24 tw-py-16 sm:tw-py-20 lg:tw-py-0">
                <div class="tw-flex tw-flex-1 tw-flex-wrap tw-overflow-hidden">
                    <div class=" lg:tw-mt-20">
                        <p class="tw-text-teal-700 tw-mb-1">Financial Service Platform</p>
                        <h2 class=" tw-text-2xl lg:tw-text-3xl lg:tw-leading-9 tw-font-black tw-tracking-tight tw-text-teal-700 sm:tw-text-4xl sm:tw-leading-10">
                            Temukan Lembaga Keuangan yang Bersedia Berkolaborasi !
                        </h2>
                        <p class="tw-text-teal-700 tw-text-xs lg:tw-text-sm tw-mt-3">Dapatkan <span class=" tw-font-black">Keuntungan Tambahan hingga Jutaan Rupiah</span> Dengan Menjadi Partner Lembaga Keuangan.</p>
                        <div class="tw-flex tw-flex-row tw-items-center tw-text-xs tw-mt-3">
                            <a href="#" class="tw-flex tw-bg-yellow-300 tw-rounded-full tw-font-extrabold tw-text-teal-700 tw-px-3 lg:tw-px-3 tw-py-1 tw-transition tw-duration-300 tw-ease-in-out hover:tw-bg-yellow-500 tw-mr-3 tw-shadow-md">
                                <div>
                                    <img src="icon.svg" alt="icon" class="tw-w-6">
                                </div>
                                <div class="tw-mt-1 tw-ml-1">
                                    Daftar
                                </div>
                            </a>
                            <a href="#" class="tw-flex tw-bg-yellow-300 tw-rounded-full tw-font-extrabold tw-text-teal-700 tw-px-3 lg:tw-px-3 tw-py-1 tw-transition tw-duration-300 tw-ease-in-out hover:tw-bg-yellow-400 tw-mr-6 tw-shadow-md">
                                <div>
                                    <img src="icon.svg" alt="icon" class="tw-w-6">
                                </div>
                                <div class="tw-mt-1 tw-ml-1">
                                    Download Business Desk
                                </div>
                                
                            </a>
                        </div>
                        <div class="tw-flex">
                            <div class=" tw-w-7 tw-h-7 lg:tw-w-9 lg:tw-h-9 tw-flex tw-items-center tw-mt-6 tw-bg-teal-700 tw-rounded-full">
                                <q-icon name="play_arrow" class=" tw-mx-auto tw-text-white tw-text-3xl lg:tw-text-4xl" />
                            </div>
                            <p class="tw-mt-7 lg:tw-mt-7 tw-ml-3 tw-text-sm lg:tw-text-lg tw-text-teal-700 ">Watch a demo</p>
                        </div>
                    </div>
                </div>
                <div class="tw-hidden lg:tw-flex lg:tw-flex-1 lg:tw-justify-end">
                    <img :src="imgSrc" alt="Iphone">
                </div>
            </div>

            <div class="tw-w-full lg:tw--mt-0 tw-flex tw-bg-teal-700 tw-rounded-md tw-overflow-hidden tw-shadow-lg " style="height: 90px;">
                <div class="tw-flex tw-w-4/5 tw-mx-auto tw-items-center tw-text-white">
                    <table class="tw-w-full">
                        <thead>
                            <tr class="tw-flex tw-text-center">
                                <th class="tw-flex-1 tw-text-sm tw-px-2 lg:tw-text-xl lg:tw-px-4 lg:tw-py-3 tw-border-r-2 ">1000 ++ Transaction</th>
                                <th class="tw-flex-1 tw-text-sm tw-px-2 lg:tw-text-xl lg:tw-px-4 lg:tw-py-3 tw-border-r-2 ">100 ++ Member</th>
                                <th class="tw-flex-1 tw-text-sm tw-px-2 lg:tw-text-xl lg:tw-px-4 lg:tw-py-3">10 ++ Partner</th>
                            </tr>
                        </thead>
                    </table>
                    <!-- <ul class="tw-w-full tw-flex tw-bg-yellow-400 tw-justify-between">
                        <div class=" tw-px-28 tw-border-r-4">
                            <li>1000 ++ Transaction</li>
                        </div>
                        <div class="tw-px-28 tw-border-r-4">
                            <li>1000 ++ Transaction</li>
                        </div>
                        <div>
                            <li>1000 ++ Transaction</li>
                        </div>
                    </ul> -->
                </div>
            </div>
        </div>

        <!-- Jumbotron 2 -->
        <div class="tw-w-full tw-mt-7">
             <div class="tw-flex tw-justify-between tw-px-5 lg:tw-px-16">
                 <div class="tw-hidden lg:tw-block tw-w-2/5  tw-overflow-hidden ">
                     <img src="multi-device-responsive.png" alt="multi-device-responsive">
                 </div>
                 <div class="tw-flex tw-flex-1">
                     <div class="tw-flex tw-flex-col tw-mt-5 lg:tw-mt-40">
                         <div>
                            <p class="tw-text-sm tw-leading-5 lg:tw-leading-loose tw-text-teal-700"><span class="tw-font-black">Smart Income</span> hadir untuk membantu anda menjadi <span class="tw-font-black">Partner Layanan Keuangan</span> sehingga anda dapat <span class="tw-font-black">membantu masyarakat yang berada diluar jangkauan Lembaga Keuangan.</span> Anda akan mendapatkan komisi dari setiap transaksi yang berhasil.</p>
                         </div>
                         
                        <a href="#" class=" tw-w-44 tw-mt-3 tw-text-xs tw-bg-teal-700 tw-rounded-lg tw-font-extrabold tw-text-white tw-px-5 tw-py-2 tw-transition tw-duration-300 tw-ease-in-out hover:tw-bg-teal-800 tw-shadow-md ">
                            Lihat selengkapnya >>
                        </a>
                     </div>
                 </div>
             </div>
             <div class="tw-px-5 tw-mt-10 lg:tw-mt-0 lg:tw-px-20">
                 <p class="tw-text-teal-700 tw-text-lg lg:tw-text-2xl tw-font-extrabold">>> Kenapa bergabung dengan smartincome ?</p>
                 <p class="tw-text-teal-700 tw-ml-8 tw-mt-1"><span class="tw-font-black tw-text-xs">smartincome.co.id</span> bekerja sama dengan banyak lembaga keuangan yang akan memudahkan anda sebagai <span class="tw-font-black tw-text-xs">Partner Layanan Keuangan</span></p>
             </div>
        </div>

        <!--  -->
        <div class="tw-bg-white tw-mt-8 tw-text-teal-700">
            <div class="md:tw-grid tw-grid-cols-2 tw-gap-7 tw-px-5 lg:tw-px-16 tw-py-20 tw-space-y-8 md:tw-space-y-0 ">
                <div v-for="text in texts" :key="text.icon" class="tw-flex tw-items-center lg:tw-gap-3 ">
                    <div>
                        <img :src="text.icon" :alt="text.icon" class=" tw-w-40 lg:tw-w-full tw-h-20">
                    </div>
                    <div class="tw-ml-3 lg:tw-ml-0">
                        <div class="tw-text-lg lg:tw-text-2xl tw-font-black ">
                            {{ text.title }}
                        </div>
                        <p class=" tw-text-xs lg:tw-text-sm">{{ text.body }}</p>
                    </div>
                </div>
                <!-- <div class="tw-flex tw-items-center tw-gap-3">
                    <div>
                        <img src="icon-2.svg" alt="" class="tw-w-full tw-h-24">
                    </div>
                    <div>
                        <div class="tw-text-2xl tw-font-black ">
                            Nikmati kemudahan dan kecepatan
                        </div>
                        <p>Kami berkomitmen untuk menajaga semua proses berlangsung dengan mudah dan cepat, juga transparansi setiap transaksi yang berhasil.</p>
                    </div>
                </div>
                <div class="tw-flex tw-items-center tw-gap-3 lg:tw-mt-3">
                    <div>
                        <img src="icon-4.svg" alt="" class="tw-w-full tw-h-24">
                    </div>
                    <div>
                        <div class="tw-text-2xl tw-font-black ">
                            Nilai tambah bagi anda
                        </div>
                        <p>Dengan menjadi agen layanan keuangan, anda dapat membantu siapapun yang membutuhkan dana, menjadi nilai tambah bagi bagi usaha/bisnis anda.</p>
                    </div>
                </div>
                <div class="tw-flex tw-items-center tw-gap-3 lg:tw-mt-3">
                    <div>
                        <img src="icon-3.svg" alt="" class="tw-w-full tw-h-24">
                    </div>
                    <div>
                        <div class="tw-text-2xl tw-font-black ">
                            Dapatkan Income tambahan 
                        </div>
                        <p>Smartincome menjadi wadah bagi anda yang ingin mencari pendapatan tambahan, membantu anda dalam memenuhi kebutuhan.</p>
                    </div>
                </div> -->
            </div>
        </div>

        <!-- Product Layanan Keuangan  -->
        <product-layanan-keuangan />

        <!-- Slider -->
        <slider />

        <!-- Lembaga Keuangan -->
        <lembaga-keuangan />

        <!-- Cara Bergabung -->
        <cara-bergabung />

        <!-- Partner -->
        <partner />

        <!-- Footer -->
        <Footer />

    </q-layout>
</template>

<script>
import { ref } from 'vue'

// import component
import ProductLayananKeuangan from '../components/ProductLayananKeuangan.vue'
import Slider from '../components/Slider.vue'
import LembagaKeuangan from '../components/LembagaKeuangan.vue'
import CaraBergabung from 'src/components/CaraBergabung.vue'
import Partner from 'src/components/Partner.vue'
import Footer from '../components/Footer.vue'

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

const table = ['1000 ++ Transaction', '100 ++ Member', '10 ++ Partner']

const texts = [
    {
        icon: 'icon-1.svg',
        title: 'Tanpa Modal dan Biaya investasi ',
        body: 'Smartincome tidak memungut biaya apapun, kami menerima keuntungan dari setiap transaksi yang berhasil.'
    },
    {
        icon: 'icon-2.svg',
        title: 'Nikmati kemudahan dan kecepatan',
        body: 'Kami berkomitmen untuk menajaga semua proses berlangsung dengan mudah dan cepat, juga transparansi setiap transaksi yang berhasil.'
    },
    {
        icon: 'icon-4.svg',
        title: 'Nilai tambah bagi anda',
        body: 'Dengan menjadi agen layanan keuangan, anda dapat membantu siapapun yang membutuhkan dana, menjadi nilai tambah bagi bagi usaha/bisnis anda.'
    },
    {
        icon: 'icon-3.svg',
        title: 'Dapatkan Income tambahan ',
        body: 'Smartincome menjadi wadah bagi anda yang ingin mencari pendapatan tambahan, membantu anda dalam memenuhi kebutuhan.'
    },
]

export default {
    name: 'LandingPage',
    components: {
        ProductLayananKeuangan,
        Slider,
        LembagaKeuangan,
        CaraBergabung,
        Partner,
        Footer
    },
    setup() {
        return {
            imgSrc: 'free-iphone-12-pro-6.png',
            burgerMenu: ref(false),
            menuActive: ref(null),
            linksList,
            texts,
            table,
        }
    },
}
</script>