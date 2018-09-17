#!/usr/bin/env bash

export PYTHONPATH=../../../program-y/src

# Clear the entire database
#python3 -m programy.storage.stores.nosql.mongo.loader --url mongodb://localhost:32768/ -a -b programy --verboseX

# Categories
python3 -m programy.storage.stores.nosql.mongo.loader --entity categories --url mongodb://localhost:32768/ -b programy --dir ../../storage/categories --subdir --extension=.aiml --verboseX

# Maps
python3 -m programy.storage.stores.nosql.mongo.loader --entity maps --url mongodb://localhost:32768/ -b programy --dir ../../storage/maps --subdir --extension=.txt --verboseX

# Sets
python3 -m programy.storage.stores.nosql.mongo.loader --entity sets --url mongodb://localhost:32768/ -b programy --dir ../../storage/sets --subdir --extension=.txt --verboseX

# RDFs
python3 -m programy.storage.stores.nosql.mongo.loader --entity rdfs --url mongodb://localhost:32768/ -b programy --dir ../../storage/rdfs --subdir --extension=.txt --verboseX

# Lookups
python3 -m programy.storage.stores.nosql.mongo.loader --entity denormals --url mongodb://localhost:32768/ -b programy --file ../../storage/lookups/denormal.txt --verboseX
python3 -m programy.storage.stores.nosql.mongo.loader --entity normals --url mongodb://localhost:32768/ -b programy --file ../../storage/lookups/normal.txt --verboseX
python3 -m programy.storage.stores.nosql.mongo.loader --entity genders --url mongodb://localhost:32768/ -b programy --file ../../storage/lookups/gender.txt --verboseX
python3 -m programy.storage.stores.nosql.mongo.loader --entity persons --url mongodb://localhost:32768/ -b programy --file ../../storage/lookups/person.txt --verboseX
python3 -m programy.storage.stores.nosql.mongo.loader --entity person2s --url mongodb://localhost:32768/ -b programy --file ../../storage/lookups/person2.txt --verboseX

# Properties X
python3 -m programy.storage.stores.nosql.mongo.loader --entity properties --url mongodb://localhost:32768/ -b programy --file ../../storage/properties/properties.txt --verboseX

# Defaults X
python3 -m programy.storage.stores.nosql.mongo.loader --entity defaults --url mongodb://localhost:32768/ -b programy --file ../../storage/properties/defauls.txt --verboseX

# Regex Templates X
python3 -m programy.storage.stores.nosql.mongo.loader --entity regexes --url mongodb://localhost:32768/ -b programy --file ../../storage/regex/regex-templates.txt --verboseX

# Nodes
python3 -m programy.storage.stores.nosql.mongo.loader --entity patternnodes --url mongodb://localhost:32768/ -b programy --file ../../storage/nodes/pattern_nodes.conf --verboseX
python3 -m programy.storage.stores.nosql.mongo.loader --entity templatenodes --url mongodb://localhost:32768/ -b programy --file ../../storage/nodes/template_nodes.conf --verboseX

# Processors
python3 -m programy.storage.stores.nosql.mongo.loader --entity postprocessors --url mongodb://localhost:32768/ -b programy --file ../../storage/processing/postprocessors.conf --verboseX
python3 -m programy.storage.stores.nosql.mongo.loader --entity preprocessors --url mongodb://localhost:32768/ -b programy --file ../../storage/processing/preprocessors.conf --verboseX

# Spelling
python3 -m programy.storage.stores.nosql.mongo.loader --entity spelling --url mongodb://localhost:32768/ -b programy --file ../../storage/spelling/corpus.txt --verboseX

# License Keys
python3 -m programy.storage.stores.nosql.mongo.loader --entity licenses --url mongodb://localhost:32768/ -b programy --file ../../storage/licenses/license.keys --verboseX

# UserGroups
python3 -m programy.storage.stores.nosql.mongo.loader --entity usergroups --url mongodb://localhost:32768/ -b programy --file ../../storage/security/usergroups.yaml --verboseX

