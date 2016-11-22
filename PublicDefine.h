//
//  PublicDefine.h
//  synthesizeDemo
//
//  Created by Xiaosiyu on 16/11/18.
//  Copyright © 2016年 肖丝雨. All rights reserved.
//

#ifndef PublicDefine_h
#define PublicDefine_h


#define Screen_W [UIScreen mainScreen].bounds.size.width
#define Screen_H [UIScreen mainScreen].bounds.size.height

#define horizonallyPadding  10.0
#define verticallyPadding   10.0
#define cellWidth Screen_W - 2 * horizonallyPadding
#define cellHeight 45.0

#define topPadding 20.0
#define BGColor = UIColor(red: 56.0/255.0, green: 51/255.0, blue: 76/255.0, alpha: 1.0)

//指定RGB，产生颜色
#define SY_TabBar_Color(r, g, b)  [UIColor colorWithRed:(r)/255. green:(g)/255. blue:(b)/255. alpha:1.]

#endif /* PublicDefine_h */

