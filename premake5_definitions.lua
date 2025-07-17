---@meta

---@diagnostic disable: lowercase-global

--- Globals

_ACTION = nil

_ARGS = nil

_MAIN_SCRIPT = nil

_MAIN_SCRIPT_DIR = nil

_OPTIONS = nil

_OS = nil

_PREMAKE_COMMAND = nil

_PREMAKE_DIR = nil

_PREMAKE_VERSION = nil

_TARGET_ARCH = nil

_TARGET_OS = nil

_WORKING_DIR = nil

---@param filename string
---@return boolean
function dofileopt(filename) end

---@param condition any
---@param trueval any
---@param falseval any
---@return any -- trueval|falseval
function iif(condition, trueval, falseval) end

---@param path string
---@return any
function include(path) end

---@param path string
function includeexternal(path) end

--- The printf performs like its C counterpart, printing a formatted string.
--- @param format string
--- @param ... any
function printf(format, ...) end

--- An extension of Lua's require() function which adds support for Premake modules and version checking.
--- @param modname string
--- @param version string|nil
--- @return any
function require(modname, version) end

--- The verbosef performs printf, printing a formatted string, but only when the verbose flag was set (ex. in the command line).
--- @param format string
--- @param ... any
function verbosef(format, ...) end

--- Project settings

---@param value '"On"'|'"Off"'
function allmodulespublic(value) end

---@param value number
function androidapilevel(value) end

---@param value string
function androidapplibname(value) end

---@param value
---| '"universal"'
---| '"x86"'
---| '"x86_64"'
---| '"ARM"'
---| '"ARM64"'
---| '"RISCV64"'
---| '"loongarch64"'
---| '"wasm32"'
---| '"wasm64"'
---| '"e2k"'
---| '"armv5"'
---| '"armv7"'
---| '"aarch64"'
---| '"mips"'
---| '"mips64"'
---| '"i386"'
---| '"amd64"'
---| '"x32"'
---| '"x64"'
function architecture(value) end

---@param value any documentation needed
function assemblydebug(value) end

---@param value '"Off"'|'"Dynamic"'|'"Static"' Enables Microsoft's Active Template Library in a project.
function atl(value) end

---@param value string Absolute path, from which other paths contained by the configuration should be made relative.
function basedir(value) end

---@param directories string[] Array of directories
function bindirs(directories) end

---@param action
---| '"ClInclude"'     # Treat the file as an include file.
---| '"ClCompile"'     # Treat the file as source code; compile and link it.
---| '"FxCompile"'     # Treat the file as HLSL shader source code; compile and link it.
---| '"None"'          # Do nothing with this file.
---| '"ResourceCompile"' # Copy/embed the file with the project resources.
---| '"CustomBuild"'   # Treat the file as custom build code; compile and optionally link it.
---| '"Midl"'         # Treat the file as MIDL source code; compile and link it.
---| '"Masm"'         # Treat the file as MASM source code; compile and link it.
---| '"Image"'        # Treat the file as an Image.
---| '"Natvis"'       # Treat the file as Natvis source; use it for custom data layouts while debugging.
---| '"AppxManifest"' # Treat the file as AppX Manifest; required for UWP applications.
---| '"Copy"'         # Copy the file to the target directory.
---| '"Application"'  # Mark the file as the application definition XAML for WPF.
---| '"Compile"'      # Treat the file as source code; compile and link it.
---| '"Component"'    # Treat the source file as a component, usually a visual control.
---| '"Embed"'        # Embed the file into the target binary as a resource.
---| '"Form"'         # Treat the source file as visual (Windows) form.
---| '"Resource"'     # Copy/embed the file with the project resources.
---| '"UserControl"'  # Treat the source file as visual user control.
function buildaction(action) end

---@param commands string[] Array of shell commands
function buildcommands(commands) end

---@param value string[] Imports custom .props files for Visual Studio.
function buildcustomization(value) end

---@param files string[] Specifies a list of file path for additional dependencies.
function builddependencies(files) end

---@param inputs any[] List of input source files.
function buildinputs(inputs) end

---@param path string the output file system location for the build log file.
function buildlog(path) end

---@param message string
function buildmessage(message) end

---@param options string[]
function buildoptions(options) end

---@param output any[]
function buildoutputs(output) end

---@param value string[]
function buildrule(value) end

---@param value '"On"'|'"Off"'
function buildstlmodules(value) end

---@param value '"Cdecl"'|'"FastCall"'|'"StdCall"'|'"VectorCall"'
function callingconvention(value) end

---@param value
---| '"Default"'
---| '"C89"'
---| '"C90"'
---| '"C99"'
---| '"C11"'
---| '"C17"'
---| '"gnu89"'
---| '"gnu90"'
---| '"gnu99"'
---| '"gnu11"'
---| '"gnu17"'
function cdialect(value) end

---@param value '"Default"'|'"MBCS"'|'"Unicode"'|'"ASCII"' Character encoding.
function characterset(value) end

---@param value '"On"'|'"Off"'
function clangtidy(value) end

---@param commands string[]
function cleancommands(commands) end

---@param extensions string[] A list of dot-prefixed file extensions to be cleaned.
function cleanextensions(extensions) end

---@param value '"Off"'|'"On"'|'"Pure"'|'"Safe"'|'"Unsafe"'|'"NetCore"'
function clr(value) end

---@param value
---| '"Default"'
---| '"C"'
---| '"C++"'
---| '"Objective-C"'
---| '"Objective-C++"'
---| '"Module"'
---| '"ModulePartition"'
---| '"HeaderUnit"'
function compileas(value) end

---@param value '"On"'|'"Off"'
function compilebuildoutputs(value) end

--- Specifies an Xbox 360 configuration.
---@param value string script-relative path to the configuration file.
function configfile(value) end

---@param wks_cfg string|{ build: string, platform: string } workspace configuration being mapped.
---@param prj_cfg string|{ build: string, platform: string } the project configuration to which the workspace configuration should be mapped.
function configmap(wks_cfg, prj_cfg) end

---@deprecated Caution! This function has been deprecated in Premake 5.0 beta1.
---@param keywords string[]
function configuration(keywords) end

---@param names string[] Specifies the set of build configurations, such as "Debug" and "Release", for a workspace or project.
function configurations(names) end

function conformancemode(value) end

---@param value '"Default"'|'"On"'|'"Off"'
function consumewinrtextension(value) end

---@param libraries string[] Specifies a list of libraries or assembly references which should be copied to the target directory as part of the build. Refer to the Visual Studio C# project feature of the same name.
function copylocal(libraries) end

---@param value
---| '"Default"'
---| '"C++latest"'
---| '"C++98"'
---| '"C++0x"'
---| '"C++11"'
---| '"C++1y"'
---| '"C++14"'
---| '"C++1z"'
---| '"C++17"'
---| '"C++2a"'
---| '"C++20"'
---| '"C++2b"'
---| '"C++23"'
---| '"gnu++98"'
---| '"gnu++0x"'
---| '"gnu++11"'
---| '"gnu++1y"'
---| '"gnu++14"'
---| '"gnu++1z"'
---| '"gnu++17"'
---| '"gnu++2a"'
---| '"gnu++20"'
---| '"gnu++2b"'
---| '"gnu++23"'
function cppdialect(value) end

---@param value string Specifying the C# language level.
function csversion(value) end

---@param value string Only used by Visual Studio .NET targets. Maps to <CustomToolNamespace> MSBuild element.
function customtoolnamespace(value) end

--- Specifies a list of arguments to pass to the application when run under the debugger.
---@param args string[]
function debugargs(args) end

---@param command string
function debugcommand(command) end

---@params commands string[]
function debugconnectcommands(commands) end

--- Sets the working directory for the integrated debugger.
---@param path string
function debugdir(path) end

--- List of environment variable definitions for the debug session.
---@param envs string[]
function debugenvs(envs) end

--- Specifies to use the 'extended-remote' protocol, which instructs GDB to maintain a persistent connection to gdbserver.
---@param enabled boolean
function debugextendedprotocol(enabled) end

---@param value '"Default"'|'"c7"'|'"Dwarf"'|'"SplitDwarf"' Specifies format of debug information in output binaries
function debugformat(value) end

---@param value
---| '"Default"'
---| '"GDB"'
---| '"LLDB"'
---| '"VisualStudioLocal"'
---| '"VisualStudioRemote"'
---| '"VisualStudioWebBrowser"'
---| '"VisualStudioWebService"'
function debugger(value) end

---@param value '"Local"'|'"Remote"'|'"WebBrowser"'|'"WebService"' needs documentation
function debuggerflavor(value) end

---@param value '"Mixed"'|'"NativeOnly"'|'"ManagedOnly"'|'"NativeWithManagedCore"'
function debuggertype(value) end

---@param portnumber integer
function debugport(portnumber) end

---@param host string
function debugremotehost(host) end

---@param paths string[]
function debugsearchpaths(paths) end

---@param commands string[]
function debugstartupcommands(commands) end

---@param platform_name string
function defaultplatform(platform_name) end

---@param symbols string[]
function defines(symbols) end

---@param project_name string[]
function dependson(project_name) end

---@param options string[] Array of options to pass to deployment tool
--- Deployment options are currently only supported for Xbox 360 targets.
function deploymentoptions(options) end

---@param warnings string[]
--- For Visual Studio, the MSC warning number should be used to specify the warning. On other compilers, the warning should be identified by name.
function disablewarnings(warnings) end

---@param value any
function display(value) end

--- This feature sets the documentationfile option in a C# project's .csproj file for each respective configuration
---@param targetdir string
function documentationfile(targetdir) end

---@param version
---| '"1.0"'
---| '"1.1"'
---| '"2.0"'
---| '"3.0"'
---| '"3.5"'
---| '"4.0"'
---| '"4.5"'
---| '"4.6"'
---|string
function dotnetframework(version) end

---@param value '"Default"'|'"None"'|'"High"'|'"HighPerMonitor"' Use toolset's default setting, turn off DPI awareness, turn on DPI awareness, or turn on per-monitor DPI awareness.
function dpiawareness(value) end

---@param value '"On"'|'"Off"' Enables Edit and Continue for Visual Studio targets.
function editandcontinue(value) end

---@param value '"On"'|'"Off"'
function editorintegration(value) end

---@param content string[] Name of the content to embed.
function embed(content) end

---@param content string[] Name of the content to embed.
function embedAndSign(content) end

function enabledefaultcompileitems(value) end

---@param value '"On"'|'"Off"'
function enablemodules(value) end

---@param value '"On"'|'"Off"'
function enableunitybuild(value) end

---@param warnings string[]
function enablewarnings(warnings) end

---@param value '"Default"'|'"Litte"'|'"Big"'
function endian(value) end

---@param fn string Name of the entry point function.
function entrypoint(fn) end

---@param value '"Default"'|'"On"'|'"Off"'|'"SEH"'|'"CThrow"'|'"UnwindTables"'
function exceptionhandling(value) end

---@param value '"On"'|'"Off"'
function externalanglebrackets(value) end

---@param paths string[]
function externalincludedirs(paths) end

---@param project string External project to reference.
function externalproject(project) end

---@param name string Name of external rule.
function externalrule(name) end

---@param value '"Off"'|'"Default"'|'"Extra"'|'"High"'|'"Everything"'
function externalwarnings(value) end

function fastuptodate(value) end

---@param warnings string[]
function fatalwarnings(warnings) end

---@param ext string
function fileextension(ext) end

---@param name string
function filename(name) end

---@param file_list string[] Specifies one or more file patterns. File paths should be specified relative to the currently executing script file. File patterns may contain the * wildcard to match against files in the current directory, or the ** wildcard to perform a recursive match.
function files(file_list) end

---
--- `filter { "prefix:keywords" }`
---
--- Limits the subsequent build settings to a particular environment.
---
--- Any settings that appear after this function in the script will be applied only to those contexts that match all of the listed keywords.
---
--- ### Supported Field Prefixes
--- Each keyword must include a prefix to specify which field should be tested. The following field prefixes are currently supported:
--- - `action`, `architecture`, `configurations`, `files`, `kind`, `language`, `options`, `platforms`, `system`, `toolset`
---
--- ### Wildcards and Modifiers
--- Keywords may use the `*` and `**` wildcards to match more than one term or file. You may also use the modifiers `not` and `or` to build more complex conditions.
---@param keywords string|{}
function filter(keywords) end

---@param flags string|string[] # One or more build flags to modify the project or configuration
function flags(flags) end

---@param value '"soft"'|'"softfp"'|'"hard"' Controls how floating-point operations and calling conventions are handled by the compiler.
function floatabi(value) end

---@param value '"Default"'|'"Fast"'|'"Strict"' Style of floating point math.
function floatingpoint(value) end

---@param value '"On"'|'"Off"'
function floatingpointexceptions(value) end

---@param files string[] List of files to be force included. Paths should be specified relative to the currently running script file.
function forceincludes(files) end

---@param files string[] List of files to be force included. Paths should be specified relative to the currently running script file.
function forceusings(files) end

---@param value '"Software"'|'"Hardware"' Generate code for hardware FPU or software floating-point emulation.
function fpu(value) end

---@deprecated This API is deprecated since 5.0, please use dotnetframework instead.
---@param version '"1.0"'|'"1.1"'|'"2.0"'|'"3.0"'|'"3.5"'|'"4.0"'
function framework(version) end

function frameworkdirs(value) end

---@param value '"On"'|'"Off"'
function functionlevellinking(value) end

---@param prefix string
function gccprefix(prefix) end

---@param name string
function group(name) end

---@param name string
function icon(name) end

--- 'libraries' is a list of library names. If a valid extension isn't present, .lib will be automatically appended, similar to links. Currently, the valid extensions are .lib and .obj.
---@param libraries string[]
function ignoredefaultlibraries(libraries) end

--- If a project includes multiple calls to imageoptions the lists are concatenated, in the order in which they appear in the script.
--- Image options are currently only supported for Xbox 360 targets.
---@param options string[]
function imageoptions(options) end

--- Sets the file name of the deployment image produced by the build.
--- This value is currently only used by the Xbox 360.
---@param name string
function imagepath(name) end

--- Specifies the import library output directory. Import libraries are generated for Windows DLL projects.
--- 'path' is the output directory for the library, relative to the currently executing script file.
---@param path string
function implibdir(path) end

--- Specifies the import library file extension. Import libraries are generated for Windows DLL projects.
--- By default, the toolset static library file extension will be used (.lib with Windows tools, .a with GNU tools). The implibextension function allows you to change this default.
--- ext is the new file extension, including the leading dot.
---@param ext string
function implibextension(ext) end

--- Specifies the import library base file name. Import libraries are generated for Windows DLL projects.
--- By default, the target name will be used as the import library file name. The implibname function allows you to change this default.
---@param name string
function implibname(name) end

--- Specifies the import library file name prefix. Import libraries are generated for Windows DLL projects.
--- By default, the system naming convention will be used: no prefix on Windows, a prefix of lib (as in libMyProject.a) on other systems. The implibprefix function allows you to change this default.
---@param prefix string
function implibprefix(prefix) end

--- Specifies a file name suffix for the import library base file name. Import libraries are generated for Windows DLL projects.
---@param suffix string
function implibsuffix(suffix) end

--- Specifies the include file search paths for the compiler.
--- paths specifies a list of include file search directories. Paths should be specified relative to the currently running script file.
---@param paths string[]
function includedirs(paths) end

--- Specifies the include directories to parse last per the toolset ordering and marks the directory as an external include directory. If the exporter or toolset does not support include directory ordering, these directories are added to the external include directory path.
---@param paths string[]
function includedirsafter(paths) end

--- For Visual Studio project files, this controls the generation of the %(AdditionalDependencies) entry in the list of libraries that a project links.
---@param value '"On"'|'"Off"'
function inheritdependencies(value) end

---@param value '"Default"'|'"Hidden"'
function inlinesvisibility(value) end

---@param value '"Default"'|'"Disabled"'|'"Explicit"'|'"Auto"' Tells the compiler when it should inline functions.
function inlining(value) end

---@param value '"on"'|'"off"'
function intrinsics(value) end

---@param value '"iPhone/iPod touch"'|'"iPad"'|'"Universal"'
function iosfamily(value) end

---@param value
---| '"MOVBE"'
---| '"POPCNT"'
---| '"PCLMUL"'
---| '"LZCNT"'
---| '"BMI"'
---| '"BMI2"'
---| '"F16C"'
---| '"AES"'
---| '"FMA"'
---| '"FMA4"'
---| '"RDRND"'
function isaextensions(value) end

---@param value '"On"'|'"Off"'
function justmycode(value) end

--- Sets the kind of binary object being created by the project or configuration, such as a console or windowed application, or a shared or static library.
---@param value
---| '"ConsoleApp"'      # A console or command-line application
---| '"WindowedApp"'     # An application which runs in a desktop window
---| '"SharedLib"'       # A shared library or DLL
---| '"StaticLib"'       # A static library
---| '"Makefile"'        # A special configuration that calls external commands
---| '"Utility"'         # A configuration with only custom build rules
---| '"None"'            # A configuration not included in the build
---| '"Packaging"'       # Configuration type to create .androidproj files
---| '"SharedItems"'     # Configuration that uses build settings of linked projects
function kind(value) end

---@param lang string|'"C"'|'"C++"'|'"C#"'|'"F#"' Programming language used by a project
function language(lang) end

---@param value '"on"'|'"off"'
function largeaddressaware(value) end

--- Specifies the library search paths for the linker.
--- Library search directories are not well supported by the .NET tools. Visual Studio will change relative paths to absolute, making it difficult to share the generated project. MonoDevelop does not support search directories at all, using only the GAC. In general, it is better to include the full (relative) path to the assembly in links instead. C/C++ projects do not have this limitation.
---@param paths string[]
function libdirs(paths) end

--- Turns on/off the automatic linking of .obj files that are output by custom build commands. The default behaviour is to link .obj files when they are output by custom build commands.
---@param value '"On"'|'"Off"'
function linkbuildoutputs(value) end

---@param value string|'"Default"'|'"LLD"' Specifies the linker to use
function linker(value) end

--- For Visual Studio, the MSC warning number should be used to specify the warning. On other compilers, the warning should be identified by name.
--- In addition, Premake provides a special value to turn on all linker warnings.
---@param warning string[]|'"All"'
function linkerfatalwarnings(warning) end

--- Notes:
--- Projects using GCC or Clang will use order dependent linking by default with the default linker. While it is generally believed to be slower, this option enables order independent linking within a group of libraries by putting them inside of a link-group using the -Wl,--start-group and -Wl,--end-group linker command line arguments.
---@param value '"On"'|'"Off"'
function linkgroups(value) end

---@param options string[]
function linkoptions(options) end

--- When linking against another project in the same workspace, specify the project name here, rather than the library name. Premake will figure out the correct library to link against for the current configuration, and will also create a dependency between the projects to ensure a proper build order.
--- When linking against system libraries, do not include any prefix or file extension. Premake will use the appropriate naming conventions for the current platform. With two exceptions:
--- -   Managed C++ projects can link against managed assemblies by explicitly specifying the ".dll" file extension. Unmanaged libraries should continue to be specified without any decoration.
--- -   Objective C frameworks can be linked by explicitly including the ".framework" file extension.
--- -   For Visual Studio, this will add the specified project into References. In contrast, 'dependson' generates a build order dependency in the solution between two projects.
---@param references string[]
function links(references) end

---@param value '"Off"'|'"On"'|'"Default"' Link time optimization enabled/disabled.
function linktimeoptimization(value) end

---@param path string
function llvmdir(path) end

---@param version string
function llvmversion(version) end

--- This value is currently only used for the Microsoft Visual Studio resource compiler in C/C++ projects.
---@param code string
function locale(code) end

---@param path string
function location(path) end

---@param values string[]
function makesettings(values) end

---@param value '"Default"'|'"Off"'|'"On"'|'"Static"'|'"Dynamic"' Version of MFC libraries to link against
function mfc(value) end

---@param name string
function namespace(name) end

---@param value '"Default"'|'"On"'|'"Off"'
function nativewchar(value) end

---
--- Registers a new command-line action argument.
--- For more information, see Command Line Arguments.
---
---@param description { trigger?: string, shortname?: string, description?: string, execute?: function, targetos?: string, valid_kinds?: table, valid_languages?: table, valid_tools?: table, toolset?: string, onStart?: function, onWorkspace?: function, onProject?: function, onRule?: function, onEnd?: function, onCleanWorkspace?: function, onCleanProject?: function, onCleanTarget?: function, pathVars?: table, aliases?: table, deprecatedaliases?: table, os?: string, onSolution?: function }
function newaction(description) end

---@param description { trigger: string, description: string, value?: string, allowed?: table<string, any>, default?: any, category?: string }
function newoption(description) end

---@param references string[]
function nuget(references) end

--- Used to specify the NuGet package source. Only NuGet "galleries" are currently supported. Defaults to the official NuGet Gallery at nuget.org.
--- url is the NuGet v3 feed URL.
---@param url string
function nugetsource(url) end

---@param path string
function objdir(path) end

---@param value '"Default"'|'"On"'|'"Off"'
function omitframepointer(value) end

---@param value '"On"'|'"Off"'
function openmp(value) end

---@param value '"Off"'|'"On"'|'"Debug"'|'"Size"'|'"Speed"'|'"Full"' Specifies the level and type of optimization used while building the target configuration.
function optimize(value) end

--- Specifies the #include form of the precompiled header file name.
---@param name string
function pchheader(name) end

--- Specifies the C/C++ source code file which controls the compilation of the header.
---@param name string
function pchsource(name) end

---@param value '"On"'|'"Off"'
function pic(value) end

---@param names string[]
function platforms(names) end

--- Specifies shell commands to run after build is finished.
---@param commands string[]
function postbuildcommands(commands) end

--- Specifies a message to display to the user before starting execution of any specified post-build commands.
---@param message string
function postbuildmessage(message) end

--- Specifies shell commands to run before each build.
---@param commands string[]
function prebuildcommands(commands) end

--- Specifies a message to display to the user before starting execution of any specified pre-build commands.
---@param message string
function prebuildmessage(message) end

---@param value '"Default"'|'"x86"'|'"x86_64"' needs documentation.
function preferredtoolarchitecture(value) end

--- Specifies shell commands to run after the source files have been compiled, but before the link step (if unsupported by the action, it will be treated the same as prebuildcommands).
---@param commands string[]
function prelinkcommands(commands) end

--- Specifies a message to display to the user before starting execution of any specified pre-link commands.
---@param message string
function prelinkmessage(message) end

--- Creates a new project within the scope of a workspace. After a project is invoked, any previous filter settings are cleared (i.e., reset).
---@param name string
function project(name) end

--- Creates a new property for a custom rule.
--- The property definition is specified as a table with required parameter arguments:
--- - name (string) - Name for the rule that will be unique where used. Avoid spaces/special chars.
--- - kind (string) - Expected data type:
---   - "boolean" - Yes/no value
---   - "integer" - Integer number
---   - "list" - List of strings
---   - "number" - Floating point number
---   - "path" - Single file path
---   - "string" - Single string
---   For enum properties, this is ignored and can be omitted. Otherwise required.
--- - display (string) - Short description for toolset UI
--- - description (string) - Long description for toolset UI
--- - value (any) - Default value if any
--- - values (table) - For enum properties, key-value table of possible values and text
--- - switch (string) - Value for command line
--- - separator (string) - For lists, separator between items when concatenated behind switch
--- - category (string) - Visual Studio only: subcategory in properties, defaults to "General"
---@param args { name: string, kind: string, display: string, description: string }
function propertydefinition(args) end

---@param commands string[]
function rebuildcommands(commands) end

--- Directory on the remote machine where the project will be deployed to.
---@param path string
function remotedeploydir(path) end

--- Project directory as seen by the Windows Subsystem for Linux shell.
---@param path string
function remoteprojectdir(path) end

--- Specifies the subdirectory on the remote machine to copy each project's source code to.
---@param path string
function remoteprojectrelativedir(path) end

--- Specifies the base directory on the remote machine to deploy the source code to before compiling.
---@param path string
function remoterootdir(path) end

---@param value any TODO!
function removeunreferencedcodedata(value) end

---@param value any TODO!
function resdefines(value) end

---@param value any TODO!
function resincludedirs(value) end

---@param value any TODO!
function resoptions(value) end

---@param value any TODO!
function resourcegenerator(value) end

---@param value any TODO!
function rtti(value) end

---@param value any TODO!
function rule(value) end

---@param value any TODO!
function rules(value) end

---@param value any TODO!
function runcodeanalysis(value) end

---@param value any TODO!
function runpathdirs(value) end

---@param value any TODO!
function runtime(value) end

---@param value any TODO!
function sanitize(value) end

---@param value any TODO!
function scanformoduledependencies(value) end

---@param value any TODO!
function shaderassembler(value) end

---@param value any TODO!
function shaderassembleroutput(value) end

---@param value any TODO!
function shaderdefines(value) end

---@param value any TODO!
function shaderentry(value) end

---@param value any TODO!
function shaderheaderfileoutput(value) end

---@param value any TODO!
function shaderincludedirs(value) end

---@param value any TODO!
function shadermodel(value) end

---@param value any TODO!
function shaderobjectfileoutput(value) end

---@param value any TODO!
function shaderoptions(value) end

---@param value any TODO!
function shadertype(value) end

---@param value any TODO!
function shadervariablename(value) end

---@param value any TODO!
function sharedlibtype(value) end

---@param value any TODO!
function startproject(value) end

---@param value any TODO!
function staticruntime(value) end

---@param value any TODO!
function stl(value) end

---@param value any TODO!
function strictaliasing(value) end

---@param value any TODO!
function stringpooling(value) end

---@param value any TODO!
function structmemberalign(value) end

---@param value any TODO!
function swiftversion(value) end

---@param value any TODO!
function symbols(value) end

---@param value any TODO!
function symbolspath(value) end

---@param value any TODO!
function sysincludedirs(value) end

---@param value any TODO!
function syslibdirs(value) end

---@param value any TODO!
function system(value) end

---@param value any TODO!
function systemversion(value) end

---@param value any TODO!
function tags(value) end

---@param value any TODO!
function tailcalls(value) end

---@param value any TODO!
function targetdir(value) end

---@param value any TODO!
function targetextension(value) end

---@param value any TODO!
function targetname(value) end

---@param value any TODO!
function targetprefix(value) end

---@param value any TODO!
function targetsuffix(value) end

---@param value any TODO!
function thumbmode(value) end

---@param value any TODO!
function toolchainversion(value) end

---@param value any TODO!
function toolset(value) end

---@param value any TODO!
function toolsversion(value) end

---@param value any TODO!
function undefines(value) end

---@param value any TODO!
function unsignedchar(value) end

---@param value any TODO!
function usefullpaths(value) end

---@param value any TODO!
function usestandardpreprocessor(value) end

---@param value any TODO!
function usingdirs(value) end

---@param value any TODO!
function uuid(value) end

---@param value any TODO!
function vectorextensions(value) end

---@param value any TODO!
function visibility(value) end

---@param value any TODO!
function vpaths(value) end

---@param value any TODO!
function vsprops(value) end

---@param value any TODO!
function warnings(value) end

--- Creates a new workspace.
---
--- Workspaces are the top-level objects in a Premake build script, and are synonymous with a Visual Studio solution. Each workspace contains one or more projects, which in turn contain the settings to generate a single binary target.
---@param name string
function workspace(name) end

---@param value any TODO!
function xcodebuildresources(value) end

---@param value any TODO!
function xcodebuildsettings(value) end

---@param value any TODO!
function xcodecodesigningidentity(value) end

---@param value any TODO!
function xcodesystemcapabilities(value) end

--- http

---@class http
http = {}

--- Downloads an HTTP resource from the specified URL to a file.
--- @param url string The URL of the resource to download.
--- @param file string
--- @param options http_options
--- @return "OK"|string result_str
--- @return string result_code
function http.download(url, file, options) end

--- Perform a HTTP GET request using the specified URL.
--- @param url string
--- @param options http_options
--- @return any resource
--- @return "OK"|string result_str
--- @return string result_code
function http.get(url, options) end

--- Perform a HTTP POST request to the specified URL.
--- @param url string
--- @param data any
--- @param options http_options
--- @return any resource
--- @return "OK"|string result_str
--- @return string result_code
function http.post(url, data, options) end

---@class http_options
---@field progress fun(total: integer, current: integer) | nil
---@field headers table<string, string> | nil
---@field userpwd string | nil
---@field username string | nil
---@field password string | nil
---@field timeout integer | nil
---@field timeoutms integer | nil
---@field sslverifyhost boolean | nil
---@field sslverifypeer boolean | nil
---@field proxyurl string | nil



--- io
--- @class io
io = {}

--- read a file's contents as a string.
--- @param filename string
function io.readme(filename) end

--- Output a UTF-8 encoding sequence ('\239\187\191') to the current output stream.
function io.utf8() end

--- write content to the file at filename, which may or may not exist.
--- @param filename string
--- @param content string
function io.writefile(filename, content) end

--- Json

---@class json
json = {}

--- Converts from Premake's simple wildcard syntax to a corresponding Lua pattern.
--- @param s string
--- @return table result
--- @return string|nil error
function json.decode(s) end

--- Encodes a table to JSON.
--- @param tbl table
--- @return string|nil result
--- @return string|nil error
function json.encode(tbl) end



--- os
--- @class os
os = {}



--- Path
---@class path
path = {}

---- Appends an extension to a file path if it is not already present.
---@param p string
---@param ext string
---@return string
function path.appendExtension(p, ext) end

--- Converts a relative path to an absolute path.
---@param path string
---@param relativeTo string|nil
---@return string
function path.getabsolute(path, relativeTo) end

--- Returns the base file portion of a path, with the directory and file extension removed.
---@param path string
---@return string
function path.getbasename(path) end

--- Returns the directory portion of a path, with any file name removed.
---@param path string
---@return string|"."
function path.getdirectory(path) end

--- Returns the drive letter portion of a path, if present.
---@param path string
---@return string|nil
function path.getdrive(path) end

--- Returns the file extension portion of a path.
---@param path string
---@return string|""
function path.getextension(path) end

--- Returns the file name and extension, with any directory information removed.
---@param path string
---@return string
function path.getname(path) end

--- The path.getrelative function computes a relative path from one directory to another.
---@param src string
---@param dest string
---@return string
function path.getrelative(src, dest) end

--- Returns true if a file system path has the given file extension.
---@param path string
---@param ext string
---@return boolean
function path.hasextension(path, ext) end

--- Determines if a given file system path is absolute.
---@param path string
---@return boolean
function path.isabsolute(path) end

--- Returns true if the specified path represents a C source code file, based on its file extension.
--- @param path string
--- @return boolean
function path.iscfile(path) end

--- Returns true if the specified path represents a C++ source code file, based on its file extension.
--- @param path string
--- @return boolean
function path.iscppfile(path) end

--- Returns true if the specified path represents a C++ header file, based on its file extension.
--- @param path string
--- @return boolean
function path.iscppheader(path) end

--- Returns true if the specified path represents a Cocoa framework bundle, based on its file extension.
--- @param path string
--- @return boolean
function path.isframework(path) end

--- Returns true if the specified path represents a file that can be linked against, based on its file extension.
--- @param path string
--- @return boolean
function path.islinkable(path) end

--- Returns true if the specified path represents an object file, based on its file extension.
--- @param path string
--- @return boolean
function path.isobjectfile(path) end

--- Returns true if the specified path represents a Windows resource file, based on its file extension.
--- @param path string
--- @return boolean
function path.isresourcefile(path) end

--- Joins path portions together into a single path.
---@param ... string
---@return string
function path.join(...) end

--- Tries to create a clean file system representation of a path.
--- @param path string
--- @return string
function path.normalize(path) end

--- Takes a path which is relative to one location and makes it relative to another location instead.
--- @param relative_path string
--- @param old_base string
--- @param new_base string
--- @return string
function path.rebase(relative_path, old_base, new_base) end

--- Replace the file extension.
--- @param path string
--- @param new_extension string
--- @return string
function path.replaceextension(path, new_extension) end

--- Converts the file separators in a path.
--- @param path string
--- @param newsep string
--- @return string
function path.translate(path, newsep) end

--- Converts from Premake's simple wildcard syntax to a corresponding Lua pattern.
--- @param pattern string
--- @return string
function path.wildcard(pattern) end




--- string
--- @class string
string = {}



--- table
--- @class table
table = {}



--- term
--- @class term
term = {}



--- zip
--- @class zip
zip = {}