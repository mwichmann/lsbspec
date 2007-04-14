
.SUFFIXES: .sgml .cpp .m4

MANPAGES= png_access_version_number.sgml\
png_check_sig.sgml\
png_create_info_struct.sgml\
png_create_read_struct.sgml\
png_create_write_struct.sgml\
png_destroy_read_struct.sgml\
png_destroy_write_struct.sgml\
png_error.sgml\
png_flush.sgml\
png_free.sgml\
png_get_bit_depth.sgml\
png_get_channels.sgml\
png_get_cHRM.sgml\
png_get_color_type.sgml\
png_get_error_ptr.sgml\
png_get_gAMA.sgml\
png_get_hIST.sgml\
png_get_iCCP.sgml\
png_get_IHDR.sgml\
png_get_image_height.sgml\
png_get_image_width.sgml\
png_get_interlace_type.sgml\
png_get_io_ptr.sgml\
png_get_libpng_ver.sgml\
png_get_pHYs.sgml\
png_get_PLTE.sgml\
png_get_progressive_ptr.sgml\
png_get_rowbytes.sgml\
png_get_rows.sgml\
png_get_sRGB.sgml\
png_get_text.sgml\
png_get_tIME.sgml\
png_get_tRNS.sgml\
png_get_valid.sgml\
png_get_x_offset_pixels.sgml\
png_get_x_pixels_per_meter.sgml\
png_get_y_offset_pixels.sgml\
png_get_y_pixels_per_meter.sgml\
png_init_io.sgml\
png_malloc.sgml\
png_process_data.sgml\
png_progressive_combine_row.sgml\
png_read_end.sgml\
png_read_image.sgml\
png_read_info.sgml\
png_read_png.sgml\
png_read_row.sgml\
png_read_rows.sgml\
png_read_update_info.sgml\
png_set_background.sgml\
png_set_bgr.sgml\
png_set_bKGD.sgml\
png_set_cHRM.sgml\
png_set_compression_level.sgml\
png_set_dither.sgml\
png_set_error_fn.sgml\
png_set_expand.sgml\
png_set_filler.sgml\
png_set_filter.sgml\
png_set_gAMA.sgml\
png_set_gamma.sgml\
png_set_gray_1_2_4_to_8.sgml\
png_set_gray_to_rgb.sgml\
png_set_IHDR.sgml\
png_set_interlace_handling.sgml\
png_set_invert_mono.sgml\
png_set_oFFs.sgml\
png_set_packing.sgml\
png_set_packswap.sgml\
png_set_pHYs.sgml\
png_set_PLTE.sgml\
png_set_progressive_read_fn.sgml\
png_set_read_fn.sgml\
png_set_rgb_to_gray.sgml\
png_set_rows.sgml\
png_set_sBIT.sgml\
png_set_shift.sgml\
png_set_sig_bytes.sgml\
png_set_sRGB.sgml\
png_set_strip_16.sgml\
png_set_strip_alpha.sgml\
png_set_swap_alpha.sgml\
png_set_swap.sgml\
png_set_text.sgml\
png_set_tIME.sgml\
png_set_tRNS.sgml\
png_set_write_fn.sgml\
png_sig_cmp.sgml\
png_warning.sgml\
png_write_chunk.sgml\
png_write_end.sgml\
png_write_flush.sgml\
png_write_image.sgml\
png_write_info_before_PLTE.sgml\
png_write_info.sgml\
png_write_png.sgml\
png_write_row.sgml\
png_write_rows.sgml

FILES=libpng.sgml
TABLES= png.sgml 

.cpp.sgml:
	cpp -I../../../code/headers $*.cpp | grep -v '^# ' >$@

.m4.sgml:
	m4 -Uindex -Uformat $*.m4 >$@

all: $(FILES) $(TABLES)

gensrc:
	../../../mklibspec -a All -v `cat ../../../LSB/version.generic` -c 3 -l libpng12 >png.sgml

clean:
	rm -f $(FILES)

spotless: clean
	rm -f $(TABLES)


libpng.sgml: png.sgml
libpng.sgml: $(MANPAGES)
