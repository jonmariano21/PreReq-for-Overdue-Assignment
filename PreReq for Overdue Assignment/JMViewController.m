//
//  JMViewController.m
//  PreReq for Overdue Assignment
//
//  Created by JONATHAN MARIANO on 6/22/14.
//
//

#import "JMViewController.h"

@interface JMViewController ()

@end

@implementation JMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"%@", self.textView.text);
    
    //Set Delegate property to self
    self.textView.delegate = self;// Allows us to access the textView Method at the bottom (shouldChangeText....)
    
    NSMutableArray *myMutableArray = [ @[@100, @"hello", @300, @"end"] mutableCopy ];
    NSLog(@"%@", myMutableArray);
    [myMutableArray insertObject:@"this should be first" atIndex:0]; //INSERT to front of array
    NSLog(@"%@", myMutableArray);
    [myMutableArray removeObjectAtIndex: 2]; //REMOVE obj at index 2
    NSLog(@"%@", myMutableArray);

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
    
    // Hide keyboard if user presses return making new lines (\n)
    if( [text isEqualToString:@"\n"] ){
        [self.textView resignFirstResponder];
        return NO; //NO b/c we dont want any replacement to occur
    }else{
        return YES; //Continue adding text to textView
    }
    
    
}




- (IBAction)processDateButtonPressed:(UIButton *)sender {
    
    NSDate *date = self.datePicker.date;
    
    //Create NSDate formatter obj
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    
    [formatter setDateFormat: @"yyyy-MM-dd"];
    
    // String representation of the date
    NSString *stringFromDate = [formatter stringFromDate: date];
    
    NSLog(@"%@", stringFromDate);
    
    //NSDate has a METHOD:date that returns the current date
    NSLog(@"%@", [NSDate date]);
    
    int timeInterval = [date timeIntervalSince1970];
    NSLog(@"%i", timeInterval);
    

}



@end
