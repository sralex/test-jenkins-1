import unittest
from main import app



class RestTest(unittest.TestCase):
    
    def setUp(self):
        self.app = app.test_client()

    def test_successful_rest(self):

        response = self.app.get('/')
        self.assertEqual(200,response.status_code)
