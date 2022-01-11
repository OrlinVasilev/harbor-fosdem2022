Harbor

Demo:

https://demo.goharbor.io/
You can create account and test your self!

Workshop:
https://github.com/goharbor/community/blob/master/presentations/introduction/workshop.md

Local Install:
cd ~/FOSDEM/Harbor/Demo
mkdir -p Demo/data Demo/harbor Demo/install
Download release from website: https://github.com/goharbor/harbor/releases
cd Demo/install
tar zxf harbor-offline-installer-v2.4.1.tgz 
cd harbor
cp harbor.yml.tmpl harbor.yml

steps:
hostname: reg.mydomain.com - > hostname: local.goharbor.io
comment https: cmd+/

tune dir: data_volume: /data -> data_volume: /Users/ovasilev/FOSDEM/Harbor/Demo/data

log: location: /Users/ovasilev/FOSDEM/Harbor/Demo/harbor



Run Trivy localy: 

docker run --rm -v $HOME/Library/Caches:/root/.cache/ aquasec/trivy:0.18.3 python:3.4-alpine

