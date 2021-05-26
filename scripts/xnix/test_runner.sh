#! /bin/sh

clear

if [ -z "${PYTHONPATH}" ]; then
  echo "PYTHONPATH is undefined"
  exit
fi

python3 ../../../program-y-master/src/utils/test_runner/test_runner.py --config ../../config/xnix/config.console.yaml --cformat yaml --logging ../../config/xnix/logging.yaml --test_dir ../../aiml_tests/input --qna_dir ../../aiml_tests/output --fail_file ../../aiml_tests/output/failures.results

