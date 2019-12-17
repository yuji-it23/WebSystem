// 画面表示時に処理される。
$(document).ready( function(){
    var formDatas = document.getElementById("roomInfo");
    var postDatas = new FormData(formDatas);

	var XHR = new XMLHttpRequest();
    
    // 生徒の検索(DB接続)を行うphpファイルを呼び出す        
    XHR.open("POST","./php/db/roomLoad.php",true);
    XHR.send(postDatas);

	var select = "";
	let count = 0;
                        
    XHR.onreadystatechange = function(){
    	if(XHR.readyState == 4 && XHR.status == 200){
    		// postデータ格納用配列を用意
    		let studentData =[];
    		// 検索結果のデータをJson形式から配列に変換
        	let studentDate = JSON.parse(XHR.responseText);

            // 取得データの数だけ、リストボックスに格納していく
    		for(let i = 0; i < Object.keys(studentDate).length;){
				if(count == 0){
					// selectタグを取得する
 	 				select = document.getElementById("roomtype");
	  				// optionタグを作成する
					var option = document.createElement("option");
					// optionタグのテキストを「コース|学科名称」に設定する
					option.text = studentDate[i+1] + " | " +studentDate[i];
					// optionタグのvalueを「コース|学科名称」に設定する
					option.value = studentDate[i+1] + " | " +studentDate[i];
					// selectタグの子要素にoptionタグを追加する
					select.appendChild(option);
					i+=2;

				}else {
					// selectタグを取得する
					select = document.getElementById("floor");
					// optionタグを作成する
					var option = document.createElement("option");
					// optionタグのテキストを「コース|学科名称」に設定する
					option.text =  studentDate[i];
					// optionタグのvalueを「コース|学科名称」に設定する
					option.value = studentDate[i];
					// selectタグの子要素にoptionタグを追加する
					select.appendChild(option);

					i++;

				}

				if("" == studentDate[i]){
					count++;
					i++;
				}
    		
			
		

			
        	} 
    	};

	}

	/*
    // 生徒の検索(DB接続)を行うphpファイルを呼び出す        
    XHR.open("POST","./php/db/roomLoad2.php",true);
    XHR.send(postDatas);

    // selectタグを取得する
 	var select = document.getElementById("floor");
                        
	 XHR2.onreadystatechange = function(){
    	if(XHR.readyState == 4 && XHR.status == 200){
    		// postデータ格納用配列を用意
    		let studentData =[];
    		// 検索結果のデータをJson形式から配列に変換
        	let studentDate = JSON.parse(XHR.responseText);

            // 取得データの数だけ、リストボックスに格納していく
    		for(let i = 0; i < Object.keys(studentDate).length; i+=2){
    		// optionタグを作成する
 			var option = document.createElement("option");
       		// optionタグのテキストを「コース|学科名称」に設定する
        	option.text = studentDate[i];
        	// optionタグのvalueを「コース|学科名称」に設定する
        	option.value = studentDate[i];
        	// selectタグの子要素にoptionタグを追加する
        	select.appendChild(option);
        	}
    	};

	}
	*/

});
