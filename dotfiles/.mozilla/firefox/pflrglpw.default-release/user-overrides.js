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
// https://github.com/arkenfox/user.js/wiki/3.2-Overrides-%5BCommon%5D#-fingerprinting
user_pref("privacy.resistFingerprinting.letterboxing", false);
