import 'package:ui_kit/module/post.dart';
import 'package:ui_kit/utils/uidata.dart';

class PostViewModel {
  List<Post> postItems;

  PostViewModel({this.postItems});

  getPosts() => <Post>[
        Post(
            personName: "Whg",
            address: "北京,中国",
            likesCount: 100,
            commentsCount: 10,
            message: "Study futtler,Stay hungry,Stay foolish.",
            personImage: UIData.pkImage,
            messageImage:
                "https://cdn.pixabay.com/photo/2018/03/09/16/32/woman-3211957_1280.jpg",
            postTime: "刚刚"),
        Post(
            personName: "Amanda",
            address: "Canada",
            likesCount: 123,
            commentsCount: 78,
            messageImage:
                "https://cdn.pixabay.com/photo/2016/04/10/21/34/woman-1320810_960_720.jpg",
            message: "如果你开始臆测你的梦想是否会实现，那么你将失去追求梦想所需要的动力。",
            personImage: UIData.timelineImage,
            postTime: "2小时前"),
        Post(
            personName: "Eric",
            address: "California",
            likesCount: 50,
            commentsCount: 5,
            message: "开口说自己的故事之前，我想先把两个词撂在这儿：命运和幸运。",
            personImage: UIData.blankImage,
            postTime: "5小时前"),
        Post(
            personName: "Jack",
            address: "California",
            likesCount: 23,
            commentsCount: 4,
            messageImage:
                "https://cdn.pixabay.com/photo/2014/09/07/16/53/hands-437968_960_720.jpg",
            message:
                "在非洲的荒漠地带，植物的生长需要水分，而开花的植物对水分的需求更大。非洲一般植物都有庞大的根系采水，以供自身的水分需求。但是依米花没有根系，它只有惟一的一条主根，孤独地蜿蜒盘曲着钻入地底深处，寻找有水的地方。那需要幸运和顽强努力，一株依米花往往需要四至五年的时间在干燥的沙漠里寻找水源，然后一点点积聚养分，在完成蓓蕾所需要的全部养分后，它开花了！所以在它最美丽的时候，它因耗尽了自己的所有的养分而凋零。",
            personImage: UIData.profileImage,
            postTime: "6小时前"),
        Post(
            personName: "Neha",
            address: "Punjab",
            likesCount: 35,
            commentsCount: 2,
            messageImage:
                "https://cdn.pixabay.com/photo/2015/11/26/00/14/fashion-1063100_960_720.jpg",
            message:
                "当你专注于自己真心想做的事情时，你必须先将你以前所有说过的话、做过的事放在一边，切断你的后路，从现在开始只剩下你和你的梦想，你已经不能回头了。就像你刚抓着一根摇晃的蔓藤越过山谷一样，现在的你无路可退，你已经站在山谷的另一边，接下来要面对的是：你该如何完成你的梦想。",
            personImage: UIData.paymentImage,
            postTime: "7小时前"),
        Post(
            personName: "Whg",
            address: "北京,中国",
            likesCount: 100,
            commentsCount: 10,
            message: "Study futtler,Stay hungry,Stay foolish.",
            personImage: UIData.pkImage,
            messageImage:
                "https://cdn.pixabay.com/photo/2018/03/09/16/32/woman-3211957_1280.jpg",
            postTime: "刚刚"),
        Post(
            personName: "Amanda",
            address: "Canada",
            likesCount: 123,
            commentsCount: 78,
            messageImage:
                "https://cdn.pixabay.com/photo/2016/04/10/21/34/woman-1320810_960_720.jpg",
            message: "如果你开始臆测你的梦想是否会实现，那么你将失去追求梦想所需要的动力。",
            personImage: UIData.timelineImage,
            postTime: "2小时前"),
        Post(
            personName: "Eric",
            address: "California",
            likesCount: 50,
            commentsCount: 5,
            message: "开口说自己的故事之前，我想先把两个词撂在这儿：命运和幸运。",
            personImage: UIData.blankImage,
            postTime: "5小时前"),
        Post(
            personName: "Jack",
            address: "California",
            likesCount: 23,
            commentsCount: 4,
            messageImage:
                "https://cdn.pixabay.com/photo/2014/09/07/16/53/hands-437968_960_720.jpg",
            message:
                "在非洲的荒漠地带，植物的生长需要水分，而开花的植物对水分的需求更大。非洲一般植物都有庞大的根系采水，以供自身的水分需求。但是依米花没有根系，它只有惟一的一条主根，孤独地蜿蜒盘曲着钻入地底深处，寻找有水的地方。那需要幸运和顽强努力，一株依米花往往需要四至五年的时间在干燥的沙漠里寻找水源，然后一点点积聚养分，在完成蓓蕾所需要的全部养分后，它开花了！所以在它最美丽的时候，它因耗尽了自己的所有的养分而凋零。",
            personImage: UIData.profileImage,
            postTime: "6小时前"),
        Post(
            personName: "Neha",
            address: "Punjab",
            likesCount: 35,
            commentsCount: 2,
            messageImage:
                "https://cdn.pixabay.com/photo/2015/11/26/00/14/fashion-1063100_960_720.jpg",
            message:
                "当你专注于自己真心想做的事情时，你必须先将你以前所有说过的话、做过的事放在一边，切断你的后路，从现在开始只剩下你和你的梦想，你已经不能回头了。就像你刚抓着一根摇晃的蔓藤越过山谷一样，现在的你无路可退，你已经站在山谷的另一边，接下来要面对的是：你该如何完成你的梦想。",
            personImage: UIData.paymentImage,
            postTime: "7小时前"),
      ];
}
