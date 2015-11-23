# IBDesignableDemo
如何让自定义的视图控件在IB中（Interface Builder）所见即所得（WYSIWYG）？答案是使用宏关键词<br />
* IB_DESIGNABLE: 让自定义视图所见即所得
* IBInspectable: 可在Xcode右侧的设置面板中设置值，输入的值会被写入User Defined Runtime Attributes中

```objective-c
#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface KLoginView : UIView

@property (nonatomic, copy) IBInspectable NSString *account;
@property (nonatomic, copy) IBInspectable NSString *password;

@end
```

以上我自定了一个叫KLoginView的视图，你只需要在@interface前加上宏关键词IB_DESIGNABLE就可以让视图在IB中显现出来，如果你需要为该视图的某个属性在IB的属性设置面板中直接可以设置的话，那么需要在属性前加上宏关键词IBInspectable。以下是2篇比较好的文章，中英文都有，以为大家提供更多的阅读材料。

[Creating a Custom View That Renders in Interface Builder](https://developer.apple.com/library/ios/recipes/xcode_help-IB_objects_media/Chapters/CreatingaLiveViewofaCustomObject.html#//apple_ref/doc/uid/TP40014224-CH41-SW1)

[在Xcode6中使用IBDesignable创建自定义控件(翻译)](http://www.jianshu.com/p/18b10ed2acd5)

扫描图中二维码即可关注我的微信公众号：MetaJiJing和iOSJiJing。
A元机经将为iOS工程师们分享Cocoa程序开发中的知识点、解决方案和心得等。这里的文章短小精悍，可读性强，可充分利用你零碎的时间学习充电。
![iOS元机经](https://raw.githubusercontent.com/xuguojun/IBDesignableDemo/master/IBDesignableDemo/iOSMetaJiJing.jpg)
![A元机经](https://raw.githubusercontent.com/xuguojun/IBDesignableDemo/master/IBDesignableDemo/AYuanJiJing.jpg)
