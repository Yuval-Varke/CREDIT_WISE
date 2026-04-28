# 🏦 CreditWise: AI-Powered Loan Approval System

CreditWise is a full-stack machine learning application that predicts the likelihood of loan approval based on applicant data. It features a robust **Random Forest** model served via a **FastAPI** backend and a premium **Streamlit** web interface.

## 🚀 Live Demo
*   **Web Application**: [https://creditwise-uhfvanrbxxmzbrufbcqukn.streamlit.app/](https://creditwise-uhfvanrbxxmzbrufbcqukn.streamlit.app/)
*   **API Documentation**: [https://credit-wise-api.onrender.com/docs](https://credit-wise-api.onrender.com/docs)

## ✨ Features
*   **Real-time Prediction**: Instant analysis of loan applications with a confidence score.
*   **Machine Learning Pipeline**: Custom preprocessing including missing value imputation, label encoding, and one-hot encoding.
*   **Premium UI/UX**: A clean, modern interface built with Streamlit and custom CSS.
*   **Production Ready**: Decoupled architecture with a dedicated FastAPI backend and Streamlit frontend.

## 🛠️ Tech Stack
*   **Frontend**: [Streamlit](https://streamlit.io/)
*   **Backend**: [FastAPI](https://fastapi.tiangolo.com/)
*   **ML Framework**: [Scikit-learn](https://scikit-learn.org/)
*   **Data Processing**: Pandas, NumPy
*   **Deployment**: Render (API) & Streamlit Cloud (UI)

## 📊 Model Information
*   **Algorithm**: Random Forest Classifier
*   **Training Accuracy**: ~90%
*   **Features**: Income, Credit Score, DTI Ratio, Dependents, Loan Amount, Property Area, and more.

## 💻 Local Setup

### 1. Clone the repository
```bash
git clone https://github.com/your-username/credit-wise.git
cd credit-wise
```

### 2. Install dependencies
```bash
pip install -r requirements.txt
```

### 3. Train the model (optional)
If you want to re-train the model artifacts:
```bash
python train_model.py
```

### 4. Run the application
Start the FastAPI backend:
```bash
python main.py
```

In a new terminal, start the Streamlit UI:
```bash
streamlit run app.py
```

## 🏗️ Project Structure
```text
├── app.py                # Streamlit frontend
├── main.py               # FastAPI backend
├── train_model.py        # Model training & serialization script
├── model_artifacts.joblib # Saved model and preprocessors
├── requirements.txt      # Project dependencies
└── loan_approval_data.csv # Dataset
```

## 📄 License
Distributed under the MIT License.
