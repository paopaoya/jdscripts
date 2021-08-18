# 跳跳乐瓜分京豆
15 0,12,22 * * * node /scripts/jd_jump.js >> /scripts/logs/jd_jump.log 2>&1
#点点券
19 0,11,16,20 * * * node /scripts/jd_necklace.js >> /scripts/logs/jd_necklace.log 2>&1
# 京喜农场
30 9,12,18 * * * node /scripts/jd_jxnc.js >> /scripts/logs/jd_jxnc.log 2>&1
# 券后9.9天天大乐透
55 6,13 * * * node /scripts/jd_DrawEntrance.js >> /scripts/logs/jd_DrawEntrance.log 2>&1
# 京喜财富岛提现
59 11,12,23 * * * node /scripts/jd_cfdtx.js >> /scripts/logs/jd_cfdtx.log 2>&1