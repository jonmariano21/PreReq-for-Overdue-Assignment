//
//  JMViewController.h
//  PreReq for Overdue Assignment
//
//  Created by JONATHAN MARIANO on 6/22/14.
//
//

#import <UIKit/UIKit.h>

@interface JMViewController : UIViewController <UITextViewDelegate>

@property (strong, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;

//BUTTON
- (IBAction)processDateButtonPressed:(UIButton *)sender;

@end
