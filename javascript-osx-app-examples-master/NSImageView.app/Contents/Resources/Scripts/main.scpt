JsOsaDAS1.001.00bplist00�Vscript_�ObjC.import("Cocoa");

var padding = 20;

var img = $.NSImage.alloc.initWithContentsOfURL($.NSURL.URLWithString("https://farm3.staticflickr.com/2939/14782056571_f513293daa_c.jpg"));

var imgView = $.NSImageView.alloc.initWithFrame($.NSMakeRect(padding * 0.5, padding * 0.5, img.size.width, img.size.height));
imgView.setImage(img);

var styleMask = $.NSTitledWindowMask | $.NSClosableWindowMask | $.NSMiniaturizableWindowMask;
var window = $.NSWindow.alloc.initWithContentRectStyleMaskBackingDefer(
	$.NSMakeRect(0, 0, img.size.width + padding, img.size.height + padding),
	styleMask,
	$.NSBackingStoreBuffered,
	false
);

window.contentView.addSubview(imgView);
window.center;
window.title = "NSImageView Example";
window.makeKeyAndOrderFront(window);
                               jscr  ��ޭ