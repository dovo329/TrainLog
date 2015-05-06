//
//  MainExerciseScreenDataSource.m
//  TrainLog
//
//  Created by Douglas Voss on 5/5/15.
//  Copyright (c) 2015 Doug. All rights reserved.
//

#import "MainExerciseScreenDataSource.h"
#import "ExerciseCell.h"

@implementation MainExerciseScreenDataSource

- (MainExerciseScreenDataSource *) init
{
    self.exerciseNameArray = [NSMutableArray new];
    
    [self.exerciseNameArray addObject:@"squat"];
    [self.exerciseNameArray addObject:@"deadlift"];
    
    self.unitsString = @"lbs";
    
    return self;
}

- (int) count
{
    return (int)[self.exerciseNameArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"exerciseCell"];
    ExerciseCell *cell = (ExerciseCell *)[tableView dequeueReusableCellWithIdentifier:@"exerciseCell"];
    if (cell==nil)
    {
        NSLog(@"nil case");
        cell = [ExerciseCell new];
    } else {
        NSLog(@"not nil case");
    }
    cell.exerciseName.text = [self.exerciseNameArray objectAtIndex:indexPath.row];
    cell.unitsString.text = self.unitsString;
    cell.weightAmount.text = @"0";
    cell.set1Reps.text = @"0";
    cell.set2Reps.text = @"0";
    cell.set3Reps.text = @"0";
    cell.set4Reps.text = @"0";
    cell.set5Reps.text = @"0";
    cell.backgroundColor = [UIColor purpleColor];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}


@end
