module.exports = {
  purge: [],
  darkMode: 'media', // or 'media' or 'class'
  theme: {
    extend: {},
    fontFamily: {
      'sans': ["MerovexSans", '-apple-system', 'system-ui', "Segoe UI", 'Roboto', 'Lato', 'Helvetica', 'Arial', 'sans-serif'],
      'serif': ["MerovexSerif", 'Cambria', 'Georgia', "Times New Roman", 'Times', 'serif'],
      'display': ['IMFellEnglish', "MerovexSerif", 'Cambria', 'Georgia', "Times New Roman", 'Times', 'serif']
    },
  },
  variants: {
    extend: {},
  },
  plugins: [
    require('@tailwindcss/typography'),
    require("@tailwindcss/forms")({
      strategy: 'class',
    }),
  ],
}
