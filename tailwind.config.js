/** @type {import('tailwindcss').Config} */
const colors = require('tailwindcss/colors')
const defaultTheme = require('tailwindcss/defaultTheme')


module.exports = {
  darkMode: 'class',
  content: [
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/views/**/*.{html,html.erb,erb}',
    './app/frontend/components/**/*.{html,html.erb,erb,rb}'
  ],
  theme: {
    fontFamily: {
      'sans': ["Noto Sans JP", "BlinkMacSystemFont", "Avenir Next", "Avenir",
        "Nimbus Sans L", "Roboto", "Noto Sans", "Segoe UI", "Arial", "Helvetica",
        "Helvetica Neue", "sans-serif"],
      'mono': ["Roboto Mono", "Consolas", "Menlo", "Monaco", "Andale Mono", "Ubuntu Mono", "monospace"]
    },
    extend: {
      colors: {
        "primary": {
          "50": "#efe5fd",
          "100": "#d4bff9",
          "200": "#b794f6",
          "300": "#9965f4",
          "400": "#7e3ff2",
          "500": "#6002ee",
          "600": "#5300e8",
          "700": "#3d00e0",
          "800": "#1d00db",
          "900": "#0000d6"
        },
        "secondary": {
          "50": "#fcfcfc",
          "100": "#f7f7f7",
          "200": "#f2f2f2",
          "300": "#eaeaea",
          "400": "#c8c8c8",
          "500": "#aaaaaa",
          "600": "#808080",
          "700": "#6c6c6c",
          "800": "#4c4c4c",
          "900": "#2a2a2a"
        },
        "on": {
          "primary": '#ffffff',
          "secondary": '#ffffff',
          "surface": '#000000'
        },
        "surface": '#efe5fd',
      }
    },

  },

  corePlugins: {
    aspectRatio: false,
  },
  plugins: [
    require('@tailwindcss/typography'),
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio')
  ],
}
