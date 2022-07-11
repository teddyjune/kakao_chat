import 'package:flutter/material.dart';
import 'package:kakao_chat/components/chat_list.dart';

class ChatMainScreen extends StatelessWidget {
  ChatMainScreen({Key? key}) : super(key: key);

  final listImage = [
    "assets/flutter.jpg",
    "assets/jejuair.png",
    "assets/book.png",
    "assets/water.jpg",

    "assets/bike.png",
    "assets/kakao-gift.jpg",
    "assets/Mapo-library-logo.jpg",
    "assets/stayfolio-logo.png",
  ];
  final chatName = [
    "플러터 공부방",
    "제주항공",
    "시민인문학 세미나",
    "우리동네 워터파크 모임",
    "당근마켓",
    "서울자전거 따릉이 알림톡",
    "카카오톡 선물하기",
    "서울시교육청 도서관, 평생학습관",
    "스테이폴리오",
  ];
  final chatNum = [
    "24",
    "2",
    "154",
    "17",
   "2",
    "5",
    "1",
    "76",
    "41",
  ];
  final recentMessage = [
    "좋은 정보 감사요.",
    "[예약 안내] 8월3일 출발",
    "다음 주 책 리스트입니다.",
    "같이 놀 사람 놀이터로 와요. ",
   "중고거래 신청이 왔어요.",
    "<따릉이 반납시간이 10분 남았습니다.",
    "상품의 유효기간이 30일 남았습니다.",
    "대출예약도서 안내",
    "(광고)all-inclusive, 이리루",
  ];
  final lastChatTime = [
    "오후 6:05",
    "오후 2:17",
    "오전 11:35",
    "어제",
   "7월10일",
    "7월8일",
    "7월2일",
    "6월29일",
    "6월24일",
  ];
  final newChatNum = [
    "300+",
    "24",
    "6",
    "3",
    "2",
    "79",
    "1",
    "1",
    "67",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: ListView.builder(
      itemCount: listImage.length,
      itemBuilder: (context, index) {
        return Padding(
            padding: const EdgeInsets.all(10.0),
            child: ChatList(listImage[index], chatName[index], chatNum[index],
                recentMessage[index], lastChatTime[index], newChatNum[index]));
      },
    ));
  }
}
