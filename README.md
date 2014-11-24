BDGViewController
========

The viewcontroller subclass that finally solves the main problem of viewcontrollers since the beginning of times!

## Installation using Cocoapods
```
pod 'BDGViewController'
```

## Which problem is solved?

**Layout & animations**<br/>
When your viewcontroller contains subviews you can set the subView-frames in 'viewWillLayoutSubviews'. But any subview for which you set the frame in 'viewWillLayoutSubviews' can not be animated! Because every time you animate with:
```
[UIView animateWithDuration...];
```
the 'viewWillLayoutSubviews' method is called, resetting the frame and destroying any beautiful animation you had in mind. The same happens when you use the 'layoutSubviews' method of a custom UIView.

There is as far as I know one solution that uses a custom UIView with a custom updateLayout method, but it has 3 problems:<br/>
1. You need to create this custom subview everytime with the same custom methods/frames, for every viewcontroller...<br/>
2. You are not within the viewcontroller anymore! Any buttons/taps/etc that actually wants the viewcontroller to perform an action, for example use the navigationController/navigationItem/properties/etc. is impossible. For that you need to create a protocol with a delegate (or ugly-code properties) which is even more work.<br/>
3. It's not beautiful code and you die a litle on the inside...

## The solution!

This solution uses a beautiful simple UIViewController that feels like a UIView, but is still a viewcontroller! With this viewcontroller you can use the standard UIView methods such as 'addSubview' and 'layoutSubviews' and you can still animate any subview. And it remains a viewController, so you still have all the advantages such as accesssing the navigationController/properties/etc.
Examples:

You can add subviews like you're used to in a custom UIView:
```
[self addSubview:subView1];
```

You can layout subviews like you're used to in a custom UIView:
```
-(void)layoutSubviews
{
	//Also there are quick properties to make your life easier, e.g. self.width, self.frame, self.center, etc.
}
```

Because this solution is about animating subviews there are easy animation methods as well. You can scale, move and rotate with easy methods and it will automatically animate. The following example is simple but you can also set animation durations and add completion blocks.
```
[self moveView:subView1 toPoint:CGPointMake(newX, newY)];
```

## Like it?
Please star it :)