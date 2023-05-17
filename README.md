# http://dbrjsdml.cafe24.com/Pullmo

<p>풀무원 사이트 클론 코딩 프로젝트 - 웹 개발 기술 연습과 동작 원리 파악</p>

<br>

  # <strong>관리자 정보</strong>
  
    * 아이디 : admin
    * 비밀번호 : xptmxm12
    * MVC Model1 방식으로 제작된 사이트입니다. 
  
<br>

# 구성원

* 팀장 유건의 : 전체적인 프론트 디자인, 
* 팀원 박득권 : 매일배송 페이지
* 팀원 이경선 : 이벤트 페이지
* 팀원 장나래 : 시음선물 페이지

<br>

# 기획의도
웹 개발 기술을 연습하기 위해 풀무원 사이트를 클론 코딩하였습니다. 이 프로젝트를 통해 주요 기능인 제품 목록, 상세 정보, 검색 기능, 회원 가입 및 로그인 기능 등을 구현해보고,이러한 연습을 통해 JSP의 개념과 원리를 체득할 수 있을 것으로 기대했습니다. 또한 웹 개발에 필요한 다양한 측면을 경험하고, 풀무원 사이트의 동작 원리를 파악하는 것이 목표였습니다. 

<br>

# 배포환경
<div>
    <ul>
        <li>Cafe24 호스팅</li>
        <li>Tomcat 8.5.x / JSP 2.3 / Servlet 3.0 / JDK 8 / MariaDB 10.1.x UTF-8 </li>
    </ul>
</div>

<br>

# 기술 스택

<div>

| JAVA       | Bootstrap     | MariaDB    |   JSP    |
| :--------: | :--------:    | :------:   | :-----:  |
| ![java]    | ![Bootstrap]  | ![MariaDB] | ![JSP]   | 
    
</div>


<div>
    <ul>
        <li>JAVA</li>
        <li>Bootstrap 5.3</li>
        <li>Jsp 2.3</li>
        <li>MariaDB 2.7.4</li>
    </ul>
</div>

<br>

# 기능 구현
<div>
    <ul>
        <li>
            <strong>관리자 페이지</strong>
            <ul>
              <li>모든회원 정보조회, 삭제, 수정 가능</li>
            </ul>
        </li><br>
        <li>
            <strong>계정관련</strong>
            <ul>
                <li>로그인, 로그아웃, 회원가입, 중복조회, 내정보변경</li>
                <li>쿠키기능 사용</li>
            </ul>
        </li><br>
        <li>
            <strong>상품관련</strong>
            <ul>
                <li>상품 목록보기</li>
                <li>상품 상세보기</li>
                <li>장바구니 담기</li>
                <li>장바구니 삭제</li>
                <li>상품검색 기능</li>
            </ul>
        </li><br>
        <li>
            <strong>공지사항 게시판</strong>
            <ul>
                <li>게시판 CRUD</li>
                <li>게시판 댓글기능</li>
                <li>게시판 댓글삭제</li>
            </ul>
        </li><br>
        <li>
            <strong>결제</strong>
            <ul>
                <li>결제 API 테스트 결제기능</li>
            </ul>
        </li><br>
    </ul>
</div>

<br>

# 이미지
<div>
    <table>
        <tbody>
            <tr>
                <td align="center">관리자페이지</td>
                <td align="center">로그인</td>
            </tr>
            <tr>
                <td>
                    <img src="http://dbrjsdml.cafe24.com/Pullmo/image/imageGit/adminPage.png" width="100%">
                </td>
                <td>
                   <img src="http://dbrjsdml.cafe24.com/Pullmo/image/imageGit/loginPage.png" width="100%">
                </td>
            </tr>
            <tr>
                <td align="center">상품관련</td>
                <td align="center">공지사항</td>
            </tr>
            <tr> 
                <td>
                    <img src="http://dbrjsdml.cafe24.com/Pullmo/image/imageGit/productPage.png" width="100%">
                </td>
                <td>
                    <img src="http://dbrjsdml.cafe24.com/Pullmo/image/imageGit/ad.png" width="100%">
                </td>
            </tr>
             <tr>
                <td align="center">상세보기</td>
                <td align="center">장바구니</td>
            </tr>
            <tr>
                <td>
                  <img src="http://dbrjsdml.cafe24.com/Pullmo/image/imageGit/productDetail.png" width="100%">
                </td>
                <td>
                   <img src="http://dbrjsdml.cafe24.com/Pullmo/image/imageGit/productBar.png" width="100%">
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">결제</td>
            </tr>
            <tr>
                <td>
                   <img src="http://dbrjsdml.cafe24.com/Pullmo/image/imageGit/testMoney1.png" width="100%">
                </td>
                <td>
                   <img src="http://dbrjsdml.cafe24.com/Pullmo/image/imageGit/testMoney2.png" width="100%">
                </td>
            </tr>
        </tbody>
    </table>
</div>

<br>

# 참고사이트
   * 풀무원녹즙 : https://greenjuice.pulmuone.com/

<br>

# 추가 업데이트 계획
    05.27 댓글 수정,삭제기능 추가
    05.27 로그인, 로그아웃시 model로 알림창 추가
    05.27 결제방식 추가

<br>
<br>




     
[java]: https://noticon-static.tammolo.com/dgggcrkxq/image/upload/v1566913897/noticon/xbvewg1m3azbpnrzck1k.png
[Bootstrap]: https://noticon-static.tammolo.com/dgggcrkxq/image/upload/v1567128495/noticon/gpkdob34yhkxoo7cyyqv.png
[Boot]: https://noticon-static.tammolo.com/dgggcrkxq/image/upload/v1567008187/noticon/m4oad4rbf65fjszx0did.png
[Jpa]: https://noticon-static.tammolo.com/dgggcrkxq/image/upload/v1609094551/noticon/gkcjchloc7f7khlsyyyy.png
[JSP]: https://noticon-static.tammolo.com/dgggcrkxq/image/upload/v1592435019/noticon/z0s5osjhwlxpeo6pxslv.png
[MariaDB]: https://noticon-static.tammolo.com/dgggcrkxq/image/upload/v1566920129/noticon/r9gn1ilil1r8ar4w59dj.png
[Mybatis]: https://noticon-static.tammolo.com/dgggcrkxq/image/upload/v1592435324/noticon/judba41udt3wtirdj4ek.png
