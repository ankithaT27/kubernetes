Package mgr for kubernetes
Package yaml files or appln manifest files and distributes them in public and pvt repos
Eg: Elastic stack installation might take a lot of efforts to be put on as we need to configire yaml files for its secrets, configmap, services etc
A package consisting of this ready yaml files to use at anytime to make it available easily is called Helm manager
command: Helm create chartname

****************************************************************************************************************************

creates a dir (bundles of kube files)
Structure:
*chart.yaml* has metdata about the chart (chartname,version etc)
mychart folder consisting of chart name

values.yaml has values
charts-- consists of charts
template.yaml has all the skeleton of config files which willl be filled with values from values.yaml, but also these values can be overwriiten with the command
Helm install --values=myvalue.yaml chartname


Templating engine
When we have lot of microservices installed, we can always have a template for whcih we can add values later, we have a template.yaml file and we have value.yaml file, the values can be present in this value.yaml file which can be added in template.yaml
