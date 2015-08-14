package selecadmais

import grails.transaction.Transactional
import org.springframework.web.multipart.MultipartFile
import org.codehaus.groovy.grails.web.context.ServletContextHolder

@Transactional
class FileUploadService {

	boolean transactional = true

	def String uploadFile(MultipartFile file, String name, String destinationDirectory) {
        destinationDirectory = "uploads/${destinationDirectory}"
        def servletContext = ServletContextHolder.servletContext
        def storagePath = servletContext.getRealPath(destinationDirectory)

        // Create storage path directory if it does not exist
        def storagePathDirectory = new File(storagePath)
        if (!storagePathDirectory.exists()) {
            print "CREATING DIRECTORY ${storagePath}: "
            if (storagePathDirectory.mkdirs()) {
                println "SUCCESS"
            } else {
                println "FAILED"
            }
        }

        // Store file
        if (!file.isEmpty()) {
            file.transferTo(new File("${storagePath}/${name}"))
            println "Saved file: ${storagePath}/${name}"
            return "/${destinationDirectory}/${name}"

        } else {
            println "File ${file.inspect()} was empty!"
            return null
        }
    }
}