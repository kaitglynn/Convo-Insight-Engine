# Frontend Documentation

## Main Screen

The main screen (`main_screen.dart`) is divided into two sections for user and Mistral 7 bot interactions. It includes a bottom navigation bar with icons for Home (Chat), Voice Chat, Profile, and Settings.

## Chat Interface

The chat interface (`chat_interface.dart`) includes a text chat and a voice chat. The text chat has an input field, chat bubble display area, emoji and attachment buttons. The voice chat includes a microphone button, voice visualizer, and voice changing options.

## User and Bot Profiles

The user and bot profiles (`user_profile.dart` and `bot_profile.dart`) include profile view/edit functionality (name, avatar, bio) accessible from the navigation bar.

## File Sharing

The file sharing feature (`file_sharing.dart`) includes an attachment feature for various formats, with a preview before sending.

## Chat History and Search

The chat history and search (`chat_history.dart` and `search.dart`) include a history tab and search bar with keyword and filter options.

## Additional Features

The additional features (`additional_features.dart`) include notifications, customizable themes, and a help and support section.

## Creative Touch

The creative touch (`creative_touch.dart`) includes an interactive bot avatar, custom animations, and sound effects.

## Shared Dependencies

The shared dependencies include exported variables (`userProfile`, `botProfile`, `chatHistory`, `fileAttachments`), data schemas (`UserProfileSchema`, `BotProfileSchema`, `ChatHistorySchema`, `FileAttachmentSchema`), DOM element IDs (`mainScreen`, `chatInterface`, `userProfile`, `botProfile`, `fileSharing`, `chatHistory`, `searchBar`, `additionalFeatures`, `creativeTouch`), message names (`chatMessage`, `voiceMessage`, `fileMessage`, `notificationMessage`), and function names (`sendChatMessage()`, `sendVoiceMessage()`, `sendFileMessage()`, `receiveMessage()`, `updateUserProfile()`, `updateBotProfile()`, `searchChatHistory()`, `applyTheme()`, `triggerNotification()`, `animateBotAvatar()`).

## Function Descriptions

- `sendChatMessage()`: Sends chat messages.
- `sendVoiceMessage()`: Sends voice messages.
- `sendFileMessage()`: Sends file messages.
- `receiveMessage()`: Receives messages.
- `updateUserProfile()`: Updates user profile.
- `updateBotProfile()`: Updates bot profile.
- `searchChatHistory()`: Searches chat history.
- `applyTheme()`: Applies themes.
- `triggerNotification()`: Triggers notifications.
- `animateBotAvatar()`: Animates bot avatar.