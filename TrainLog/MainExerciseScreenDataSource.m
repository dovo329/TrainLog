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
    
    [self.exerciseNameArray addObject:@"Squat"];
    [self.exerciseNameArray addObject:@"Deadlift"];
    [self.exerciseNameArray addObject:@"OH Press"];
    
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
    //int randNum = (arc4random() % 3);
    //if (randNum < 1) {
    //    cellID = @"exerciseCell1Set";
    //} else if (randNum < 2) {
    //    cellID = @"exerciseCell3Sets";
    //} else {
        cellID = @"exerciseCell5Sets";
    //}

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
    cell.weightAmount.text = @"";
    cell.set1Reps.text = @"";
    cell.set2Reps.text = @"";
    cell.set3Reps.text = @"";
    cell.set4Reps.text = @"";
    cell.set5Reps.text = @"";
    cell.backgroundView = [[UIImageView alloc] initWithImage:[ [UIImage imageNamed:@"CellNormal.png"] stretchableImageWithLeftCapWidth:0.0 topCapHeight:0.0]];
    cell.selectedBackgroundView = [[UIImageView alloc] initWithImage:[ [UIImage imageNamed:@"CellHighlight.png"] stretchableImageWithLeftCapWidth:0.0 topCapHeight:0.0]];
    //cell.backgroundColor = [UIColor purpleColor];
    //cell.selectionStyle = UITableViewCellSelectionStyleBlue;

    return (UITableViewCell *)cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.exerciseNameArray count];
}

@end
