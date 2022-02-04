module.exports = {
  purge: ['./index.html', './src/**/*.{vue,js,ts,jsx,tsx}'],
  theme: {
    extend: {},
    fontFamily: {
      nunito: ['Nunito', 'sans-serif'],
      poppins: ['Poppins', 'sans-serif']
    }
  },
  prefix: 'tw-',
  varians: {
    extend: {},
  },
  plugins: [],
}