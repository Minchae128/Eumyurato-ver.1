function displayMembers(members, category, currentPage) {
    const memberTbody = document.getElementById('memberTbody');
    memberTbody.innerHTML = '';

    const membersPerPage = 5;
    const start = (currentPage - 1) * membersPerPage;
    const end = start + membersPerPage;

    members.slice(start, end).forEach((member) => {
        const memberRow = memberTbody.insertRow();

        // 기본 공통 컬럼

        switch (category) {
            case 'common':
                // 일반 회원에 대한 데이터를 생성
                memberRow.insertCell().textContent = member.id;
                memberRow.insertCell().textContent = member.name;
                memberRow.insertCell().textContent = member.nid;
                memberRow.insertCell().textContent = member.sex;
                memberRow.insertCell().textContent = member.birth;
                memberRow.insertCell().textContent = member.email;
                memberRow.insertCell().textContent = member.phone;
                memberRow.insertCell().textContent = member.road;
                memberRow.insertCell().textContent = member.genre;
                break;

            default:
                break;
        }
    });

    createPagination(members.length, membersPerPage, currentPage, category);
}


// 로그아웃
const logoutBtn = document.getElementById("logoutBtn");
logoutBtn.setAttribute("href", "/logout");
logoutBtn.onclick = function () {
    fetch('/logout', {method: 'POST', credentials: 'include'})
        .then(response => {
            if (response.ok) {
                // 세션 스토리지에서 토큰 제거
                window.sessionStorage.removeItem("jwtToken");
                console.log("로그아웃")
                // 홈페이지로 이동
                window.location.href = "/map";
            } else {
                throw new Error("로그아웃 처리에 실패하였습니다.");
            }
        })
        .catch(error => {
            console.error(error);
            alert(error.message);
        });
};