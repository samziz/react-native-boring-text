// BoringText.m
#import <UIKit/UIKit.h>

#import <React/RCTViewManager.h>

@interface BoringText : RCTViewManager
@end

@implementation BoringText
{
    NSNumber *fontSize;
    UILabel *label;
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
  label.font = [UIFont systemFontOfSize:[fontSize floatValue]];
}


@end