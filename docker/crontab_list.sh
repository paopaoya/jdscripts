# 每3天的23:50分清理一次日志(互助码不清理，proc_file.sh对该文件进行了去重)
50 23 */3 * * find /scripts/logs -name '*.log' | grep -v 'sharecodeCollection' | xargs rm -rf
#收集助力码
30 * * * * sh +x /scripts/docker/auto_help.sh collect >> /scripts/logs/auto_help_collect.log 2>&1

##############短期活动##############
#京东极速版红包(活动时间：2021-5-5至2021-5-31)
45 0,23 * * * node /scripts/jd_speed_redpocke.js >> /scripts/logs/jd_speed_redpocke.log 2>&1
#每日抽奖(活动时间：2021-05-01至2021-05-31)
13 1,22,23 * * * node /scripts/jd_daily_lottery.js >> /scripts/logs/jd_daily_lottery.log 2>&1
#金榜创造营 活动时间：2021-05-21至2021-12-31
0 1,22 * * * node /scripts/jd_gold_creator.js >> /scripts/logs/jd_gold_creator.log 2>&1
#5G超级盲盒(活动时间：2021-06-2到2021-07-31)
0 0-23/4 * * * node /scripts/jd_mohe.js >> /scripts/logs/jd_mohe.log 2>&1
#女装盲盒 活动时间：2021-05-24到2021-06-22
35 1,22 * * * node /scripts/jd_nzmh.js >> /scripts/logs/jd_nzmh.log 2>&1
#京东零食街 活动时间：###
5 8 * * * node /scripts/jd_lsj.js >> /scripts/logs/jd_lsj.log 2>&1
#星系牧场 #wen
1 */2 * * * node /scripts/jd_qqxing.js >> /scripts/logs/jd_qqxing.log 2>&1
#京享值PK
15 2,5,12,18,20 * * * node /scripts/jd_jxzpk.js >> /scripts/logs/jd_jxzpk.log 2>&1
#柠檬众筹许愿池
0 8,12 * * * node /scripts/jd_wish.js >> /scripts/logs/jd_wish.log 2>&1

##############长期活动##############
# 签到
7 0,9 * * * cd /scripts && node jd_bean_sign.js >> /scripts/logs/jd_bean_sign.log 2>&1
# 东东超市兑换奖品
0,30 0 * * * node /scripts/jd_blueCoin.js >> /scripts/logs/jd_blueCoin.log 2>&1
# 摇京豆
6 0,23 * * * node /scripts/jd_club_lottery.js >> /scripts/logs/jd_club_lottery.log 2>&1
# 东东农场
15 6-18/6 * * * node /scripts/jd_fruit.js >> /scripts/logs/jd_fruit.log 2>&1
# 摇钱树
23 */2 * * * node /scripts/jd_moneyTree.js >> /scripts/logs/jd_moneyTree.log 2>&1
# 东东萌宠
35 6-18/6 * * * node /scripts/jd_pet.js >> /scripts/logs/jd_pet.log 2>&1
# 京东种豆得豆
10 7-22/1 * * * node /scripts/jd_plantBean.js >> /scripts/logs/jd_plantBean.log 2>&1
# 京东全民开红包
12 0-23/4 * * * node /scripts/jd_redPacket.js >> /scripts/logs/jd_redPacket.log 2>&1
# 进店领豆
6 0 * * * node /scripts/jd_shop.js >> /scripts/logs/jd_shop.log 2>&1
# 东东超市
31 0,1-23/2 * * * node /scripts/jd_superMarket.js >> /scripts/logs/jd_superMarket.log 2>&1
# 取关京东店铺商品
45 23 * * * node /scripts/jd_unsubscribe.js >> /scripts/logs/jd_unsubscribe.log 2>&1
# 京豆变动通知
20 20 * * * node /scripts/jd_bean_change.js >> /scripts/logs/jd_bean_change.log 2>&1
# 当月京豆变动通知
20 10 30 * * node /scripts/jd_all_bean_change_v3.js >> /scripts/logs/jd_all_bean_change_v3.js.log 2>&1
# 京东抽奖机
0 0,12,23 * * * node /scripts/jd_lotteryMachine.js >> /scripts/logs/jd_lotteryMachine.log 2>&1
# 京东排行榜
21 9 * * * node /scripts/jd_rankingList.js >> /scripts/logs/jd_rankingList.log 2>&1
# 天天提鹅
28 * * * * node /scripts/jd_daily_egg.js >> /scripts/logs/jd_daily_egg.log 2>&1
# 金融养猪
32 0-23/6 * * * node /scripts/jd_task_pigPet.js >> /scripts/logs/jd_task_pigPet.log 2>&1
# 口袋书店
23 8,12,18 * * * node /scripts/jd_bookshop.js >> /scripts/logs/jd_bookshop.log 2>&1
# 京喜工厂
50 * * * * node /scripts/jd_dreamFactory.js >> /scripts/logs/jd_dreamFactory.log 2>&1
# 东东工厂
26 * * * * node /scripts/jd_jdfactory.js >> /scripts/logs/jd_jdfactory.log 2>&1
# 赚京豆(微信小程序)
12 * * * * node /scripts/jd_syj.js >> /scripts/logs/jd_syj.log 2>&1
# 京东快递签到
47 1 * * * node /scripts/jd_kd.js >> /scripts/logs/jd_kd.log 2>&1
# 京东汽车(签到满500赛点可兑换500京豆)
0 0 * * * node /scripts/jd_car.js >> /scripts/logs/jd_car.log 2>&1
# 领京豆额外奖励(每日可获得3京豆)
23 1,12,22 * * * node /scripts/jd_bean_home.js >> /scripts/logs/jd_bean_home.log 2>&1
# 微信小程序京东赚赚
6 0-5/1,11 * * * node /scripts/jd_jdzz.js >> /scripts/logs/jd_jdzz.log 2>&1
# 京喜农场
30 9,12,18 * * * node /scripts/jd_jxnc.js >> /scripts/logs/jd_jxnc.log 2>&1
#京喜牧场
40 6-21/3 * * * node /scripts/jd_jxmc.js >> /scripts/logs/jd_jxmc.log 2>&1
# 签到领现金
10 */4 * * * node /scripts/jd_cash.js >> /scripts/logs/jd_cash.log 2>&1
# 签到领现金兑换红包
#0,1,2 0 * * 1,7 node /scripts/jd_cash_exchange.js >> /scripts/logs/jd_cash_exchange.log 2>&1
# 闪购盲盒
47 8,22 * * * node /scripts/jd_sgmh.js >> /scripts/logs/jd_sgmh.log 2>&1
# 京东秒秒币
10 6,21 * * * node /scripts/jd_ms.js >> /scripts/logs/jd_ms.log 2>&1
#美丽研究院
41 7,12,19 * * * node /scripts/jd_beauty.js >> /scripts/logs/jd_beauty.log 2>&1
#京东保价
#41 0,23 * * * node /scripts/jd_price.js >> /scripts/logs/jd_price.log 2>&1
#京东极速版签到+赚现金任务
21 1,6 * * * node /scripts/jd_speed_sign.js >> /scripts/logs/jd_speed_sign.log 2>&1
# 删除优惠券(默认注释，如需要自己开启，如有误删，已删除的券可以在回收站中还原，慎用)
#20 9 * * 6 node /scripts/jd_delCoupon.js >> /scripts/logs/jd_delCoupon.log 2>&1
#家庭号
#10 6,7 * * * node /scripts/jd_family.js >> /scripts/logs/jd_family.log 2>&1
#京东直播（又回来了）
30-50/5 12,23 * * * node /scripts/jd_live.js >> /scripts/logs/jd_live.log 2>&1
#京东健康社区
13 1,6,22 * * * node /scripts/jd_health.js >> /scripts/logs/jd_health.log 2>&1
#京东健康社区收集健康能量
5-45/20 * * * * node /scripts/jd_health_collect.js >> /scripts/logs/jd_health_collect.log 2>&1
#京东健康社区兑换
15 20 * * * node /scripts/jd_star_health_change.js >> /scripts/logs/jd_star_health_change.log 2>&1
# 幸运大转盘
10 10,23 * * * node /scripts/jd_market_lottery.js >> /scripts/logs/jd_market_lottery.log 2>&1
# 领金贴
5 0 * * * node /scripts/jd_jin_tie.js >> /scripts/logs/jd_jin_tie.log 2>&1
#送豆得豆
15 0,1 * * * node /scripts/jd_sendBeans.js >> /scripts/logs/jd_sendBeans.js 2>&1
# 京东试用
#16 10 * * * node /scripts/jd_try.js >> /scripts/logs/jd_try.log 2>&1
#东东乐园
26 8 * * * node /scripts/jd_ddnc_farmpark.js >> /scripts/logs/jd_ddnc_farmpark.log 2>&1
#电竞经理
39 9 * * * node /scripts/jd_zooElecsport.js >> /scripts/logs/jd_zooElecsport.log 2>&1
#京东金融分分币
15 9 * * * node /scripts/jd_fq.js >> /scripts/logs/jd_fq.log 2>&1
# 宠汪汪
6 */2,23 * * * node /scripts/jd_joy.js >> /scripts/logs/jd_joy.log 2>&1
# 宠汪汪赛跑与邀请助力
1 9-13/2 * * * node /scripts/jd_joy_run.js >> /scripts/logs/jd_joy_run.log 2>&1
# 宠汪汪喂食
15 0-23/1 * * * node /scripts/jd_joy_feedPets.js >> /scripts/logs/jd_joy_feedPets.log 2>&1
# 宠汪汪偷好友积分与狗粮
13 0-21/3 * * * node /scripts/jd_joy_steal.js >> /scripts/logs/jd_joy_steal.log 2>&1
# 宠汪汪积分兑换京豆.验证码
58,59 23,7,15 * * * node /scripts/jd_task_validate.js >> /scripts/logs/jd_task_validate.log 2>&1
# 宠汪汪积分兑换京豆.
0,1 */8 * * * node /scripts/jd_reward_joy.js >> /scripts/logs/jd_reward_joy.log 2>&1
# 宠汪汪20兑换
0 16 * * * node /scripts/jd_akreward.js >> /scripts/logs/jd_akreward.log 2>&1
# 极速版柠檬赚金币改
1 0 * * * node /scripts/jd_zjb.js >> /scripts/logs/jd_zjb.log 2>&1
# 极速版农场我是大老板
15 0-23/6 * * * node /scripts/jd_wsdlb.js >> /scripts/logs/jd_wsdlb.log 2>&1
# 券后9.9天天大乐透
55 6,13 * * * node /scripts/jd_DrawEntrance.js >> /scripts/logs/jd_DrawEntrance.log 2>&1
# 京喜工厂开团助力
5 0 * * * node /scripts/jd_star_dreamFactory_tuan.js >> /scripts/logs/jd_star_dreamFactory_tuan.log 2>&1
# 新版点点券
9 0,20 * * * node /scripts/jd_necklace.js >> /scripts/logs/jd_necklace.log 2>&1
# 图形验证签到
9 0,8 * * * node /scripts/jd_sign.js >> /scripts/logs/jd_sign.log 2>&1
# 旺旺乐园合成
9 0-23/3 * * * node /scripts/jd_joypark_joy.js >> /scripts/logs/jd_joypark_joy.log 2>&1
# 旺旺乐园每日任务
20 7,9,17,20 * * * node /scripts/jd_joypark_task.js >> /scripts/logs/jd_joypark_task.log 2>&1
# 超级粉丝互动
9 17 * * * node /scripts/jd_wxFans.js >> /scripts/logs/jd_wxFans.log 2>&1
