# 🎶 음유라토(Eumyurato)
<img src="https://github.com/Minchae128/Eumyurato/assets/122027566/933d6858-e8a0-434c-b618-edf2a9cf8fa3" width="250" height="250"/>

🔗 서비스 URL : http://www.eumyurato.site/home <br/>
🔗 시연 영상 : <br>

## ****🗂**** 개요

- 멀티캠퍼스 백엔드 개발자 취업캠프(Java) 과정의 팀 프로젝트로 진행한 음유라토입니다.
- 음유라토 서비스는 다양한 소규모 공연과 버스킹의 정보를 제공하여 예술과 문화를 즐길 수 있는 웹사이트입니다.
- 음유라토에서 일반회원은 공연 정보와 지역축제의 일정 및 위치를 알수 있으며, 소규모공연 예매 및 티켓팅과 더불어
  <br>
  아티스트회원에게 후원을 할 수 있습니다.
- 음유라토에서 아티스트회원은 공연등록 기능 및 일반사용자들에게 후원을 받을 수 있습니다.
- 음유라토에서 기업회원은 소규모 공연을 등록할 수 있으며, 등록한 공연에 대한 일반회원 예약 내역을 관리할 수 있습니다.
- 음유라토에서 관리자는 등록된 모든 회원들의 정보를 조회, 관리할 수 있으며,
  <br>
  회원들의 선호장르 및 유입경로에 대한 정보를 차트를 통해 볼 수 있습니다.

## ****👊**** 기획의도
![image](https://github.com/Minchae128/Eumyurato/assets/122027566/699ec72c-7372-4df0-93ae-e7634d4443a0)

## ****👥**** 팀원 구성
![image](https://github.com/Minchae128/Eumyurato/assets/122027566/e3e5c1cd-d9c6-46f0-aa8e-2170305b2a6a)

![image](https://github.com/Minchae128/Eumyurato/assets/122027566/a4e6c133-cd93-462a-be64-de1ebafbfe78)

---

## 🎼 음유라토(Eumyurato)
![image](https://github.com/bomin1996/E114_Eumyurato/assets/126555995/61a14e01-7142-4c95-9ecb-5aa58fe47c03)

![image](https://github.com/bomin1996/E114_Eumyurato/assets/121412330/f0373202-1a25-433b-96a5-bd435d275c2d)

## ⚙️ 개발 환경

#### [개발 기간]
-   2023-04-05 ~ 2023-05-15

#### [개발 환경]
-   Intellij
<img src="https://github.com/Minchae128/Eumyurato/assets/122027566/fc2e2f89-46e3-4bb9-ad3a-c7bb53699158" width="70%">

## :pushpin: 주요기능
- 버스킹, 소규모 공연, 지역축제에 대한 위치 서비스 제공
- 위치기반 카테고리 별 정보 제공
- 아티스트 후원 및 소규모 공연 예매 서비스
- KakaoPay를 이용한 결제 서비스
- 마이페이지 회원 및 공연 정보 조회, 통계 정보

## ****♟****UI설계

<img src="https://github.com/bomin1996/E114_Eumyurato/assets/126555995/4016d755-c34d-419e-9353-15142bf2e4d1" width="70%"><br>

## ****🧩****프로세스
<img src="https://github.com/bomin1996/E114_Eumyurato/assets/126555995/1ddedaf6-8471-4886-b627-faf11af116a5" width="70%"><br>

## ****⚡️****전체구조도
<img src="https://github.com/bomin1996/E114_Eumyurato/assets/126555995/34404101-f9da-40b0-96e0-c0402833f460" width="70%"><br>

## ****🗺****ER 다이어그램
<img src="https://github.com/bomin1996/E114_Eumyurato/assets/126555995/f3954470-3243-4633-811d-603e1b89d993" width="70%">

## 📢사용자 권한

| 권한명 | 용도 |
| --- | --- |
| common(1) | 버스킹, 소규모 공연, 지역축제에 대한 위치 서비스 제공되는 일반 회원 |
| artist(2) | 일반회원 기능 + 버스킹등록기능이 제공되는 아티스트 회원 |
| enterprise(3) | 일반회원 기능 + 공연등록 기능이 제공되는 기업 회원 |
| GUEST | 가입되지 않은 비회원 |
| ADMIN(0) | 관리자 |
