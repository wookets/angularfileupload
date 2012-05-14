$ ->
	$("#fileupload").fileupload
		url: 'upload',
    maxFileSize: 5000000,
    acceptFileTypes: /(\.|\/)(xls?x|txt)$/i,
            
		dataType: "json"
		always: (e, data) ->
			console.log data
			body = $('#meow')
			$.each data.result, (index, file) ->
				console.log file.name
				$("<p/>").text(file.name).appendTo body