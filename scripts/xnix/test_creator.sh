#! /bin/sh

clear

if [ -z "${PYTHONPATH}" ]; then
  echo "PYTHONPATH is undefined"
  exit
fi

python3 ../../../program-y-master/src/utils/test_creator/test_creator.py -d ../../storage/categories ../../aiml_tests/input 45 ../../aiml_tests/replacements.txt
