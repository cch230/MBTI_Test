function setShare(point) {
	const shareImage = 'https://www.meboon.com/site/MBTI/image/shareImage.png';
	const shareURL = 'https://www.meboon.com/site/MBTI/result.html?'+point;
	Kakao.Link.sendDefault({
		objectType: 'feed',
		content: {
			title: '미분양|뒷통수_얼얼 팩폭 테스트',
			description: '#뒷통수_얼얼 #팩폭 #아닌척_자제좀 #이게너야ㅋㅋ #미분양 #mbti',
			imageUrl: shareImage,
			link: {
				mobileWebUrl: shareURL,
				webUrl: shareURL
			},
		},
		buttons: [
			{
				title: '친구 결과 확인하기',
				link: {
					mobileWebUrl: shareURL,
					webUrl: shareURL,
				},
			},
		]
	});
}
function moveto() {
	location.href='https://www.meboon.com/site/MBTI/MBTI.html';
}
