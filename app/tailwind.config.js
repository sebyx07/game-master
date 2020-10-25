module.exports = {
  important: true,
  purge: {
    enabled: process.env.RAILS_ENV === 'production',
    content: [
      './app/javascript/**/*.jsx',
      './app/views/**/*.html.erb',
    ],
  },
  target: 'relaxed',
  prefix: '',
  theme: {
    extend: {},
  },
  variants: {},
  plugins: [],
}
