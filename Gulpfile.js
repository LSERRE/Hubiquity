/*
 *
 * A Gulpjs boilerplate by Matt Boldt | mattboldt.com | https://github.com/mattboldt/Gulp-Bootstrap
 * MIT License
 *
 */

// Grab node packages
var gulp = require('gulp'),
    jshint = require('gulp-jshint'),
    coffee = require('gulp-coffee'),
    sass = require('gulp-sass'),
    concat = require('gulp-concat'),
    uglify = require('gulp-uglify'),
    rename = require('gulp-rename'),
    watch = require('gulp-watch'),
    livereload = require('gulp-livereload'),
    sourcemaps = require('gulp-sourcemaps'),
    autoprefixer = require('gulp-autoprefixer');


// Compile Coffeescript
gulp.task('coffeescript', function() {
    return gulp.src('assets/coffeescripts/**/*.coffee')
        .pipe(coffee())
        .pipe(gulp.dest('assets/javascripts/'));
});

// Lint JS
gulp.task('lint', function() {
    return gulp.src('assets/javascripts/**/*.js')
        .pipe(jshint())
        .pipe(jshint.reporter('default'));
});

// Concatenate & Minify JS
gulp.task('scripts', function() {
    return gulp.src('assets/javascripts/**/*.js')
        .pipe(concat('main.js'))
        .pipe(gulp.dest('dist'))
        .pipe(rename('main.min.js'))
        .pipe(uglify())
        .pipe(gulp.dest('dist'));
});

// Compile Sass
gulp.task('sass', function() {
    return gulp.src('assets/stylesheets/application.css.scss')
        .pipe(sourcemaps.init())
        .pipe(sass())
        .pipe(sourcemaps.write('./maps'))
        .pipe(gulp.dest('dist'))
        .pipe(autoprefixer({
            browsers: ['last 2 versions'],
        }));
});

// Watch Files For Changes
gulp.task('watch', function() {
    // Start Livereload server
    var server = livereload();
    gulp.watch('app/assets/javascripts/**/*.js', ['lint', 'scripts']).on('change', function(file) {
      server.changed(file.path);
    });
    gulp.watch('app/assets/stylesheets/**/*.scss', ['sass']).on('change', function(file) {
      server.changed(file.path);
    });

});

// Default Task
gulp.task('default', ['coffeescript', 'lint', 'sass', 'scripts', 'watch']);