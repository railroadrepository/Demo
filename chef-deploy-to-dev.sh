#!/bin/bash
echo "Deploying to DEV region"
export Username=$1
export Password=$2
export Story_Number=$3
export Build_Version_Number=$4
curl -i -X POST -u ${Username}:${Password} -H "Content-Type:text/xml" https://www51.v1host.com/HCLTechnologies72/rest-1.v1/Data/Story/${Story_Number} -d '<Asset><Attribute name="Custom_BuildNumberDeployed" act="set">'${Build_Version_Number}'</Attribute><Attribute name="Custom_DeployedEnvironment" act="set">DEV</Attribute></Asset>'
