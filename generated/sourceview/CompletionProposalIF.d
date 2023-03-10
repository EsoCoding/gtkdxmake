/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */

// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage


module sourceview.CompletionProposalIF;

private import glib.Str;
private import glib.c.functions;
private import sourceview.c.functions;
public  import sourceview.c.types;


/**
 * Interface for completion proposals.
 * 
 * This interface is used to denote that an object is capable of being
 * a completion proposal for [class@Completion].
 * 
 * Currently, no method or functions are required but additional methods
 * may be added in the future. Proposals created by
 * #GtkSourceCompletionProvider can use [func@GObject.IMPLEMENT_INTERFACE] to
 * implement this with %NULL for the interface init function.
 */
public interface CompletionProposalIF{
	/** Get the main Gtk struct */
	public GtkSourceCompletionProposal* getCompletionProposalStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return gtk_source_completion_proposal_get_type();
	}

	/**
	 * Gets the typed-text for the proposal, if supported by the implementation.
	 *
	 * Implementing this virtual-function is optional, but can be useful to allow
	 * external tooling to compare results.
	 *
	 * Returns: a newly allocated string, or %NULL
	 *
	 * Since: 5.6
	 */
	public string getTypedText();
}
