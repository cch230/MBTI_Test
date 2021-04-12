const url = 'http://www.wowflee.com';
const photoUrl = window.location.host;

function setShare() {
	const shareImage = 'http://www.wowflee.com/image/main.png';
	const shareURL = window.location.pathname;
	console.log(shareURL);
	Kakao.Link.sendDefault({
		objectType: 'feed',
		content: {
			title: '명대사로 보는 팩폭 성향테스트',
			description: '성향 테스트하고 치킨받자!',
			imageUrl: shareImage,
			link: {
				mobileWebUrl: url+shareURL,
				webUrl: url+shareURL
			},
		},

		buttons: [
			{
				title: '결과확인하기',
				link: {
					mobileWebUrl: url+shareURL,
					webUrl: url+shareURL,
				},
			},
		]
	});
}
function moveto() {
	location.href='http://www.wowflee.com';
}
