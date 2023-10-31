const path = require('path');
const { src, dest, series } = require('gulp');
const replace = require('gulp-replace');
const useref = require('gulp-useref');

module.exports = conf => {
  // Copy templatePath html files and adminassets to buildPath
  // -------------------------------------------------------------------------------
  const prodCopyTask = function () {
    return src(`${templatePath}/**/*.html`)
      .pipe(dest(buildPath))
      .pipe(src('adminassets/**/*'))
      .pipe(dest(`${buildPath}/adminassets/`));
  };

  // Rename adminassets path
  // -------------------------------------------------------------------------------
  const prodRenameTasks = function () {
    return src(`${buildPath}/*.html`)
      .pipe(replace('..adminassets', 'adminassets'))
      .pipe(dest(buildPath))
      .pipe(src(`${buildPath}/adminassets/**/*`))
      .pipe(replace('..adminassets', 'adminassets'))
      .pipe(dest(`${buildPath}/adminassets/`));
  };

  // Combine js vendor adminassets in single core.js file using UseRef
  // -------------------------------------------------------------------------------
  const prodUseRefTasks = function () {
    return src(`${buildPath}/*.html`).pipe(useref()).pipe(dest(buildPath));
  };

  const prodAllTask = series(prodCopyTask, prodRenameTasks, prodUseRefTasks);

  // Exports
  // ---------------------------------------------------------------------------

  return {
    copy: prodCopyTask,
    rename: prodRenameTasks,
    useref: prodUseRefTasks,
    all: prodAllTask
  };
};
