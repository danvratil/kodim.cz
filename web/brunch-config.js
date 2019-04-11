
module.exports = {
  paths: {
    public: 'public/web',
    watched: ['src']
  },
  files: {
    stylesheets: {
      joinTo: {
        'index.css': 'src/scss/index.scss'
      }
    }
  },
  plugins: {
    sass: {
      options: {
         includePaths: ["node_modules/bootstrap/scss"],
      },
      mode: 'native'
    },
  },
  watcher: {
    awaitWriteFinish: true
  }
}