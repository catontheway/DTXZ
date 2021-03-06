<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>我的考试</title>
	<link rel="shortcut icon " type="images/x-icon" href="${pageContext.request.contextPath}/favicon.ico">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/base.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/tag.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/user_personal_common.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/exam_myexam.css">
	<script src="${pageContext.request.contextPath}/public/js/jquery.js"></script>

	<!-- <script>
		$(document).ready(function() {
			$('.add-icon').click(function() {
				$(document).parent().;
			});
		});
	</script> -->

</head>
<body>
	<div class="main">
		<div class="create-box">
			<h3 class="title">
				创建考试
			</h3>
			<form action="">
				<div class="create-content">
					<div class="content-header">
						<span>选中班级</span>
						<a href="user_classmanager.html">
							<i class="add-icon"></i>
						</a>
					</div>
					<div class="classroom-sel">
						<div class="class-option">
							<input type="checkbox" name="classnames" id="test1">
							<label class="checkbox-icon" for="test1"></label>
							<label for="test1">初一1班</label>
						</div>
						<div class="class-option">
							<input type="checkbox" name="classnames" id="test2">
							<label class="checkbox-icon" for="test2"></label>
							<label for="test2">初一2班</label>
						</div>
						<div class="class-option">
							<input type="checkbox" name="classnames" id="test3">
							<label class="checkbox-icon" for="test3"></label>
							<label for="test3">初一3班</label>
						</div>
						<div class="class-option">
							<input type="checkbox" name="classnames" id="test4">
							<label class="checkbox-icon" for="test4"></label>
							<label for="test4">初二3班</label>
						</div>
						<div class="class-option">
							<input type="checkbox" name="classnames" id="test5">
							<label class="checkbox-icon" for="test5"></label>
							<label for="test5">初三3班</label>
						</div>
					</div>

					<!--  选择考卷  -->
					<div class="content-header">
						<span>选中考卷</span>
						<a href="exam_createroom.html" target="_blank">
							<i class="add-icon"></i>
						</a>
					</div>

					<div class="exam-sel">
						<div class="exam-option">
							<input type="radio" name="exam" id="exam-option-1">
							<label class="radio-icon" for="exam-option-1"></label>
							<label for="exam-option-1">语文考试</label>
						</div>
						<div class="exam-option">
							<input type="radio" name="exam" id="exam-option-2">
							<label class="radio-icon" for="exam-option-2"></label>
							<label for="exam-option-2">数学期中考试</label>
						</div>
						<div class="exam-option">
							<input type="radio" name="exam" id="exam-option-3">
							<label class="radio-icon" for="exam-option-3"></label>
							<label for="exam-option-3">数学月阶段考试</label>
						</div>
						<div class="exam-option">
							<input type="radio" name="exam" id="exam-option-4">
							<label class="radio-icon" for="exam-option-4"></label>
							<label for="exam-option-4">英语期中考</label>
						</div>
					</div>
				</div>
				<button id="create-exam" class="grey-btn fl" type="submit">
					创建考试
				</button>
			</form>
		</div>



		<div class="exam-history">
			<h3 class="title">
				考试记录
			</h3>
			<table class="table-box">
				<tbody>
					<tr>
						<th>考试名称</th>
						<th>考试状态</th>
						<th>完成时间</th>
						<th>分数</th>
						<th>排行</th>
					</tr>
					<tr class="active">
						<td title="毛概">				
							<a href="exam_doing.html" target="_blank">
								毛概
							</a>
						</td>
						<td title="点击进入考场">
							<a href="exam_doing.html" target="_blank">
								正在进行
							</a>
						</td>
						<td>2017-01-01</td>
						<td>88</td>
						<td>3</td>
						
					</tr>

					<tr>
						<td title="新12中关于十八大的期末考试">新12中关于十八大的期末考试</td>
						<td>已完成</td>
						<td>2017-01-01</td>
						<td>88</td>
						<td>3</td>
					</tr>

					<tr>
						<td title="计算机技能测试">计算机技能测试</td>
						<td>已完成</td>
						<td>2017-01-01</td>
						<td>88</td>
						<td>9</td>
					</tr>

					<tr>
						<td title="毛泽东思想与邓小平理论检验">毛泽东思想与邓小平理论检验</td>
						<td>已完成</td>
						<td>2017-02-01</td>
						<td>80</td>
						<td>4</td>
					</tr>
					<tr>
						<td title="毛泽东思想与邓小平理论检验">毛泽东思想与邓小平理论检验</td>
						<td>已完成</td>
						<td>2017-02-01</td>
						<td>80</td>
						<td>4</td>
					</tr>
					
				</tbody>
			</table>
			<div class="more-btn-box">
				<a href="" class="greyblue-btn">
					加载更多
				</a>
			</div>
		</div>
	</div>
</body>
</html>