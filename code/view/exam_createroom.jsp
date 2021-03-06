<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>创建考场</title>
	<link rel="shortcut icon" type="images/x-icon" href="${pageContext.request.contextPath}/favicon.ico">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/base.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/exam.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/style/common.css">
	<script src="${pageContext.request.contextPath}/public/js/jquery.js"></script>
	<script>
		// 显示Radio答案输入框
		function showRadioBox() {
			// 隐藏其他
			$('.select-checkbox-answer').slideUp();
			$('.text-answer').slideUp();
			
			// 显示单选答案
			$('.select-radio-answer').slideDown();
			$('.select-answer-box').slideDown();
		}
		// 显示check答案输入框
		function showCheckBox() {
			// 隐藏其他
			$('.select-radio-answer').slideUp();
			$('.text-answer').slideUp();

			// 显示多选答案框
			$('.select-checkbox-answer').slideDown();
			$('.select-answer-box').slideDown();
		}
		// 显示text答案输入框
		function showTextBox() {
			// 隐藏其他
			$('.select-radio-answer').slideUp();
			$('.select-checkbox-answer').slideUp();
			$('.select-answer-box').slideUp();
			// 显示文字答案框
			$('.text-answer').slideDown();
		}

		$(document).ready(function() {
			// 默认单选题
			$('#radio-type').prop('checked', true);
			// showRadioBox();
			$('.text-answer').css('display', 'none');
			$('.select-checkbox-answer').css('display', 'none');
			
			// 监听切换答案框
			$('#radio-type').click(function() {
				showRadioBox();
			});

			$('#check-type').click(function() {
				showCheckBox();
			});

			$('#text-type').click(function() {
				showTextBox();
			});

			// 展开收缩答题卡
			$('.card-unfold').click(function() {
				$(this).next().slideToggle();
				if($(this).text() == '展开试题卡') {
					$(this).html('收起试题卡<i class="hidden-icon"></i>');
				} else {
					$(this).html('展开试题卡');
				}
			});

			// 设置点击选项卡的时候选择单选框
			$('.exam-question-option').click(function(){
				$(this).find('input').prop('checked', true);
			});
		});
	</script>
</head>
<body>
	<!---------------------------    头部  ------------------------------------>
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/header.jsp"></jsp:include>

	<!--切换标题栏-->
	<script>
        changeNav(2);
	</script>

	<!-- 考试盒 -->
	<div class="exam-box">
		<div class="exam-header">
			<!-- <div class="process">
				<div class="process-bar"></div>
			</div>
			<span>2/10</span>
			<span class="process-time right">
				<span class="small-info">剩余时间</span>
				<span id="lasttime">0:0:0</span>
			</span> -->
			
		</div>

		<div class="subject-title">
			<i></i>
			<span>[创建试题]</span>
			<!-- <i></i>[<span>单选题</span>] -->
		</div>
		<!-- <div class="subject-title">
			<i></i>[<span>单选题</span>]
		</div> -->

		<div class="exam-question-box">
			<form action="">
				<div class="exam-question-content">
					<span>问题内容：</span>
				 	<textarea class="question-input" name="" id="" cols="30" rows="3"
				 	placeholder="请在这里输入您的问题"></textarea>
				</div>
				<!-- 问题类型 -->
				<div class="exam-question-type">
					<div class="type-box">
						<input type="radio" name="type" id="radio-type">
						<label class="radio-icon" for="radio-type"></label>
						<label for="radio-type">单选题</label>
					</div>
					<div class="type-box">
						<input type="radio" name="type" id="check-type">
						<label class="radio-icon" for="check-type"></label>
						<label for="check-type">多选题</label>
					</div>
					<div class="type-box">
						<input type="radio" name="type" id="text-type">
						<label class="radio-icon" for="text-type"></label>
						<label for="text-type">问答题</label>
					</div>
				</div>
				<!-- 选择题选项 -->
				<div class="select-answer-box">
					<div class="text-box">
						A：<input type="text" name="A"
							placeholder="A选项的内容">
					</div>
					<div class="text-box">
						B：<input type="text" name="B"
							placeholder="B选项的内容">
					</div>
					<div class="text-box">
						C：<input type="text" name="C"
							placeholder="C选项的内容">
					</div>
					<div class="text-box">
						D：<input type="text" name="D"
							placeholder="D选项的内容">
					</div>
				</div>

				<div class="select-radio-answer">
					答案：
					<div class="answer-box">
						<input type="radio" name="answer-radio" id="answer-raido-1">
						<label class="radio-icon" for="answer-raido-1"></label>
						<label for="answer-raido-1">A</label>
					</div>
					<div class="answer-box">
						<input type="radio" name="answer-radio" id="answer-raido-2">
						<label class="radio-icon" for="answer-raido-2"></label>
						<label for="answer-raido-2">B</label>
					</div>
					<div class="answer-box">
						<input type="radio" name="answer-radio" id="answer-raido-3">
						<label class="radio-icon" for="answer-raido-3"></label>
						<label for="answer-raido-3">C</label>
					</div>
					<div class="answer-box">
						<input type="radio" name="answer-radio" id="answer-raido-4">
						<label class="radio-icon" for="answer-raido-4"></label>
						<label for="answer-raido-4">D</label>
					</div>
				</div>

				<div class="select-checkbox-answer">
					答案：
					<div class="answer-box">
						<input type="checkbox" name="answer-checkbox" id="answer-check-1">
						<label class="checkbox-icon" for="answer-check-1"></label>
						<label for="answer-check-1">A</label>
					</div>
					<div class="answer-box">
						<input type="checkbox" name="answer-checkbox" id="answer-check-2">
						<label class="checkbox-icon" for="answer-check-2"></label>
						<label for="answer-check-2">B</label>
					</div>
					<div class="answer-box">
						<input type="checkbox" name="answer-checkbox" id="answer-check-3">
						<label class="checkbox-icon" for="answer-check-3"></label>
						<label for="answer-check-3">C</label>
					</div>
					<div class="answer-box">
						<input type="checkbox" name="answer-checkbox" id="answer-check-4">
						<label class="checkbox-icon" for="answer-check-4"></label>
						<label for="answer-check-4">D</label>
					</div>
				</div>

				<div class="text-answer">
					<span>问题答案：</span>
				 	<textarea class="question-input" name="" id="" cols="30" rows="3"
				 	placeholder="请在这里输入您的答案"></textarea>
				</div>
			</form>
			
			<div class="create-btn-box">
				<a href="exam_historyexam.html">
					<button class="btn red-btn">
					创建试卷
					</button>
				</a>
				<button class="btn btn-blue">
					下一题
				</button>
			</div>

			<div class="clear answer-sheet-box">
				<span class = "card-unfold">展开试题卡</span>
				<ul class="answer-sheet-num">
					<li><a class="active" href="">1</a></li>
					<li><a href="">2</a></li>
					<li><a href="">3</a></li>
					<li><a href="">4</a></li>
					<li><a href="">5</a></li>
					<li><a href="">6</a></li>
				</ul>
			</div>
		</div>
	</div>

	<!-- 尾部 -->
	<jsp:include page="${pageContext.request.contextPath}/WEB-INF/view/common/footer.jsp"></jsp:include>

</body>
</html>