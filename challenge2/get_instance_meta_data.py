import requests
import json

def get_instance_metadata():
    metadata_url = "http://169.254.169.254/latest/dynamic/instance-identity/document"
    
    try:
        response = requests.get(metadata_url, timeout=2)
        if response.status_code == 200:
            metadata_json = response.json()
            return metadata_json
        else:
            return {"error": "Failed to retrieve instance metadata."}
    except requests.exceptions.RequestException as e:
        return {"error": f"Request error: {e}"}

if __name__ == "__main__":
    instance_metadata = get_instance_metadata()
    print(json.dumps(instance_metadata, indent=4))
