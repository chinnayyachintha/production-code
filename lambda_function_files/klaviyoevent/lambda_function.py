import json
import requests
import boto3

def lambda_handler(event, context):
    try:
        # Initialize the SSM client
        ssm = boto3.client('ssm')
        
        # Retrieve the Klaviyo API Key from Parameter Store
        parameter_name = "/klaviyo/prod/api/key"
        response = ssm.get_parameter(Name=parameter_name, WithDecryption=True)
        klaviyo_api_key = response['Parameter']['Value']
        
        # Extract the request body from the API Gateway event
        request_body = event.get('body')
        
        if not request_body:
            return {
                "statusCode": 400,
                "body": json.dumps({"message": "Request body is missing"})
            }
        
        # Ensure the request body is a JSON string
        if isinstance(request_body, dict):
            request_body = json.dumps(request_body)
        
        # Klaviyo API endpoint
        klaviyo_url = "https://a.klaviyo.com/api/events"
        
        # Headers for the Klaviyo API request
        headers = {
            'revision': '2024-10-15',
            'Content-Type': 'application/vnd.api+json',
            'Accept': 'application/vnd.api+json',
            'Authorization': f'{klaviyo_api_key}'
        }
        
        # Make the POST request to Klaviyo
        response = requests.post(klaviyo_url, headers=headers, data=request_body)
        
        # Check if the response status is 202 and return the appropriate message
        if response.status_code == 202:
            return {
                "statusCode": 202,
                "body": json.dumps({"message": "Request successfully accepted by Klaviyo"})
            }
        
        # Return the response from Klaviyo
        return {
            "statusCode": response.status_code,
            "body": response.text
        }
    
    except Exception as e:
        return {
            "statusCode": 500,
            "body": json.dumps({"message": "Internal server error", "error": str(e)})
        }