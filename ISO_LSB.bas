Attribute VB_Name = "ISO_LSB"
Private Sub update_fields()
Attribute update_fields.VB_Description = "Macro recorded 10/7/2004 by MSB"
Attribute update_fields.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.find_toc"

    Selection.HomeKey Unit:=wdStory
    Dim allDoc As Range
    
    Set allDoc = ActiveDocument.Range(Start:=0, End:=Selection.EndKey(Unit:=wdStory))
    
    allDoc.Fields.Update
    
End Sub
Private Sub update_styles()
Attribute update_styles.VB_Description = "Macro recorded 10/8/2004 by MSB"
Attribute update_styles.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.Macro1"
    ActiveDocument.Styles("Heading 1").ParagraphFormat.NoLineNumber = True
    ActiveDocument.Styles("Heading 2").ParagraphFormat.NoLineNumber = True
    ActiveDocument.Styles("Heading 3").ParagraphFormat.NoLineNumber = True
    ' ActiveDocument.Styles("Line Number").Font.Size = 8
End Sub

Private Sub add_linenos()
    '
    ' look for the SECOND occurence of "Foreword" (the first is in the TOC)
    '
    Selection.HomeKey Unit:=wdStory
    Selection.Find.ClearFormatting
    With Selection.Find
        .Text = "Foreword"
        .Forward = True
        .Wrap = wdFindContinue
        .MatchCase = True
        .MatchWholeWord = True
    End With
    Selection.Find.Execute
    Selection.Find.Execute
    ' Selection.MoveDown Unit:=wdScreen, Count:=12
    Selection.EndKey Unit:=wdStory, Extend:=wdExtend
    With Selection.PageSetup
        With .LineNumbering
            .StartingNumber = 1
            .CountBy = 1
            .RestartMode = wdRestartSection
            .DistanceFromText = wdAutoPosition
            .Active = True
        End With
        ActiveDocument.Styles("Line Number").Font.Size = 8
    End With
End Sub

Private Sub unnumber_toc(title As String)
    Selection.HomeKey Unit:=wdStory
    On Error GoTo out
    Do
        Selection.Find.ClearFormatting
        With Selection.Find
            .Text = title
            .Forward = True
            .Wrap = wdFindStop
            .MatchCase = True
            .MatchWholeWord = True
        End With
        Selection.Find.Execute
        If Not Selection.Find.Found Then
            GoTo out
        End If
        Selection.MoveDown Unit:=wdLine, Count:=1
        Dim tocStart As Range
        Set tocStart = Selection.Range
        Selection.Find.ClearFormatting
        With Selection.Find
            .Style = ActiveDocument.Styles("Heading 1")
            .Text = ""
        End With
        Selection.Find.Execute
        Selection.MoveLeft Unit:=wdCharacter, Count:=2
        tocStart.End = Selection.End
        tocStart.ParagraphFormat.NoLineNumber = True
    Loop
out:
End Sub

Sub convert_all()
    ChangeFileOpenDirectory "C:\SFU\tmp\"
    Dim lsb_docs(7) As String
    Dim file As Variant
    
    lsb_docs(0) = "LSB-Core.rtf"
    lsb_docs(1) = "LSB-Core-IA32.rtf"
    lsb_docs(2) = "LSB-Core-IA64.rtf"
    lsb_docs(3) = "LSB-Core-AMD64.rtf"
    lsb_docs(4) = "LSB-Core-PPC32.rtf"
    lsb_docs(5) = "LSB-Core-PPC64.rtf"
    lsb_docs(6) = "LSB-Core-S390.rtf"
    lsb_docs(7) = "LSB-Core-S390X.rtf"
    
    For Each file In lsb_docs
        Documents.Open FileName:=file, ConfirmConversions:=False, _
            ReadOnly:=False, AddToRecentFiles:=False, PasswordDocument:="", _
            PasswordTemplate:="", Revert:=False, WritePasswordDocument:="", _
            WritePasswordTemplate:="", Format:=wdOpenFormatAuto
        Call convert_doc
        ActiveWindow.Close
    Next
End Sub

Sub convert_doc()
    Dim psFile As String
    Dim base As String
    Dim doc As String
    
    base = ActiveDocument.Name
    base = Left(base, InStr(base, ".") - 1)
    psFile = "C:\" & base & ".ps"
    doc = "C:\" & base & ".doc"
    Call update_title
    Call update_styles
    Call unnumber_toc("Table of Contents")
    Call unnumber_toc("List of Tables")
    Call unnumber_toc("List of Figures")
    
    Call add_linenos
    Call update_fields
    Call ActiveDocument.PrintOut(printtofile:=True, outputfilename:=psFile, Background:=False)
    Call ActiveDocument.SaveAs(FileName:=doc, fileformat:=wdFormatDocument)
    
End Sub

Private Sub update_title()
Attribute update_title.VB_Description = "update the title page"
Attribute update_title.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.update_title"
'
' update_title Macro
' update the title page
'
    Selection.HomeKey Unit:=wdStory
    Selection.MoveDown Unit:=wdLine, Count:=1
    Selection.MoveDown Unit:=wdLine, Count:=2, Extend:=wdExtend
    With ActiveDocument.Styles("Title").Font
        .NameFarEast = "Batang"
        .NameAscii = "Times New Roman"
        .NameOther = "Times New Roman"
        .Name = "Times New Roman"
        .Size = 24.5
        .Bold = True
        .Italic = False
        .Underline = wdUnderlineNone
        .UnderlineColor = wdColorAutomatic
        .StrikeThrough = False
        .DoubleStrikeThrough = False
        .Outline = False
        .Emboss = False
        .Shadow = False
        .Hidden = False
        .SmallCaps = False
        .AllCaps = False
        .Color = wdColorAutomatic
        .Engrave = False
        .Superscript = False
        .Subscript = False
        .Scaling = 100
        .Kerning = 14
        .Animation = wdAnimationNone
        .DisableCharacterSpaceGrid = False
        .EmphasisMark = wdEmphasisMarkNone
    End With
    With ActiveDocument.Styles("Title")
        .AutomaticallyUpdate = False
        .BaseStyle = "Normal"
        .NextParagraphStyle = "Title"
    End With
    Selection.Style = ActiveDocument.Styles("Title")
End Sub

Private Sub Diffmk(doc1 As Variant)
    Dim doc2 As Variant
    Dim doc3 As Variant
    ' on entry, doc1 is the base stem of the file name ... e.g. LSB-Core-IA32
    ' modify this:
    ' doc2 is the second version (the base version)
    ' while doc1 is the original (old) version
    ' doc3 is the diff marked version, and the name of the PostScript file
    '
    doc2 = doc1 + ".2.rtf"
    doc3 = doc1 + ".diff"
    doc1 = doc1 + ".1.rtf"

    Documents.Open FileName:=doc2, ConfirmConversions:=False, _
            ReadOnly:=False, AddToRecentFiles:=False, PasswordDocument:="", _
            PasswordTemplate:="", Revert:=False, WritePasswordDocument:="", _
            WritePasswordTemplate:="", Format:=wdOpenFormatAuto
    
    Call convert_doc
        
    With Options
        .InsertedTextMark = wdInsertedTextMarkColorOnly
        .InsertedTextColor = wdRed
        .DeletedTextMark = wdDeletedTextMarkStrikeThrough
        .DeletedTextColor = wdRed
        .RevisedPropertiesMark = wdRevisedPropertiesMarkNone
        .RevisedPropertiesColor = wdRed
        .RevisedLinesMark = wdRevisedLinesMarkLeftBorder
        .RevisedLinesColor = wdAuto
    End With
    ActiveDocument.Compare Name:=doc1, AuthorName:="", _
        CompareTarget:=wdMergeTargetNew, DetectFormatChanges:=False, _
        IgnoreAllComparisonWarnings:=False, AddToRecentFiles:=False
    Call ActiveDocument.PrintOut(printtofile:=True, outputfilename:="C:\" + doc3 + ".ps", Background:=False)
    Call ActiveDocument.SaveAs(doc3 + ".doc", fileformat:=wdFormatDocument)
End Sub

Sub diffmk_all()
    ChangeFileOpenDirectory "C:\SFU\tmp\"
    Dim lsb_docs(7) As String
    Dim file As Variant
    
    lsb_docs(0) = "LSB-Core"
    lsb_docs(1) = "LSB-Core-IA32"
    lsb_docs(2) = "LSB-Core-IA64"
    lsb_docs(3) = "LSB-Core-AMD64"
    lsb_docs(4) = "LSB-Core-PPC32"
    lsb_docs(5) = "LSB-Core-PPC64"
    lsb_docs(6) = "LSB-Core-S390"
    lsb_docs(7) = "LSB-Core-S390X"
    
    For Each file In lsb_docs
        Call Diffmk(file)
        ActiveWindow.Close (True)   ' close the diff window
        ActiveWindow.Close (True)   ' close the base doc window
    Next
End Sub

