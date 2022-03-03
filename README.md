# FDHudView
#前言：
最近在学习swiftUI，发现这玩意跟以前的UIKit框架差别还是挺大，许多思维都需要重新发散就比如弹框，在UIkit里面，是想在哪个界面弹框就能直接去弹出来，而且在swiftUI里面，如果不是直接在响应方法，而是在逻辑处理方法里面想要弹框，就只能一开始就布局，然后用状态管理器去控制展现，就不如UIKit自由和自在，尤其是对于刚学习swiftUI的人来说，容易卡壳。在一段时间学习后，我尝试在项目运用学习成果，在网络请求的时候，就发现了加载请求弹框的问题，度娘了之后，也发现了别人的成果，但是使用方面感觉完全没得以前的使用自由，方便，所以，结合别人的思路和自己的成果，写出了这个控件，以达到在使用UIkit时的手感。
##一 集成
   集成非常简单,使cocoaPods集成
   ```
  pod 'FDHudView'
   ```
在入口做简单的设置,在根视图上注册使用
   ```
import SwiftUI
import FDHudView
@main
struct DJLContractorApp: App {

    var body: some Scene {
        WindowGroup {
           TabbarView(manager: TabbarManager.manager)
               .showFDHud()
        }
    }
}
```
##使用介绍
然后在任何需要使用的地方进行使用
加载简单的文字菊花效果
```
FDHud.show("加载中...") 
```
![Simulator Screen Shot - iPhone 13 - 2022-03-03 at 11.31.06.png](https://upload-images.jianshu.io/upload_images/10993411-2ccd7c36a94bd38d.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
加载纯文字提示
```
FDHud.showMessage("加载中...")
```
![Simulator Screen Shot - iPhone 13 - 2022-03-03 at 11.34.35.png](https://upload-images.jianshu.io/upload_images/10993411-42ce9e50ca2d292b.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
网络数据加载 **注意，这是匹配使用的，一个负责展示，一个负责消除
```
FDHud.showLoading()
FDHud.hideHud()
```
![Simulator Screen Shot - iPhone 13 - 2022-03-03 at 11.39.19.png](https://upload-images.jianshu.io/upload_images/10993411-aa4ad3978bbeb21b.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

#目前就三个简单的样式，因为代码也是简洁明了，需要的可以自己修改成自己需要的样式
FDHudView的特点就是全局就这一个，通过一个单例管理对象进行控制，如果界面已经展示了，再次调用show方法，会失效。目前还没做多次调用等的优化，只是一个最简单的使用版本，勿喷，不接受。
地址是demo，也可以下载后把FDHud文件夹直接拖进工程使用
[Github 地址传送门](https://github.com/fillinse/FDHudView)
下面是斯坦福的教学视频，2020，2021的，两期内容大致一样，但是2021的相对更完善更全面，可以直接只看2021年的，当然，时间多的也可以全看，话说，这个老大爷还是很有喜感的，讲的也很好
[学习地址传送门](https://cs193p.sites.stanford.edu/2020)
