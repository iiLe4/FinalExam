//
//  MapViewController.m
//  FinalExam
//
//  Created by Ileana Padilla on 29/04/14.
//  Copyright (c) 2014 Ileana Padilla. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController
@synthesize locationManager;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
 
    self.coordenadaArray = [self.coordenada componentsSeparatedByString:@","
                            ];
    NSString *jeje = [self.coordenadaArray objectAtIndex:0];
    self.x = [jeje doubleValue];
    
    NSString *jojo = [self.coordenadaArray objectAtIndex:1];
    self.y = [jojo doubleValue];
    
    CLLocationCoordinate2D location1;
    location1.latitude = self.x;
    location1.longitude = self.y;
    
    MKPointAnnotation *point1 =[[MKPointAnnotation alloc] init];
    point1.coordinate = location1;
    point1.title = self.nombreEstado;
    
    [self.mapView addAnnotation:point1];
    
    CLLocationCoordinate2D currentLocation = [self getLocation];
    
    CLLocation *nowLocation = [[CLLocation alloc] initWithCoordinate: currentLocation altitude:1 horizontalAccuracy:1 verticalAccuracy:-1 timestamp:nil];
    
    CLLocation *stateLocation = [[CLLocation alloc] initWithCoordinate: location1 altitude:1 horizontalAccuracy:1 verticalAccuracy:-1 timestamp:nil];


    NSNumber *distance =[NSNumber numberWithInt:[nowLocation distanceFromLocation:stateLocation]];
    NSInteger kilometers = [distance integerValue];
    
    
    self.lblDistancia.text = [NSString stringWithFormat:@"Distance from here: %d km",kilometers/1000];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    CLLocationCoordinate2D location;
    
    location.latitude = self.x;
    location.longitude = self.y;
    
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(location, 10000, 10000);
    
    [self.mapView setRegion:viewRegion animated:YES];
    
}

-(CLLocationCoordinate2D) getLocation{
    
    NSString *currentPlace = @"20.659015, -103.352579";

    NSArray *coorArray = [currentPlace componentsSeparatedByString:@","];
    NSString *jeje = [coorArray objectAtIndex:0];
    double xD = [jeje doubleValue];
    
    NSString *jojo = [coorArray objectAtIndex:1];
    double yD = [jojo doubleValue];
    
    CLLocationCoordinate2D coordinate;
    coordinate.latitude = xD;
    coordinate.longitude = yD;
    
    return coordinate;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
