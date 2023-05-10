package com.github.lzhandroid.kpideaplugin.services

import com.intellij.lang.xml.XMLLanguage
import com.intellij.openapi.components.Service
import com.intellij.openapi.project.Project
import com.intellij.psi.PsiFileFactory
import com.jetbrains.lang.dart.DartFileType;


@Service(Service.Level.PROJECT)
class MyProjectService(val project: Project) {


        
    fun copyResourceFileToPluginDirectory(targetPath:String?) {
//        resourceName: String,
//        resourceName: String,
//        FileTemplateManager.getInstance(project).getCodeTemplate()
//        val psiFile =
//            PsiFileFactory.getInstance(project).createFileFromText("mapper.xml", XMLLanguage.INSTANCE, renderedText)

        print("targetPath is $targetPath")
//        val resourceUrl = javaClass.classLoader.getResource(resourceName)
//        if (resourceUrl != null) {
//            val resourceFile = File(resourceUrl.toURI())
//            val pluginDirectory = File(pluginDirectoryPath)
//            if (!pluginDirectory.exists()) {
//                pluginDirectory.mkdirs()
//            }
//            val targetFile = File(pluginDirectory, resourceFile.name)
//            resourceFile.copyTo(targetFile, true)
//        }
    }

}
