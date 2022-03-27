# EClass 자동 꺼짐 방지

F12 -> console 

minute = 종료 시간

```
minute = 10;

setTimeout(function(){
	document.querySelector("#bttnClose > a").click()
	}, 1000*60*minute);

function my_click(){
	console.log('자동 꺼짐 방지 실행 중')
	var iframe = document.getElementById('contentsCheckForm');
	if (iframe){
		console.log('클릭')
		var mybtn = iframe.contentWindow.document.querySelector('.btn');
		mybtn.click()
	}
}

setInterval(my_click, 20 * 1000)
```
