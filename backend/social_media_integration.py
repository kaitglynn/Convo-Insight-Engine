```python
import requests
from requests_oauthlib import OAuth1

class SocialMediaIntegration:
    def __init__(self):
        self.api_keys = {
            'twitter': {
                'api_key': 'YOUR_TWITTER_API_KEY',
                'api_secret_key': 'YOUR_TWITTER_API_SECRET_KEY',
                'access_token': 'YOUR_TWITTER_ACCESS_TOKEN',
                'access_token_secret': 'YOUR_TWITTER_ACCESS_TOKEN_SECRET'
            },
            'facebook': {
                'access_token': 'YOUR_FACEBOOK_ACCESS_TOKEN'
            }
        }

    def get_twitter_auth(self):
        auth = OAuth1(
            self.api_keys['twitter']['api_key'],
            self.api_keys['twitter']['api_secret_key'],
            self.api_keys['twitter']['access_token'],
            self.api_keys['twitter']['access_token_secret']
        )
        return auth

    def get_tweets(self, username, count=10):
        url = f'https://api.twitter.com/1.1/statuses/user_timeline.json?screen_name={username}&count={count}'
        response = requests.get(url, auth=self.get_twitter_auth())
        return response.json()

    def get_facebook_posts(self, page_id, count=10):
        url = f'https://graph.facebook.com/{page_id}/posts?access_token={self.api_keys["facebook"]["access_token"]}&limit={count}'
        response = requests.get(url)
        return response.json()

social_media = SocialMediaIntegration()
print(social_media.get_tweets('twitter_username'))
print(social_media.get_facebook_posts('facebook_page_id'))
```