UIView-AddSubViewAt
===================
每次`addSubview:`都要把subview的`frame`{{x,y},{w,h}}都设置一边？

Before
    
    UIImage *image = [UIImage imageNamed:@"image"];
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(10.0f, 10.0f, image.size.width, image.size.height)];
    [self.view addSubview:imageView];


After


    #import "UIView-AddSubViewAt"
    
    [self.view addSubview:[[UIImageView alloc]initWithImage:
                           [UIImage imageNamed:@"image"]]
                  atPoint:CGPointMake(10, 10)];
   
   
