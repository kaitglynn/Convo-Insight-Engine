```python
from flask import Flask, request, jsonify
from ai_services import runAiServices
from external_services import integrateExternalServices
from advanced_features import enableAdvancedFeatures

app = Flask(__name__)

@app.route('/sendChatMessage', methods=['POST'])
def sendChatMessage():
    data = request.get_json()
    chatMessage = data['chatMessage']
    # Process the chat message using AI services
    response = runAiServices(chatMessage)
    return jsonify(response)

@app.route('/sendVoiceMessage', methods=['POST'])
def sendVoiceMessage():
    data = request.get_json()
    voiceMessage = data['voiceMessage']
    # Process the voice message using AI services
    response = runAiServices(voiceMessage)
    return jsonify(response)

@app.route('/sendFileMessage', methods=['POST'])
def sendFileMessage():
    fileMessage = request.files['fileMessage']
    # Process the file message using external services
    response = integrateExternalServices(fileMessage)
    return jsonify(response)

@app.route('/updateUserProfile', methods=['PUT'])
def updateUserProfile():
    data = request.get_json()
    userProfile = data['userProfile']
    # Update user profile using advanced features
    response = enableAdvancedFeatures(userProfile)
    return jsonify(response)

@app.route('/updateBotProfile', methods=['PUT'])
def updateBotProfile():
    data = request.get_json()
    botProfile = data['botProfile']
    # Update bot profile using advanced features
    response = enableAdvancedFeatures(botProfile)
    return jsonify(response)

@app.route('/searchChatHistory', methods=['GET'])
def searchChatHistory():
    keyword = request.args.get('keyword')
    # Search chat history using AI services
    response = runAiServices(keyword)
    return jsonify(response)

if __name__ == '__main__':
    app.run(debug=True)
```