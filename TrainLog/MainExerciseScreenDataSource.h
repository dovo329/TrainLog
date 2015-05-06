//
//  MainExerciseScreenDataSource.h
//  TrainLog
//
//  Created by Douglas Voss on 5/5/15.
//  Copyright (c) 2015 Doug. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@interface MainExerciseScreenDataSource : NSObject <UITableViewDataSource>

@property (nonatomic) NSMutableArray *exerciseNameArray;
@property (nonatomic) NSString *unitsString;

@end
