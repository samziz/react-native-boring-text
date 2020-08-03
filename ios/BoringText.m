// BoringText.m
#import <UIKit/UIKit.h>
#import <OSLog/OSLog.h>

#import <React/RCTViewManager.h>

@interface BoringText : RCTViewManager
@end

@implementation BoringText
{
    UILabel *label;
    NSNumber *fontSize;
}

RCT_EXPORT_MODULE()

RCT_EXPORT_VIEW_PROPERTY(text, NSString);

- (UIView *)view
{
  label = [[UILabel alloc] init];
  label.font = [UIFont systemFontOfSize:30];
  label.textAlignment = NSTextAlignmentCenter;
  return label;
}

RCT_CUSTOM_VIEW_PROPERTY(fontSize, NSNumber, UILabel)
{
  NSLog(@"Setting font size to %ld", fontSize);
  UIFont *font = view.font;
  view.font = [font fontWithSize:[fontSize doubleValue]];
}

@end