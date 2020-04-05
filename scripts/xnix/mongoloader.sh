#!/usr/bin/env bash

if [ -z "${PYTHONPATH}" ]; then
  echo "PYTHONPATH is undefined"
  exit
fi

# Categories
python3 -m programy.storage.stores.nosql.mongo.loader --entity categories --url mongodb://localhost:27017/ -b programy --dir ../../storage/categories --subdir --extension=.aiml --verbose

# Maps
python3 -m programy.storage.stores.nosql.mongo.loader --entity maps --url mongodb://localhost:27017/ -b programy --dir ../../storage/maps --subdir --extension=.txt --verbose

# Sets
python3 -m programy.storage.stores.nosql.mongo.loader --entity sets --url mongodb://localhost:27017/ -b programy --dir ../../storage/sets --subdir --extension=.txt --verbose

# RDFs
python3 -m programy.storage.stores.nosql.mongo.loader --entity rdfs --url mongodb://localhost:27017/ -b programy --dir ../../storage/rdfs --subdir --extension=.txt --verbose

# Lookups
python3 -m programy.storage.stores.nosql.mongo.loader --entity denormals --url mongodb://localhost:27017/ -b programy --file ../../storage/lookups/denormal.txt --verbose
python3 -m programy.storage.stores.nosql.mongo.loader --entity normals --url mongodb://localhost:27017/ -b programy --file ../../storage/lookups/normal.txt --verbose
python3 -m programy.storage.stores.nosql.mongo.loader --entity genders --url mongodb://localhost:27017/ -b programy --file ../../storage/lookups/gender.txt --verbose
python3 -m programy.storage.stores.nosql.mongo.loader --entity persons --url mongodb://localhost:27017/ -b programy --file ../../storage/lookups/person.txt --verbose
python3 -m programy.storage.stores.nosql.mongo.loader --entity person2s --url mongodb://localhost:27017/ -b programy --file ../../storage/lookups/person2.txt --verbose

# Properties X
python3 -m programy.storage.stores.nosql.mongo.loader --entity properties --url mongodb://localhost:27017/ -b programy --file ../../storage/properties/properties.txt --verbose

# Defaults X
python3 -m programy.storage.stores.nosql.mongo.loader --entity defaults --url mongodb://localhost:27017/ -b programy --file ../../storage/properties/defaults.txt --verbose

# Regex Templates X
python3 -m programy.storage.stores.nosql.mongo.loader --entity regexes --url mongodb://localhost:27017/ -b programy --file ../../storage/regex/regex-templates.txt --verbose

# Nodes
python3 -m programy.storage.stores.nosql.mongo.loader --entity patternnodes --url mongodb://localhost:27017/ -b programy --file ../../storage/nodes/pattern_nodes.conf --verbose
python3 -m programy.storage.stores.nosql.mongo.loader --entity templatenodes --url mongodb://localhost:27017/ -b programy --file ../../storage/nodes/template_nodes.conf --verbose

# Processors
python3 -m programy.storage.stores.nosql.mongo.loader --entity preprocessors --url mongodb://localhost:27017/ -b programy --file ../../storage/processing/preprocessors.conf --verbose
python3 -m programy.storage.stores.nosql.mongo.loader --entity postprocessors --url mongodb://localhost:27017/ -b programy --file ../../storage/processing/postprocessors.conf --verbose
python3 -m programy.storage.stores.nosql.mongo.loader --entity postquestionprocessors --url mongodb://localhost:27017/ -b programy --file ../../storage/processing/postquestionprocessors.conf --verbose

# Spelling
python3 -m programy.storage.stores.nosql.mongo.loader --entity spelling --url mongodb://localhost:27017/ -b programy --file ../../storage/spelling/corpus.txt --verbose

# License Keys
python3 -m programy.storage.stores.nosql.mongo.loader --entity licenses --url mongodb://localhost:27017/ -b programy --file ../../storage/licenses/license.keys --verbose

# UserGroups
python3 -m programy.storage.stores.nosql.mongo.loader --entity usergroups --url mongodb://localhost:27017/ -b programy --file ../../storage/security/usergroups.yaml --verbose

