{
    "class": "CommandLineTool",
    "label": "echo-stdout",
    "doc": "Simple echo to stdout",
    "requirements": [
        {
            "dockerPull": "alpine:latest",
            "class": "DockerRequirement"
        },
        {
            "ramMin": 256,
            "coresMin": 1,
            "class": "ResourceRequirement"
        },
        {
            "class": "ShellCommandRequirement"
        }
    ],
    "baseCommand": [
        "echo"
    ],
    "arguments": [
        {
            "valueFrom": "$(inputs.message_in)"
        },
        {
            "valueFrom": "1> message.txt",
            "shellQuote": false
        }
    ],
    "inputs": [
        {
            "type": "string",
            "inputBinding": {
                "position": 1
            },
            "label": "Message to output",
            "id": "#main/message_in"
        }
    ],
    "outputs": [
        {
            "type": "File",
            "label": "output to stdout",
            "outputBinding": {
                "glob": "message.txt"
            },
            "id": "#main/message_out"
        }
    ],
    "id": "#main",
    "cwlVersion": "v1.1"
}