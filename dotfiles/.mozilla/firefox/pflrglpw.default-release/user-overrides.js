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
// https://github.com/bagder/TRRprefs#networktrrcustom_uri
user_pref("network.trr.custom_uri", "https://dns.quad9.net/dns-query");
// https://wiki.mozilla.org/Trusted_Recursive_Resolver
user_pref("network.trr.mode", 2);
user_pref("network.trr.uri", "https://dns.quad9.net/dns-query");
// https://github.com/arkenfox/user.js/issues/1367
user_pref("security.ssl.require_safe_negotiation", false);
// Enable UserCSS
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);
user_pref("browser.tabs.drawInTitlebar", true);
// disable RFP
user_pref("privacy.resistFingerprinting", false);
// disable saving passwords
user_pref("signon.rememberSignons", false);
// use japanese as preffered language
//user_pref("intl.accept_languages", "ja,en-us,en");
// Ctrl+Tab cycles through tabs in recently used order
user_pref("browser.ctrlTab.sortByRecentlyUsed", true);
// pref from RFP, useragent and platform
user_pref("general.useragent.override", "Mozilla/5.0 (Windows NT 10.0; rv:102.0) Gecko/20100101 Firefox/102.0");
user_pref("general.platform.override", "Win32");
// send the target URL as the referer
user_pref("network.http.referer.spoofSource", true);
// https://wiki.archlinux.org/title/Firefox#Right_mouse_button_instantly_clicks_the_first_option_in_window_managers
user_pref("ui.context_menus.after_mouseup", true);
// https://wiki.archlinux.org/title/Firefox#Hardware_video_acceleration
user_pref(" media.navigator.mediadatadecoder_vpx_enabled", true);
// Enable webgl
user_pref("webgl.disabled", false);
// https://www.quad9.net/news/blog/doh-with-quad9-dns-servers/
user_pref("network.trr.bootstrapAddress", "9.9.9.9");
