const main = document.querySelector("#main");
const qna = document.querySelector("#qna");
const result = document.querySelector("#result");
let pos = 12;
const endPoint = 12;
const select = [0, 0, 0, 0, 0, 0, 0, 0];
//E0 I1 S2 N3 T4 F5 J6 P7
var i = 0;
//AGE SEX 1 2 3 4 5 6 7
function calResult() {
	console.log(select);
	/*select.sort();*/

	if (select[0] == Math.max(select[0], select[1])) {
		var result1 = 0;
	}
	else {
		var result1 = 1;
	}

	if (select[2] == Math.max(select[2], select[3])) {
		var result2 = 2;
	}
	else {
		var result2 = 3;
	}

	if (select[4] == Math.max(select[4], select[5])) {
		var result3 = 4;
	}
	else {
		var result3 = 5;
	}

	if (select[6] == Math.max(select[6], select[7])) {
		var result4 = 6;
	}
	else {
		var result4 = 7;
	}

	var str_res = result1.toString() + result2.toString() + result3.toString() + result4.toString();
	return str_res;
}

function setResult() {
	let point = calResult();
	if (point == '0246') { pos = 0; }
	else if (point == '0247') { pos = 1; }
	else if (point == '0256') { pos = 2; }
	else if (point == '0257') { pos = 3; }
	else if (point == '0346') { pos = 4; }
	else if (point == '0347') { pos = 5; }
	else if (point == '0356') { pos = 6; }
	else if (point == '0357') { pos = 7; }
	else if (point == '1246') { pos = 8; }
	else if (point == '1247') { pos = 9; }
	else if (point == '1256') { pos = 10; }
	else if (point == '1257') { pos = 11; }
	else if (point == '1346') { pos = 12; }
	else if (point == '1347') { pos = 13; }
	else if (point == '1356') { pos = 14; }
	else if (point == '1357') { pos = 15; }
	sessionStorage.setItem("pos", pos); // 저장

	//const resultName = document.querySelector('.resultname');
	//resultName.innerHTML = infoList[pos].name;
	//console.log();
	
	// var str = "";
	// for (var j = 0; j < 10; j++) {
	// 	str += sessionStorage.getItem("data_" + j).toString(); // 저장
	// }
	// var str1 = str.substr(0, 5);
	// var str2 = str.substr(5, 5);	
	// str1 = parseInt(str1)*3+126;
	// str2 = parseInt(str2)+2715;
	// str= String(str1)+String(str2);
	location.href = window.location.protocol + "//" + window.location.host + '/site/MBTI/result.html?'+point;

	/*var resultImg = document.createElement('img');
	const imgDiv = document.querySelector('#resultImg');
	var imgURL = 'image/' + point + '.png';
	resultImg.src = imgURL;
	resultImg.alt = point;
	resultImg.classList.add('img-fluid');
	imgDiv.appendChild(resultImg);*/

	//const resultDesc = document.querySelector('.resultDesc');
	//resultDesc.innerHTML = infoList[pos].desc;
}
	
	function goResult() {
		/*qna.style.WebkitAnimation = "fadeOut 1s";
		qna.style.animation = "fadeOut 1s";
		setTimeout(() => {
			result.style.WebkitAnimation = "fadeIn 1s";
			result.style.animation = "fadeIn 1s";
			setTimeout(() => {
				qna.style.display = "none";
				result.style.display = "block"
			}, 450)
		})*/
	
		setResult();
	}
	
	function addAnswer(answerText, qIdx, idx) {
		var a = document.querySelector('.answerBox');
		var answer = document.createElement('button');
		answer.classList.add('answerList');
		answer.classList.add('my-3');
		answer.classList.add('py-3');
		answer.classList.add('mx-auto');
		answer.classList.add('fadeIn');
	
		a.appendChild(answer);
		answer.innerHTML = answerText;
	
		answer.addEventListener("click", function() {
			var children = document.querySelectorAll('.answerList');
			for (let i = 0; i < children.length; i++) {
				children[i].disabled = true;
				children[i].style.WebkitAnimation = "fadeOut 0.5s";
				children[i].style.animation = "fadeOut 0.5s";
			}
			setTimeout(() => {
				var target = qnaList[qIdx].a[idx].type;
				// var data = qnaList[qIdx].a[idx].db;
	
				// if (data[0]!=0) {
				// db_data_save[data[i]] = data[0];
				// console.log("data_" + ":  "+ db_data_save[data[i]] );
				// 	sessionStorage.setItem("data_" + i, db_data_save[data[i]]); // 저장
				// i += 1;
				// }
	
			for (let i = 0; i < target.length; i++) {
	
				select[target[i]] += 1;
			}
			for (let i = 0; i < children.length; i++) {
				children[i].style.display = 'none';
			}
			goNext(++qIdx);
		}, 450)
	}, false);
	}
	
	function goNext(qIdx) {
		if (qIdx === endPoint) {
			goResult();
			return;
		}
	
		var q = document.querySelector('.qBox');
		q.innerHTML = qnaList[qIdx].q;
		for (let i in qnaList[qIdx].a) {
			addAnswer(qnaList[qIdx].a[i].answer, qIdx, i);
		}
		var status = document.querySelector('.statusBar');
		status.style.width = (100 / endPoint) * (qIdx + 1) + '%';
	}
	
	function begin() {
		sessionStorage.clear();
		main.style.WebkitAnimation = "fadeOut 1s";
		main.style.animation = "fadeOut 1s";
		setTimeout(() => {
			qna.style.WebkitAnimation = "fadeIn 1s";
			qna.style.animation = "fadeIn 1s";
			setTimeout(() => {
				main.style.display = "none";
				qna.style.display = "block"
				var children = document.querySelectorAll('.answerList');
	
			}, 450)
			let qIdx = 0;
			goNext(qIdx);
	}, 450);
}