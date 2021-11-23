$ ->
	$("body").on "click",".editCouponType",->
		$("#update_id").val($(this).data("id"))
		$("#coupon_type_list tbody tr.toChange").each ->
			$(this).removeClass("toChange")
		$(this).parents("tr").addClass("toChange")
		$("#update_form").show()

	$(".new_coupon_type").click ->
		$(this).parent().hide()
		$("#new_form").show()

	$("body").on "click", ".destroyCouponType",->
		$(this).parents("tr").hide()