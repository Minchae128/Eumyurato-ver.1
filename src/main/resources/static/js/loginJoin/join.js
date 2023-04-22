jQuery(function() {
    const myForm = $('#frmtest');
    myForm.validate({
        rules: {                    // 유효성 검사 규칙
            id: {             // 이름 필드
                required: true,     // 필수 입력
                minlength: 3,      // 최소 입력 길이
                maxlength: 20
            },
            password: {             // 비밀번호 필드
                required: true,     // 필수 입력
                minlength: 8,       // 최소 입력 길이
                maxlength: 20
            },
            cpassword: {     // 비밀번호 재확인 필드
                required: true,     // 필수 입력
                minlength: 8,       // 최소 입력 길이,
                maxlength: 20,
                equalTo: password   // 비밀번호 필드와 동일한 값을 가지도록
            },
            fullname: {             // 이름 필드
                required: true,     // 필수 입력
                maxlength: 20
            },
            nid: {                   // 닉네임 필드
                required: true,     // 필수 입력
                maxlength: 20
            },
            sexRadioOptions: {
                required: true
            },
            email: {                // 이메일 필드
                required: true,     // 필수 입력
                email: true,         // 이메일 형식 검증
                maxlength: 30
            },
            num1: {                  // 연락처 필드
                required: true,     // 필수 입력
                digits: true        // 숫자 형태로만 입력 가능하도록 설정
            },
            num2: {                  // 연락처 필드
                required: true,     // 필수 입력
                digits: true        // 숫자 형태로만 입력 가능하도록 설정
            },
            chk_agree: {            // 약관 동의 체크박스
                required: true      // 필수 체크
            }
        },
        messages: {                 // 오류값 발생시 출력할 메시지 수동 지정
            id: {
                required: '필수 입력 항목입니다.',
                minlength: '최소 {0}글자 이상 입력하세요.'
            },
            password: {
                required: '필수 입력 항목입니다.',
                minlength: '최소 {0}글자 이상 입력하세요.'
            },
            password_confirm: {
                required: '필수 입력 항목입니다.',
                minlength: '최소 {0}글자 이상 입력하세요.',
                equalTo: '동일한 비밀번호를 입력해 주세요.'
            },
            fullname: {
                required: '필수 입력 항목입니다.',
            },
            nid: {
                required: '필수 입력 항목입니다.',
            },
            sexRadioOptions: {
                required: '필수 체크 항목입니다.'
            },
            email: {
                required: '필수 입력 항목입니다.',
                email: '올바른 이메일 형식으로 입력하세요.'
            },
            num1: {
                required: '필수 입력 항목입니다.',
                digits: '반드시 숫자만 입력하세요.'
            },
            num2: {
                required: '필수 입력 항목입니다.',
                digits: '반드시 숫자만 입력하세요.'
            },
            chk_agree: {
                required: '필수 체크 항목입니다.'
            }
        }
    });
});