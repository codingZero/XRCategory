# XRCategory
a powerful category，make development easier
一个强大的分类，让开发更简单

---------
#功能
#####以前你可能需要这样设置属性
![](http://ww4.sinaimg.cn/large/b68232a1gw1f2vfzm09tsj20ng078adj.jpg)
#####现在你可以这样设置属性
![](http://ww3.sinaimg.cn/large/b68232a1gw1f2vg0lxfkej20nm07w41l.jpg)
#####甚至可以这样设置属性
![](http://ww1.sinaimg.cn/large/b68232a1gw1f2vg1bstdsj21hg04o0vl.jpg)

#####以前你可能需要这样调用方法
![](http://ww3.sinaimg.cn/large/b68232a1gw1f2vg2ipympj214c044wh4.jpg)
#####现在你可以这样调用方法
![](http://ww3.sinaimg.cn/large/b68232a1gw1f2vg2xm0wcj21gg03wju6.jpg)

#说明
目前只针对

UIView、UIButton、UILabel

UITextField、UITextView、UIImageView

UIScrollView、UITableView

NSString、NSArray、NSDictionary

NSMutableString、NSMutableArray、NSMutableDictionary

常用属性及方法做了封装，直接使用xx.xxx(...)的方式即可

#####由于时间有限，并没有对所有方法进行测试，如遇到bug，请及时反馈

#####后期会不定期的增加新的属性跟方法以及其他的一些类

#使用前须知
###使用方式
将XRCategory文件夹中的所有文件添加到项目中

导入主头文件XRCategory.h即可

###关于命名规范
大部分命名与系统一样，所以使用起来非常方便

######1.名称过短无法缩写时，采用首字母大写
比如系统的frame，这里使用Frame，xx.Frame(CGRect)，label的text，这里使用Text

######2.名称过长时采用缩写
比如scrollview设置是否显示垂直滚动条，系统的是showsVerticalScrollIndicator，这里是showVIndicator，基本上前面几个字母都与系统的一致，方便查找

######3.方法参数的顺序也与系统的一致
比如addTarget:action:forControlEvents:，我这里的是btn.addTarget(target,action,controlEvent);

总的来说，就跟使用系统的差不多，系统的叫啥，用的时候就直接敲啥

###注意事项
######1.如果代码中有中文，后面就会没有自动提示，点不出来，所以尽量将有中文的代码放在后面，类似这样
![](http://ww3.sinaimg.cn/large/b68232a1gw1f2vgl3s37yj21he01g3zy.jpg)

######2.子类方法后面可以.父类方法，但是父类方法后面不能.子类方法

比如btn.Frame(frame).addTarget(...)是错误的，因为Frame是父类UIView的方法，返回值为UIView类型的，而UIView是没有addTarget()方法的

######3.对于坐标与尺寸的设置，扩展了很多方法

比如：Frame(frame)：直接传CGRect

frameEle(x, y, width, height)：Ele是element的缩写，即元素的意思，也就是传递frame的元素(x、y、width、height)

类似的还有Bounds、boundsEle、Center、CenterEle、origin、originEle、size、sizeEle

也可以直接对单个元素赋值view.x(0).y(0).width(10).height(20)

鉴于很多开发者会在项目中创建一个分类，用来直接获取视图的坐标跟尺寸，比如view.x、view.width，这样一来就会与笔者分类中的属性产生重名，于是笔者就直接提供了这样的属性，不过全部采用首字母大写的方式，比如view.X、view.Width、view.CenterY







