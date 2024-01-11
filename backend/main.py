```python
from flask import Flask, request, jsonify
import ai_services
import external_services
import advanced_features

app = Flask(__name__)

userProfile = {}
botProfile = {}
chatHistory = []
fileAttachments = []

@app.route('/')
def home():
    return "Welcome to Insight Engine!"

@app.route('/userProfile', methods=['GET', 'POST'])
def handle_userProfile():
    if request.method == 'POST':
        userProfile.update(request.json)
        return jsonify(userProfile), 200
    return jsonify(userProfile), 200

@app.route('/botProfile', methods=['GET', 'POST'])
def handle_botProfile():
    if request.method == 'POST':
        botProfile.update(request.json)
        return jsonify(botProfile), 200
    return jsonify(botProfile), 200

@app.route('/chat', methods=['GET', 'POST'])
def handle_chat():
    if request.method == 'POST':
        chatHistory.append(request.json)
        return jsonify(request.json), 200
    return jsonify(chatHistory), 200

@app.route('/file', methods=['POST'])
def handle_file():
    fileAttachments.append(request.json)
    return jsonify(request.json), 200

@app.route('/ai', methods=['POST'])
def handle_ai():
    response = ai_services.runAiServices(request.json)
    return jsonify(response), 200

@app.route('/external', methods=['POST'])
def handle_external():
    response = external_services.integrateExternalServices(request.json)
    return jsonify(response), 200

@app.route('/advanced', methods=['POST'])
def handle_advanced():
    response = advanced_features.enableAdvancedFeatures(request.json)
    return jsonify(response), 200

if __name__ == '__main__':
    app.run(debug=True)
```