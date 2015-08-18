<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no" name="viewport">
  <link href="../css/base.css" rel="stylesheet" type="text/css">
  <link href="../css/footer.css" rel="stylesheet" type="text/css">
  <link href="../css/place.css" rel="stylesheet" type="text/css">
  <title>运水镖局</title>
</head>
<script type="text/javascript">
function checkbox(id,cid){
	var box = document.getElementById(id);
	var count = document.getElementById(cid).innerText;//数量值
	var type = box.getAttribute("class");
	var pid = box.getAttribute("name");//价格id
	var total = document.getElementById("total");//总价DOM
	var price = document.getElementById(pid).innerText;//价格值
	var totalT = total.innerText;//总价值
	if(type=="check fl yes"){
		box.setAttribute("onclick","checkbox('"+id+"','"+cid+"')");
		box.setAttribute("class","check fl no");
		var getall = document.getElementById("getall");
		getall.style.backgroundPosition="-40px -40px";
		total.innerText = (parseFloat(totalT)-parseFloat(price)*
				parseFloat(count)).toFixed(1);
	}else if(type=="check fl no"){
		box.setAttribute("onclick","checkbox('"+id+"','"+cid+"')");
		box.setAttribute("class","check fl yes");
		total.innerText = (parseFloat(totalT)+parseFloat(price)*
				parseFloat(count)).toFixed(1);
	}
}
</script>
<body>
  <div class="car_wrap">
    <ul id="list">
      <li id="g1">
        <a id="ch1" class="check fl yes" name="p1" onclick="checkbox('ch1','c1')"></a>
        <span class="goods fl"><img src="../images/p1/tz1.png"></span>
        <div class="describe">
          <label class="up">哇哈哈桶装水</label>
          <label class="down">规格:1桶</label>
          <a id="reduce" class="fl"></a>
          <span id="c1" class="count fl">2</span>
          <a id="add" class="fl"></a>
        </div>
        <div class="right fr">
          <span>¥<em id="p1">15.0</em></span>
          <a id="recover"></a>
        </div>
      </li>
      <li  id="g2">
        <a id="ch2" class="check fl yes" name="p2" onclick="checkbox('ch2','c2')"></a>
        <span class="goods fl"><img src="../images/p1/tz1.png"></span>
        <div class="describe">
          <label class="up">哇哈哈桶装水</label>
          <label class="down">规格:1桶</label>
          <a id="reduce" class="fl"></a>
          <span id="c2" class="count fl">1</span>
          <a id="add" class="fl"></a>
        </div>
        <div class="right fr">
          <span>¥<em id="p2">15.0</em></span>
          <a id="recover"></a>
        </div>
      </li>
    </ul>  
  </div>
  <div class="car_foot">
    <span class="radio"><a id="getall" onclick="getall()"></a>全选</span>
    <span class="total">合计:¥<label id="total">45.0</label></span>
    <span id="btn"><input type="button" value="选好了" /></span>
  </div>
<!-- 页脚导航-->
<footer>
  <div class="bottomBox">
    <div class="indexMsg">
      <div class="indexMenu">
        <a href="../index.jsp"><span class="home-index">首页</span></a>
        <a href="#"><span class="Order-index-active">下令</span></a>
        <a href="../biaoxun.jsp"><span class="card-index">镖讯</span></a>
      </div>
    </div>
  </div>
</footer>
</body>
</html>