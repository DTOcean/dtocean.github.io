@ECHO OFF

REM Assumes sphinx, sphinx_rtd_theme and sphinxcontrib-versioning are installed
REM in the _sphinx conda environment

CALL activate _sphinx
sphinx-versioning -e .gitignore -e .nojekyll -e README.rst ^
                  push ^
                  -t ^
                  . ^
                  gh-pages ^
                  . ^
                  -- -D html_theme=sphinx_rtd_theme
deactivate
