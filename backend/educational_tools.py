```python
import random
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import cosine_similarity

class EducationalTools:
    def __init__(self):
        self.quiz_questions = []
        self.summarizer = TfidfVectorizer()

    def generate_quiz(self, topic, num_questions):
        # This is a placeholder function. In a real-world application, you would integrate with an API or database to fetch quiz questions.
        questions = ["What is the capital of France?", "Who wrote 'To Kill a Mockingbird'?", "What is the square root of 144?"]
        self.quiz_questions = random.sample(questions, num_questions)
        return self.quiz_questions

    def summarize_text(self, text):
        # This is a simple implementation of text summarization using TF-IDF and cosine similarity.
        # In a real-world application, you would likely use a more advanced method, possibly involving AI.
        sentences = text.split(".")
        tfidf_matrix = self.summarizer.fit_transform(sentences)
        similarity_matrix = cosine_similarity(tfidf_matrix)
        ranked_sentences = sorted(((similarity_matrix[i,j],s) for i,j,s in zip(*similarity_matrix.nonzero())), reverse=True)
        return ". ".join([s for _,s in ranked_sentences[:5]])

educational_tools = EducationalTools()
```