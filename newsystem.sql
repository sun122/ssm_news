/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : newsystem

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2018-01-24 16:28:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for carousel
-- ----------------------------
DROP TABLE IF EXISTS `carousel`;
CREATE TABLE `carousel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `newstitle` varchar(500) NOT NULL,
  `newcontent` longtext NOT NULL,
  `date` date NOT NULL,
  `newauthor` varchar(30) NOT NULL,
  `newpicaddr` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carousel
-- ----------------------------
INSERT INTO `carousel` VALUES ('7', '你我新时代', '10月25日上午11时45分许，在全中国960多万平方公里土地上，亿万民众在倾听同一个声音，千家万户的电视机在收看着同一个场景，无数双眼睛在关注手机上的同一个视频。\n\n此时此刻，刚刚在十九届一中全会上再次当选中共中央总书记的习近平，在中外记者见面会上，用最精炼的语言，对中国未来的五年做出了令人激动的描绘。\n\n“新时代要有新气象，更要有新作为。中共十九大到二十大的5年，正处在实现‘两个一百年’奋斗目标的历史交汇期，第一个百年目标要实现，第二个百年奋斗目标要开篇。”\n\n第一个百年目标是什么？第二个百年奋斗目标干什么？最生动的声音和画面为你展现。（央视记者 申勇 刘爱民 史伟 李炜 陈汉章 邢彬 王鹏飞 彭汉明 沈忱 王胜东）', '2017-10-31', 'sun', 'Indeximage/n5.jpg');
INSERT INTO `carousel` VALUES ('8', '中国军舰结束对意大利访问 前往斯里兰卡', '当地时间10月29日，出访官兵与送行人员告别。当日，执行远航实习和出访任务的中国海军戚继光舰，缓缓驶离塔兰托军港码头，圆满结束对意大利为期4天的友好访问。 中新社发 赖瑜鸿 摄', '2017-10-31', 'sun', 'Indeximage/n4.jpg');
INSERT INTO `carousel` VALUES ('9', '习近平会见清华大学经济管理学院顾问委员会海外委员和中方企业家委员', '10月30日，国家主席习近平在北京人民大会堂会见清华大学经济管理学院顾问委员会海外委员和中方企业家委员。 新华社记者 鞠鹏 摄', '2017-10-31', 'sun', 'Indeximage/n3.jpg');
INSERT INTO `carousel` VALUES ('10', '习近平会见越共中央总书记特使', '10月30日，中共中央总书记、国家主席习近平在北京人民大会堂会见越共中央总书记阮富仲特使、中央对外部部长黄平君。 新华社记者 庞兴雷摄', '2017-10-30', 'ssf', 'Indeximage/xi.jpg');
INSERT INTO `carousel` VALUES ('11', '全球首款吨位级货运无人机演示飞行', '2017年10月30日10月30日早上7点50分左右，在经过事前充分测试后，全球首款大型民用货运无人机AT200在陕西蒲城首次公开演示飞行。记者在演示飞行现场看到，飞机在晨曦中经过高速滑跑后一飞冲天，攀上关中平原上空，爬升至预定高度后，进入巡航段并盘旋两周，随后进入着陆航线，8点18分飞机平稳着陆，整个飞行过程持续约28分钟。首次公开演示飞行结果通报显示，全程飞机飞行状态稳定，航迹跟踪精确，达到设计要求。AT200无人机首次公开演示飞行成功，标志全球首款吨位级货运民用无人机正式诞生。来源：东方IC', '2017-10-31', 'sf', 'Indeximage/n6.jpg');
INSERT INTO `carousel` VALUES ('12', '希腊学生参加大游行 抗议教育改革', '当地时间2017年10月30日，希腊雅典，成千希腊学生参加集会游行，反对教育改革，抗议教育资源不足。供图：Nikolas Georgiou/东方IC', '2017-10-31', 'sun', 'Indeximage/n7.jpg');
INSERT INTO `carousel` VALUES ('13', '中共中央总书记、国家主席、中央军委主席习近平和中央政治局常委集体瞻仰中共一大会址', '10月31日上午，党的十九大闭幕仅一周，习近平和李克强、栗战书、汪洋、王沪宁、赵乐际、韩正，从北京乘专机来到上海，到兴业路76号集体瞻仰中共一大会址。新华社记者 兰红光 摄', '2017-10-31', '阳光', 'Indeximage/sll.jpg');

-- ----------------------------
-- Table structure for picspeak
-- ----------------------------
DROP TABLE IF EXISTS `picspeak`;
CREATE TABLE `picspeak` (
  `speak_id` int(30) NOT NULL AUTO_INCREMENT,
  `speak_content` varchar(8000) DEFAULT NULL,
  `speak_date` varchar(50) DEFAULT NULL,
  `news_id1` int(8) NOT NULL,
  `uid1` int(8) NOT NULL,
  PRIMARY KEY (`speak_id`),
  KEY `news_id1` (`news_id1`),
  KEY `uid1` (`uid1`),
  CONSTRAINT `news_id1` FOREIGN KEY (`news_id1`) REFERENCES `t_pic` (`picNews_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `uid1` FOREIGN KEY (`uid1`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of picspeak
-- ----------------------------
INSERT INTO `picspeak` VALUES ('7', '习近平在视察军委', '2017-11-07', '10', '10');
INSERT INTO `picspeak` VALUES ('8', '360借壳', '2017-11-07', '13', '10');
INSERT INTO `picspeak` VALUES ('9', '360借壳“仇家”傅盛间接持股', '2017-11-07', '13', '10');

-- ----------------------------
-- Table structure for tbl_employee
-- ----------------------------
DROP TABLE IF EXISTS `tbl_employee`;
CREATE TABLE `tbl_employee` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `lastName` varchar(30) DEFAULT NULL,
  `passWord` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `rigestdate` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_employee
-- ----------------------------
INSERT INTO `tbl_employee` VALUES ('1', 'hhh', 'hhh', 'hhh@qq.com', 'female', null);
INSERT INTO `tbl_employee` VALUES ('11', 'mybatis', '123456', 'mybatis@qq.com', 'feman', '2017-12-31');
INSERT INTO `tbl_employee` VALUES ('12', 'admin', '123', 'admin@qq.com', 'man', '20170101');
INSERT INTO `tbl_employee` VALUES ('13', 'test', '123456', 'test@qq.com', 'female', '2018-1-1');
INSERT INTO `tbl_employee` VALUES ('14', 'test', '123456', 'test@qq.com', 'female', '');
INSERT INTO `tbl_employee` VALUES ('15', 'ad', '123456', 'ad@qq.com', 'man', '2017-12-31');
INSERT INTO `tbl_employee` VALUES ('16', 'ad1', '123456', 'ad1@qq.com', 'mam', null);
INSERT INTO `tbl_employee` VALUES ('17', 'honor', '123456', 'honor@qq.com', 'man', '2017-12-31');

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `adminId` int(8) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(50) NOT NULL,
  `adminPw` varchar(50) NOT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------

-- ----------------------------
-- Table structure for t_catelog
-- ----------------------------
DROP TABLE IF EXISTS `t_catelog`;
CREATE TABLE `t_catelog` (
  `catelogId` int(8) NOT NULL AUTO_INCREMENT,
  `catelogName` varchar(50) DEFAULT NULL,
  `catelogMiaoshu` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`catelogId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_catelog
-- ----------------------------
INSERT INTO `t_catelog` VALUES ('12', '体育', '体育新闻');
INSERT INTO `t_catelog` VALUES ('13', '互联网', '互联网新闻');
INSERT INTO `t_catelog` VALUES ('14', '科技', '科技网新闻');
INSERT INTO `t_catelog` VALUES ('15', '国内', '国内新闻');

-- ----------------------------
-- Table structure for t_news
-- ----------------------------
DROP TABLE IF EXISTS `t_news`;
CREATE TABLE `t_news` (
  `newsId` int(8) NOT NULL AUTO_INCREMENT,
  `newsTitle` varchar(500) DEFAULT NULL,
  `newsContent` varchar(20000) DEFAULT NULL,
  `newsDate` varchar(50) DEFAULT NULL,
  `catelogId` int(8) NOT NULL,
  `author` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`newsId`),
  KEY `catelog_id` (`catelogId`),
  CONSTRAINT `catelog_id` FOREIGN KEY (`catelogId`) REFERENCES `t_catelog` (`catelogId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=302 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_news
-- ----------------------------
INSERT INTO `t_news` VALUES ('288', '10部门出台共享单车规范指导意见 鼓励免押金服务', '8月2日，经国务院同意，交通运输部、中央宣传部、中央网信办、国家发展改革委、工业和信息化部、公安部、住房城乡建设部、人民银行、质检总局、国家旅游局10部门联合出台了《关于鼓励和规范互联网租赁自行车发展的指导意见》（简称《指导意见》）。\r\n　　《指导意见》肯定了互联网租赁自行车（俗称“共享单车”）发展对方便群众短距离出行、构建绿色低碳交通体系的积极作用，提出要按照“服务为本、改革创新、规范有序、属地管理、多方共治”的基本原则，鼓励和规范共享单车发展，进一步提升服务水平，更好地满足人民群众的出行需求。《指导意见》从实施鼓励发展政策、规范运营服务行为、保障用户资金和网络信息安全、营造良好发展环境四个方面，提出了相关具体措施。\r\n　《指导意见》指出，要科学确定共享单车发展定位，实施鼓励发展政策。共享单车是分时租赁营运非机动车，是城市绿色交通系统的组成部分，是方便公众短距离出行和公共交通接驳换乘的交通服务方式。要坚持优先发展公共交通，统筹发展共享单车，推进公共租赁自行车与共享单车融合发展，建立完善多层次、多样化的城市出行服务系统。\r\n　规范自行车停放及管理\r\n　　《指导意见》提出，城市人民政府是共享单车管理的责任主体，要完善自行车交通网络，合理布局慢行交通网络和自行车停车设施，积极推进自行车道建设，优化自行车交通组织等。要推进自行车停车点位设置和建设。制定适应本地特点的自行车停放区设置技术导则。采取正面清单和负面清单相结合的方式，规范自行车停放及管理。针对车辆投放问题，《指导意见》提出要引导有序投放车辆，根据城市特点、发展实际等因素研究建立车辆投放机制，引导企业合理有序投放车辆。不鼓励发展互联网租赁电动自行车。', '2017-08-02', '15', null);
INSERT INTO `t_news` VALUES ('294', '重庆文理学院第18届运动会', '<p>\r\n	重庆文理学院于2017年7月28日在校举行了全校师生的的运动大会。</p>\r\n', '2017-07-28', '15', '王五');
INSERT INTO `t_news` VALUES ('295', '正是这条小船 摆渡了暮霭沉沉的中国', '学思践悟·十九大│阳光跟帖”系列之《正是这条小船，摆渡了暮霭沉沉的中国》', '2017-11-05', '15', '央广网');
INSERT INTO `t_news` VALUES ('299', '中国计划明年发射新型“太空摆渡车”', '原标题：中国计划在2018年发射新型“太空摆渡车”\r\n\r\n中新社四川西昌11月6日电(记者张素)记者6日从中国航天科技集团公司第一研究院获悉，中国“太空摆渡车”有望在2018年新添成员：远征一号乙上面级将与长征二号丙运载火箭组合，执行太阳同步轨道发射任务。\r\n\r\n“上面级”是一种运载工具，是在原有的三子级火箭上面增加相对独立的一级。它类似于“摆渡车”，可以先后把不同的卫星“乘客”直接送入各自的工作轨道。\r\n\r\n中国的上面级研制始于20世纪80年代末。其中，中国航天科技集团公司第一研究院抓总研制的远征系列上面级通用性强，能多次点火启动，可满足不同任务需求。', '2017-11-06', '15', 'sf');
INSERT INTO `t_news` VALUES ('300', '国考报名人数破72万 3600余冷门职位被张榜点名', '本报讯（记者 解丽）距离2018年度国家公务员考试报名截止日期还余3天。昨日，国家公务员局发布特别提醒，对于无人通过资格审查职位和资格审查合格人数比例较低职位（小于3：1）张榜“点名”，在被点名的3600余冷门职位中，853个职位尚未“脱零”，较之去年被点名的职位数有所减少。同时，截至昨日16时，报名人数突破70万大关，平均竞争比约25：1。最热职位由中国计划生育协会国际合作部联络处主任科员及以下岗位夺得，竞争比达到1198:1。\r\n\r\n数据统计，截至昨日16时，已经审核通过了72万人，较前一日下午增加了约13万人，单日增长量又创新高，迎来报名小高峰，平均竞争比达到25:1。通过对比2016、2017国考每时间段的报名情况来看，报名人数总体上高于去年，单日增长量也比去年要高，正符合了报名前的预期，此次报名人数很可能创造新纪录。', '2017-11-06', '15', 'sf');
INSERT INTO `t_news` VALUES ('301', 'News list', 'News list', '2017-12-31', '15', 'News list');

-- ----------------------------
-- Table structure for t_pic
-- ----------------------------
DROP TABLE IF EXISTS `t_pic`;
CREATE TABLE `t_pic` (
  `picNews_id` int(8) NOT NULL AUTO_INCREMENT,
  `picNews_title` varchar(50) DEFAULT NULL,
  `picNews_content` varchar(8000) DEFAULT NULL,
  `picNews_address` varchar(1000) DEFAULT NULL,
  `picNews_date` varchar(50) DEFAULT NULL,
  `auther` varchar(10) DEFAULT NULL,
  `caolianjie` varchar(100) DEFAULT NULL,
  `catelog_id` int(110) NOT NULL,
  PRIMARY KEY (`picNews_id`),
  KEY `catelog_id1` (`catelog_id`),
  CONSTRAINT `catelog_id1` FOREIGN KEY (`catelog_id`) REFERENCES `t_catelog` (`catelogId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_pic
-- ----------------------------
INSERT INTO `t_pic` VALUES ('3', '重回前五，你不知道雷军经历了什么', '8 月 2 日，雷军发了 5 条微博，其中 3 条分别是 SA、Counterpoint、IDC 发布的 2017 年第二季度智能手机出货量报告。  数字不是重点，早在 7 月 7 日，雷军就宣布了，第二季度小米手机出货量 2316万台，环比增长70%；排名不是重点，即使在雷军认证的这三家调研机构中，小米手机出货量也在第五、第六之间飘忽不定。  重点是：小米手机的基本盘和高速增长回来了。', 'images/ad3.jpg', '2017-11-5', 'sun', null, '15');
INSERT INTO `t_pic` VALUES ('4', '罗永浩：锤科已经融资 10 亿，明年要出 5、6 款新品', '「说一个没水分的数字，由于坚果 Pro 走得非常好，我们这轮的融资大概是 10 亿左右的规模。没意外的话，从秋天开始，我们手里会有大约 19 个亿的运作现金。这意味着我们从明年开始会像一个正规的手机厂商一样，以高、中、低三个段位，每年推出 5-6 款产品。」6 日下午晚些时候，锤子科技创始人罗永浩在极客公园 Rebuild 2017 大会上释放了这一消息。', 'images/ad4.jpg', '2017-11-5', 'sf', null, '15');
INSERT INTO `t_pic` VALUES ('10', '习近平在视察军委联合作战指挥中心时强调：强化备战打仗的鲜明导向 全面提高新时代打赢能力', '习近平3日视察军委联合作战指挥中心，表明新一届军委贯彻落实党的十九大精神、推动全军各项工作向能打仗、打胜仗聚焦的鲜明态度。习近平强调，实现党在新时代的强军目标、把人民军队全面建成世界一流军队，必须扭住能打仗、打胜仗这个关键，在备战打仗上有一个大的加强。全军要认真学习贯彻党的十九大精神，深入学习贯彻新时代党的强军思想，贯彻新形势下军事战略方针，强化使命担当，强化改革创新，强化工作落实，全面提高新时代备战打仗能力，为实现“两个一百年”奋斗目标、实现中华民族伟大复兴的中国梦提供战略支撑。', 'Indeximage/n3.jpg', '2017-11-5', 'sun', null, '15');
INSERT INTO `t_pic` VALUES ('13', '360借壳“仇家”傅盛间接持股 阿里巴巴成最大客户 内幕交易成疑', '360资产作价504亿元\r\n\r\n借壳方主营电梯业务\r\n\r\n报告书显示，江南嘉捷本次购入的360资产作价504亿元。由于江南嘉捷本次将作价1.8亿元的9.71的股权转让给三六零全体股东，拟置入资产剩余差额部分最终确定为502亿元。\r\n\r\n目前，周鸿祎通过直接、间接持有方式，合计控制360公司67.68%的股份。本次交易完成后，周鸿祎将持有上市公司63.70%的股份，成为上市公司实际控制人。\r\n\r\n360借壳方江南嘉捷，成立于1992年，总部位于苏州，是一家生产电梯、自动扶梯的企业。2012年1月16日，江南嘉捷于上交所上市。 最近三年，江南嘉捷净利润分别为2.4亿元、2.3亿元、1.6亿元，处于持续下滑阶段。\r\n\r\n360私有化股东名单揭晓\r\n\r\n猎豹也成360股东？', 'Indeximage/360.jpg', '2017-11-5', 'sf', null, '14');
INSERT INTO `t_pic` VALUES ('14', '厦门查获1400余吨进口洋垃圾 单票数量全国最大', '8月份，厦门某进出口有限公司向厦门关检申报进口一批锌矿，结果正好撞在“枪口”，被厦门海关与厦门出入境检验检疫局查获此批“锌矿”为禁止进口类固体废物。这是自今年3月1日严厉打击洋垃圾违法专项行动以来，全国查获单票数量最大的禁止进口固体废物案。\r\n\r\n记者4日从厦门检验检疫局获悉，经国家指定的固体废物专业鉴定机构确认，厦门海关与厦门出入境检验检疫局日前联合查获的51个货柜“锌矿”，为禁止进口类固体废物。', 'Indeximage/large.jpg', '2017-11-5', 'ewfs', null, '15');
INSERT INTO `t_pic` VALUES ('15', '中兴通讯子公司大规模裁员 42岁工程师跳楼', '深圳中兴网信科技有限公司（简称：中兴网信）于2009年成立于深圳，是由中兴通讯股份有限公司投资控股的全资子公司。\r\n\r\n据知情人透露：中兴网信此次的大规模裁员，不是网信自己裁员，而是股份勒令网信缩减编制。\r\n\r\n同时，中兴通讯科技园研发大楼发生42岁工程师跳楼事件。\r\n\r\n据了解，今年1月份，中兴计划裁员3000名员工，裁员人数约整个公司的5%，裁员于今年一季度完成。', 'Indeximage/n6.jpg', '2017-12-15', 'sun', null, '14');

-- ----------------------------
-- Table structure for t_speak
-- ----------------------------
DROP TABLE IF EXISTS `t_speak`;
CREATE TABLE `t_speak` (
  `speak_id` int(8) NOT NULL AUTO_INCREMENT,
  `speak_content` varchar(8000) DEFAULT NULL,
  `speak_date` varchar(50) DEFAULT NULL,
  `news_id` int(8) NOT NULL,
  `uid` int(8) NOT NULL,
  PRIMARY KEY (`speak_id`),
  KEY `u_id` (`uid`),
  KEY `news_id` (`news_id`),
  CONSTRAINT `news_id` FOREIGN KEY (`news_id`) REFERENCES `t_news` (`newsId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `u_id` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_speak
-- ----------------------------
INSERT INTO `t_speak` VALUES ('9', '根据城市特点、发展实际等因素研究建立车辆投放机制，引导企业合理有序投放车辆。', '2017-08-16', '288', '11');
INSERT INTO `t_speak` VALUES ('18', 'wwwvwv', '2017-09-01', '288', '6');
INSERT INTO `t_speak` VALUES ('20', 'wo shi', '2017-10-01', '288', '6');
INSERT INTO `t_speak` VALUES ('21', '棒棒哒\r\n按揭房', '2017-10-02', '294', '6');
INSERT INTO `t_speak` VALUES ('25', '重庆文理学院', '2017-11-07', '294', '10');
INSERT INTO `t_speak` VALUES ('31', '啊打发阿发阿发阿发 啊发发阿发ASF  阿的飞洒发阿发', '2017-11-07', '294', '10');
INSERT INTO `t_speak` VALUES ('32', '纵横天下', '2017-11-07', '294', '10');
INSERT INTO `t_speak` VALUES ('33', '学思践悟', '2017-11-07', '295', '10');
INSERT INTO `t_speak` VALUES ('34', '学思践悟', '2017-11-07', '295', '10');
INSERT INTO `t_speak` VALUES ('35', '学思践悟符', '2017-11-07', '295', '10');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(8) NOT NULL,
  `password` varchar(16) NOT NULL,
  `userclass` varchar(20) NOT NULL,
  `imgaddress` varchar(200) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`,`name`),
  UNIQUE KEY `email` (`email`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('6', 'sun', '123', '管理员', null, null);
INSERT INTO `user` VALUES ('7', 'sunsw', 'sun1234', '普通用户', null, null);
INSERT INTO `user` VALUES ('9', '万维网', '123', '普通用户', null, null);
INSERT INTO `user` VALUES ('10', 'admin', '123456s', '管理员', null, null);
INSERT INTO `user` VALUES ('11', 'ee', '123', '普通用户', null, null);
INSERT INTO `user` VALUES ('12', 'tt', '123', '普通用户', null, null);
INSERT INTO `user` VALUES ('13', 'ssf', '123', '普通用户', null, null);
INSERT INTO `user` VALUES ('14', '递归', '123', '普通用户', null, null);
INSERT INTO `user` VALUES ('15', 'sunwl', '123456', '普通用户', null, null);
INSERT INTO `user` VALUES ('16', '?', '?', '?', null, '?');
INSERT INTO `user` VALUES ('17', 'hadsome', '123456ss', '普通用户', null, '12345@qq.com');

-- ----------------------------
-- View structure for v_news_pic
-- ----------------------------
DROP VIEW IF EXISTS `v_news_pic`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `v_news_pic` AS select `t_news`.`news_id` AS `news_id`,`t_news`.`news_title` AS `news_title`,`t_news`.`news_content` AS `news_content`,`t_news`.`news_date` AS `news_date`,`t_news`.`author` AS `author`,`t_pic`.`picNews_id` AS `picNews_id`,`t_pic`.`picNews_title` AS `picNews_title`,`t_pic`.`picNews_content` AS `picNews_content`,`t_pic`.`picNews_address` AS `picNews_address`,`t_pic`.`picNews_date` AS `picNews_date`,`t_pic`.`catelog_id` AS `catelog_id` from (`t_news` join `t_pic`) where (`t_news`.`catelog_id` = `t_pic`.`catelog_id`) ;
