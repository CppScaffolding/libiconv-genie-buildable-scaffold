-- scaffold geniefile for libiconv-genie-buildable

libiconv-genie-buildable_script = path.getabsolute(path.getdirectory(_SCRIPT))
libiconv-genie-buildable_root = path.join(libiconv-genie-buildable_script, "libiconv-genie-buildable")

libiconv-genie-buildable_includedirs = {
	path.join(libiconv-genie-buildable_script, "config"),
	libiconv-genie-buildable_root,
}

libiconv-genie-buildable_libdirs = {}
libiconv-genie-buildable_links = {}
libiconv-genie-buildable_defines = {}

----
return {
	_add_includedirs = function()
		includedirs { libiconv-genie-buildable_includedirs }
	end,

	_add_defines = function()
		defines { libiconv-genie-buildable_defines }
	end,

	_add_libdirs = function()
		libdirs { libiconv-genie-buildable_libdirs }
	end,

	_add_external_links = function()
		links { libiconv-genie-buildable_links }
	end,

	_add_self_links = function()
		links { "libiconv-genie-buildable" }
	end,

	_create_projects = function()

project "libiconv-genie-buildable"
	kind "StaticLib"
	language "C++"
	flags {}

	includedirs {
		libiconv-genie-buildable_includedirs,
	}

	defines {}

	files {
		path.join(libiconv-genie-buildable_script, "config", "**.h"),
		path.join(libiconv-genie-buildable_root, "**.h"),
		path.join(libiconv-genie-buildable_root, "**.cpp"),
	}

end, -- _create_projects()
}

---
