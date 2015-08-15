class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?(.$format)?"{
			constraints {
				// apply constraints here
			}
		}
		

		"/login/$action?" (controller: "login" )
		"/logout/$action?"(controller: "logout")

		"/questionario/vaga/$id?"(controller:"questionario", action:"index")
		"/questionario/responder/$id?"(controller:"questionario", action:"responder")
		"/questionario/responder/save"(controller:"questionario", action:"salvarRespostas")
	
		"/"(controller:"app", action:"home")
		
		// "/"(view:"/index")
		"500"(view:'/error')
	}
}
