//
//  MainExerciseScreenDataSource.m
//  TrainLog
//
//  Created by Douglas Voss on 5/5/15.
//  Copyright (c) 2015 Doug. All rights reserved.
//

#import "MainExerciseScreenDataSource.h"
#import "ExerciseCell.h"
#import "ExerciseCell3Sets.h"
#import "ExerciseCell5Sets.h"

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
    //ExerciseCell3Sets *cell = (ExerciseCell3Sets *)[tableView dequeueReusableCellWithIdentifier:@"exerciseCell3Sets"];
    //ExerciseCell5Sets *cell = (ExerciseCell5Sets *)[tableView dequeueReusableCellWithIdentifier:@"exerciseCell5Sets"];
    //ExerciseCell *cell = (ExerciseCell *)[tableView dequeueReusableCellWithIdentifier:@"exerciseCell"];
    //ExerciseCell *cell = (ExerciseCell *)[tableView dequeueReusableCellWithIdentifier:@"exerciseCell5Sets"];
    NSString *cellID = nil;
    if ((arc4random() % 2) < 1) {
        cellID = @"exerciseCell3Sets";
    } else {
        cellID = @"exerciseCell5Sets";
    }

    ExerciseCell *cell = (ExerciseCell *)[tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell==nil)
    {
        NSLog(@"nil case");
        //cell = [ExerciseCell3Sets new];
        //cell = [ExerciseCell5Sets new];
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
    return (UITableViewCell *)cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.exerciseNameArray count];
}

@end
