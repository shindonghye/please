/* 유효성 검사 */
var ox = false;
$(document).ready(function(){
	$("#myform").submit(function(){
		/*if($.trim($("#join_id").val())=="") {
			alert("아이디를 입력하세요");
			$("#join_id").val("").focus();
			return false;
		}*/
		if($.trim($("#join_pass").val()) == "") {
			alert("비밀번호를 입력하세요");
			$("#join_pass").val("").focus();
			return false;
		}
		if($.trim($("#join_pass2").val()) == "") {
			alert("비밀번호를 입력하세요");
			$("#join_pass2").val("").focus();
			return false;
		}
		var pass = $.trim($("#join_pass").val());
		var pass2 = $.trim($("#join_pass2").val());
		if(pass != pass2) {	
			alert("비밀번호가 일치하지 않습니다");
			$("#join_pass2").val("").focus();
			return false;
		}
		if($.trim($("#join_passa").val()) == "") {
			alert("비밀번호 확인 답변을 입력하세요");
			$("#join_passa").val("").focus();
			return false;
		}
		if($.trim($("#join_name").val()) == "") {
			alert("이름을 입력하세요");
			$("#join_name").val("").focus();
			return false;
		}
		if($("#male").is(":checked") == false && $("#female").is(":checked") == false) {
			alert("성별을 선택하세요");
			$("#male").focus();
			return false;
		}
		if($.trim($("#join_passa").val()) == "") {
			alert("비밀번호 확인 답변을 입력하세요");
			$("#join_passa").val("").focus();
			return false;
		}
		if($.trim($("#join_post").val()) == "") {
			alert("우편번호 버튼을 클릭하세요");
			$("#join_post").val("").focus();
			return false;
		}
		if($.trim($("#join_addr2").val()) == "") {
			alert("나머지 주소를 입력하세요");
			$("#join_addr2").val("").focus();
			return false;
		}														
		if($.trim($("#join_phone2").val()) == "") {
			alert("번호를 입력하세요");
			$("#join_phone2").val("").focus();
			return false;
		}
		if($.trim($("#join_phone2").val().length) <= 2) {
			alert("번호를 입력하세요");
			$("#join_phone2").val("").focus();
			return false;
		}
		if($.trim($("#join_phone3").val()) == "") {
			alert("번호를 입력하세요");
			$("#join_phone3").val("").focus();
			return false;
		}
		if($.trim($("#join_phone3").val().length) <= 3) {
			alert("번호를 입력하세요");
			$("#join_phone3").val("").focus();
			return false;
		}
		if($.trim($("#join_email1").val()) == "") {
			alert("이메일을 입력하세요");
			$("#join_email1").val("").focus();
			return false;
		}
		/*if(!$("#domain > option:selected").val()) {
		    alert("도메인을 선택하세요");
		    $("#domain").focus();
		    return false;
		}*/
		if($.trim($("#join_email2").val()) == "") {
			alert("이메일을 입력하세요");
			$("#join_email2").val("").focus();
			return false;
		}
		if($.trim($("#join_know").val()) == "") {
			alert("어떻게 알고 오셨나요를 입력하세요");
			$("#join_know").val("").focus();
			return false;
		}
		/*if($("#join_agree").is(":checked") == false) {
			alert("이용약관을 선택하세요");
			$("#join_agree").focus();
			return false;
		}
		if($("#join_infoagree").is(":checked") == false) {
			alert("개인정보 수집 및 이용을 선택하세요");
			$("#join_infoagree").focus();
			return false;
		}*/
		/*if(ox == false) {
			alert("중복 아이디입니다.")
			$("#join_id").val("").focus();
			return false;
		}*/
	
/*		var memphone=$("#member_phone").val();
		if(!(validate_userphone(memphone))) {
			alert("숫자만 입력하세요");
			$("#member_phone").val("").focus();
			return false;
		}*/
		/*if(ox == false) {
			alert("ID 확인버튼을 클릭하세요");
			return false;
		}*/
		
	});
});

function post_search(){
	alert("우편번호 버튼을 클릭하세요");
}

// 제이쿼리로 수정할것(이메일 도메인입력)
function domain_list() {
	 var num=myform.domain.selectedIndex;
	/*selectedIndex속성은 select객체하위의 속성으로서 해당리스트 목록번호를 반환
	*/
	if ( num == -1 ) {
	//num==-1은 해당 리스트목록이 없다
	return true;
	 }
	 if(myform.domain.value=="0") // 직접입력
	 {
	/*리스트에서 직접입력을 선택했을때*/
		 myform.join_email2.value="";
	//@뒤의 도메인입력란을 빈공간시켜라.
		 myform.join_email2.readOnly=false;
	//@뒤의 도메인입력란을 쓰기 가능
		 myform.join_email2.focus();
	//도메인입력란으로 입력대기상태
	}
	 
	 else {
	//리스트목록을 선택했을때
	 
		 myform.join_email2.value=myform.domain.options[num].value;
	/*num변수에는 해당리스트 목록번호가 저장되어있다.해당리스트 번호의 option value값이 도메인입력란에 선택된다.options속성은 select객체의 속성으로서 해당리스트번호의 value값을 가져온다
	*/
		 myform.join_email2.readOnly=true;
	 }
}


// 아이디 체크+중복 *
function id_check(){
	$("#id_check").hide();//idcheck span 아이디 영역을 숨긴다.
	var joinid=$("#join_id").val();
	//1.입력글자 길이 체크
	if($.trim($("#join_id").val()).length < 4){
		var newtext='<font color="red">아이디는 4자 이상이어야 합니다.</font>';
		var init='<font color="#747474">(영문소문자/숫자, 4~16자)</font>';
		$("#id_check").text('');
		$("#id_check").show();
		$("#id_check").append(newtext); // 해당영역에 문자 추가
//		$("#join_id").val("").focus();
		if($("#join_id").val().length == 0) {
			$("#id_check").text('');
			$("#id_check").show();
			$("#id_check").append(init);
		}
		return false;
	};
	if($.trim($("#join_id").val()).length >12){
		var newtext='<font color="red">아이디는 12자 이하이어야 합니다.</font>';
		$("#id_check").text('');
		$("#id_check").show();
		$("#id_check").append(newtext); // 해당영역에 문자 추가
//		$("#join_id").val("").focus();
		return false;
	};
	//입력아이디 유효성 검사
	if(!(validate_userid(joinid))){
		var newtext='<font color="red">아이디는 영문소문자, 숫자, _ 조합만 가능합니다.</font>';
		$("#id_check").text('');//문자 초기화
		$("#id_check").show(); // 해당영역에 문자 추가
		$("#id_check").append(newtext);
//		$("#join_id").val("").focus();
		return false;
	};
	
	//아이디 중복확인
    $.ajax({
        type:"POST",
        /*url:"./jsp/member/member_idcheck.jsp",*/
        url:"/please/join_idcheck.member",
        data: {"joinid":joinid},  
        /*datatype:"POST",*/
        success: function (data) { 
 //       	alert(data);
      	  if(data==1){//중복 아이디가 있으면
      		var newtext='<font color="red">중복 아이디입니다.</font>';
      			$("#id_check").text('');
        		$("#id_check").show();
        		$("#id_check").append(newtext);
          		//$("#join_id").val('').focus();
        		ox = false;
          		return false;
	     
      	  }else{//중복아이디가 없으면
      		var newtext='<font color="blue">사용가능한 아이디입니다.</font>';
      		$("#id_check").text('');
      		$("#id_check").show();
      		$("#id_check").append(newtext);
      		//$("#join_pass").focus();
      		ox = true;
      	  }  	    	  
        }
        ,
    	  error:function(){
    		  alert("data error");
    	  }
      });//$.ajax	
};
// 아이디 체크+중복 끝 *

function validate_userid(memid)
{
  var pattern= new RegExp(/^[a-z0-9_]+$/);
  //영문 소문자,숫자 ,_가능,정규표현식
  return pattern.test(memid);
};






// 비밀번호 체크1*
function pass_check1(){
	$("#pass_check1").hide();//pass_check span 아이디 영역을 숨긴다.
	var joinid=$("#join_id").val(); // 입력한 아이디를 joinid변수에 할당
	var joinpass=$("#join_pass").val(); // 입력한 비번을 joinpass변수에 할당
	
	//1.입력글자 길이 체크
	if($.trim($("#join_pass").val()).length < 8){
		var newtext='<font color="red">비밀번호는 8자 이상이어야 합니다.</font>';
		var init='<font color="#747474">(영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자)</font>';
		$("#pass_check1").text('');
		$("#pass_check1").show();
		$("#pass_check1").append(newtext); // 해당영역에 문자 추가
//		$("#join_id").val("").focus();
		if($("#join_pass").val().length == 0) {
			$("#pass_check1").text('');
			$("#pass_check1").show();
			$("#pass_check1").append(init);
		}
		return false;
	};
	if($.trim($("#join_pass").val()).length > 20){
		var newtext='<font color="red">아이디는 20자 이하이어야 합니다.</font>';
		$("#pass_check1").text('');
		$("#pass_check1").show();
		$("#pass_check1").append(newtext); // 해당영역에 문자 추가
//		$("#join_id").val("").focus();
		return false;
	};
	
	//입력비밀번호 유효성 검사
	if(!(validate_pass(joinid,joinpass))){
		return false;
	};
	

};

function validate_pass(uid, upw) {
	
	if(!/^[a-zA-Z0-9]{8,20}$/.test(upw)) {
	var newtext='<font color="red">비밀번호는 영문자, 숫자, _ 조합만 가능합니다.</font>';
		$("#pass_check1").text('');//문자 초기화
		$("#pass_check1").show(); // 해당영역에 문자 추가
		$("#pass_check1").append(newtext);
	//	$("#join_id").val("").focus();
	return false;
	}
  
	var chk_num = upw.search(/[0-9]/g); 
    var chk_eng = upw.search(/[a-z]/ig);
    if(chk_num < 0 || chk_eng < 0) { 
    	
    	var newtext='<font color="red">비밀번호는 숫자와 영문자를 혼용하여야 합니다.';
    	$("#pass_check1").text('');//문자 초기화
    	$("#pass_check1").show(); // 해당영역에 문자 추가
    	$("#pass_check1").append(newtext);
        return false;
    }
    
    if(/(\w)\1\1\1/.test(upw)) {
    	var newtext='<font color="red">비밀번호에 같은 문자를 4번 이상 사용하실 수 없습니다.';
    	$("#pass_check1").text('');//문자 초기화
    	$("#pass_check1").show(); // 해당영역에 문자 추가
    	$("#pass_check1").append(newtext);
        return false;
    }

    //아이디가 포함되면..
    /*if(upw.search(uid)>-1) {
    	var newtext='<font color="red">ID가 포함된 비밀번호는 사용하실 수 없습니다.';
    	$("#pass_check1").text('');//문자 초기화
    	$("#pass_check1").show(); // 해당영역에 문자 추가
    	$("#pass_check1").append(newtext);
        return false;
    }*/
    return true;
}
// 비밀번호 체크1 끝*

//비밀번호 동일한비번 입력했는지 검사
function pass_check2(){
	$("#pass_check2").hide();//pass_check span 아이디 영역을 숨긴다.
	var joinid=$("#join_id").val(); // 입력한 아이디를 joinid변수에 할당
	var joinpass=$("#join_pass").val(); // 입력한 비번을 joinpass변수에 할당
	//alert(joinpass)
	//1.입력글자 길이 체크
	if(joinpass != $("#join_pass2").val()) {
		var newtext='<font color="red">동일한 비밀번호를 입력하세요.</font>';
			$("#pass_check2").text('');
			$("#pass_check2").show();
			$("#pass_check2").append(newtext); // 해당영역에 문자 추가
	} else {
		var newtext='<font color="blue">사용가능한 비밀번호입니다.</font>';
  		$("#pass_check2").text('');
  		$("#pass_check2").show();
  		$("#pass_check2").append(newtext);
	}
//		$("#join_id").val("").focus();
	if($("#join_pass2").val().length == 0) {
			$("#pass_check2").text('');
			$("#pass_check2").show();
	}
			return false;

};

