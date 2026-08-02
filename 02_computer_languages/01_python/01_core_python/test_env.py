import sys

print("===================================")
print("   PYTHON ENVIRONMENT TEST")
print("===================================\n")

# 1. Print current Python interpreter being used
print(f"🐍 Python Executable: {sys.executable}\n")

# 2. Test pandas import
try:
    import pandas as pd
    print(f"✅ pandas (v{pd.__version__}) imported successfully!")
    print(f"   Path: {pd.__file__}\n")
except ImportError as e:
    print(f"❌ Failed to import pandas: {e}\n")

# 3. Test requests import
try:
    import requests
    print(f"✅ requests (v{requests.__version__}) imported successfully!")
    print(f"   Path: {requests.__file__}\n")
except ImportError as e:
    print(f"❌ Failed to import requests: {e}\n")

print("===================================")