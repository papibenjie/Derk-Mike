var gulp = require('gulp');
var sass = require('gulp-sass');

gulp.task('default', function() {
  console.log("hello")
});


gulp.task('styles_global', function() {
    gulp.src('sass/global/main.sass')
        .pipe(sass().on('error', sass.logError))
        .pipe(gulp.dest('assets/global/styles'));
});

gulp.task('styles_portal', function() {
    gulp.src('sass/portal/main.sass')
        .pipe(sass().on('error', sass.logError))
        .pipe(gulp.dest('portal/static/portal/css'));
});

gulp.task('styles_sandbox', function() {
    gulp.src('sass/sandbox/main.sass')
        .pipe(sass().on('error', sass.logError))
        .pipe(gulp.dest('sandbox/static/sandbox/css'));
});

gulp.task('style_watch', function () {
   gulp.watch(['sass/**/*.sass', 'sass/**/base/*.sass'], ['styles_sandbox', 'styles_portal', 'styles_global']);
});
