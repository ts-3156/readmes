# QQBot

基于 Smart QQ（Web QQ）的 QQ 机器人

Java 版本：[ScienJus/smartqq][5]

Api分析：

[Web QQ协议分析（一）：前言][6]

[Web QQ协议分析（二）：登录][7]

[Web QQ协议分析（三）：收发消息][8]

[Web QQ协议分析（四）：好友相关][9]

[Web QQ协议分析（五）：群和讨论组相关][10]

[Web QQ协议分析（六）：其他][11]

### 使用方法

安装这个 Gem ：

```
gem install qqbot
```

`require 'qqbot'`并编写自己的业务逻辑，例如：

```
require 'qqbot'

qqbot = QQBot.new

# 在这里需要扫描二维码登录

# 打印出好友列表
qqbot.get_friend_list_with_category.each do |category|
  puts category.name
  category.friends.each do |friend|
    puts "———— #{friend.nickname}"
  end
end
```

### 示例代码

[在控制台打印接收到的所有消息][1]

效果：

![Console][2]

[通过 Tuling123 的 Api 实现自动回复功能][3]

效果：

![Tuling][4]


[1]: https://gist.github.com/ScienJus/f1ba1e5b1611cca662cc
[2]: http://www.scienjus.com/wp-content/uploads/2015/12/console.png
[3]: https://gist.github.com/ScienJus/26a341fda25d009acea1
[4]: http://www.scienjus.com/wp-content/uploads/2015/12/tuling.jpg
[5]: https://github.com/ScienJus/smartqq
[6]: http://www.scienjus.com/webqq-analysis-1/
[7]: http://www.scienjus.com/webqq-analysis-2/
[8]: http://www.scienjus.com/webqq-analysis-3/
[9]: http://www.scienjus.com/webqq-analysis-4/
[10]: http://www.scienjus.com/webqq-analysis-5/
[11]: http://www.scienjus.com/webqq-analysis-6/

### Api 列表

- [x] 登录
- [x] 拉取消息
- [x] 获取群列表
- [x] 获取好友列表
- [x] 获取讨论组列表
- [x] 发送私聊消息
- [x] 发送群消息
- [x] 发送讨论组消息
- [x] 发送临时消息
- [x] 好友详细信息
- [x] 群详细信息
- [x] 讨论组详细信息
- [x] 获取在线好友
- [x] 获取最近会话
- [x] 获取登录用户信息
- [x] 查询用户 QQ 号
- [ ] 退出登录


### 拓展功能列表

- [x] 登录时保存二维码到本地
- [x] 登录时通过网页查看二维码
- [ ] 登录时发送二维码到指定邮箱
- [ ] 登录时将二维码打印到控制台
- [x] 掉线时尝试重新登录
- [ ] 登录失效后邮件推送信息


### 反馈

有问题或是建议可以提 Issues ，或是发邮件联系我，我的邮箱：`i@scienjus.com`
