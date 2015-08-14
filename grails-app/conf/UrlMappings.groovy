class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?(.$format)?"{
			constraints {
				// apply constraints here
			}
		}

		"/login/$action?" (controller: "login" )
		"/logout/$action?"(controller: "logout")
<<<<<<< HEAD
			
=======
		"/questionario/vaga/$id?"(controller:"questionario", action:"index")
		"/questionario/responder/$id?"(controller:"questionario", action:"responder")
		"/questionario/responder/save"(controller:"questionario", action:"salvarRespostas")
	
>>>>>>> 6bc5fcfcecb6e0c4be3cda8fce4585e139a8d89e
		"/"(view:"/index")
		"500"(view:'/error')
	}
}
