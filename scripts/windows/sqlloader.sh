@echo off

cls

if not defined PYTHONPATH goto error

python -m programy.clients.restful.flask.webchat.client --config ..\..\config\windows\config.webchat.yaml --cformat yaml --logging ..\..\config\windows\logging.yaml
goto end

:error
echo PYTHONPATH not set!

:end

# Categories
python -m programy.storage.stores.sql.loader --entity categories --url mysql+pymysql://root:Password123@localhost:3306/programy --dir ../../storage/categories --subdir --extension=.aiml --verbose

# Maps
python -m programy.storage.stores.sql.loader --entity maps --url mysql+pymysql://root:Password123@localhost:3306/programy --dir ../../storage/maps --subdir --extension=.txt --verbose

# Sets
python -m programy.storage.stores.sql.loader --entity sets --url mysql+pymysql://root:Password123@localhost:3306/programy --dir ../../storage/sets --subdir --extension=.txt --verbose

# RDFs
python -m programy.storage.stores.sql.loader --entity rdfs --url mysql+pymysql://root:Password123@localhost:3306/programy --dir ../../storage/rdfs --subdir --extension=.txt --verbose

# Lookups
python -m programy.storage.stores.sql.loader --entity denormals --url mysql+pymysql://root:Password123@localhost:3306/programy --file ../../storage/lookups/denormal.txt --verbose
python -m programy.storage.stores.sql.loader --entity normals --url mysql+pymysql://root:Password123@localhost:3306/programy --file ../../storage/lookups/normal.txt --verbose
python -m programy.storage.stores.sql.loader --entity genders --url mysql+pymysql://root:Password123@localhost:3306/programy --file ../../storage/lookups/gender.txt --verbose
python -m programy.storage.stores.sql.loader --entity persons --url mysql+pymysql://root:Password123@localhost:3306/programy --file ../../storage/lookups/person.txt --verbose
python -m programy.storage.stores.sql.loader --entity person2s --url mysql+pymysql://root:Password123@localhost:3306/programy --file ../../storage/lookups/person2.txt --verbose

# Properties
python -m programy.storage.stores.sql.loader --entity properties --url mysql+pymysql://root:Password123@localhost:3306/programy --file ../../storage/properties/properties.txt --verbose
python -m programy.storage.stores.sql.loader --entity defaults --url mysql+pymysql://root:Password123@localhost:3306/programy --file ../../storage/properties/defaults.txt --verbose

# Regex Templates
python -m programy.storage.stores.sql.loader --entity regexes --url mysql+pymysql://root:Password123@localhost:3306/programy --file ../../storage/regex/regex-templates.txt --verbose

# Nodes
python -m programy.storage.stores.sql.loader --entity patternnodes --url mysql+pymysql://root:Password123@localhost:3306/programy --file ../../storage/nodes/pattern_nodes.conf --verbose
python -m programy.storage.stores.sql.loader --entity templatenodes --url mysql+pymysql://root:Password123@localhost:3306/programy --file ../../storage/nodes/template_nodes.conf --verbose

# Processors
python -m programy.storage.stores.sql.loader --entity postprocessors --url mysql+pymysql://root:Password123@localhost:3306/programy --file ../../storage/processing/postprocessors.conf --verbose
python -m programy.storage.stores.sql.loader --entity preprocessors --url mysql+pymysql://root:Password123@localhost:3306/programy --file ../../storage/processing/preprocessors.conf --verbose
python -m programy.storage.stores.sql.loader --entity postquestionprocessors --url mysql+pymysql://root:Password123@localhost:3306/programy --file ../../storage/processing/postquestionprocessors.conf --verbose

# Spelling
python -m programy.storage.stores.sql.loader --entity spelling --url mysql+pymysql://root:Password123@localhost:3306/programy --file ../../storage/spelling/corpus.txt --verbose

# License Keys
python -m programy.storage.stores.sql.loader --entity licenses --url mysql+pymysql://root:Password123@localhost:3306/programy --file ../../storage/licenses/license.keys --verbose

# UserGroups
python -m programy.storage.stores.sql.loader --entity usergroups --url mysql+pymysql://root:Password123@localhost:3306/programy --file ../../storage/security/usergroups.yaml --verbose

