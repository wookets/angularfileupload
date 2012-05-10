$ ->
	$("#fileupload").fileupload
		dataType: "json"
		# change: (e, data) ->
# 			console.log data
# 			$.each data.result, (index, file) ->
# 				$("<p/>").text(file.name).appendTo document.body
# 		
		always: (e, data) ->
			console.log data
			body = $('#meow')
			$.each data.result, (index, file) ->
				console.log file.name
				$("<p/>").text(file.name).appendTo body