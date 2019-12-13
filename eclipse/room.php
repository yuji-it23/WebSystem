<!DOCTYPE html>
<head>
    <!-- テーブル表示用jqGridの読み込み -->
    <link type="text/css" media="screen" href="jqGrid/jquery-ui.min.css" rel="stylesheet" />
    <link type="text/css" media="screen" href="jqGrid/jquery-ui.css" rel="stylesheet" />
    <link type="text/css" media="screen" href="jqGrid/css/ui.jqgrid.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/room.css">
    <meta charset="UTF-8">
<title> 教室管理 - Web出席管理システム</title>

<!-- 共通Layoutの読み込み -->
<?php
require('../Layout/Layout.php');
?>

<div class="titlebar">
    教室管理
    <div class="buttonWrapper">
        <button onclick = "openWin()"class="registration_b" type="button" name="registration">
            <input class="registration_b_img" type="image" src="../Layout/image/registration.png" alt="登録" />
                登録
        </button>
        <script>
	var myWindow;
	function openWin() {
	myWindow = window.open('popup.php', 'myWindow', 'top=100,left=300,width=500,height=800');
	}
</script>
    </div>
</div>

<!-- 検索項目 -->
<div class="searchbox">
    <form id="roomInfo">
        <div class="searchbox_txtwrapper">
            <p class="searchbox_txt1">検索項目</p>
            <p class="searchbox_txt2">教室タイプ
              <select id="roomtype">
                <option value="roomtypeAll">項目選択</option>
              </select>
            </p>
            <p class="searchbox_txt3">階層
              <select id="floor">
              <option value="floorAll">項目選択</option>
              </select>
            </p>


                </label></p>
            <button class="search_b" type="button" id="search_studentInfo" name="search">検索</button>
        </div>
    </form>
</div>

<!-- 検索結果表示 -->
<div class="searchresult">
    <table id="list">
    </table>
    <div id ="pager1"></div>
    <div id="statusbar"></div>
</div>

<!-- Layout.php終了タグ -->
        </div>
        </main>

    <script type="text/javascript" src="jqGrid/jquery-3.4.1.min.js" ></script>
    <script type="text/javascript" src="jqGrid/js/jquery.jqGrid.min.js" ></script>
    <script type="text/javascript" src="jqGrid/js/i18n/grid.locale-ja.js" ></script>
    <script type="text/javascript" src="jqGrid/jquery-ui.js"></script>
    <script type="text/javascript" src="jqGridSet.js"></script>
    <script type="text/javascript" src="js/db/room.js"></script>
    <script type="text/javascript" src="js/db/roomLoad.js"></script>
    </body>
</html>
