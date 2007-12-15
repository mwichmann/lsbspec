
.SUFFIXES: .sgml .cpp .m4

FILES=cupslib.sgml
GENFILES=libcups.sgml libcupsimage.sgml
CUPSFILES=cupsAddDest.sgml cupsAddOption.sgml cupsCancelJob.sgml \
	cupsEncryption.sgml cupsFreeDests.sgml cupsFreeJobs.sgml \
	cupsFreeOptions.sgml cupsGetDefault2.sgml cupsGetDefault.sgml \
	cupsGetDests2.sgml cupsGetDest.sgml cupsGetDests.sgml cupsGetFd.sgml \
	cupsGetFile.sgml cupsGetJobs2.sgml cupsGetJobs.sgml \
	cupsGetOption.sgml cupsGetPassword.sgml cupsGetPPD2.sgml \
	cupsGetPPD.sgml cupsLangEncoding.sgml cupsLangFlush.sgml \
	cupsLangFree.sgml cupsLangGet.sgml cupsLastError.sgml \
	cupsMarkOptions.sgml cupsParseOptions.sgml cupsPrintFile2.sgml \
	cupsPrintFiles2.sgml cupsPrintFile.sgml cupsPrintFiles.sgml \
	cupsPutFd.sgml cupsPutFile.sgml cupsRasterClose.sgml \
	cupsRasterOpen.sgml cupsRasterReadHeader.sgml \
	cupsRasterReadPixels.sgml cupsRasterWriteHeader.sgml \
	cupsRasterWritePixels.sgml cupsServer.sgml cupsSetDests2.sgml \
	cupsSetDests.sgml cupsSetEncryption.sgml cupsSetPasswordCB.sgml \
	cupsSetServer.sgml cupsSetUser.sgml cupsTempFd.sgml cupsUser.sgml \
	ppdClose.sgml ppdCollect.sgml ppdConflicts.sgml ppdEmitFd.sgml \
	ppdEmitJCL.sgml ppdEmit.sgml ppdErrorString.sgml ppdFindChoice.sgml \
	ppdFindMarkedChoice.sgml ppdFindNextAttr.sgml ppdFindOption.sgml \
	ppdIsMarked.sgml ppdLastError.sgml ppdMarkDefaults.sgml \
	ppdMarkOption.sgml ppdOpenFd.sgml ppdOpenFile.sgml ppdOpen.sgml \
	ppdPageSize.sgml ppdPageWidth.sgml ppdSetConformance.sgml \
	ppdFindAttr.sgml

.m4.sgml:
	m4 -P -Uindex -Uformat -Usubstr $*.m4 >$@

all source: $(FILES) $(GENFILES) $(CUPSFILES)

$(CUPSFILES): api-cups.xml api-cupsimage.xml cupsfunc_template.sgml.in
	./mk-from-mxmldoc

gensrc:
	../../../mklibspec -a All -v `cat ../../version.generic` -l libcups >libcups.sgml
	../../../mklibspec -a All -v `cat ../../version.generic` -l libcupsimage >libcupsimage.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(GENFILES) $(FILES) $(CUPSFILES)

cupslib.sgml: cupslib.m4 $(GENFILES) $(CUPSFILES)
