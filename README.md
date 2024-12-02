# Book App

**Book App** is an iOS mobile application designed to make book exploration and organization seamless and enjoyable. It offers a tailored experience, enabling users to discover new books, manage their library, and explore features that enrich their reading journey. From uncovering the latest releases to tracking favorite titles, the app serves as a comprehensive hub for book enthusiasts. Its sleek design and intuitive interface make it accessible to all readers, whether they are casual users or devoted book lovers.

This project is developed with a focus on precision and modern iOS design principles. It provides a robust, responsive, and engaging platform suited to a wide range of readers. The app incorporates versatile layouts, dynamic features, and a fluid navigation experience to maximize usability. With its seamless design, it ensures that every interaction feels intuitive and smooth. By upholding high standards of development, it reflects a commitment to quality, reliability, and long-term user satisfaction.

## Built With

This mobile application was developed using the following tools, technologies, and resources:
- **Xcode**
- **Swift**
- **Alamofire**
- **SwiftyJSON**
- **Core Data**
- **RealmSwift**
- **ShimmerSwift**
- **FakeRESTApi Books API** — [Reference link](https://fakerestapi.azurewebsites.net)

## Prerequisites

Before starting, ensure the following are installed on your system:
- **macOS Catalina or later**
  - Download the [macOS Catalina](https://apps.apple.com/us/app/macos-catalina/id1466841314) or a newer version.
  - Follow the [installation guide](https://support.apple.com/en-us/102662) to install and set it up on your system.
  - Use a [bootable installer](https://support.apple.com/en-us/101578) for a clean installation if required.
- **Xcode and Command Line Tools**
  - Download the [Xcode](https://developer.apple.com/xcode/) and [Command Line Tools](https://developer.apple.com/download/all/).
  - Follow the [installation guide](https://developer.apple.com/documentation/xcode/) to install and set it up on your system.
  - Ensure the latest Xcode version compatible with your macOS is installed for optimal performance.
- **Ruby Version Manager (RVM)**
  - Install the [Ruby Version Manager (RVM)](https://rvm.io/rvm/install) by running the following command in your terminal:
    ```
    curl -L https://get.rvm.io | bash -s stable
    ```
  - Install the latest version of [Ruby](https://rvm.io/rubies/installing) using RVM by running the following command in your terminal:
    ```
    rvm install ruby --latest
    ```
  - Verify your Ruby installation by running the following command in your terminal:
    ```
    ruby -v
    ```
  - If installation fails, refer to the RVM troubleshooting guide.
- **CocoaPods (Dependency Manager)**
  - Install the [CocoaPods](https://guides.cocoapods.org/using/getting-started.html) by running the following command in your terminal:
    ```
    sudo gem install cocoapods
    ```
  - Configure the CocoaPods by running the following command in your terminal:
    ```
    pod setup
    ```
  - Verify your CocoaPods installation by running the following command in your terminal:
    ```
    pod --version
    ```
  - If installation fails, refer to the CocoaPods troubleshooting guide.

## Installation

1. Clone or download the repository to your local machine:
   ```
   git clone https://github.com/ndriqimlahu/book-app.git
   ```
2. Change the working directory to the project folder. You can do this by dragging and dropping the project folder into your terminal:
   ```
   cd /Users/user/Desktop/book-app
   ```
3. Install the dependencies used in this application by running the following command in your terminal:
   ```
   pod install
   ```
4. Open the repository folder in **Xcode**.
5. Locate the `Book App.xcworkspace` file within the project directory and open it to launch the application.
6. Run the application on a simulator or physical device. For testing, you can use the `iPhone 11 (13.5)` simulator.

## Screenshots

Below you can see some additional useful screenshots of what the mobile application looks like and how it can be used:

- Login page | Sign up page | Home page — Welcome to the Book app
<div>
  <img src="https://raw.githubusercontent.com/ndriqimlahu/book-app/main/Preview/01-Log%20In%20page%20(Account).png" align="top" width="32%" height="auto">
  <img src="https://raw.githubusercontent.com/ndriqimlahu/book-app/main/Preview/02-Sign%20Up%20page%20(Account).png" align="top" width="32%" height="auto">
  <img src="https://raw.githubusercontent.com/ndriqimlahu/book-app/main/Preview/03-Book%20Main%20page%20(Welcome).png" align="top" width="32%" height="auto">
  <hr>
</div>

- Book Details page — Buy now | Book Subscription page — Fill in the fields for mailing subscription | Book Contact page — Select one of the contact types
<div>
  <img src="https://raw.githubusercontent.com/ndriqimlahu/book-app/main/Preview/04-Book%20Details%20page%20(Buy%20Now).png" align="top" width="32%" height="auto">
  <img src="https://raw.githubusercontent.com/ndriqimlahu/book-app/main/Preview/05-Book%20Subscription%20page%20(Subscribe).png" align="top" width="32%" height="auto">
  <img src="https://raw.githubusercontent.com/ndriqimlahu/book-app/main/Preview/06.1-Book%20Contact%20page%20(Select%20One).png" align="top" width="32%" height="auto">
  <hr>
</div>

- Book Contact page — Facebook has been selected | Book Contact page — Select one of the contact types | Book Contact page — Instagram has been selected
<div>
  <img src="https://raw.githubusercontent.com/ndriqimlahu/book-app/main/Preview/06.2-Book%20Contact%20page%20(Facebook).png" align="top" width="32%" height="auto">
  <img src="https://raw.githubusercontent.com/ndriqimlahu/book-app/main/Preview/06.3-Book%20Contact%20page%20(Select%20One).png" align="top" width="32%" height="auto">
  <img src="https://raw.githubusercontent.com/ndriqimlahu/book-app/main/Preview/06.4-Book%20Contact%20page%20(Instagram).png" align="top" width="32%" height="auto">
  <hr>
</div>

- Book Web page — Find your favorite book | Book Web page — New book releases | Book Map page — Track location with GPS
<div>
  <img src="https://raw.githubusercontent.com/ndriqimlahu/book-app/main/Preview/07.1-Book%20WebView%20page%20(Home).png" align="top" width="32%" height="auto">
  <img src="https://raw.githubusercontent.com/ndriqimlahu/book-app/main/Preview/07.2-Book%20WebView%20page%20(Books).png" align="top" width="32%" height="auto">
  <img src="https://raw.githubusercontent.com/ndriqimlahu/book-app/main/Preview/08.1-Book%20MapView%20page%20(GPS).png" align="top" width="32%" height="auto">
  <hr>
</div>

- Book Map page — Navigate to Prishtina city | Book Map page — Navigate to Vushtrri city | Book Map page — Navigate to Ferizaj city
<div>
  <img src="https://raw.githubusercontent.com/ndriqimlahu/book-app/main/Preview/08.2-Book%20MapView%20page%20(Navigate%20to%20Prishtina).png" align="top" width="32%" height="auto">
  <img src="https://raw.githubusercontent.com/ndriqimlahu/book-app/main/Preview/08.3-Book%20MapView%20page%20(Navigate%20to%20Vushtrri).png" align="top" width="32%" height="auto">
  <img src="https://raw.githubusercontent.com/ndriqimlahu/book-app/main/Preview/08.4-Book%20MapView%20page%20(Navigate%20to%20Ferizaj).png" align="top" width="32%" height="auto">
  <hr>
</div>

- Book Library page — Book List | Book Library page — Adding a new book | Book Library page — New book has been added
<div>
  <img src="https://raw.githubusercontent.com/ndriqimlahu/book-app/main/Preview/09.1-Book%20ApiView%20page%20(Fetching%20data%20from%20API%20endpoint).png" align="top" width="32%" height="auto">
  <img src="https://raw.githubusercontent.com/ndriqimlahu/book-app/main/Preview/09.2-Book%20ApiView%20page%20(Adding%20a%20new%20book).png" align="top" width="32%" height="auto">
  <img src="https://raw.githubusercontent.com/ndriqimlahu/book-app/main/Preview/09.3-Book%20ApiView%20page%20(New%20book%20has%20been%20added).png" align="top" width="32%" height="auto">
  <hr>
</div>

- Book Library page — Updating the new book | Book Library page — New book has been updated | Book Library page — New book has been deleted
<div>
  <img src="https://raw.githubusercontent.com/ndriqimlahu/book-app/main/Preview/09.4-Book%20ApiView%20page%20(Updating%20the%20new%20book).png" align="top" width="32%" height="auto">
  <img src="https://raw.githubusercontent.com/ndriqimlahu/book-app/main/Preview/09.5-Book%20ApiView%20page%20(New%20book%20has%20been%20updated).png" align="top" width="32%" height="auto">
  <img src="https://raw.githubusercontent.com/ndriqimlahu/book-app/main/Preview/09.6-Book%20ApiView%20page%20(New%20book%20has%20been%20deleted).png" align="top" width="32%" height="auto">
  <hr>
</div>

- Home page — Hi again to the Book app
<img src="https://raw.githubusercontent.com/ndriqimlahu/book-app/main/Preview/10-Book%20Home%20page%20(Hi%20again).png" align="top" width="32%" height="auto">
