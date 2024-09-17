On iOS 18, importing the SafariServices module into the project causes NavigationStack to push the view twice.

If you delete the file that contains SafariServices completely from the project or comment out every line in that file, NavigationStack works perfectly.

If you know why, please let me know, or you can send PR.
