//
//  ViewController.m
//  Local Search
//
//  Created by Ishtehar Hussain on 2016-03-03.
//  Copyright © 2016 Cloudshapes. All rights reserved.
//

#import "ViewController.h"
#import "MapKit/MapKit.h"

@interface ViewController ()

@end

@implementation ViewController



- (IBAction)button:(id)sender {
    
    MKLocalSearchRequest *request= [[MKLocalSearchRequest alloc] init];
    request.naturalLanguageQuery = self.textField.text;
    
    MKLocalSearch *search = [[MKLocalSearch alloc] initWithRequest:request];
    
    [search startWithCompletionHandler:^(MKLocalSearchResponse *response, NSError *error)
    {
        //NSMutableArray *placemarks = [NSMutableArray array];
        for (MKMapItem *item in response.mapItems) {
            
            NSLog(@"%@\n", item.description);
    }
    }];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
