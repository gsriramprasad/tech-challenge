import boto3
import json

def get_instance_metadata():
    # Create a session using the instance's IAM role 
    session = boto3.Session()
    
    # Create an EC2 client
    ec2_client = session.client('ec2')
    
    # Get the instance ID from the metadata
    instance_id = requests.get('http://169.254.169.254/latest/meta-data/instance-id').text
    
    try:
        # Describe the EC2 instance to get metadata
        response = ec2_client.describe_instances(InstanceIds=[instance_id])
        if 'Reservations' in response:
            for reservation in response['Reservations']:
                for instance in reservation['Instances']:
                    return instance
        else:
            return {"error": "Failed to retrieve instance metadata."}
    except Exception as e:
        return {"error": f"Request error: {e}"}

if __name__ == "__main__":
    instance_metadata = get_instance_metadata()
    print(json.dumps(instance_metadata, default=str, indent=4))
