# 链式编程思想下的链式设置控件属性
> 好久「2016年06月」之前的娱乐项目，现在开源出来玩一玩 😄。



- 我们通常给 UI 控件设置各种属性的时候是这样的：

```objective-c
UILabel *label = [UILabel new];
[self.view addSubview:label];

label.text = @"123";
label.textAlignment = NSTextAlignmentCenter;
label.textColor = [UIColor orangeColor];
label.font = [UIFont systemFontOfSize:15];
label.frame = CGRectMake(100, 100, 100, 20);
label.backgroundColor = [UIColor grayColor];
```

- 但你可以这样

```objective-c
label.ld_text(@"123")
.ld_textAlignment(NSTextAlignmentCenter)
.ld_textColor([UIColor orangeColor])
.ld_font([UIFont systemFontOfSize:15])
.ld_frame(CGRectMake(100, 100, 100, 20))
.ld_backgroundColor([UIColor grayColor]);
```

- 或者这样

```objective-c
label.ld_text(@"123").ld_textAlignment(NSTextAlignmentCenter).ld_textColor([UIColor orangeColor]).ld_font([UIFont systemFontOfSize:15]).ld_frame(CGRectMake(100, 100, 100, 20)).ld_backgroundColor([UIColor grayColor]);
```

- 或者这样

```objective-c
label._._._.ld_tag(1);
UIButton *button = [UIButton new];
button.ld_title(@"1",1).ld_titleShadowColor([UIColor redColor],1).ld_attributedTitle(nil,1);

label.ld_x(100);
label.ld_y(100);
label.ld_origin(CGPointMake(0, 0));
label.ld_size(CGSizeMake(100, 100));
label.ld_x(100).ld_width(100).ld_height(100);
label.ld_x(100).ld_y(0).ld_width(100).stop.ld_height(100);
```
