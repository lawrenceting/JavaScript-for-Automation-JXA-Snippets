JsOsaDAS1.001.00bplist00�Vscript_
// NOTE: This example is for creating UI elements only, it doesn't show examples of handling button click events.
//
// NSButton: https://developer.apple.com/library/mac/documentation/cocoa/reference/applicationkit/classes/NSButton_Class/Reference/Reference.html

ObjC.import("Cocoa");

// See https://developer.apple.com/library/mac/documentation/Cocoa/Reference/ApplicationKit/Classes/nswindow_Class/Reference/Reference.html#//apple_ref/doc/constant_group/Window_Style_Masks
// For info about window masks
var styleMask = $.NSTitledWindowMask | $.NSClosableWindowMask | $.NSMiniaturizableWindowMask;

var height = 210;
var width = 250;
var window = $.NSWindow.alloc.initWithContentRectStyleMaskBackingDefer(
	$.NSMakeRect(0, 0, width, height),
	styleMask,
	$.NSBackingStoreBuffered,
	false
);

var btnX = 25;

// NOTE: These use Objective-C constants for bezelStyle and buttonType. All of the available styles and types are documented in the NSButton docs.

var btn = $.NSButton.alloc.initWithFrame($.NSMakeRect(btnX, (height - 40), 200, 25));
btn.title = "Momentary Light Button";
btn.bezelStyle = $.NSRoundedBezelStyle;
btn.buttonType = $.NSMomentaryLightButton;
window.contentView.addSubview(btn);

var pushButton = $.NSButton.alloc.initWithFrame($.NSMakeRect(btnX, (height - 80), 200, 25));
pushButton.title = "Push On/Off Button";
pushButton.bezelStyle = $.NSTexturedSquareBezelStyle;
pushButton.buttonType = $.NSPushOnPushOffButton;
window.contentView.addSubview(pushButton);

// NOTE: Im not 100% why this is useful. Most of the buttonStyles don't show the effects of the toggle
var toggleButton = $.NSButton.alloc.initWithFrame($.NSMakeRect(btnX, (height - 120), 200, 25));
toggleButton.title = "Toggle Button";
toggleButton.bezelStyle = $.NSTexturedSquareBezelStyle;
toggleButton.buttonType = $.NSToggleButton;
window.contentView.addSubview(toggleButton);

var switchButton = $.NSButton.alloc.initWithFrame($.NSMakeRect(btnX, (height - 160), 200, 25));
switchButton.title = "Switch Button (Check Box)";
switchButton.buttonType = $.NSSwitchButton;
switchButton.state = $.NSOnState; // $.NSOffState
window.contentView.addSubview(switchButton);

var radioButton = $.NSButton.alloc.initWithFrame($.NSMakeRect(btnX, (height - 190), 200, 25));
radioButton.title = "Radio Button";
radioButton.buttonType = $.NSRadioButton;
window.contentView.addSubview(radioButton);

// NOTE: There are a few more buttonTypes available. Most are slight variations similar to NSMomentaryLightButton.

window.center;
window.title = "NSButton Example";
window.makeKeyAndOrderFront(window);
                              
% jscr  ��ޭ