<template>
    <div class="container tw-text-white tw-mt-12 tw-bg-teal-700 tw-rounded-lg ">
        <div class="tw-flex tw-flex-col tw-text-center lg:tw-text-left lg:tw-items-start tw-items-center tw-px-9 tw-py-12 lg:tw-flex-row sm:tw-px-20 sm:tw-py-10 lg:tw-px-20 lg:tw-py-14 ">
            <div class="tw-flex lg:tw-pt-16 tw-flex-1">
                <img src="smartincome.svg" alt="logo" class="tw-mx-auto lg:tw-mx-0" />
            </div>
            <div class=" tw-flex-1 tw-mt-5 lg:tw-mt-0 tw-overflow-hidden">
                <div class="tw-flex lg:tw-justify-center">
                    <div>
                        <div class="tw-font-black tw-text-lg">Menu</div>
                        <div class="tw-mt-2 tw-leading-loose">
                            <ul class="tw-flex tw-flex-col">
                                <div>
                                    <li><a href="#">Tentang kita</a></li>
                                </div>
                                <div>
                                    <li><a href="#">Penawaran</a></li>
                                </div>
                                <div>
                                    <li><a href="#">Belajar YUK !</a></li>
                                </div>
                                <div>
                                    <li><a href="#">Promo</a></li>
                                </div>
                                <div>
                                    <li><a href="#">Blog</a></li>
                                </div>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tw-flex tw-flex-1 tw-mt-5 lg:tw-mt-0 lg:tw-justify-center">
                <div>
                    <div class="lg:tw-ml-5">
                        <div class="tw-font-black tw-text-lg">Location</div>
                        <div class="tw-mt-2">
                            <p>Jl. Boulevard Utara, Ruko Foresta Business Loft 6 Unit 20-21, Pagedangan, Tangerang, Banten. 15331</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tw-flex tw-flex-1 tw-mt-5 lg:tw-mt-0 lg:tw-justify-center">
                <div>
                    <div class="tw-font-black tw-text-lg">Call Us</div>
                    <div class="tw-mt-2">
                        <p>(021) 1234567</p>
                    </div>
                    <div>
                        <p>cs@smartincome.co.id</p>
                    </div>
                </div>
            </div>
        </div>
        <div>
            <router-link to="/landingpage-2" class="tw-cursor-pointer tw-fixed tw-bottom-5 tw-right-5 tw-z-20 lg:tw-bottom-8 lg:tw-right-12">
                <img src="onTop.svg" alt="on top" class="tw-w-10 lg:tw-w-10">
            </router-link>
        </div>
    </div>
</template>

<script>
export default {
    name: 'footer-lp2',
    setup() {
        return {
            // scrollPosition: null
        }
    },
    // methods: {
    //     updateScroll() {
    //         this.scrollPosition = window.scrollY
    //         console.log(this.scrollPosition)
    //     }
    // }
}
</script>