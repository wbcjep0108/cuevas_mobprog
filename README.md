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