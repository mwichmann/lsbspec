Attribute VB_Name = "ISO_LSB"
Private Sub update_fields()
    Selection.HomeKey unit:=wdStory
    Dim allDoc As Range
    
    Set allDoc = ActiveDocument.Range(Start:=0, End:=Selection.EndKey(unit:=wdStory))
    
    allDoc.Fields.Update
    
End Sub
Private Sub update_styles()
    ActiveDocument.Styles("Heading 1").ParagraphFormat.NoLineNumber = True
    ActiveDocument.Styles("Heading 2").ParagraphFormat.NoLineNumber = True
    ActiveDocument.Styles("Heading 3").ParagraphFormat.NoLineNumber = True
End Sub

Private Sub add_linenos()
    '
    ' look for the SECOND occurence of "Foreword" (the first is in the TOC)
    '
    Selection.HomeKey unit:=wdStory
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
    Selection.EndKey unit:=wdStory, Extend:=wdExtend
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
    Selection.HomeKey unit:=wdStory
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
        Selection.MoveDown unit:=wdLine, Count:=1
        Dim tocStart As Range
        Set tocStart = Selection.Range
        Selection.Find.ClearFormatting
        With Selection.Find
            .Style = ActiveDocument.Styles("Heading 1")
            .Text = ""
        End With
        Selection.Find.Execute
        Selection.MoveLeft unit:=wdCharacter, Count:=2
        tocStart.End = Selection.End
        tocStart.ParagraphFormat.NoLineNumber = True
    Loop
out:
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
    Call ActiveDocument.PrintOut(printtofile:=True, outputfilename:=psFile)
    Call ActiveDocument.SaveAs(FileName:=doc, fileformat:=wdFormatDocument)
    
End Sub
Private Sub update_title()
'
' update_title Macro
' update the title page
'
    Selection.HomeKey unit:=wdStory
    Selection.MoveDown unit:=wdLine, Count:=1
    Selection.MoveDown unit:=wdLine, Count:=2, Extend:=wdExtend
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
