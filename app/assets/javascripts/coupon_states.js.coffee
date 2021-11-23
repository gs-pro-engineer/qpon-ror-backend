$ ->
	$("body").on "click",".editCouponState",->
		$("#update_id").val($(this).data("id"))
		$("#coupon_state_list tbody tr.toChange").each ->
			$(this).removeClass("toChange")
		$(this).parents("tr").addClass("toChange")
		$("#update_form").show()

	$(".new_coupon_state").click ->
		$(this).parent().hide()
		$("#new_form").show()

	$("body").on "click", ".destroyCouponState",->
		$(this).parents("tr").hide()