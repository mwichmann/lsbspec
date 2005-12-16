
.SUFFIXES: .sgml .cpp .m4

#MANPAGES= jpeg_abort_compress.sgml jpeg_abort_decompress.sgml \
jpeg_abort.sgml jpeg_add_quant_table.sgml jpeg_alloc_huff_table.sgml \
jpeg_alloc_quant_table.sgml jpeg_calc_output_dimensions.sgml \
jpeg_consume_input.sgml jpeg_copy_critical_parameters.sgml \
jpeg_CreateCompress.sgml jpeg_CreateDecompress.sgml \
jpeg_default_colorspace.sgml jpeg_destroy_compress.sgml \
jpeg_destroy_decompress.sgml jpeg_destroy.sgml \
jpeg_finish_compress.sgml jpeg_finish_decompress.sgml \
jpeg_finish_output.sgml jpeg_has_multiple_scans.sgml \
jpeg_input_complete.sgml jpeg_new_colormap.sgml \
jpeg_quality_scaling.sgml jpeg_read_coefficients.sgml \
jpeg_read_header.sgml jpeg_read_raw_data.sgml \
jpeg_read_scanlines.sgml jpeg_resync_to_restart.sgml \
jpeg_save_markers.sgml jpeg_set_colorspace.sgml \
jpeg_set_defaults.sgml jpeg_set_linear_quality.sgml \
jpeg_set_marker_processor.sgml jpeg_set_quality.sgml \
jpeg_simple_progression.sgml jpeg_start_compress.sgml \
jpeg_start_decompress.sgml jpeg_start_output.sgml \
jpeg_std_error.sgml jpeg_stdio_dest.sgml \
jpeg_stdio_src.sgml jpeg_suppress_tables.sgml \
jpeg_write_coefficients.sgml jpeg_write_marker.sgml \
jpeg_write_m_byte.sgml jpeg_write_m_header.sgml \
jpeg_write_raw_data.sgml jpeg_write_scanlines.sgml \
jpeg_write_tables.sgml

FILES=libjpeg.sgml
TABLES= jpeg.sgml 

.cpp.sgml:
	cpp -I../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mklibspec -a All -c 3 -l libjpeg >jpeg.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


libjpeg.sgml: jpeg.sgml
#libjpeg.sgml: $(MANPAGES)
