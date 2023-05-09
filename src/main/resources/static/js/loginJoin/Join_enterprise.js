(function () {
    'use strict';

    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.querySelectorAll('.needs-validation');

    // Loop over them and prevent submission
    Array.prototype.slice.call(forms).forEach(function (form) {
        form.addEventListener('submit', function (event) {
            if (!form.checkValidity()) {
                event.preventDefault();
                event.stopPropagation();
            }

            form.classList.add('was-validated');
        }, false);

        // 아이디 유효성 검사
        const uidInput = document.querySelector('input[name="id"]');
        const uidRegex = /^[a-zA-Z0-9]{5,20}$/;
        uidInput.addEventListener('blur', function () {
            const uidValue = uidInput.value.trim();
            const uidEmptyFeedback = document.getElementById("uid-empty");
            const uidLengthFeedback = document.getElementById("uid-length");
            const uidAlphanumericFeedback = document.getElementById("uid-alphanumeric");
            const uidAvailableFeedback = document.getElementById("uid-available");
            const uidDuplicateFeedback = document.getElementById("uid-duplicate");

            if (uidValue === "") {
                uidEmptyFeedback.style.display = "block";
                uidLengthFeedback.style.display = "none";
                uidAlphanumericFeedback.style.display = "none";
                uidAvailableFeedback.style.display = "none";
                uidDuplicateFeedback.style.display = "none";
            } else if (!uidRegex.test(uidValue)) {
                uidEmptyFeedback.style.display = "none";
                uidLengthFeedback.style.display = "block";
                uidAlphanumericFeedback.style.display = "block";
                uidAvailableFeedback.style.display = "none";
                uidDuplicateFeedback.style.display = "none";
            } else {
                uidEmptyFeedback.style.display = "none";
                uidLengthFeedback.style.display = "none";
                uidAlphanumericFeedback.style.display = "none";

                // 중복 검사 요청
                const xhr = new XMLHttpRequest();
                xhr.onreadystatechange = function () {
                    if (xhr.readyState === 4) {
                        if (xhr.status === 200) {
                            const response = JSON.parse(xhr.responseText);
                            if (response.exists) {
                                uidAvailableFeedback.style.display = "none";
                                uidDuplicateFeedback.style.display = "block";
                            } else {
                                uidAvailableFeedback.style.display = "block";
                                uidDuplicateFeedback.style.display = "none";
                            }
                        } else {
                            // 처리 실패 시 메시지 표시
                            console.error(xhr.responseText);
                            uidAvailableFeedback.style.display = "none";
                            uidDuplicateFeedback.style.display = "none";
                        }
                    }
                };
                xhr.open('GET', '/check-uid?uid=' + uidValue, true);
                xhr.send();
            }
        });


// 비밀번호 유효성 검사
        const pwdInput = document.querySelector('input[name="pwd"]');
        const pwdRegex = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,16}$/;
        pwdInput.addEventListener("blur'", function () {
            const pwdValue = pwdInput.value.trim();

            if (pwdValue === "") {
                document.getElementById("password-empty").style.display = "block";
            } else if (!pwdRegex.test(pwdValue)) {
                document.getElementById("password-invalid").style.display = "block";
                document.getElementById("password-empty").style.display = "none";
            } else {
                document.getElementById("password-empty").style.display = "none";
                document.getElementById("password-invalid").style.display = "none";
            }
        });

// 비밀번호 확인 유효성 검사
        const cpasswordInput = document.querySelector('input[name="cpassword"]');
        cpasswordInput.addEventListener("input", function () {
            const pwdValue = pwdInput.value.trim();
            const cpasswordValue = cpasswordInput.value.trim();

            if (pwdValue !== cpasswordValue) {
                document.getElementById("cpassword-mismatch").style.display = "block";
                document.getElementById("cpassword-match").style.display = "none";
            } else {
                document.getElementById("cpassword-match").style.display = "block";
                document.getElementById("cpassword-match").style.color = "green";
                document.getElementById("cpassword-mismatch").style.display = "none";

            }
        });

        // 닉네임 / 아티스트명 유효성 검사
        const nidInput = document.querySelector('input[name="nid"]');
        const nidRegExp = /^[a-zA-Z0-9가-힣]{1,20}$/;
        nidInput.addEventListener("input", function () {
            const nidValue = nidInput.value.trim();

            if (nidValue === "") {
                document.getElementById("nid-empty").style.display = "block";
            } else if (!nidRegExp.test(nidValue)) {
                document.getElementById("nid-invalid").style.display = "block";
                document.getElementById("nid-empty").style.display = "none";
            } else {
                document.getElementById("nid-empty").style.display = "none";
                document.getElementById("nid-invalid").style.display = "none";
            }
        });

// 이메일 유효성 검사
        const emailInput = document.querySelector('input[name="email"]');
        const emailRegex = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,30}$/;
        emailInput.addEventListener('blur', function (event) {
            const emailValue = emailInput.value.trim();
            if (emailValue === "") {
                // 이메일이 빈 문자열일 경우
                document.getElementById("email-empty").style.display = "block";
            } else if (!emailRegex.test(emailValue)) {
                // 이메일 형식이 올바르지 않을 경우
                document.getElementById("email-invalid").style.display = "block";
                document.getElementById("email-empty").style.display = "none";
            } else {
                document.getElementById("email-empty").style.display = "none";
                document.getElementById("email-invalid").style.display = "none";
            }
        });

// 휴대폰 유효성 검사
        const phoneInput = document.querySelector('input[name="phone"]');
        const phoneRegex = /^\d{1,20}$/;
        phoneInput.addEventListener('blur', function (event) {
            const phoneValue = phoneInput.value.trim();

            if (phoneValue === "") {
                // 휴대폰 번호가 빈 문자열일 경우
                document.getElementById("num1-empty").style.display = "block";
                document.getElementById("num1-invalid").style.display = "none";
            } else if (!phoneRegex.test(phoneValue)) {
                // 휴대폰 번호 형식이 올바르지 않을 경우
                document.getElementById("num1-invalid").style.display = "block";
                document.getElementById("num1-empty").style.display = "none";
            } else {
                document.getElementById("num1-empty").style.display = "none";
                document.getElementById("num1-invalid").style.display = "none";
            }
        });

        // 사업자등록번호 유효성 검사
        const numInput = document.querySelector('input[name="phone"]');
        const numRegex = /^\d{1,40}$/;
        numInput.addEventListener('blur', function (event) {
            const numValue = numInput.value.trim();

            if (numValue === "") {
                // 휴대폰 번호가 빈 문자열일 경우
                document.getElementById("enter-empty").style.display = "block";
                document.getElementById("enter-invalid").style.display = "none";
            } else if (!numRegex.test(numValue)) {
                // 휴대폰 번호 형식이 올바르지 않을 경우
                document.getElementById("enter-invalid").style.display = "block";
                document.getElementById("enter-empty").style.display = "none";
            } else {
                document.getElementById("enter-empty").style.display = "none";
                document.getElementById("enter-invalid").style.display = "none";
            }
        });


// 약관 동의 체크박스 유효성 검사
        const agreeCheckbox = document.getElementById("chk_agree");
        const agreeCheckboxCheck = document.getElementById("chk_agree-invalid");

        agreeCheckbox.addEventListener("input", function () {
            if (!agreeCheckbox.checked) {
                agreeCheckboxCheck.style.display = "block";
                return false;
            } else {
                agreeCheckboxCheck.style.display = "none";
            }
        });
    });
})();


// 회원가입 이벤트 핸들러
const joinButton = document.getElementById('joinButton');
joinButton.addEventListener('click', function (e) {
    // 기본 이벤트 동작(폼 전송) 중단
    e.preventDefault();

    // 모든 유효성 검사 통과 여부 확인
    const allValidationsPassed = !document.querySelectorAll('.validation-message.show').length;

    if (allValidationsPassed) {
        // 폼 데이터 가져오기
        const form = document.getElementById('myForm');
        const formData = new FormData(form);

        // 서버로 데이터 전송
        fetch('/loginjoin/enterprise/join', {
            method: 'POST',
            body: formData
        })
            .then(response => {
                if (response.ok) {
                    // 회원 가입 성공 시 페이지 이동
                    window.location.href = '/loginjoin/artist/login';
                } else {
                    // 회원 가입 실패 시 메시지 표시
                    alert('회원 가입에 실패했습니다.');
                }
            })
            .catch(error => {
                console.error(error);
                alert('회원 가입에 실패했습니다.');
            });
    }
});
