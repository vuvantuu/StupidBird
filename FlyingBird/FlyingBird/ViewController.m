//
//  ViewController.m
//  FlyingBird
//
//  Created by Apple on 10/07/2019.
//  Copyright © 2019 tuuvv. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
NSTimer *timer;
- (void)viewDidLoad {
    [super viewDidLoad];
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"bg.png"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    
    CGRect frameOngDuoi1 = ongduoi1.frame;
    frameOngDuoi1.origin.x = 320 + 200;
     frameOngDuoi1.origin.y = arc4random()%300+100;
    ongduoi1.frame = frameOngDuoi1;
    CGRect frameOngDuoi2 = ongduoi2.frame;
    frameOngDuoi2.origin.x = 320 + 200 + 90 + 200;
     frameOngDuoi2.origin.y = arc4random()%300+100;
    ongduoi2.frame = frameOngDuoi2;
    CGRect frameOngDuoi3 = ongduoi3.frame;
    frameOngDuoi3.origin.x = 320 + 200 + 90 + 200 + 90 + 200;
     frameOngDuoi3.origin.y = arc4random()%300+100;
    ongduoi3.frame = frameOngDuoi3;
   
    
    CGRect frameOngTren1 = ongtren1.frame;
    frameOngTren1.origin.x = 320 + 200;
    frameOngTren1.origin.y = frameOngDuoi1.origin.y - 120 - 440;
    ongtren1.frame = frameOngTren1;
    CGRect frameOngTren2 = ongtren2.frame;
    frameOngTren2.origin.x = 320 + 200 + 90 + 200;
    frameOngTren2.origin.y = frameOngDuoi2.origin.y - 120 - 440;
    ongtren2.frame = frameOngTren2;
    CGRect frameOngTren3 = ongtren3.frame;
    frameOngTren3.origin.x = 320 + 200 + 90 + 200 + 90 + 200;
    frameOngTren3.origin.y = frameOngDuoi3.origin.y - 120 - 440;
    ongtren3.frame = frameOngTren3;
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)startgame:(id)sender {
    timer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(DiChuyen) userInfo:nil repeats:YES];
    btnstart.hidden = YES;
}

- (IBAction)BayLen:(id)sender {
    CGRect frameConChim = conchim.frame;
    frameConChim.origin.y -= 60;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.3];
    conchim.frame = frameConChim;
    [UIView commitAnimations];
}
-(void) DiChuyen{
    // chay ong duoi 1 va ong tren 1
    CGRect frameOngDuoi1 = ongduoi1.frame;
    frameOngDuoi1.origin.x -= 1;
    ongduoi1.frame = frameOngDuoi1;
    CGRect frameOngTren1 = ongtren1.frame;
    frameOngTren1.origin.x -= 1;
    ongtren1.frame = frameOngTren1;
    // chay ong duoi 2 va ong tren 2
    CGRect frameOngDuoi2 = ongduoi2.frame;
    frameOngDuoi2.origin.x -= 1;
    ongduoi2.frame = frameOngDuoi2;
    CGRect frameOngTren2 = ongtren2.frame;
    frameOngTren2.origin.x -= 1;
    ongtren2.frame = frameOngTren2;
    // chay ong duoi 3 va ong tren 3
    CGRect frameOngDuoi3 = ongduoi3.frame;
    frameOngDuoi3.origin.x -= 1;
    ongduoi3.frame = frameOngDuoi3;
    CGRect frameOngTren3 = ongtren3.frame;
    frameOngTren3.origin.x -= 1;
    ongtren3.frame = frameOngTren3;
    //ong duoi 1 ong tren 1 quay lai quay lai
    if(frameOngDuoi1.origin.x== -90){
        frameOngDuoi1.origin.x = frameOngDuoi3.origin.x + 90 +200;
        frameOngDuoi1.origin.y = arc4random()%300+100;
        ongduoi1.frame = frameOngDuoi1;
        frameOngTren1 = ongtren1.frame;
        frameOngTren1.origin.x = frameOngTren3.origin.x + 90 +200;
        frameOngTren1.origin.y = frameOngDuoi1.origin.y - 120 - 440;
        ongtren1.frame = frameOngTren1;
        [self Congdiem];
    }
    //ong duoi 2 ong tren 2 quay lai quay lai
    if(frameOngDuoi2.origin.x== -90){
        frameOngDuoi2.origin.x = frameOngDuoi1.origin.x + 90 +200;
        frameOngDuoi2.origin.y = arc4random()%300+100;
        ongduoi2.frame = frameOngDuoi2;
        frameOngTren2 = ongtren2.frame;
        frameOngTren2.origin.x = frameOngTren1.origin.x + 90 +200;
        frameOngTren2.origin.y = frameOngDuoi2.origin.y - 120 - 440;
        ongtren2.frame = frameOngTren2;
        [self Congdiem];
    }
    //ong duoi 3 ong tren 3 quay lai quay lai
    if(frameOngDuoi3.origin.x== -90){
        frameOngDuoi3.origin.x = frameOngDuoi2.origin.x + 90 +200;
        frameOngDuoi3.origin.y = arc4random()%300+100;
        ongduoi3.frame = frameOngDuoi3;
        frameOngTren3 = ongtren3.frame;
        frameOngTren3.origin.x = frameOngTren2.origin.x + 90 +200;
        frameOngTren3.origin.y = frameOngDuoi3.origin.y - 120 - 440;
        ongtren3.frame = frameOngTren3;
        [self Congdiem];
    }
    //di chuyen con chim
    CGRect FrameConChim = conchim.frame;
    FrameConChim.origin.y += 1;
    conchim.frame = FrameConChim;
    //kiem tra con chim cham vao ong duoi 1
    CGRect boundConChim = [conchim convertRect:conchim.bounds toView:nil];
    CGRect boundOngDuoi1 = [ongduoi1 convertRect:ongduoi1.bounds toView:nil];
    Boolean ConChim_OngDuoi1 = CGRectIntersectsRect(boundConChim, boundOngDuoi1);
    
    //kiem tra con chim cham vao ong duoi 2
    CGRect boundOngDuoi2 = [ongduoi2 convertRect:ongduoi2.bounds toView:nil];
    Boolean ConChim_OngDuoi2 = CGRectIntersectsRect(boundConChim, boundOngDuoi2);
    
    //kiem tra con chim cham vao ong duoi 3
    CGRect boundOngDuoi3 = [ongduoi3 convertRect:ongduoi3.bounds toView:nil];
    Boolean ConChim_OngDuoi3 = CGRectIntersectsRect(boundConChim, boundOngDuoi3);
    
    //kiem tra con chim cham vao ong tren 1
    CGRect boundOngTren1= [ongtren1 convertRect:ongtren1.bounds toView:nil];
    Boolean ConChim_OngTren1 = CGRectIntersectsRect(boundConChim, boundOngTren1);
    
    //kiem tra con chim cham vao ong tren 2
    CGRect boundOngTren2= [ongtren2 convertRect:ongtren2.bounds toView:nil];
    Boolean ConChim_OngTren2 = CGRectIntersectsRect(boundConChim, boundOngTren2);
    
    //kiem tra con chim cham vao ong tren 3
    CGRect boundOngTren3= [ongtren3 convertRect:ongtren3.bounds toView:nil];
    Boolean ConChim_OngTren3 = CGRectIntersectsRect(boundConChim, boundOngTren3);
    if(ConChim_OngTren3|| ConChim_OngDuoi1 ||ConChim_OngDuoi2||ConChim_OngDuoi3||ConChim_OngTren1||ConChim_OngTren2){
        [timer invalidate];
        btnstart.hidden = NO;
        [self viewDidLoad];
    }
   
}
 -(void) Congdiem{
     int diem  = [score.text intValue];
     diem ++;
     score.text = [NSString stringWithFormat:@"%i",diem];
 }
@end
