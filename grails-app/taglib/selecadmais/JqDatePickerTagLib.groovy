package selecadmais

class JqDatePickerTagLib {
    static defaultEncodeAs = [taglib:'none']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]

	def jqDatePicker = {attrs, body ->
        def out = out
        def name = attrs.name    //The name attribute is required for the tag to work seamlessly with grails
        def id = attrs.id ?: name
        def minDate = attrs.minDate
        def showDay = attrs.showDay
        def val = attrs.value ?: ''
        def mascara = attrs.mascara ?: ''
        def style = attrs.style ?: ''
        def provider = attrs.provider ?: ''

        //Create date text field and supporting hidden text fields need by grails
        out.println "<input type=\"text\" name=\"${name}\" id=\"${id}\" value=\"${val}\" class=\"datepicker input-small\" mascara=\"${mascara}\" style=\"${style}\" provider=\"${provider}\" />"
        out.println "<input type=\"hidden\" name=\"${name}_day\" id=\"${id}_day\" />"
        out.println "<input type=\"hidden\" name=\"${name}_month\" id=\"${id}_month\" />"
        out.println "<input type=\"hidden\" name=\"${name}_year\" id=\"${id}_year\" />"

        //Code to parse selected date into hidden fields required by grails
        out.println "<script type=\"text/javascript\"> \$(document).ready(function(){"
        out.println "\$(\"input[name='${name}']\").datepicker({\"dateFormat\": \"dd/mm/yy\","
        out.println "onClose: function(dateText, inst) {"
        out.println "var dataArr = dateText.split('/');"
        //out.println "\$ var dataArr = dateText.split(\"\/\");"
        out.println "\$(\"input[name='${name}']\").attr(\"value\",dateText);"
        out.println "\$(\"input[name='${name}_month']\").attr(\"value\",parseInt(dataArr[1]));"
        out.println "\$(\"input[name='${name}_day']\").attr(\"value\",parseInt(dataArr[0]));"
        out.println "\$(\"input[name='${name}_year']\").attr(\"value\",dataArr[2]);"
        out.println "}"

        //If you want to customize using the jQuery UI events add an if block an attribute as follows
        if(minDate != null){
            out.println ","
            out.println "minDate: ${minDate}"
        }

        if(showDay != null){
            out.println ","
            out.println "beforeShowDay: function(date){"
            out.println "var day = date.getDay();"
            out.println "return [day == ${showDay},\"\"];"
            out.println "}"
        }

        out.println "});"

        if (val != '') {
            out.println("\n")
            out.println "\$(\"input[name='${name}_month']\").attr(\"value\",new Date('${val}').getMonth() +1);"
            out.println "\$(\"input[name='${name}_day']\").attr(\"value\",new Date('${val}').getDate());"
            out.println "\$(\"input[name='${name}_year']\").attr(\"value\",new Date('${val}').getFullYear());"
        }

        out.println "})</script>"

    }
}
