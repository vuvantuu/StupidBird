//
//  ViewController.h
//  FlyingBird
//
//  Created by Apple on 10/07/2019.
//  Copyright © 2019 tuuvv. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIGestureRecognizerDelegate>{
    __weak IBOutlet UIImageView *conchim;
    __weak IBOutlet UIImageView *ongduoi1;
    __weak IBOutlet UIImageView *ongduoi2;
    __weak IBOutlet UIImageView *ongduoi3;
    __weak IBOutlet UIImageView *ongtren1;
    __weak IBOutlet UIImageView *ongtren2;
    __weak IBOutlet UIImageView *ongtren3;
    __weak IBOutlet UIImageView *nendat;
    __weak IBOutlet UIImageView *btntap;
    __weak IBOutlet UIButton *btnstart;
    __weak IBOutlet UILabel *score;
}
- (IBAction)startgame:(id)sender;
- (IBAction)BayLen:(id)sender;


@end

