indexing
	description: "."
	copyright: "[
					Copyright (C) 2007 Paolo Redaelli, GTK+ team
					
					This library is free software; you can redistribute it and/or
					modify it under the terms of the GNU Lesser General Public License
					as published by the Free Software Foundation; either version 2.1 of
					the License, or (at your option) any later version.
					
					This library is distributed in the hopeOA that it will be useful, but
					WITHOUT ANY WARRANTY; without even the implied warranty of
					MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
					Lesser General Public License for more details.

					You should have received a copy of the GNU Lesser General Public
					License along with this library; if not, write to the Free Software
					Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
					02110-1301 USA
			]"

	wrapped_version: "1.2.4"

class FOO

inherit
	(SHARED_?)C_STRUCT

insert
	FOO_EXTERNALS

creation make, from_external_pointer

feature {} -- Creation

	--   Link: Cairo: A Vector Graphics Library (start)
	--   Link: Drawing (parent)
	--   Link: Paths (previous)
	--   Link: Transformations (next)
	--   Link: Part I. Tutorial (part)
	--   Link: Part II. Reference (part)
	--   Link: Drawing (chapter)
	--   Link: Fonts (chapter)
	--   Link: Surfaces (chapter)
	--   Link: Utilities (chapter)
	--   Link: Index (index)
	--   Link: Index of new symbols in 1.2 (index)
	--   Link: Appendix A. Creating a language binding for cairo (appendix)
	--
	--   Prev Up Home             Cairo: A Vector Graphics Library             Next
	--   Top  |  Description
	--
	--   Patterns
	--
	--   Patterns -- Gradients and filtered sources
	--
	--Synopsis
	--
	--
	--
	--
	-- typedef     cairo_pattern_t;
	-- void        cairo_pattern_add_color_stop_rgb
	--                                             (cairo_pattern_t *pattern,
	--                                              double offset,
	--                                              double red,
	--                                              double green,
	--                                              double blue);
	-- void        cairo_pattern_add_color_stop_rgba
	--                                             (cairo_pattern_t *pattern,
	--                                              double offset,
	--                                              double red,
	--                                              double green,
	--                                              double blue,
	--                                              double alpha);
	-- cairo_pattern_t* cairo_pattern_create_rgb   (double red,
	--                                              double green,
	--                                              double blue);
	-- cairo_pattern_t* cairo_pattern_create_rgba  (double red,
	--                                              double green,
	--                                              double blue,
	--                                              double alpha);
	-- cairo_pattern_t* cairo_pattern_create_for_surface
	--                                             (cairo_surface_t *surface);
	-- cairo_pattern_t* cairo_pattern_create_linear
	--                                             (double x0,
	--                                              double y0,
	--                                              double x1,
	--                                              double y1);
	-- cairo_pattern_t* cairo_pattern_create_radial
	--                                             (double cx0,
	--                                              double cy0,
	--                                              double radius0,
	--                                              double cx1,
	--                                              double cy1,
	--                                              double radius1);
	-- void        cairo_pattern_destroy           (cairo_pattern_t *pattern);
	-- cairo_pattern_t* cairo_pattern_reference    (cairo_pattern_t *pattern);
	-- cairo_status_t cairo_pattern_status         (cairo_pattern_t *pattern);
	-- enum        cairo_extend_t;
	-- void        cairo_pattern_set_extend        (cairo_pattern_t *pattern,
	--                                              cairo_extend_t extend);
	-- cairo_extend_t cairo_pattern_get_extend     (cairo_pattern_t *pattern);
	-- enum        cairo_filter_t;
	-- void        cairo_pattern_set_filter        (cairo_pattern_t *pattern,
	--                                              cairo_filter_t filter);
	-- cairo_filter_t cairo_pattern_get_filter     (cairo_pattern_t *pattern);
	-- void        cairo_pattern_set_matrix        (cairo_pattern_t *pattern,
	--                                              const cairo_matrix_t *matrix);
	-- void        cairo_pattern_get_matrix        (cairo_pattern_t *pattern,
	--                                              cairo_matrix_t *matrix);
	-- enum        cairo_pattern_type_t;
	-- cairo_pattern_type_t cairo_pattern_get_type (cairo_pattern_t *pattern);
	--
	--Description
	--
	--Details
	--
	--  cairo_pattern_t
	--
	-- typedef struct _cairo_pattern cairo_pattern_t;
	--
	--   --------------------------------------------------------------------------
	--
	--  cairo_pattern_add_color_stop_rgb ()
	--
	-- void        cairo_pattern_add_color_stop_rgb
	--                                             (cairo_pattern_t *pattern,
	--                                              double offset,
	--                                              double red,
	--                                              double green,
	--                                              double blue);
	--
	--   Adds an opaque color stop to a gradient pattern. The offset specifies the
	--   location along the gradient's control vector. For example, a linear
	--   gradient's control vector is from (x0,y0) to (x1,y1) while a radial
	--   gradient's control vector is from any point on the start circle to the
	--   corresponding point on the end circle.
	--
	--   The color is specified in the same way as in cairo_set_source_rgb().
	--
	--   Note: If the pattern is not a gradient pattern, (eg. a linear or radial
	--   pattern), then the pattern will be put into an error status with a status
	--   of CAIRO_STATUS_PATTERN_TYPE_MISMATCH.
	--
	--   pattern : a cairo_pattern_t
	--   offset :  an offset in the range [0.0 .. 1.0]
	--   red :     red component of color
	--   green :   green component of color
	--   blue :    blue component of color
	--
	--   --------------------------------------------------------------------------
	--
	--  cairo_pattern_add_color_stop_rgba ()
	--
	-- void        cairo_pattern_add_color_stop_rgba
	--                                             (cairo_pattern_t *pattern,
	--                                              double offset,
	--                                              double red,
	--                                              double green,
	--                                              double blue,
	--                                              double alpha);
	--
	--   Adds a translucent color stop to a gradient pattern. The offset specifies
	--   the location along the gradient's control vector. For example, a linear
	--   gradient's control vector is from (x0,y0) to (x1,y1) while a radial
	--   gradient's control vector is from any point on the start circle to the
	--   corresponding point on the end circle.
	--
	--   The color is specified in the same way as in cairo_set_source_rgba().
	--
	--   Note: If the pattern is not a gradient pattern, (eg. a linear or radial
	--   pattern), then the pattern will be put into an error status with a status
	--   of CAIRO_STATUS_PATTERN_TYPE_MISMATCH.
	--
	--   pattern : a cairo_pattern_t
	--   offset :  an offset in the range [0.0 .. 1.0]
	--   red :     red component of color
	--   green :   green component of color
	--   blue :    blue component of color
	--   alpha :   alpha component of color
	--
	--   --------------------------------------------------------------------------
	--
	--  cairo_pattern_create_rgb ()
	--
	-- cairo_pattern_t* cairo_pattern_create_rgb   (double red,
	--                                              double green,
	--                                              double blue);
	--
	--   Creates a new cairo_pattern_t corresponding to an opaque color. The color
	--   components are floating point numbers in the range 0 to 1. If the values
	--   passed in are outside that range, they will be clamped.
	--
	--   red :     red component of the color
	--   green :   green component of the color
	--   blue :    blue component of the color
	--   Returns : the newly created cairo_pattern_t if succesful, or an error
	--             pattern in case of no memory. The caller owns the returned
	--             object and should call cairo_pattern_destroy() when finished
	--             with it. This function will always return a valid pointer, but
	--             if an error occurred the pattern status will be set to an error.
	--             To inspect the status of a pattern use cairo_pattern_status().
	--
	--   --------------------------------------------------------------------------
	--
	--  cairo_pattern_create_rgba ()
	--
	-- cairo_pattern_t* cairo_pattern_create_rgba  (double red,
	--                                              double green,
	--                                              double blue,
	--                                              double alpha);
	--
	--   Creates a new cairo_pattern_t corresponding to a translucent color. The
	--   color components are floating point numbers in the range 0 to 1. If the
	--   values passed in are outside that range, they will be clamped.
	--
	--   red :     red component of the color
	--   green :   green component of the color
	--   blue :    blue component of the color
	--   alpha :   alpha component of the color
	--   Returns : the newly created cairo_pattern_t if succesful, or an error
	--             pattern in case of no memory. The caller owns the returned
	--             object and should call cairo_pattern_destroy() when finished
	--             with it. This function will always return a valid pointer, but
	--             if an error occurred the pattern status will be set to an error.
	--             To inspect the status of a pattern use cairo_pattern_status().
	--
	--   --------------------------------------------------------------------------
	--
	--  cairo_pattern_create_for_surface ()
	--
	-- cairo_pattern_t* cairo_pattern_create_for_surface
	--                                             (cairo_surface_t *surface);
	--
	--   Create a new cairo_pattern_t for the given surface.
	--
	--   surface : the surface
	--   Returns : the newly created cairo_pattern_t if succesful, or an error
	--             pattern in case of no memory. The caller owns the returned
	--             object and should call cairo_pattern_destroy() when finished
	--             with it. This function will always return a valid pointer, but
	--             if an error occurred the pattern status will be set to an error.
	--             To inspect the status of a pattern use cairo_pattern_status().
	--
	--   --------------------------------------------------------------------------
	--
	--  cairo_pattern_create_linear ()
	--
	-- cairo_pattern_t* cairo_pattern_create_linear
	--                                             (double x0,
	--                                              double y0,
	--                                              double x1,
	--                                              double y1);
	--
	--   Create a new linear gradient cairo_pattern_t along the line defined by
	--   (x0, y0) and (x1, y1). Before using the gradient pattern, a number of
	--   color stops should be defined using cairo_pattern_add_color_stop_rgb() or
	--   cairo_pattern_add_color_stop_rgba().
	--
	--   Note: The coordinates here are in pattern space. For a new pattern,
	--   pattern space is identical to user space, but the relationship between the
	--   spaces can be changed with cairo_pattern_set_matrix().
	--
	--   x0 :      x coordinate of the start point
	--   y0 :      y coordinate of the start point
	--   x1 :      x coordinate of the end point
	--   y1 :      y coordinate of the end point
	--   Returns : the newly created cairo_pattern_t if succesful, or an error
	--             pattern in case of no memory. The caller owns the returned
	--             object and should call cairo_pattern_destroy() when finished
	--             with it. This function will always return a valid pointer, but
	--             if an error occurred the pattern status will be set to an error.
	--             To inspect the status of a pattern use cairo_pattern_status().
	--
	--   --------------------------------------------------------------------------
	--
	--  cairo_pattern_create_radial ()
	--
	-- cairo_pattern_t* cairo_pattern_create_radial
	--                                             (double cx0,
	--                                              double cy0,
	--                                              double radius0,
	--                                              double cx1,
	--                                              double cy1,
	--                                              double radius1);
	--
	--   Creates a new radial gradient cairo_pattern_t between the two circles
	--   defined by (x0, y0, c0) and (x1, y1, c0). Before using the gradient
	--   pattern, a number of color stops should be defined using
	--   cairo_pattern_add_color_stop_rgb() or cairo_pattern_add_color_stop_rgba().
	--
	--   Note: The coordinates here are in pattern space. For a new pattern,
	--   pattern space is identical to user space, but the relationship between the
	--   spaces can be changed with cairo_pattern_set_matrix().
	--
	--   cx0 :     x coordinate for the center of the start circle
	--   cy0 :     y coordinate for the center of the start circle
	--   radius0 : radius of the start cirle
	--   cx1 :     x coordinate for the center of the end circle
	--   cy1 :     y coordinate for the center of the end circle
	--   radius1 : radius of the end cirle
	--   Returns : the newly created cairo_pattern_t if succesful, or an error
	--             pattern in case of no memory. The caller owns the returned
	--             object and should call cairo_pattern_destroy() when finished
	--             with it. This function will always return a valid pointer, but
	--             if an error occurred the pattern status will be set to an error.
	--             To inspect the status of a pattern use cairo_pattern_status().
	--
	--   --------------------------------------------------------------------------
	--
	--  cairo_pattern_destroy ()
	--
	-- void        cairo_pattern_destroy           (cairo_pattern_t *pattern);
	--
	--   Decreases the reference count on pattern by one. If the result is zero,
	--   then pattern and all associated resources are freed. See
	--   cairo_pattern_reference().
	--
	--   pattern : a cairo_pattern_t
	--
	--   --------------------------------------------------------------------------
	--
	--  cairo_pattern_reference ()
	--
	-- cairo_pattern_t* cairo_pattern_reference    (cairo_pattern_t *pattern);
	--
	--   Increases the reference count on pattern by one. This prevents pattern
	--   from being destroyed until a matching call to cairo_pattern_destroy() is
	--   made.
	--
	--   pattern : a cairo_pattern_t
	--   Returns : the referenced cairo_pattern_t.
	--
	--   --------------------------------------------------------------------------
	--
	--  cairo_pattern_status ()
	--
	-- cairo_status_t cairo_pattern_status         (cairo_pattern_t *pattern);
	--
	--   Checks whether an error has previously occurred for this pattern.
	--
	--   pattern : a cairo_pattern_t
	--   Returns : CAIRO_STATUS_SUCCESS, CAIRO_STATUS_NO_MEMORY, or
	--             CAIRO_STATUS_PATTERN_TYPE_MISMATCH.
	--
	--   --------------------------------------------------------------------------
	--
	--  enum cairo_extend_t
	--
	-- typedef enum _cairo_extend {
	--     CAIRO_EXTEND_NONE,
	--     CAIRO_EXTEND_REPEAT,
	--     CAIRO_EXTEND_REFLECT,
	--     CAIRO_EXTEND_PAD
	-- } cairo_extend_t;
	--
	--   cairo_extend_t is used to describe how the area outside of a pattern will
	--   be drawn.
	--
	--   New entries may be added in future versions.
	--
	--   CAIRO_EXTEND_NONE    pixels outside of the source pattern are fully
	--                        transparent
	--   CAIRO_EXTEND_REPEAT  the pattern is tiled by repeating
	--   CAIRO_EXTEND_REFLECT the pattern is tiled by reflecting at the edges (not
	--                        implemented for surface patterns currently)
	--   CAIRO_EXTEND_PAD     pixels outside of the pattern copy the closest pixel
	--                        from the source (Since 1.2; not implemented for
	--                        surface patterns currently)
	--
	--   --------------------------------------------------------------------------
	--
	--  cairo_pattern_set_extend ()
	--
	-- void        cairo_pattern_set_extend        (cairo_pattern_t *pattern,
	--                                              cairo_extend_t extend);
	--
	--   Sets the mode to be used for drawing outside the area of a pattern. See
	--   cairo_extend_t for details on the semantics of each extend strategy.
	--
	--   pattern : a cairo_pattern_t
	--   extend :  a cairo_extend_t describing how the area outside of the pattern
	--             will be drawn
	--
	--   --------------------------------------------------------------------------
	--
	--  cairo_pattern_get_extend ()
	--
	-- cairo_extend_t cairo_pattern_get_extend     (cairo_pattern_t *pattern);
	--
	--   Gets the current extend mode for a pattern. See cairo_extend_t for details
	--   on the semantics of each extend strategy.
	--
	--   pattern : a cairo_pattern_t
	--   Returns : the current extend strategy used for drawing the pattern.
	--
	--   --------------------------------------------------------------------------
	--
	--  enum cairo_filter_t
	--
	-- typedef enum _cairo_filter {
	--     CAIRO_FILTER_FAST,
	--     CAIRO_FILTER_GOOD,
	--     CAIRO_FILTER_BEST,
	--     CAIRO_FILTER_NEAREST,
	--     CAIRO_FILTER_BILINEAR,
	--     CAIRO_FILTER_GAUSSIAN
	-- } cairo_filter_t;
	--
	--   --------------------------------------------------------------------------
	--
	--  cairo_pattern_set_filter ()
	--
	-- void        cairo_pattern_set_filter        (cairo_pattern_t *pattern,
	--                                              cairo_filter_t filter);
	--
	--   pattern :
	--   filter :
	--
	--   --------------------------------------------------------------------------
	--
	--  cairo_pattern_get_filter ()
	--
	-- cairo_filter_t cairo_pattern_get_filter     (cairo_pattern_t *pattern);
	--
	--   pattern :
	--   Returns :
	--
	--   --------------------------------------------------------------------------
	--
	--  cairo_pattern_set_matrix ()
	--
	-- void        cairo_pattern_set_matrix        (cairo_pattern_t *pattern,
	--                                              const cairo_matrix_t *matrix);
	--
	--   Sets the pattern's transformation matrix to matrix. This matrix is a
	--   transformation from user space to pattern space.
	--
	--   When a pattern is first created it always has the identity matrix for its
	--   transformation matrix, which means that pattern space is initially
	--   identical to user space.
	--
	--   Important: Please note that the direction of this transformation matrix is
	--   from user space to pattern space. This means that if you imagine the flow
	--   from a pattern to user space (and on to device space), then coordinates in
	--   that flow will be transformed by the inverse of the pattern matrix.
	--
	--   For example, if you want to make a pattern appear twice as large as it
	--   does by default the correct code to use is:
	--
	-- cairo_matrix_init_scale (&matrix, 0.5, 0.5);
	-- cairo_pattern_set_matrix (pattern, &matrix);
	--
	--   Meanwhile, using values of 2.0 rather than 0.5 in the code above would
	--   cause the pattern to appear at half of its default size.
	--
	--   Also, please note the discussion of the user-space locking semantics of
	--   cairo_set_source().
	--
	--   pattern : a cairo_pattern_t
	--   matrix :  a cairo_matrix_t
	--
	--   --------------------------------------------------------------------------
	--
	--  cairo_pattern_get_matrix ()
	--
	-- void        cairo_pattern_get_matrix        (cairo_pattern_t *pattern,
	--                                              cairo_matrix_t *matrix);
	--
	--   Stores the pattern's transformation matrix into matrix.
	--
	--   pattern : a cairo_pattern_t
	--   matrix :  return value for the matrix
	--
	--   --------------------------------------------------------------------------
	--
	--  enum cairo_pattern_type_t
	--
	-- typedef enum _cairo_pattern_type {
	--     CAIRO_PATTERN_TYPE_SOLID,
	--     CAIRO_PATTERN_TYPE_SURFACE,
	--     CAIRO_PATTERN_TYPE_LINEAR,
	--     CAIRO_PATTERN_TYPE_RADIAL
	-- } cairo_pattern_type_t;
	--
	--   cairo_pattern_type_t is used to describe the type of a given pattern.
	--
	--   The type of a pattern is determined by the function used to create it. The
	--   cairo_pattern_create_rgb() and cairo_pattern_create_rgba() functions
	--   create SOLID patterns. The remaining cairo_pattern_create functions map to
	--   pattern types in obvious ways.
	--
	--   The pattern type can be queried with cairo_pattern_get_type()
	--
	--   Most cairo_pattern functions can be called with a pattern of any type,
	--   (though trying to change the extend or filter for a solid pattern will
	--   have no effect). A notable exception is cairo_pattern_add_color_stop_rgb()
	--   and cairo_pattern_add_color_stop_rgba() which must only be called with
	--   gradient patterns (either LINEAR or RADIAL). Otherwise the pattern will be
	--   shutdown and put into an error state.
	--
	--   New entries may be added in future versions.
	--
	--   CAIRO_PATTERN_TYPE_SOLID   The pattern is a solid (uniform) color. It may
	--                              be opaque or translucent.
	--   CAIRO_PATTERN_TYPE_SURFACE The pattern is a based on a surface (an image).
	--   CAIRO_PATTERN_TYPE_LINEAR  The pattern is a linear gradient.
	--   CAIRO_PATTERN_TYPE_RADIAL  The pattern is a radial gradient.
	--
	--   Since 1.2
	--
	--   --------------------------------------------------------------------------
	--
	--  cairo_pattern_get_type ()
	--
	-- cairo_pattern_type_t cairo_pattern_get_type (cairo_pattern_t *pattern);
	--
	--   This function returns the type a pattern. See cairo_pattern_type_t for
	--   available types.
	--
	--   pattern : a cairo_pattern_t
	--   Returns : The type of pattern.
	--
	--   Since 1.2

end -- class FOO
