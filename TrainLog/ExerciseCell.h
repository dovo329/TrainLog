//
//  ExerciseCell.h
//  TrainLog
//
//  Created by Douglas Voss on 5/5/15.
//  Copyright (c) 2015 Doug. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExerciseCell : UITableViewCell

@property (nonatomic) IBOutlet UILabel *exerciseName;
@property (nonatomic) IBOutlet UILabel *warmup1Amount;
@property (nonatomic) IBOutlet UILabel *warmup2Amount;
@property (nonatomic) IBOutlet UILabel *warmup3Amount;
@property (nonatomic) IBOutlet UILabel *warmup4Amount;
@property (nonatomic) IBOutlet UITextField *weightAmount;
@property (nonatomic) IBOutlet UITextField *set1Reps;
@property (nonatomic) IBOutlet UITextField *set2Reps;
@property (nonatomic) IBOutlet UITextField *set3Reps;
@property (nonatomic) IBOutlet UITextField *set4Reps;
@property (nonatomic) IBOutlet UITextField *set5Reps;

@end
