JsOsaDAS1.001.00bplist00�Vscript_�ObjC.import("Cocoa");

var styleMask = $.NSTitledWindowMask | $.NSClosableWindowMask | $.NSMiniaturizableWindowMask;

var window = $.NSWindow.alloc.initWithContentRectStyleMaskBackingDefer(
	$.NSMakeRect(0, 0, 900, 600),
	styleMask,
	$.NSBackingStoreBuffered,
	false
);

var splitView = $.NSSplitView.alloc.initWithFrame(window.contentView.bounds);
var left = $.NSView.alloc.initWithFrame(window.contentView.bounds);
var center = $.NSView.alloc.initWithFrame(window.contentView.bounds);
var right = $.NSView.alloc.initWithFrame(window.contentView.bounds);
splitView.addSubview(left);
splitView.addSubview(center);
splitView.addSubview(right);

splitView.vertical = true;
splitView.dividerStyle = $.NSSplitViewDividerStyleThin;
splitView.dividerColor = $.NSColor.darkGrayColor;
splitView.adjustSubviews;

window.contentView.addSubview(splitView);

window.center;
window.title = "NSSplitView Example";
window.makeKeyAndOrderFront(window);                              �jscr  ��ޭ