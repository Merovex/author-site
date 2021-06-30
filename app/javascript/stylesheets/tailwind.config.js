module.exports = {
  purge: [],
  darkMode: 'media', // or 'media' or 'class'
  variants: {
    extend: {
      typography: ['dark'],
    }
  },
  theme: {
    extend: {
      typography: (theme) => ({
        DEFAULT: {
          css: {
            'background': 'none',
            color: theme('colors.black'),
            a: {
              color: theme('colors.blue.500'),
              '&:visited': {
                color: theme('colors.violet.500'),
              },
            },
          },
        },
        dark: {
          css: {
            color: theme('colors.white'),
            a: {
              color: theme('colors.blue.200'),
              '&:hover': {
                color: theme('colors.blue.100'),
              },
            },
            'p+p': {
              'text-indent': '2ch'
            },
            'h1, h2, h3, h4, h5, h6': {
              color: theme('colors.white'),
              'font-weight': 'semibold'
            },
            '&:visited': {
              color: theme('colors.purple.200'),
            },
          },
        }
      })
    },
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
