  <!-- 参考程度にどうぞ　このままでは何も動作しません -->
<!DOCTYPE html>
<html>
<head>
<title>テーブルサンプル</title>
<style type="text/css">
.side-menu {
 	position: fixed;
	top: 20vh;
	right:0;
	z-index:1;
}
</style>
</head>
<body>

<input type="button" value="授業の新規作成">
<form action="" method="">
<table border="0">
  <tr>
    <tr><td><input type="radio" name="radio" value="select" checked="checked">条件を指定<br></td></tr>
	<tr>
	<td>年度</td>
	<td>
	<select name="年度">
	<option value="1">1999</option>
	<option value="2" selected>2000</option>
	<option value="3">2001</option>
	</select>年</td>
	</tr>
	<tr>
	<td>種別</td>
	<td>
	<select name="種別">
	<option value="1">就職関連</option>
	<option value="2" selected>プログラミング</option>
	<option value="3">その他</option>
	</select></td>
	</tr>
	<tr>
	<td>実施クラス</td>
	<td>
	<select name="クラス">
	<option value="1">1-A</option>
	<option value="2" selected>1-B</option>
	<option value="3">1-C</option>
	</select><br>
	<select name="期間">
	<option value="1">前期</option>
	<option value="2" selected>後期</option>
	<option value="3">通年</option>
	</select>
	</td>
    </tr>
    <tr>
     <td><input type="radio" name="radio" value="select">授業番号直接入力<br>
    </tr>
    <tr>
		<td><input type="text" value=""></td>
    </tr>
    <tr>
     <td>
      
      <input type="button" value="絞り込み">
      <input type="reset" value="リセット">
     </td>
    </tr>

</table>
</form>
<form name="table" action="" method="post">
 <table border="1">
 <br>
    <tr>
      <th><input type="checkbox" name="all" onClick="AllChecked();" /></th>
      <th>授業番号</th>
      <th>授業名</th>
      <th>年度</th>
      <th>期間</th>
      <th>担当</th>
      <th>教室1</th>
      <th>教室2</th>
      <th>詳細</th>
    </tr>
    <tr>
      <td><input type="checkbox" name="hantei" value="check"></td>
      <td>11111111</td>
      <td><input type="text" value="DBA"></td>
      <td>2015</td>
      <td>前期</td>
      <td>谷川</td>
      <td>7-D</td>
      <td>-</td>
      <td><input type="button" value="詳細"></td>
    </tr>
    <tr>
      <td><input type="checkbox" name="hantei" value="check"></td>
      <td>11111112</td>
      <td><input type="text" value="Java基礎"></td>
      <td>2015</td>
      <td>前期</td>
      <td>谷川</td>
      <td>8-C</td>
      <td>-</td>
      <td><input type="button" value="詳細"></td>
    </tr>
  </table>
  <br>
    <td>
      <input type="reset" value="変更を破棄">
      <input type="button" value="保存">
      
    </td>
  </form>
  <!-- チェックボックスのJS -->
  <script language="JavaScript" type="text/javascript">
    function AllChecked(){
    var all = document.table.all.checked;
    for (var i=0; i<document.table.hantei.length; i++){
      document.table.hantei[i].checked = all;
    }
  }
  </script>

</body>
</html>