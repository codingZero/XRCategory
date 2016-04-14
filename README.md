# XRCategory
a powerful category，make development easier

一个强大的分类，让开发更简单

---------
#功能
######以前你可能这样写代码
![](http://upload-images.jianshu.io/upload_images/1429074-32e830885c37cdbc.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
######现在你可以这样写代码
![](http://upload-images.jianshu.io/upload_images/1429074-359b24305c5bd9f9.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
######甚至这样写代码
![](http://upload-images.jianshu.io/upload_images/1429074-aca80267c055d8b1.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

#如何使用
将XRCategory文件夹中的所有文件添加到项目中，导入主头文件XRCategory.h即可

###命名规范
大部分命名与系统一样，所以使用起来非常方便，为了避免与系统的完全重名，采用以下方式用以区分

######1.名称过短无法缩写时，采用首字母大写的方式
比如view的frame，这里使用Frame，xx.Frame(CGRect)，label的text，使用Text，imageView的image，使用Image

######2.名称过长时采用缩写的方式
比如scrollview设置是否显示垂直滚动条，系统的是showsVerticalScrollIndicator，这里用的是showVIndicator，基本上前面几个字母都与系统的一致，查找方便

######3.坐标尺寸相关方法的扩充
比如原方法 Frame(CGRect frame)：直接传frame

扩充方法 frameEle(CGFloat x, CGFloat y, CGFloat width, CGFloat height)传递x、y、width、height。

Ele是element的缩写，即元素的意思，类似的还有Bounds、boundsEle、Center、CenterEle、origin、originEle、size、sizeEle

也可以直接对单个元素赋值view.x(0).height(20).centerY(10)

######4.参数的顺序也与系统的一致
比如addTarget:action:forControlEvents:的参数依次为target、action、controlEvent，这里封装的方法参数顺序也是这样btn.addTarget(target、action、controlEvent)

>总的来说，就跟使用系统的差不多，系统的叫啥，用的时候就直接敲啥，然后看自动提示，返回值类型为block的就是封装好的方法

###关于点语法
并不是所有的方法都可以一直.下去，有两种情况是不能继续点的
######1.调用父类方法后不能继续.自己的方法
比如以下代码就是错误的
![](http://upload-images.jianshu.io/upload_images/1429074-fadda47e23a8351a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

frameEle是其父类UIView的方法，所以frameEle()这个block的返回值是UIView，而UIView是没有setTitleForState这个方法的

>子类方法后可以继续.父类方法，但是父类方法后不能继续.子类方法，当然父类方法后可以继续.父类方法

######2.block返回值不为方法调用者时不能继续.
比如以下代码就是错误的
![](http://upload-images.jianshu.io/upload_images/1429074-f2839393a804de67.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

titleForState方法是用来获取按钮某个状态下的标题的，它的返回值类型是NSString，并不是按钮本身，所以不能继续.

>一般用来赋值的都会返回调用者本身，可以继续点，用来取值的则返回你要取的值，不能继续往下点。上图的例子返回值是NSString，虽然不能继续点button的方法，但是可以继续点string的方法

###注意事项
######1.代码有中文
如果代码中带有中文字符串，后面就会没有自动提示，点不出来，所以尽量将有中文的代码放在后面，类似这样
![](http://upload-images.jianshu.io/upload_images/1429074-494d1ff868506198.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

######2.不可变类
NSString、NSArray、NSSDictionary这几个不可变类，其block的返回值大多不是它们本身，所以使用时尽量不要连着点。
NSMutableString、NSMutableArray、NSMutableDictionary不存在这个问题

######3.提供了直接访问frame相关结构体成员的方法
鉴于很多开发者会在项目中创建一个分类，用来直接获取视图的坐标跟尺寸，比如view.x、view.width，这样一来就会与该分类中的属性重名，于是就直接提供了这样的属性，不过全部采用首字母大写的方式用以区分，比如view.X、view.Width、view.CenterY

####赋值使用view.x(10)、view.width(100)，取值使用view.X、view.Width
>用了这个分类，就不需要额外再写分类来直接获取视图的坐标跟尺寸了

#结束语
由于精力有限，目前只针对以下类的常用属性及方法做了封装

UIView、UIButton、UILabel

UITextField、UITextView、UIImageView

UIScrollView、UITableView

NSString、NSArray、NSDictionary

NSMutableString、NSMutableArray、NSMutableDictionary

以后会不定期的添加一些新的属性和方法以及一些其他的类





