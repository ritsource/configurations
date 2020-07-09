import unittest

class DummyTest(unittest.TestCase):
    def test_dummy(self):
        self.assertEqual(1, 1)

def main():
    unittest.main()

if __name__ == "__main__":
    main()
