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
    [self.exerciseNameArray addObject:@"oh press"];
    
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
        //NSLog(@"not nil case");
    }
    cell.exerciseName.text = [self.exerciseNameArray objectAtIndex:indexPath.row];
    cell.unitsString.text = self.unitsString;
    cell.weightAmount.text = @"";
    cell.set1Reps.text = @"";
    cell.set2Reps.text = @"";
    cell.set3Reps.text = @"";
    cell.set4Reps.text = @"";
    cell.set5Reps.text = @"";
    cell.backgroundColor = [UIColor purpleColor];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.exerciseNameArray count];
}

@end
