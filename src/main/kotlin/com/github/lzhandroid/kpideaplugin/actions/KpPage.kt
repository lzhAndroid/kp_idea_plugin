package com.github.lzhandroid.kpideaplugin.actions

import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.actionSystem.CommonDataKeys
import com.intellij.openapi.ui.ValidationInfo
import com.intellij.ui.components.dialog
import com.intellij.ui.dsl.builder.RowLayout
import com.intellij.ui.dsl.builder.panel
import org.apache.batik.anim.timing.Trace
import java.awt.event.ActionEvent
import javax.swing.AbstractAction


class KpPage : AnAction() {

    override fun update(e: AnActionEvent) {
        val psiFile = e.getData(CommonDataKeys.PSI_FILE)
        println("psiFile?.language is ${psiFile?.virtualFile}")
//        e.presentation.isEnabledAndVisible = psiFile?.language?.isKindOf(DartLanguage.INSTANCE)?:false
        super.update(e)
    }

    override fun actionPerformed(e: AnActionEvent) {
        Trace.print("1111")
        val tempDialog = dialog(
            e.project?.name ?: "",
            panel {
                row("Page Name:") {
                    textField()
                }

                row("Page Name:") {
                    textField()
                }

                row("Request Name:") {
                    textField()
                }

                row {
                    checkBox("ListItem")
                    textField()
                }.layout(RowLayout.PARENT_GRID)

            },

            ok = {
                print("ok is enter")

                listOf()
            },
        )
        tempDialog.show()
    }
}
