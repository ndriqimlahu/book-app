<!-- PROJECT LOGO -->
<p align="center">
  <img src="https://github.com/ndriqimlahu/ndriqim-lahu-portfolio/blob/main/assets/portfolio/BookApp.png" alt="Logo" width="250" height="250">
  <h3 align="center">Book App</h3>
  <p align="center">
    Ndriçim Lahu
    <br>
    <br>
    <a href="https://github.com/ndriqimlahu/book-app/issues">Report Bug</a>
    ·
    <a href="https://github.com/ndriqimlahu/book-app/issues">Request Feature</a>
  </p>
</p>


<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#copyright">Copyright</a></li>
    <li><a href="#support">Support</a></li>
  </ol>
</details>


<!-- ABOUT THE PROJECT -->
## About The Project

The project called `Book App` is an mobile application which is developed for the iOS platform. This application aims to have an increase in the market in terms of sales of products or books. In this mobile application you can navigate into different pages which are “Login”, “SignUp”, “Books”, “Book Details”, “Contact”, “Subscription”, “MapView”, “WebView” and “Book API”.

This project started from scratch where I worked and completed, also I made some improvements in the front-end and back-end side of Mobile Application Development, such as importing some popular frameworks and libraries to the Podfile, developing and designing the layouts, adding the required assets for application, creating of the controllers, creating of the models, adding the service, creating of the views, management of the storyboard, using of the different component views, using the user location to find in the map, adding the specific book website to application, getting of Books data by calling an API, CRUD functionality with data of API and many more things.


### Built With

This mobile application is based on technologies like below:

* Xcode
* Swift
* Alamofire
* SwiftyJSON
* Core Data
* RealmSwift
* ShimmerSwift


<!-- GETTING STARTED -->
## Getting Started

By getting started with the project, first you need to take a look at the required `Prerequisites` and after that the `Installation` steps.


### Prerequisites

In order to open this mobile application is required to have an Operating System (macOS Catalina 10.15.7), an Tool (Command Line Tools for Xcode 12.4) and an IDE (Xcode 12.4).


### Installation

1. Download the code or Clone the repo:
   ```terminal
   git clone https://github.com/ndriqimlahu/book-app.git
   ```
2. Open the Terminal and type the following command to check the version of Ruby installed on your macOS:
   ```terminal
   ruby -v
   ```
3. In the Terminal type the following command to install the Ruby Version Manager (rvm):
   ```terminal
   curl -L https://get.rvm.io | bash -s stable
   ```
4. Quit and open again the Terminal then type the following command to install the latest version of Ruby:
   ```terminal
   rvm install ruby --latest
   ```
5. Open the Terminal and type the following command to check the version of CocoaPods (dependency manager) installed on your macOS:
   ```terminal
   pod --version
   ```
6. In the Terminal type the following command to install the latest version of CocoaPods:
   ```terminal
   sudo gem install cocoapods
   ```
7. Now in the Terminal type the following command to setup the CocoaPods on your macOS:
   ```terminal
   pod setup
   ```
8. In the Terminal type the following command to change the base directory to project directory by drag and drop the project folder to the Terminal:
   ```terminal
   cd /Users/user/Desktop/book-app
   ```
9. Now in the Terminal type the following command to install all the necessary Frameworks and Libraries which are used in this Application:
   ```terminal
   pod install
   ```
10. Now open the repo folder and choose the Workspace `Book App.xcworkspace` file to open with Xcode.
11. After that you can run and explore this mobile application with simulator by choosing the `iPhone 11 (13.5)` device.


<!-- USAGE -->
## Usage

There you can see some useful additional screenshots of how the project looks like and how can be used.

* Log In page

![01-Log In page](https://user-images.githubusercontent.com/72756158/180626950-81fd1ef0-aada-4d4c-8d5a-fa006c83b5ef.png)

* Sign Up page

![02-Sign Up page](https://user-images.githubusercontent.com/72756158/180626949-85d4ddcd-5438-49f4-8264-bda8c2259730.png)

* Book Main page (Welcome)

![03-Book Main page (Welcome)](https://user-images.githubusercontent.com/72756158/180626966-0862d6dd-811f-4d3d-856c-0a8c9607587e.png)

* Book Details page

![04-Book Details page](https://user-images.githubusercontent.com/72756158/180626980-b38d4ed8-65b9-4e20-a26d-0709be0ac22b.png)

* Book Subscription page

![05 1-Book Subscription page](https://user-images.githubusercontent.com/72756158/180626984-60a6cbb6-f25e-4756-b669-d1255c628e7d.png)

* Book Subscription page (Type of Contact)

![05 2-Book Subscription page (Type of Contact)](https://user-images.githubusercontent.com/72756158/180626992-30f2968e-c4ba-42ec-8a0d-a0099b94f3b9.png)

* Book Contact page (Select One)

![06 1-Book Contact page (Select One)](https://user-images.githubusercontent.com/72756158/180627001-5850a0c1-bd5f-4c71-92c6-76ab4d29c926.png)

* Book Contact page (Facebook)

![06 2-Book Contact page (Facebook)](https://user-images.githubusercontent.com/72756158/180627011-88b7f256-6f8e-4f12-a911-0ee104b90d2d.png)

* Book Contact page (Instagram)

![06 3-Book Contact page (Instagram)](https://user-images.githubusercontent.com/72756158/180627028-a9c4f497-9b58-4f2b-b7ea-a35fdb0644ed.png)

* Book WebView page (Home)

![07 1-Book WebView page (Home)](https://user-images.githubusercontent.com/72756158/180627032-64fa1b15-bfcb-47fb-bb33-e5578d820607.png)

* Book WebView page (Books)

![07 2-Book WebView page (Books)](https://user-images.githubusercontent.com/72756158/180627045-4a10dd50-dbf7-449f-82f7-870dfe6adfba.png)

* Book MapView page (GPS)

![08 1-Book MapView page (GPS)](https://user-images.githubusercontent.com/72756158/180627053-4b1094e0-939c-499f-aa80-3140c447e685.png)

* Book MapView page (Navigate to Prishtina)

![08 2-Book MapView page (Navigate to Prishtina)](https://user-images.githubusercontent.com/72756158/180627055-0189e999-74a2-46ea-a2f8-d8ca3ed5e812.png)

* Book MapView page (Navigate to Vushtrri)

![08 3-Book MapView page (Navigate to Vushtrri)](https://user-images.githubusercontent.com/72756158/180627079-f42d5fee-fc0c-4078-8563-792bd684780a.png)

* Book MapView page (Navigate to Ferizaj)

![08 4-Book MapView page (Navigate to Ferizaj)](https://user-images.githubusercontent.com/72756158/180627084-d5af7e80-185c-443d-b274-2655c9cb7085.png)

* Book ApiView page (Fetching data from API endpoint)

![09 1-Book ApiView page (Fetching data from API endpoint)](https://user-images.githubusercontent.com/72756158/180627092-2d175913-83e7-4554-a117-00e7350c5a04.png)

* Book ApiView page (Adding a new book)

![09 2-Book ApiView page (Adding a new book)](https://user-images.githubusercontent.com/72756158/180627099-b47f4b7b-91d1-4ef2-9758-06f4d568a138.png)

* Book ApiView page (New book has been added)

![09 3-Book ApiView page (New book has been added)](https://user-images.githubusercontent.com/72756158/180627102-df0d7ee0-4ec0-48a7-9a4d-1ffcd27db944.png)

* Book ApiView page (Updating the new book)

![09 4-Book ApiView page (Updating the new book)](https://user-images.githubusercontent.com/72756158/180627105-e10c6e18-aebd-4520-98e5-7cf7e82fe93f.png)

* Book ApiView page (New book has been updated)

![09 5-Book ApiView page (New book has been updated)](https://user-images.githubusercontent.com/72756158/180627110-a4d12193-69b0-487d-81f8-d50e92818c12.png)

* Book ApiView page (New book has been deleted)

![09 6-Book ApiView page (New book has been deleted)](https://user-images.githubusercontent.com/72756158/180627115-ad4fdb22-31bf-408d-afc5-2a15ffda4e91.png)

* Book Home page (Hi again)

![10-Book Home page (Hi again)](https://user-images.githubusercontent.com/72756158/180627123-76798db6-a207-44fd-9ae9-d3bed715b529.png)


<!-- COPYRIGHT -->
## Copyright

See the `COPYRIGHT` file for more information.


<!-- SUPPORT -->
## Support

Issues and feature requests are welcome!

Give a ⭐️ if you liked this project!

Support the author on <a href="https://www.buymeacoffee.com/ndriqimlahu">Buy Me a Coffee</a>
