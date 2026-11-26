## Lab Activity 1: discussion

**Question:** Discuss how you integrate the Image to the newsfeed_card.dart
and make it dynamic whether it has image or not.

**Answer:**
I added an optional boolean parameter `hasImage` to the `NewsfeedCard`
widget. Inside `build()`, I used a ternary expression: if `hasImage == true`,
the card displays an `Image.asset(...)` widget; otherwise it returns
`SizedBox.shrink()`, an empty widget that takes no space. This way each post
decides for itself whether to show a picture, and posts without an image have
no blank gap.

To make the images dynamic per post, I also added `profileImage` and
`postImage` parameters to `NewsfeedCard`. Each card in
`newsfeed_screen.dart` passes its own image path, so Steve Rogers uses
`capt.jpg` and Tony Stark uses `iron_man.jpg`.

Other enhancements: I replaced the person icons with `CircleAvatar` for the
profile pictures, and changed Like, Comment, and Share into `TextButton.icon`
widgets.

## Lab Activity 2: Discussion

### Question

Laboratory Discussion: Discuss how you manage to do the posts and the
notification efficiently. Also, how you have accomplished the enhancements,
state the challenges and how you address them.

### Answer

**Posts and notifications.** I stopped writing one widget call per post.
In `newsfeed_screen.dart` I created a `Post` class (userName, date, content,
numOfLikes, hasImage, optional imagePath, optional profileImage) and a list of
`Post` objects. `NewsfeedScreen` renders the list with `ListView.builder`, so
the screen builds only the cards that are visible, and adding a post means
adding one entry to the list. Notifications work the same way:
`notification_screen.dart` holds 20 entries and draws them with
`ListView.separated`. Each row is one reusable `NotificationWidget`
(`widgets/notification.dart`) that shows the name, "Posted: <post>", and a
description. I used `const` lists, so the data is never rebuilt. The `provider`
package is installed in `pubspec.yaml`, but I did not use it yet: the lists do
not change at runtime, so plain lists were enough.

**Enhancement 1: dynamic posts.** Each `Post` has its own like count and its
own date. `NewsfeedCard` takes `numOfLikes`, `date`, `hasImage`, `imagePath`,
and `profileImage`. The image area has three cases: `hasImage` is false, so
nothing is shown; `hasImage` is true with an `imagePath`, so `Image.asset` is
shown; `hasImage` is true without an `imagePath`, so Flutter's `Placeholder()`
is shown. A post with no `profileImage` shows a colored circle with the
author's initials.

**Enhancement 2: dynamic AppBar title.** `home_screen.dart` keeps a `_titles`
list and shows `_titles[_selectedIndex]`. The title changes when the user taps
a tab or swipes the `PageView`.

**Enhancement 3: more BottomNavigationBar items.** The bar now has Home,
Notifications, and Profile. The `PageView` has one page for each item
(`NewsfeedScreen`, `NotificationScreen`, `ProfileScreen`).

**Enhancement 4: app name.** The app is called Kwentuhan. The name is stored
once as `appName` in `constants.dart` and is used for the AppBar title and the
`MaterialApp` title. I also set it in `AndroidManifest.xml` (`android:label`)
and in the iOS `Info.plist` (`CFBundleDisplayName` and `CFBundleName`).

**Enhancement 5: color palette.** All colors are named constants in
`constants.dart` (`fbPrimary`, `fbSecondary`, `fbDarkPrimary`,
`fbLightPrimary`, `fbTextColorWhite`). Screens use these names, so changing a
value there changes the whole app. Some text and icons still use
`Colors.black` and `Colors.grey`. I plan to move them to named constants.

### Challenges and how I solved them

- **Invalid import.** My files imported `package:material_ui/material_ui.dart`,
  a package that does not exist, which caused more than 100 errors. I replaced
  it with `package:flutter/material.dart`.
- **Fonts and assets.** The fonts were not declared in `pubspec.yaml`, so the
  app fell back to the default font, and the asset folders were nested in the
  wrong place. I declared Frutiger and Klavika using the real `.ttf` file names
  and put `assets/images/` where `pubspec.yaml` expects it.
- **Every post showed the same photo.** The `Post` class had a default
  `profileImage`, so every author got the same picture. I removed the default
  and made `profileImage` optional, with an initials placeholder when it is
  missing.
- **Image sizing.** Images of different sizes made the cards uneven. I set a
  fixed height with `BoxFit.cover` so they crop cleanly, and I noted that
  `pumpkin1.png` is very large and should be compressed.
- **Renaming the app.** The name lives in several places (Dart, Android, iOS),
  so changing only the AppBar was not enough. I used one `appName` constant for
  Dart and edited the platform files separately.
- **Controller cleanup.** The `PageController` was never disposed. I added a
  `dispose()` method in `_HomeScreenState`.