<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
	
        <form name="payForm" accept-charset="EUC-KR"/>
            <input name="TYPE" value="P"/>
            <input name="PAYMETHOD" value="KAKAOPAY"/>
            <input name="CERTTYPE" value="01"/>
            <input name="CPID" value="CTS10273"/>
            <input name="ORDERNO" value="20230105112916"/>
            <input name="PRODUCTTYPE" value="1"/>
            <input name="AMOUNT" value="1004"/>
            <input name="PRODUCTNAME" value="테스트상품"/>
            <input name="PRODUCTCODE" value="A001"/>
            <input name="USERID" value="tester"/>
        </form>

	 <script type="text/javascript" charset="EUC-KR">
           function pay() {
                var pf = document.payForm;
                var fileName = "https://apitest.kiwoompay.co.kr/pay/link";
                var KIWOOMPAY = window.open("", "KIWOOMPAY", "width=468,height=750");
                pf.target = "KIWOOMPAY";
                pf.action = fileName;
                pf.method = "post";
                pf.submit();
            }


			pay();
      </script>
    



		

</body>
</html>