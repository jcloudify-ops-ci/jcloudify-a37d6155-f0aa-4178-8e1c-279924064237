sudo apt-get install jq
export API_URL_SSM="`aws ssm get-parameter --name /jcloudify-a37d6155-f0aa-4178-8e1c-279924064237/$1/api/url`"
export API_URL=`echo $API_URL_SSM | jq -r '.Parameter.Value'`
curl --fail "$API_URL$2"