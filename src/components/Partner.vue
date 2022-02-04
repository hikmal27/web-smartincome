<template>
    <div class="tw-text-teal-700 tw-mt-20">
        <div class=" tw-flex tw-flex-col tw-px-5 lg:tw-px-16 tw-text-right">
            <div class="tw-font-black tw-text-lg lg:tw-text-2xl">{{ partner }}</div>
            <p class="tw-text-xs tw-mt-2">smartincome menjadi wadah bagi anda, para pelaku usaha untuk mendapatkan keuntungan tambahan</p>
        </div>

        <div class="tw-px-5 sm:tw-px-12 md:tw-px-20 lg:tw-px-32 tw-py-14">
            <div class="tw-grid lg:tw-grid-cols-3 tw-gap-3 lg:tw-gap-4">
                <div v-for="(comment, index) in comments" :key="index" class="tw-rounded-xl tw-mt-3 lg:tw-mt-0 tw-p-6 tw-bg-yellow-300">
                    <div class=" tw-flex tw-items-center tw-space-x-6 tw-mb-4">
                        <img :src="comment.image" alt="Image">
                        <div>
                            <p class="tw-font-black tw-text-lg">{{ comment.name }}</p>
                            <p style="font-size: 10px;">{{ comment.title }}</p>
                        </div>
                    </div>
                    <div>
                        <q-rating
                            v-model="rating"
                            max="5"
                            size="1.9em"
                            color="orange-10"
                            icon="star_border"
                            icon-selected="star"
                            icon-half="star_half"
                            no-dimming
                            />
                    </div>
                    <div class="tw-mt-2">
                        <p class="tw-text-xs">{{ comment.body }}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import { ref } from 'vue'

const comments = [
    {
        image: 'Image.png',
        name: 'Phillip Levin',
        title: 'CEO / Creative IT',
        body: 'Lorem ipsum dolor sit amet, consecte tur adipiscing elit. Ultrices blandit pelle ntesque nibh arcu elementum odio justo. Rhoncus.'
    },
    {
        image: 'Image.png',
        name: 'Phillip Levin',
        title: 'CEO / Creative IT',
        body: 'Lorem ipsum dolor sit amet, consecte tur adipiscing elit. Ultrices blandit pelle ntesque nibh arcu elementum odio justo. Rhoncus.'
    },
    {
        image: 'Image.png',
        name: 'Phillip Levin',
        title: 'CEO / Creative IT',
        body: 'Lorem ipsum dolor sit amet, consecte tur adipiscing elit. Ultrices blandit pelle ntesque nibh arcu elementum odio justo. Rhoncus.'
    },
]

export default {
    name: 'partner',
    setup() {
        return {
            partner: 'Apa kata Partner Smartincome ? <<',
            rating: ref(4),
            comments
        }
    },
}
</script>