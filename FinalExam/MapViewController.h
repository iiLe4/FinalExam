//
//  MapViewController.h
//  FinalExam
//
//  Created by Ileana Padilla on 29/04/14.
//  Copyright (c) 2014 Ileana Padilla. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface MapViewController : UIViewController<CLLocationManagerDelegate>{
    CLLocationManager *locationManager;
}
@property (nonatomic, retain) CLLocationManager *locationManager;

@property(nonatomic) NSString *coordenada;
@property(nonatomic) NSString *nombreEstado;
@property(nonatomic) NSArray *coordenadaArray;
@property(nonatomic) double x;
@property(nonatomic) double y;
@property (strong, nonatomic) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) IBOutlet UILabel *lblDistancia;
@end
