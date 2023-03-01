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


module soup.PasswordManagerT;

public  import gio.Cancellable;
public  import glib.MainContext;
public  import soup.Auth;
public  import soup.Message;
public  import soup.c.functions;
public  import soup.c.types;


/** */
public template PasswordManagerT(TStruct)
{
	/** Get the main Gtk struct */
	public SoupPasswordManager* getPasswordManagerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(SoupPasswordManager*)getStruct();
	}


	/** */
	public void getPasswordsAsync(Message msg, Auth auth, bool retrying, MainContext asyncContext, Cancellable cancellable, SoupPasswordManagerCallback callback, void* userData)
	{
		soup_password_manager_get_passwords_async(getPasswordManagerStruct(), (msg is null) ? null : msg.getMessageStruct(), (auth is null) ? null : auth.getAuthStruct(), retrying, (asyncContext is null) ? null : asyncContext.getMainContextStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/** */
	public void getPasswordsSync(Message msg, Auth auth, Cancellable cancellable)
	{
		soup_password_manager_get_passwords_sync(getPasswordManagerStruct(), (msg is null) ? null : msg.getMessageStruct(), (auth is null) ? null : auth.getAuthStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct());
	}
}
