📁 Project Structure
Wingz/

├── Global Resource/

   ├── Global_Keyword.robot        # Common keywords used across test suites

   └── Global_Variable.robot       # Global variables (URLs, credentials, etc.)

├── My Profile/

   ├── Profile_Test.robot          # Main test suite for profile-related scenarios

   └── Resources/

│       ├── Profile_Keyword.robot   # Modular keywords specific to profile features

│       └── Profile_Variables.robot# Variables scoped to profile tests


🚀 Getting Started
Prerequisites
- Python 3.8+
- Node.js (required by BrowserLibrary)
- Robot Framework
- BrowserLibrary
Installation via terminal
> pip install robotframework
> pip install robotframework-browser
> rfbrowser init

💡 Tip: Run rfbrowser init only once to download the required browser binaries.

🧪 How to Run Tests
Navigate to the project root and execute via CMD:
robot My\ Profile/Profile_Test.robot

Or run all tests recursively:
robot .

🧩 Modular Design Philosophy
This project follows a modular resource strategy:
- Global Resources: Shared keywords and variables for cross-suite consistency.
- Feature-Specific Resources: Encapsulated logic and data for each feature (e.g., My Profile).
- Separation of Concerns: Keywords and variables are split for maintainability and clarity.

👨‍💻 Author
Marvic
Software QA | Automation Test | Manual Test
Passionate about modular design, scalable testing, and building future-proof frameworks.
