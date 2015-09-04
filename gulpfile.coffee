gulp      = require 'gulp'
path      = require 'path'
jade      = require 'gulp-jade'
stylus    = require 'gulp-stylus'
coffee    = require 'gulp-coffee'
connect   = require 'gulp-connect'
autowatch = require 'gulp-autowatch'

paths =
  output: 'builds/dev'
  jade  : 'src/templates/**/*.jade'
  stylus: 'src/styles/**/*.styl'
  coffee: 'src/scripts/**/*.coffee'

gulp.task 'jade', ->
  gulp.src paths.jade
    .pipe jade()
    .pipe gulp.dest paths.output
    .pipe connect.reload()

gulp.task 'stylus', ->
  gulp.src 'src/styles/main.styl'
    .pipe stylus()
    .pipe gulp.dest paths.output + '/css'
    .pipe connect.reload()

gulp.task 'coffee', ->
  gulp.src paths.coffee
    .pipe coffee()
    .pipe gulp.dest paths.output + '/js'
    .pipe connect.reload()

gulp.task 'connect', ->
  connect.server
    root: paths.output
    port: 3000
    livereload: true

gulp.task 'watch', ->
  autowatch gulp, paths

gulp.task 'default', ['jade','stylus','coffee','connect','watch']
