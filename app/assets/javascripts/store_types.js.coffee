$ ->
	$("body").on "click",".editStoreType",->
		$("#update_id").val($(this).data("id"))
		$("#store_type_list tbody tr.toChange").each ->
			$(this).removeClass("toChange")
		$(this).parents("tr").addClass("toChange")
		$("#update_form").show()

	$(".new_store_type").click ->
		$(this).parent().hide()
		$("#new_form").show()

	$("body").on "click", ".destroyStoreType",->
		$(this).parents("tr").hide()