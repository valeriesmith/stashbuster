###Mockups for Stashbuster#

I am building this app to help me (and hopefully others) organize and catalogue our unwieldy hoard of patterns, fabric, sewing supplies, and most importantly, ideas. 

The project is ongoing. Stashbuster will allow users to organize their resources into projects, to preview how a fabric and pattern will look together, and  to solicit feedback from other users about design or technical issues, and to keep track of current, upcoming, and past projects.

In the past, I used Evernote and Pinterest to try to keep track of all of this stuff, but I decided to build an app myself. I have way more ideas than time, and I wanted some way to keep everything organized, and to share with other friends.

Stashbuster is built in Rails, with Javascript and JQuery UI for the front end.  I'm using Bootstrap and SASS for the design layer, but I'm trying to avoid a generic "built in Bootstrap" look.

Progress: Users currently have the ability to add, edit, delete, and view individual fabric collections. This is the same code I'll use for patterns and pattern collections.  I've also implemented image upload, password storing with bcrypt, and session based authorization.

##Sign-Up##

This is the landing page for users who are new or not logged in.  Simple, standard, self-explanatory.  After signing up with an email and password, the user would be directed to the profile page, or allowed to skip advanced setup until later.

A link to Sign Up and Login will also be part of the standard page layout on all public pages. If there is an active session, a link to Log out appears instead.

![Sign Up](https://github.com/valeriegsmith/mockups/imgs/Signup.png "Sign Up")

![Log In](https://github.com/valeriegsmith/mockups/imgs/Login.png "Log In")

##Profile Page##

Users can upload an avatar, select geographical location, or change password.  The administrator has access to all other user pages but if a user tries to access an account not his/her own by changing the URL, it redirects back to login.

![Profile Page](https://github.com/valeriegsmith/mockups/imgs/Profile_Settings.png "Profile Page")

##Dashboard##

This is the landing page for users who are logged in. Users will be able to choose what elements of this page to share with friends or other app users.  This page contains previews of recently completed projects, recently acquired fabric and patterns, social activity, time spent sewing, and fabric used vs fabric acquired.

![Dashboard](https://github.com/valeriegsmith/mockups/imgs/Dashboard.png "Dashboard")

##To come:##

Gallery Page
Fabric/Pattern Detail Page
Project Page
Comments (disqus?)
Friends/Social


