<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
(function(document) {
	  'use strict';

	  // 建立 LightTableFilter
	  var LightTableFilter = (function(Arr) {

	    var _input;

	    // 資料輸入事件處理函數
	    function _onInputEvent(e) {
	      _input = e.target;
	      var tables = document.getElementsByClassName(_input.getAttribute('data-table'));
	      Arr.forEach.call(tables, function(table) {
	        Arr.forEach.call(table.tBodies, function(tbody) {
	          Arr.forEach.call(tbody.rows, _filter);
	        });
	      });
	    }

	    // 資料篩選函數，顯示包含關鍵字的列，其餘隱藏
	    function _filter(row) {
	      var text = row.textContent.toLowerCase(), val = _input.value.toLowerCase();
	      row.style.display = text.indexOf(val) === -1 ? 'none' : 'table-row';
	    }

	    return {
	      // 初始化函數
	      init: function() {
	        var inputs = document.getElementsByClassName('light-table-filter');
	        Arr.forEach.call(inputs, function(input) {
	          input.oninput = _onInputEvent;
	        });
	      }
	    };
	  })(Array.prototype);

	  // 網頁載入完成後，啟動 LightTableFilter
	  document.addEventListener('readystatechange', function() {
	    if (document.readyState === 'complete') {
	      LightTableFilter.init();
	    }
	  });

	})(document);</script>
</head>
<body>
搜尋：<input type="search" class="light-table-filter" data-table="order-table" placeholder="請輸入關鍵字">

<table class="order-table">
  <thead>
    <tr>
      <th>姓名</th>
      <th>電話</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>令狐沖</td>
      <td>0928-123456</td>
    </tr>
    <tr>
      <td>岳不群</td>
      <td>0928-654321</td>
    </tr>
    <tr>
      <td>岳靈珊</td>
      <td>0928-888999</td>
    </tr>
    <tr>
      <td>獨孤求敗</td>
      <td>0975-938374</td>
    </tr>
  </tbody>
</table>
</body>
</html>