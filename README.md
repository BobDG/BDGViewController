BDGViewController
========

The viewcontroller subclass that finally solves the main problem of viewcontrollers since the beginning of times!

## Installation using Cocoapods
```
pod 'BDGViewController'
```

## Which problem is solved using this controller?

**Layout & animations**<br/>
These days with all the new screen sizes you really need to be able to set the frames of your subviews correctly. Of course, when you support rotation in your Apps you already needed to do this! You can get far with resizingMasks and perhaps with the new AutoLayout as well, but subsequently animating these subviews can be a pain!

When you have use a standard viewcontroller, the frame of the view is not set in viewDidLoad. It is finally set though in viewWillLayoutSubviews, where you can then layout your subviews. But there is one big problem with this method! Any subview for which you set the frame in viewWillLayoutSubviews can not be animated! Because every time you perform an animation with [UIView animateWithDuration..., the viewWillLayoutSubviews method is called, resetting the frame and destroying any beautiful animation you had in mind. BUT how to set the frame then of a subview?

One solution for this is to create a new custom UIView, add it to the viewcontroller's view and create a new method called 'updateLayout' and call this method from viewWillLayoutSubviews. Then in the updateLayout method of your custom UIView you can set the frames of the subviews there. But remember, within this custom UIView, you can NOT use layoutSubviews. That will once again destroy any animation.
The problem with this solution is:
1. You need to create this custom subview everytime! With all corresponding methods/frames, etc. For every viewcontroller that uses subviews and animations!
2. You are not within the viewcontroller anymore! Any buttons/taps/etc that actually wants the viewcontroller to perform an action, for example use the navigationcontroller is impossible. Then you need to create a protocol with a delegate, (or ugly-code properties) which is even more work. 
3. It's not beautiful code!

## This solution!

This solution uses a beautiful simple UIViewController that feels like a UIView, but is still a viewcontroller! With this viewcontroller you can use the standard UIView methods such as 'addSubview' and 'layoutSubviews' and you can still animate any subview! And you remain a viewcontroller, so you still have all the advantages such as accesssing the navigationcontroller!
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

Because this solution supports animation, I've added some easy animation methods as well! You can scale, move and rotate with easy methods and it will automatically animate these! The following example is simple but you can also set animation durations and add completion blocks!
```
[self moveView:subView1 toPoint:CGPointMake(newX, newY)];
```

## Like it?
Please star it :)