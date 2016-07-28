# Project setup steps #
1. Navigate to the directory in which you store programming projects
2. Clone this repository into that directory
3. Navigate into the project directory you cloned
4. Enter `pod install` to install the application's dependencies
5. Open Xcode and select `open another project`
6. Use Xcode's file navigator to locate the directory you cloned in step 2
7. Select the directory and click Open
8. Press the 'Play' button located in the top-left portion of the Xcode window
  * Xcode's device simulator will open and load the app. This may take a minute or two the first time you do it.

# Troubleshooting
It is likely that the first time you run/simulate the app, you'll see this error `Error Domain=kCLErrorDomain Code=0 "(null)"`, and you won't see the blue dot appear to represent the user's location on the map. If this happens:

1. Select `Debug` from Xcode's toolbar
2. Select `Simulate Location` from the Debug dropdown
3. Select `Default` from the list of available locations

If this doesn't resolve the issue, try the following:

1. Select `Product` from the Xcode toolbar
2. Select `Scheme` > `Edit Scheme` from the dropdown
  * _A settings window appears_
3. Select `Run` from the left-hand menu, and select `Options` from the top menu
4. For the `Default Location` setting, choose `default`
