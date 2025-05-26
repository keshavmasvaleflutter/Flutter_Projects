# 📰 SwiftBrief - Flutter News App

Welcome to **SwiftBrief**, a sleek and modern 🧭 news app built with **Flutter**!  
Stay updated with the latest headlines and in-depth stories, all in one place.

## 🚀 Features

✨ **Beautiful Splash Screen**  
👤 **User Authentication** (Sign In / Sign Up)  
📰 **News Feed** – Get the latest articles from a news API  
📖 **Detailed News View** – Dive into full stories with ease  
⚙️ **Firebase Integration** – For backend services and authentication  
📱 **Responsive UI** – Adapts seamlessly to all screen sizes  
🧠 **GetX** – Efficient and reactive state management  
🧩 **MVC Architecture** – Clean and maintainable code structure  

## 💡 Tech Stack

- **Flutter** 🐦
- **Dart** 💙
- **Firebase** 🔥
- **GetX** ⚡
- **flutter_screenutil** 📏

## 📁 Folder Structure

lib/

├── config/

├── controllers/

├── model/

├── services/

├── view/

└── main.dart

APK linl:- https://drive.google.com/file/d/16S9QnuZ0LJPyE7WfwgdAD7hOoMIQoPgN/view?usp=sharing 

**Technical Specifications**
- *Flutter Version: 3.29.3 (stable channel)*
- *Dart Version: 3.7.2*
        
Note:- The news API integration has daily request limits, meaning:
    - There's a maximum number of news articles that can be fetched per day
    - Once the limit is reached, news content may not load until the limit resets
    - This is typically due to using a free-tier news API service
