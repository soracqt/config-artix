// To enable VA-API
// https://wiki.archlinux.org/title/firefox#Hardware_video_acceleration
user_pref("media.ffmpeg.vaapi.enabled", true);
// Disable AV1 decoding
user_pref("media.av1.enabled", false);
// To get working pixiv.net
user_pref("network.http.referer.XOriginPolicy", 0);
// Enable copy and paste on web eg. github, scrapbox
user_pref("dom.allow_cut_copy", true);
user_pref("dom.event.clipboardevents.enabled", true);
// 4504
user_pref("privacy.resistFingerprinting.letterboxing", false);
// 0801
user_pref("keyword.enabled", true);
/* override recipe: enable DRM and let me watch videos ***/
   // user_pref("media.gmp-widevinecdm.enabled", true); // 2021 default-inactive in user.js
user_pref("media.eme.enabled", true); // 2022
