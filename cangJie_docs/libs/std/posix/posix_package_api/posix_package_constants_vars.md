std.posix 功能介绍 posix 包主要适配 POSIX 系统接口。 本包提供多平台统一操控能力，目前支持 Linux 平台，macOS 平台，Windows 平台与 HarmonyOS 平台。
>>
>>> **注意：** 未来版本即将废弃本包全部内容。
>> 
>> API 列表 函数 函数名| 功能| 支持平台  
>> ---|---|---  
>> [open(String, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-openstring-int32-deprecated)| 打开文件并为其返回新的文件描述符，或在失败时返回 `-1`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [open(String, Int32, UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-openstring-int32-uint32-deprecated)| 打开文件并为其返回新的文件描述符，或在失败时返回 `-1`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [access(String, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-accessstring-int32-deprecated)| 判断某个文件是否具有某种权限，具有返回 `0`，否则返回 `-1`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [chdir(String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-chdirstring-deprecated)| 通过指定路径的方式，更改调用进程的当前工作目录。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [chmod(String, UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-chmodstring-uint32-deprecated)| 修改文件访问权限。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [chown(String, UInt32, UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-chownstring-uint32-uint32-deprecated)| 修改文件所有者和文件所有者所属组。| `Linux` `macOS` `HarmonyOS`  
>> [close(Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-closeint32-deprecated)| 关闭文件，`close` 将会触发数据写回磁盘，并释放文件占用的资源。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [creat(String, UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-creatstring-uint32-deprecated)| 创建文件并为其返回文件描述符，或在失败时返回 `-1`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [dup(Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-dupint32-deprecated)| 用于复制旧 `fd` 参数指定的文件描述符并返回。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [dup2(Int32, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-dupint32-int32-deprecated)| 用于复制 `oldfd` 参数指定的文件描述符，并将其返回到 `newfd` 参数。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [faccessat(Int32, String, Int32, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-faccessatint32-string-int32-int32-deprecated)| 判断 `fd` 对应的文件是否具有某种权限，具有返回 `0`，否则返回 `-1`。| `Linux` `macOS` `HarmonyOS`  
>> [fchdir(Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-fchdirint32-deprecated)| 通过指定文件路径的描述符，更改调用进程的当前工作目录。| `Linux` `macOS` `HarmonyOS`  
>> [fchmod(Int32, UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-fchmodint32-uint32-deprecated)| 修改文件描述符对应的文件访问权限。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [fchmodat(Int32, String, UInt32, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-fchmodatint32-string-uint32-int32-deprecated)| 修改文件描述符对应的文件访问权限。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [fchown(Int32, UInt32, UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-fchownint32-uint32-uint32-deprecated)| 修改 `fd` 对应的文件所有者和文件所有者所属组。| `Linux` `macOS` `HarmonyOS`  
>> [fchownat(Int32, String, UInt32, UInt32, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-fchownatint32-string-uint32-uint32-int32-deprecated)| 修改文件描述符对应的文件所有者和文件所有者所属组。| `Linux` `macOS` `HarmonyOS`  
>> [getcwd() (deprecated)](./posix_package_api/posix_package_funcs.html#func-getcwd-deprecated)| 获取当前执行进程工作目录的绝对路径。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [getgid() (deprecated)](./posix_package_api/posix_package_funcs.html#func-getgid-deprecated)| 获取用户组 `ID`。| `Linux` `macOS` `HarmonyOS`  
>> [getgroups(Int32, CPointer<UInt32>) (deprecated)](./posix_package_api/posix_package_funcs.html#func-getgroupsint32-cpointeruint32-deprecated)| 获取当前用户所属组的代码。| `Linux` `macOS` `HarmonyOS`  
>> [gethostname() (deprecated)](./posix_package_api/posix_package_funcs.html#func-gethostname-deprecated)| 获取主机名称，此名称通常是 `TCP/IP` 网络上主机的名称。| `Linux` `macOS` `HarmonyOS`  
>> [getlogin() (deprecated)](./posix_package_api/posix_package_funcs.html#func-getlogin-deprecated)| 获取当前登录名。| `Linux` `macOS` `HarmonyOS`  
>> [getos() (deprecated)](./posix_package_api/posix_package_funcs.html#func-getos-deprecated)| 从 `/proc/version` 文件中获取 `Linux` 系统的信息。| `Linux`  
>> [getpgid(Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-getpgidint32-deprecated)| 获取 `pid` 指定的进程的 `PGID`，如果 `pid` 为零，返回调用进程的进程 `ID`。| `Linux` `macOS` `HarmonyOS`  
>> [getpgrp() (deprecated)](./posix_package_api/posix_package_funcs.html#func-getpgrp-deprecated)| 获取调用进程的父进程 `ID`。| `Linux` `macOS` `HarmonyOS`  
>> [getpid() (deprecated)](./posix_package_api/posix_package_funcs.html#func-getpid-deprecated)| 获取调用进程的进程 `ID(PID)`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [getppid() (deprecated)](./posix_package_api/posix_package_funcs.html#func-getppid-deprecated)| 获取调用进程的父进程 `ID`。| `Linux` `macOS` `HarmonyOS`  
>> [getuid() (deprecated)](./posix_package_api/posix_package_funcs.html#func-getuid-deprecated)| 获取调用进程的真实用户 `ID`。| `Linux` `macOS` `HarmonyOS`  
>> [isBlk(String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-isblkstring-deprecated)| 检查传入对象是否为块设备，并返回布尔类型。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [isChr(String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-ischrstring-deprecated)| 检查传入对象是否为字符设备，返回布尔类型。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [isDir(String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-isdirstring-deprecated)| 检查传入对象是否为文件夹，返回布尔类型。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [isFIFO(String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-isfifostring-deprecated)| 检查传入对象是否为 `FIFO` 文件，返回布尔类型。| `Linux` `macOS` `HarmonyOS`  
>> [isLnk(String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-islnkstring-deprecated)| 检查传入对象是否为软链路，返回布尔类型。| `Linux` `macOS` `HarmonyOS`  
>> [isReg(String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-isregstring-deprecated)| 检查传入对象是否为普通文件，返回布尔类型。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [isSock(String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-issockstring-deprecated)| 检查传入对象是否为套接字文件，返回布尔类型。| `Linux` `macOS` `HarmonyOS`  
>> [isType(String, UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-istypestring-uint32-deprecated)| 检查文件是否为指定模式的文件。| `Linux` `macOS` `HarmonyOS`  
>> [isatty(Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-isattyint32-deprecated)| 用于测试文件描述符是否引用终端，成功时返回 `true`，否则返回 `false`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [kill(Int32, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-killint32-int32-deprecated)| 系统调用可用于向任何进程组或进程发送任何信号。| `Linux` `macOS` `HarmonyOS`  
>> [killpg(Int32, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-killpgint32-int32-deprecated)| 将信号 `sig` 发送到进程组 `pgrp`，如果 `pgrp` 为 `0`，则 killpg() 将信号发送到调用进程的进程组。| `Linux` `macOS` `HarmonyOS`  
>> [lchown(String, UInt32, UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-lchownstring-uint32-uint32-deprecated)| 修改文件链接本身所有者和所有者所属组。| `Linux` `macOS`  
>> [link(String, String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-linkstring-string-deprecated)| 为存在的文件创建链接，一个文件可以有多个指向其 `i-node` 的目录条目。| `Linux` `macOS` `HarmonyOS`  
>> [linkat(Int32, String, Int32, String, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-linkatint32-string-int32-string-int32-deprecated)| 创建相对于目录文件描述符的文件链接。| `Linux` `macOS` `HarmonyOS`  
>> [lseek(Int32, Int64, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-lseekint32-int64-int32-deprecated)| 当文件进行读或写时，读或写位置相应增加。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [nice(Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-niceint32-deprecated)| 更改当前线程的优先级。| `Linux` `macOS` `HarmonyOS`  
>> [open64(String, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-openstring-int32-deprecated)| 打开文件并为其返回新的文件描述符，或在失败时返回 `-1`。| `Linux` `HarmonyOS`  
>> [open64(String, Int32, UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-openstring-int32-uint32-deprecated)| 打开文件并为其返回新的文件描述符，或在失败时返回 `-1`。| `Linux` `HarmonyOS`  
>> [openat(Int32, String, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-openatint32-string-int32-deprecated)| 打开文件并为其返回新的文件描述符，或在失败时返回 `-1`。| `Linux` `macOS` `HarmonyOS`  
>> [openat(Int32, String, Int32, UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-openatint32-string-int32-uint32-deprecated)| 打开文件并为其返回新的文件描述符，或在失败时返回 `-1`。| `Linux` `macOS` `HarmonyOS`  
>> [openat64(Int32, String, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-openatint32-string-int32-deprecated)| 打开文件并为其返回新的文件描述符，或在失败时返回 `-1`。| `Linux` `macOS` `HarmonyOS`  
>> [openat64(Int32, String, Int32, UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-openatint32-string-int32-uint32-deprecated)| 打开文件并为其返回新的文件描述符，或在失败时返回 `-1`。| `Linux` `macOS` `HarmonyOS`  
>> [pread(Int32, CPointer<UInt8>, UIntNative, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-preadint32-cpointeruint8-uintnative-int32-deprecated)| 将 `fd` 指向的文件的 `nbyte` 字节传输到 `buffer` 指向的内存中。| `Linux` `macOS` `HarmonyOS`  
>> [pwrite(Int32, CPointer<UInt8>, UIntNative, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-pwriteint32-cpointeruint8-uintnative-int32-deprecated)| 将 `buffer` 指向的内存中 `nbyte` 字节从指定偏移位置开始写入到 `fd` 指向的文件。| `Linux` `macOS` `HarmonyOS`  
>> [read(Int32, CPointer<UInt8>, UIntNative) (deprecated)](./posix_package_api/posix_package_funcs.html#func-readint32-cpointeruint8-uintnative-deprecated)| 将 `fd` 指向的文件的 `nbyte` 字节传输到 `buffer` 指向的内存中。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [remove(String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-removestring-deprecated)| 删除文件或目录。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [rename(String, String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-renamestring-string-deprecated)| 重命名文件，如果需要将会移动文件所在目录。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [renameat(Int32, String, Int32, String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-renameatint32-string-int32-string-deprecated)| 重命名文件，如果需要将会移动文件所在目录。| `Linux` `macOS` `HarmonyOS`  
>> [setgid(UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-setgiduint32-deprecated)| 设置调用进程的有效组 `ID`，需要适当的权限。| `Linux` `macOS`  
>> [sethostname(String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-sethostnamestring-deprecated)| 设置主机名，仅超级用户可以调用。| `Linux` `macOS`  
>> [setpgid(Int32, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-setpgidint32-int32-deprecated)| 此函数将参数 `pid` 指定的组 `ID` 设置为参数 `pgrp` 指定的组 `ID`。| `Linux` `macOS` `HarmonyOS`  
>> [setpgrp() (deprecated)](./posix_package_api/posix_package_funcs.html#func-setpgrp-deprecated)| 将当前进程所属的组 `ID` 设置为当前进程的进程 `ID`，此函数等同于调用 setpgid(0, 0)。| `Linux` `macOS` `HarmonyOS`  
>> [setuid(UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-setuiduint32-deprecated)| 设置调用进程的有效用户 `ID`，需要适当的权限。| `Linux` `macOS`  
>> [symlink(String, String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-symlinkstring-string-deprecated)| 创建一个名为 `symPath` 链接到 `path` 所指定的文件。| `Linux` `macOS` `HarmonyOS`  
>> [symlinkat(String, Int32, String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-symlinkatstring-int32-string-deprecated)| 创建一个名为 `symPath` 链接到 `path` 与 `fd` 所指定的文件。| `Linux` `macOS` `HarmonyOS`  
>> [ttyname(Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-ttynameint32-deprecated)| 返回终端名称。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [umask(UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-umaskuint32-deprecated)| 设置权限掩码。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [unlink(String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-unlinkstring-deprecated)| 从文件系统中删除文件。| `Linux` `macOS` `HarmonyOS`  
>> [unlinkat(Int32, String, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-unlinkatint32-string-int32-deprecated)| 从文件系统中删除文件。| `Linux` `macOS` `HarmonyOS`  
>> [write(Int32, CPointer<UInt8>, UIntNative) (deprecated)](./posix_package_api/posix_package_funcs.html#func-writeint32-cpointeruint8-uintnative-deprecated)| 将 `buffer` 指向的内存中 `nbyte` 字节写入到 `fd` 指向的文件。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> 常量 常量名| 功能| 支持平台  
>> ---|---|---  
>> [AT_EMPTY_PATH (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-at_empty_path-deprecated)| 表示在文件系统中空路径（即没有指定任何文件或目录）时返回的文件描述符，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `Windows` `HarmonyOS`  
>> [AT_REMOVEDIR (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-at_removedir-deprecated)| 如果指定了 `AT_REMOVEDIR` 标志，则对 `pathname` 执行等效于 `rmdir(2)` 的操作，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [O_CLOEXEC (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_cloexec-deprecated)| 在某些多线程程序中，使用此标志是必不可少的。因为在一个线程同时打开文件描述符，而另一个线程执行 `fork(2)` 加 `execve(2)` 场景下使用单独的 `fcntl(2)` `F_SETFD` 操作设置 `FD_CLOEXEC` 标志并不足以避免竞争条件，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `macOS` `HarmonyOS`  
>> [O_DIRECTORY (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_directory-deprecated)| 如果 `pathname` 指定的文件不是目录，则打开文件失败，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `macOS` `HarmonyOS`  
>> [O_CREAT (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_creat-deprecated)| 如果要打开的文件不存在，则自动创建该文件，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [O_DSYNC (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_dsync-deprecated)| 每次写入都会等待物理 `I/O` 完成，但如果写操作不影响读取刚写入的数据，则不等待文件属性更新，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `macOS` `HarmonyOS`  
>> [O_EXCL (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_excl-deprecated)| 如同时设置 `O_CREAT`，则此指令检查文件是否存在。如果文件不存在，则创建文件。否则，打开文件出错。此外，如果同时设置了 `O_CREAT` 和 `O_EXCL`，并且要打开的文件是符号链接，则打开文件失败，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [O_NOCTTY (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_noctty-deprecated)| 如要打开的文件是终端设备，则该文件不会成为这个进程的控制终端，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `macOS` `HarmonyOS`  
>> [O_NOFOLLOW (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_nofollow-deprecated)| 如 `pathname` 指定的文件是单符号链接，则打开文件失败，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `macOS` `HarmonyOS`  
>> [O_NONBLOCK (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_nonblock-deprecated)| 以非阻塞的方式打开文件，即 `I/O` 操作不会导致调用进程等待，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `macOS` `HarmonyOS`  
>> [O_SYNC (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_sync-deprecated)| 同步打开文件，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `macOS` `HarmonyOS`  
>> [O_RDONLY (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_rdonly-deprecated)| 以只读方式打开文件，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [O_RDWR (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_rdwr-deprecated)| 以读写模式打开文件，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [O_WRONLY (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_wronly-deprecated)| 以只写方式打开文件，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [O_APPEND (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_append-deprecated)| 读取或写入文件时，数据将从文件末尾移动。即写入的数据将附加到文件的末尾，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [O_RSYNC (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_rsync-deprecated)| 此标志仅影响读取操作，必须与 `O_SYNC` 或 `O_DSYNC` 结合使用。如果有必要，它将导致读取调用阻塞，直到正在读取的数据（可能还有元数据）刷新到磁盘，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `HarmonyOS`  
>> [O_TRUNC (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_trunc-deprecated)| 如果文件存在且打开可写，则此标志将文件长度清除为 0，文件中以前存储的数据消失，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [R_OK (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-r_ok-deprecated)| 测试文件读权限，适用函数 `access`，`faccessat`，所属函数参数 `mode`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [W_OK (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-w_ok-deprecated)| 测试文件写权限，适用函数 `access`，`faccessat`，所属函数参数 `mode`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [X_OK (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-x_ok-deprecated)| 测试文件执行权限，适用函数 `access`，`faccessat`，所属函数参数 `mode`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [F_OK (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-f_ok-deprecated)| 测试文件是否存在，适用函数 `access`，`faccessat`，所属函数参数 `mode`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SEEK_SET (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-seek_set-deprecated)| 偏移参数表示新的读写位置，适用函数 `lseek`，所属函数参数 `whence`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SEEK_CUR (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-seek_cur-deprecated)| 向当前读或写位置添加偏移量，适用函数 `lseek`，所属函数参数 `whence`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SEEK_END (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-seek_end-deprecated)| 将读写位置设置为文件末尾，并添加偏移量，适用函数 `lseek`，所属函数参数 `whence`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGABRT (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigabrt-deprecated)| 异常终止，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGBUS (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigbus-deprecated)| 硬件故障，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGFPE (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigfpe-deprecated)| 算术错误，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGKILL (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigkill-deprecated)| 终止，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGCONT (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigcont-deprecated)| 暂停过程的继续，默认操作继续或忽略，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGHUP (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sighup-deprecated)| 连接已断开，默认操作已终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGINT (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigint-deprecated)| 终端中断字符，默认动作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGQUIT (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigquit-deprecated)| 终端退出字符，默认动作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGILL (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigill-deprecated)| 硬件指令无效，默认动作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGTRAP (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigtrap-deprecated)| 硬件故障，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGIOT (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigiot-deprecated)| 硬件故障，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOSstd.posix 功能介绍 posix 包主要适配 POSIX 系统接口。 本包提供多平台统一操控能力，目前支持 Linux 平台，macOS 平台，Windows 平台与 HarmonyOS 平台。
>>
>>> **注意：** 未来版本即将废弃本包全部内容。
>> 
>> API 列表 函数 | 函数名| 功能| 支持平台  
>> ---|---|---  
>> [open(String, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-openstring-int32-deprecated)| 打开文件并为其返回新的文件描述符，或在失败时返回 `-1`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [open(String, Int32, UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-openstring-int32-uint32-deprecated)| 打开文件并为其返回新的文件描述符，或在失败时返回 `-1`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [access(String, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-accessstring-int32-deprecated)| 判断某个文件是否具有某种权限，具有返回 `0`，否则返回 `-1`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [chdir(String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-chdirstring-deprecated)| 通过指定路径的方式，更改调用进程的当前工作目录。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [chmod(String, UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-chmodstring-uint32-deprecated)| 修改文件访问权限。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [chown(String, UInt32, UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-chownstring-uint32-uint32-deprecated)| 修改文件所有者和文件所有者所属组。| `Linux` `macOS` `HarmonyOS`  
>> [close(Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-closeint32-deprecated)| 关闭文件，`close` 将会触发数据写回磁盘，并释放文件占用的资源。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [creat(String, UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-creatstring-uint32-deprecated)| 创建文件并为其返回文件描述符，或在失败时返回 `-1`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [dup(Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-dupint32-deprecated)| 用于复制旧 `fd` 参数指定的文件描述符并返回。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [dup2(Int32, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-dupint32-int32-deprecated)| 用于复制 `oldfd` 参数指定的文件描述符，并将其返回到 `newfd` 参数。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [faccessat(Int32, String, Int32, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-faccessatint32-string-int32-int32-deprecated)| 判断 `fd` 对应的文件是否具有某种权限，具有返回 `0`，否则返回 `-1`。| `Linux` `macOS` `HarmonyOS`  
>> [fchdir(Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-fchdirint32-deprecated)| 通过指定文件路径的描述符，更改调用进程的当前工作目录。| `Linux` `macOS` `HarmonyOS`  
>> [fchmod(Int32, UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-fchmodint32-uint32-deprecated)| 修改文件描述符对应的文件访问权限。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [fchmodat(Int32, String, UInt32, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-fchmodatint32-string-uint32-int32-deprecated)| 修改文件描述符对应的文件访问权限。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [fchown(Int32, UInt32, UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-fchownint32-uint32-uint32-deprecated)| 修改 `fd` 对应的文件所有者和文件所有者所属组。| `Linux` `macOS` `HarmonyOS`  
>> [fchownat(Int32, String, UInt32, UInt32, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-fchownatint32-string-uint32-uint32-int32-deprecated)| 修改文件描述符对应的文件所有者和文件所有者所属组。| `Linux` `macOS` `HarmonyOS`  
>> [getcwd() (deprecated)](./posix_package_api/posix_package_funcs.html#func-getcwd-deprecated)| 获取当前执行进程工作目录的绝对路径。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [getgid() (deprecated)](./posix_package_api/posix_package_funcs.html#func-getgid-deprecated)| 获取用户组 `ID`。| `Linux` `macOS` `HarmonyOS`  
>> [getgroups(Int32, CPointer<UInt32>) (deprecated)](./posix_package_api/posix_package_funcs.html#func-getgroupsint32-cpointeruint32-deprecated)| 获取当前用户所属组的代码。| `Linux` `macOS` `HarmonyOS`  
>> [gethostname() (deprecated)](./posix_package_api/posix_package_funcs.html#func-gethostname-deprecated)| 获取主机名称，此名称通常是 `TCP/IP` 网络上主机的名称。| `Linux` `macOS` `HarmonyOS`  
>> [getlogin() (deprecated)](./posix_package_api/posix_package_funcs.html#func-getlogin-deprecated)| 获取当前登录名。| `Linux` `macOS` `HarmonyOS`  
>> [getos() (deprecated)](./posix_package_api/posix_package_funcs.html#func-getos-deprecated)| 从 `/proc/version` 文件中获取 `Linux` 系统的信息。| `Linux`  
>> [getpgid(Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-getpgidint32-deprecated)| 获取 `pid` 指定的进程的 `PGID`，如果 `pid` 为零，返回调用进程的进程 `ID`。| `Linux` `macOS` `HarmonyOS`  
>> [getpgrp() (deprecated)](./posix_package_api/posix_package_funcs.html#func-getpgrp-deprecated)| 获取调用进程的父进程 `ID`。| `Linux` `macOS` `HarmonyOS`  
>> [getpid() (deprecated)](./posix_package_api/posix_package_funcs.html#func-getpid-deprecated)| 获取调用进程的进程 `ID(PID)`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [getppid() (deprecated)](./posix_package_api/posix_package_funcs.html#func-getppid-deprecated)| 获取调用进程的父进程 `ID`。| `Linux` `macOS` `HarmonyOS`  
>> [getuid() (deprecated)](./posix_package_api/posix_package_funcs.html#func-getuid-deprecated)| 获取调用进程的真实用户 `ID`。| `Linux` `macOS` `HarmonyOS`  
>> [isBlk(String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-isblkstring-deprecated)| 检查传入对象是否为块设备，并返回布尔类型。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [isChr(String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-ischrstring-deprecated)| 检查传入对象是否为字符设备，返回布尔类型。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [isDir(String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-isdirstring-deprecated)| 检查传入对象是否为文件夹，返回布尔类型。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [isFIFO(String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-isfifostring-deprecated)| 检查传入对象是否为 `FIFO` 文件，返回布尔类型。| `Linux` `macOS` `HarmonyOS`  
>> [isLnk(String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-islnkstring-deprecated)| 检查传入对象是否为软链路，返回布尔类型。| `Linux` `macOS` `HarmonyOS`  
>> [isReg(String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-isregstring-deprecated)| 检查传入对象是否为普通文件，返回布尔类型。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [isSock(String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-issockstring-deprecated)| 检查传入对象是否为套接字文件，返回布尔类型。| `Linux` `macOS` `HarmonyOS`  
>> [isType(String, UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-istypestring-uint32-deprecated)| 检查文件是否为指定模式的文件。| `Linux` `macOS` `HarmonyOS`  
>> [isatty(Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-isattyint32-deprecated)| 用于测试文件描述符是否引用终端，成功时返回 `true`，否则返回 `false`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [kill(Int32, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-killint32-int32-deprecated)| 系统调用可用于向任何进程组或进程发送任何信号。| `Linux` `macOS` `HarmonyOS`  
>> [killpg(Int32, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-killpgint32-int32-deprecated)| 将信号 `sig` 发送到进程组 `pgrp`，如果 `pgrp` 为 `0`，则 killpg() 将信号发送到调用进程的进程组。| `Linux` `macOS` `HarmonyOS`  
>> [lchown(String, UInt32, UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-lchownstring-uint32-uint32-deprecated)| 修改文件链接本身所有者和所有者所属组。| `Linux` `macOS`  
>> [link(String, String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-linkstring-string-deprecated)| 为存在的文件创建链接，一个文件可以有多个指向其 `i-node` 的目录条目。| `Linux` `macOS` `HarmonyOS`  
>> [linkat(Int32, String, Int32, String, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-linkatint32-string-int32-string-int32-deprecated)| 创建相对于目录文件描述符的文件链接。| `Linux` `macOS` `HarmonyOS`std.posix 功能介绍 posix 包主要适配 POSIX 系统接口。 本包提供多平台统一操控能力，目前支持 Linux 平台，macOS 平台，Windows 平台与 HarmonyOS 平台。  
>>  
>>> **注意：** 未来版本即将废弃本包全部内容。
>> 
>> API 列表 函数 函数名| 功能| 支持平台  
>> ---|---|---  
>> [open(String, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-openstring-int32-deprecated)| 打开文件并为其返回新的文件描述符，或在失败时返回 `-1`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [open(String, Int32, UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-openstring-int32-uint32-deprecated)| 打开文件并为其返回新的文件描述符，或在失败时返回 `-1`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [access(String, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-accessstring-int32-deprecated)| 判断某个文件是否具有某种权限，具有返回 `0`，否则返回 `-1`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [chdir(String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-chdirstring-deprecated)| 通过指定路径的方式，更改调用进程的当前工作目录。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [chmod(String, UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-chmodstring-uint32-deprecated)| 修改文件访问权限。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [chown(String, UInt32, UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-chownstring-uint32-uint32-deprecated)| 修改文件所有者和文件所有者所属组。| `Linux` `macOS` `HarmonyOS`  
>> [close(Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-closeint32-deprecated)| 关闭文件，`close` 将会触发数据写回磁盘，并释放文件占用的资源。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [creat(String, UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-creatstring-uint32-deprecated)| 创建文件并为其返回文件描述符，或在失败时返回 `-1`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [dup(Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-dupint32-deprecated)| 用于复制旧 `fd` 参数指定的文件描述符并返回。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [dup2(Int32, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-dupint32-int32-deprecated)| 用于复制 `oldfd` 参数指定的文件描述符，并将其返回到 `newfd` 参数。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [faccessat(Int32, String, Int32, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-faccessatint32-string-int32-int32-deprecated)| 判断 `fd` 对应的文件是否具有某种权限，具有返回 `0`，否则返回 `-1`。| `Linux` `macOS` `HarmonyOS`  
>> [fchdir(Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-fchdirint32-deprecated)| 通过指定文件路径的描述符，更改调用进程的当前工作目录。| `Linux` `macOS` `HarmonyOS`  
>> [fchmod(Int32, UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-fchmodint32-uint32-deprecated)| 修改文件描述符对应的文件访问权限。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [fchmodat(Int32, String, UInt32, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-fchmodatint32-string-uint32-int32-deprecated)| 修改文件描述符对应的文件访问权限。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [fchown(Int32, UInt32, UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-fchownint32-uint32-uint32-deprecated)| 修改 `fd` 对应的文件所有者和文件所有者所属组。| `Linux` `macOS` `HarmonyOS`  
>> [fchownat(Int32, String, UInt32, UInt32, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-fchownatint32-string-uint32-uint32-int32-deprecated)| 修改文件描述符对应的文件所有者和文件所有者所属组。| `Linux` `macOS` `HarmonyOS`  
>> [getcwd() (deprecated)](./posix_package_api/posix_package_funcs.html#func-getcwd-deprecated)| 获取当前执行进程工作目录的绝对路径。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [getgid() (deprecated)](./posix_package_api/posix_package_funcs.html#func-getgid-deprecated)| 获取用户组 `ID`。| `Linux` `macOS` `HarmonyOS`  
>> [getgroups(Int32, CPointer<UInt32>) (deprecated)](./posix_package_api/posix_package_funcs.html#func-getgroupsint32-cpointeruint32-deprecated)| 获取当前用户所属组的代码。| `Linux` `macOS` `HarmonyOS`  
>> [gethostname() (deprecated)](./posix_package_api/posix_package_funcs.html#func-gethostname-deprecated)| 获取主机名称，此名称通常是 `TCP/IP` 网络上主机的名称。| `Linux| [lseek(Int32, Int64, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-lseekint32-int64-int32-deprecated)| 当文件进行读或写时，读或写位置相应增加。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [nice(Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-niceint32-deprecated)| 更改当前线程的优先级。| `Linux` `macOS` `HarmonyOS`  
>> [open64(String, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-openstring-int32-deprecated)| 打开文件并为其返回新的文件描述符，或在失败时返回 `-1`。| `Linux` `HarmonyOS`  
>> [open64(String, Int32, UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-openstring-int32-uint32-deprecated)| 打开文件并为其返回新的文件描述符，或在失败时返回 `-1`。| `Linux` `HarmonyOS`  
>> [openat(Int32, String, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-openatint32-string-int32-deprecated)| 打开文件并为其返回新的文件描述符，或在失败时返回 `-1`。| `Linux` `macOS` `HarmonyOS`  
>> [openat(Int32, String, Int32, UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-openatint32-string-int32-uint32-deprecated)| 打开文件并为其返回新的文件描述符，或在失败时返回 `-1`。| `Linux` `macOS` `HarmonyOS`  
>> [openat64(Int32, String, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-openatint32-string-int32-deprecated)| 打开文件并为其返回新的文件描述符，或在失败时返回 `-1`。| `Linux` `macOS` `HarmonyOS`  
>> [openat64(Int32, String, Int32, UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-openatint32-string-int32-uint32-deprecated)| 打开文件并为其返回新的文件描述符，或在失败时返回 `-1`。| `Linux` `macOS` `HarmonyOS`  
>> [pread(Int32, CPointer<UInt8>, UIntNative, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-preadint32-cpointeruint8-uintnative-int32-deprecated)| 将 `fd` 指向的文件的 `nbyte` 字节传输到 `buffer` 指向的内存中。| `Linux` `macOS` `HarmonyOS`  
>> [pwrite(Int32, CPointer<UInt8>, UIntNative, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-pwriteint32-cpointeruint8-uintnative-int32-deprecated)| 将 `buffer` 指向的内存中 `nbyte` 字节从指定偏移位置开始写入到 `fd` 指向的文件。| `Linux` `macOS` `HarmonyOS`  
>> [read(Int32, CPointer<UInt8>, UIntNative) (deprecated)](./posix_package_api/posix_package_funcs.html#func-readint32-cpointeruint8-uintnative-deprecated)| 将 `fd` 指向的文件的 `nbyte` 字节传输到 `buffer` 指向的内存中。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [remove(String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-removestring-deprecated)| 删除文件或目录。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [rename(String, String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-renamestring-string-deprecated)| 重命名文件，如果需要将会移动文件所在目录。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [renameat(Int32, String, Int32, String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-renameatint32-string-int32-string-deprecated)| 重命名文件，如果需要将会移动文件所在目录。| `Linux` `macOS` `HarmonyOS`  
>> [setgid(UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-setgiduint32-deprecated)| 设置调用进程的有效组 `ID`，需要适当的权限。| `Linux` `macOS`  
>> [sethostname(String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-sethostnamestring-deprecated)| 设置主机名，仅超级用户可以调用。| `Linux` `macOS`  
>> [setpgid(Int32, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-setpgidint32-int32-deprecated)| 此函数将参数 `pid` 指定的组 `ID` 设置为参数 `pgrp` 指定的组 `ID`。| `Linux` `macOS` `HarmonyOS`  
>> [setpgrp() (deprecated)](./posix_package_api/posix_package_funcs.html#func-setpgrp-deprecated)| 将当前进程所属的组 `ID` 设置为当前进程的进程 `ID`，此函数等同于调用 setpgid(0, 0)。| `Linux` `macOS` `HarmonyOS`  
>> [setuid(UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-setuiduint32-deprecated)| 设置调用进程的有效用户 `ID`，需要适当的权限。| `Linux` `macOS`  
>> [symlink(String, String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-symlinkstring-string-deprecated)| 创建一个名为 `symPath` 链接到 `path` 所指定的文件。| `Linux` `macOS` `HarmonyOS`  
>> [symlinkat(String, Int32, String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-symlinkatstring-int32-string-deprecated)| 创建一个名为 `symPath` 链接到 `path` 与 `fd` 所指定的文件。| `Linux` `macOS` `HarmonyOS`  
>> [ttyname(Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-ttynameint32-deprecated)| 返回终端名称。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [umask(UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-umaskuint32-deprecated)| 设置权限掩码。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [unlink(String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-unlinkstring-deprecated)| 从文件系统中删除文件。| `Linux` `macOS` `HarmonyOS`  
>> [unlinkat(Int32, String, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-unlinkatint32-string-int32-deprecated)| 从文件系统中删除文件。| `Linux` `macOS` `HarmonyOS`  
>> [write(Int32, CPointer<UInt8>, UIntNative) (deprecated)](./posix_package_api/posix_package_funcs.html#func-writeint32-cpointeruint8-uintnative-deprecated)| 将 `buffer` 指向的内存中 `nbyte` 字节写入到 `fd` 指向的文件。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> 常量 常量名| 功能| 支持平台  
>> ---|---|---  
>> [AT_EMPTY_PATH (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-at_empty_path-deprecated)| 表示在文件系统中空路径（即没有指定任何文件或目录）时返回的文件描述符，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `Windows` `HarmonyOS`  
>> [AT_REMOVEDIR (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-at_removedir-deprecated)| 如果指定了 `AT_REMOVEDIR` 标志，则对 `pathname` 执行等效于 `rmdir(2)` 的操作，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [O_CLOEXEC (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_cloexec-deprecated)| 在某些多线程程序中，使用此标志是必不可少的。因为在一个线程同时打开文件描述符，而另一个线程执行 `fork(2)` 加 `execve(2)` 场景下使用单独的 `fcntl(2)` `F_SETFD` 操作设置 `FD_CLOEXEC` 标志并不足以避免竞争条件，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `macOS` `HarmonyOS`  
>> [O_DIRECTORY (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_directory-deprecated)| 如果 `pathname` 指定的文件不是目录，则打开文件失败，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `macOS` `HarmonyOS`  
>> [O_CREAT (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_creat-deprecated)| 如果要打开的文件不存在，则自动创建该文件，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [O_DSYNC (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_dsync-deprecated)| 每次写入都会等待物理 `I/O` 完成，但如果写操作不影响读取刚写入的数据，则不等待文件属性更新，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `macOS` `HarmonyOS`  
>> [O_EXCL (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_excl-deprecated)| 如同时设置 `O_CREAT`，则此指令检查文件是否存在。如果文件不存在，则创建文件。否则，打开文件出错。此外，如果同时设置了 `O_CREAT` 和 `O_EXCL`，并且要打开的文件是符号链接，则打开文件失败，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [O_NOCTTY (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_noctty-deprecated)| 如要打开的文件是终端设备，则该文件不会成为这个进程的控制终端，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `macOS` `HarmonyOS`  
>> [O_NOFOLLOW (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_nofollow-deprecated)| 如 `pathname` 指定的文件是单符号链接，则打开文件失败，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `macOS` `HarmonyOS`  
>> [O_NONBLOCK (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_nonblock-deprecated)| 以非阻塞的方式打开文件，即 `I/O` 操作不会导致调用进程等待，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `macOS` `HarmonyOS`  
>> [O_SYNC (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_sync-deprecated)| 同步打开文件，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `macOS` `HarmonyOS`  
>> [O_RDONLY (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_rdonly-deprecated)| 以只读方式打开文件，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [O_RDWR (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_rdwr-deprecated)| 以读写模式打开文件，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [O_WRONLY (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_wronly-deprecated)| 以只写方式打开文件，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [O_APPEND (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_append-deprecated)| 读取或写入文件时，数据将从文件末尾移动。即写入的数据将附加到文件的末尾，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [O_RSYNC (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_rsync-deprecated)| 此标志仅影响读取操作，必须与 `O_SYNC` 或 `O_DSYNC` 结合使用。如果有必要，它将导致读取调用阻塞，直到正在读取的数据（可能还有元数据）刷新到磁盘，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `HarmonyOS`  
>> [O_TRUNC (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_trunc-deprecated)| 如果文件存在且打开可写，则此标志将文件长度清除为 0，文件中以前存储的数据消失，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [R_OK (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-r_ok-deprecated)| 测试文件读权限，适用函数 `access`，`faccessat`，所属函数参数 `mode`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [W_OK (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-w_ok-deprecated)| 测试文件写权限，适用函数 `access`，`faccessat`，所属函数参数 `mode`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [X_OK (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-x_ok-deprecated)| 测试文件执行权限，适用函数 `access`，`faccessat`，所属函数参数 `mode`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [F_OK (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-f_ok-deprecated)| 测试文件是否存在，适用函数 `access`，`faccessat`，所属函数参数 `mode`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SEEK_SET (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-seek_set-deprecated)| 偏移参数表示新的读写位置，适用函数 `lseek`，所属函数参数 `whence`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SEEK_CUR (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-seek_cur-deprecated)| 向当前读或写位置添加偏移量，适用函数 `lseek`，所属函数参数 `whence`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SEEK_END (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-seek_end-deprecated)| 将读写位置设置为文件末尾，并添加偏移量，适用函数 `lseek`，所属函数参数 `whence`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGABRT (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigabrt-deprecated)| 异常终止，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGBUS (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigbus-deprecated)| 硬件故障，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGFPE (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigfpe-deprecated)| 算术错误，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGKILL (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigkill-deprecated)| 终止，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGCONT (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigcont-deprecated)| 暂停过程的继续，默认操作继续或忽略，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGHUP (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sighup-deprecated)| 连接已断开，默认操作已终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGINT (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigint-deprecated)| 终端中断字符，默认动作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGQUIT (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigquit-deprecated)| 终端退出字符，默认动作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGILL (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigill-deprecated)| 硬件指令无效，默认动作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux`` `macOS` `HarmonyOS`  
>> [getlogin() (deprecated)](./posix_package_api/posix_package_funcs.html#func-getlogin-deprecated)| 获取当前登录名。| `Linux` `macOS` `HarmonyOS`  
>> [getos() (deprecated)](./posix_package_api/posix_package_funcs.html#func-getos-deprecated)| 从 `/proc/version` 文件中获取 `Linux` 系统的信息。| `Linux`  
>> [getpgid(Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-getpgidint32-deprecated)| 获取 `pid` 指定的进程的 `PGID`，如果 `pid` 为零，返回调用进程的进程 `ID`。| `Linux` `macOS` `HarmonyOS`  
>> [getpgrp() (deprecated)](./posix_package_api/posix_package_funcs.html#func-getpgrp-deprecated)| 获取调用进程的父进程 `ID`。| `Linux` `macOS` `HarmonyOS`  
>> [getpid() (deprecated)](./posix_package_api/posix_package_funcs.html#func-getpid-deprecated)| 获取调用进程的进程 `ID(PID)`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [getppid() (deprecated)](./posix_package_api/posix_package_funcs.html#func-getppid-deprecated)| 获取调用进程的父进程 `ID`。| `Linux` `macOS` `HarmonyOS`  
>> [getuid() (deprecated)](./posix_package_api/posix_package_funcs.html#func-getuid-deprecated)| 获取调用进程的真实用户 `ID`。| `Linux` `macOS` `HarmonyOS`  
>> [isBlk(String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-isblkstring-deprecated)| 检查传入对象是否为块设备，并返回布尔类型。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [isChr(String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-ischrstring-deprecated)| 检查传入对象是否为字符设备，返回布尔类型。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [isDir(String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-isdirstring-deprecated)| 检查传入对象是否为文件夹，返回布尔类型。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [isFIFO(String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-isfifostring-deprecated)| 检查传入对象是否为 `FIFO` 文件，返回布尔类型。| `Linux` `macOS` `HarmonyOS`  
>> [isLnk(String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-islnkstring-deprecated)| 检查传入对象是否为软链路，返回布尔类型。| `Linux` `macOS` `HarmonyOS`  
>> [isReg(String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-isregstring-deprecated)| 检查传入对象是否为普通文件，返回布尔类型。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [isSock(String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-issockstring-deprecated)| 检查传入对象是否为套接字文件，返回布尔类型。| `Linux` `macOS` `HarmonyOS`  
>> [isType(String, UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-istypestring-uint32-deprecated)| 检查文件是否为指定模式的文件。| `Linux` `macOS` `HarmonyOS`  
>> [isatty(Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-isattyint32-deprecated)| 用于测试文件描述符是否引用终端，成功时返回 `true`，否则返回 `false`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [kill(Int32, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-killint32-int32-deprecated)| 系统调用可用于向任何进程组或进程发送任何信号。| `Linux` `macOS` `HarmonyOS`  
>> [killpg(Int32, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-killpgint32-int32-deprecated)| 将信号 `sig` 发送到进程组 `pgrp`，如果 `pgrp` 为 `0`，则 killpg() 将信号发送到调用进程的进程组。| `Linux` `macOS` `HarmonyOS`  
>> [lchown(String, UInt32, UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-lchownstring-uint32-uint32-deprecated)| 修改文件链接本身所有者和所有者所属组。| `Linux` `macOS`  
>> [link(String, String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-linkstring-string-deprecated)| 为存在的文件创建链接，一个文件可以有多个指向其 `i-node` 的目录条目。| `Linux` `macOS` `HarmonyOS`  
>> [linkat(Int32, String, Int32, String, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-linkatint32-string-int32-string-int32-deprecated)| 创建相对于目录文件描述符的文件链接。| `Linux` `macOS` `HarmonyOS`  
>> [lseek(Int32, Int64, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-lseekint32-int64-int32-deprecated)| 当文件进行读或写时，读或写位置相应增加。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [nice(Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-niceint32-deprecated)| 更改当前线程的优先级。| `Linux` `macOS` `HarmonyOS`  
>> [open64(String, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-openstring-int32-deprecated)| 打开文件并为其返回新的文件描述符，或在失败时返回 `-1`。| `Linux` `HarmonyOS`  
>> [open64(String, Int32, UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-openstring-int32-uint32-deprecated)| 打开文件并为其返回新的文件描述符，或在失败时返回 `-1`。| `Linux` `HarmonyOS`  
>> [openat(Int32, String, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-openatint32-string-int32-deprecated)| 打开文件并为其返回新的文件描述符，或在失败时返回 `-1`。| `Linux` `macOS` `HarmonyOS`  
>> [openat(Int32, String, Int32, UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-openatint32-string-int32-uint32-deprecated)| 打开文件并为其返回新的文件描述符，或在失败时返回 `-1`。| `Linux` `macOS` `HarmonyOS`  
>> [openat64(Int32, String, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-openatint32-string-int32-deprecated)| 打开文件并为其返回新的文件描述符，或在失败时返回 `-1`。| `Linux` `macOS` `HarmonyOS`  
>> [openat64(Int32, String, Int32, UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-openatint32-string-int32-uint32-deprecated)| 打开文件并为其返回新的文件描述符，或在失败时返回 `-1`。| `Linux` `macOS` `HarmonyOS`  
>> [pread(Int32, CPointer<UInt8>, UIntNative, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-preadint32-cpointeruint8-uintnative-int32-deprecated)| 将 `fd` 指向的文件的 `nbyte` 字节传输到 `buffer` 指向的内存中。| `Linux` `macOS` `HarmonyOS`  
>> [pwrite(Int32, CPointer<UInt8>, UIntNative, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-pwriteint32-cpointeruint8-uintnative-int32-deprecated)| 将 `buffer` 指向的内存中 `nbyte` 字节从指定偏移位置开始写入到 `fd` 指向的文件。| `Linux` `macOS` `HarmonyOS`  
>> [read(Int32, CPointer<UInt8>, UIntNative) (deprecated)](./posix_package_api/posix_package_funcs.html#func-readint32-cpointeruint8-uintnative-deprecated)| 将 `fd` 指向的文件的 `nbyte` 字节传输到 `buffer` 指向的内存中。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [remove(String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-removestring-deprecated)| 删除文件或目录。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [rename(String, String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-renamestring-string-deprecated)| 重命名文件，如果需要将会移动文件所在目录。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [renameat(Int32, String, Int32, String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-renameatint32-string-int32-string-deprecated)| 重命名文件，如果需要将会移动文件所在目录。| `Linux` `macOS` `HarmonyOS`  
>> [setgid(UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-setgiduint32-deprecated)| 设置调用进程的有效组 `ID`，需要适当的权限。| `Linux` `macOS`  
>> [sethostname(String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-sethostnamestring-deprecated)| 设置主机名，仅超级用户可以调用。| `Linux` `macOS`  
>> [setpgid(Int32, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-setpgidint32-int32-deprecated)| 此函数将参数 `pid` 指定的组 `ID` 设置为参数 `pgrp` 指定的组 `ID`。| `Linux` `macOS` `HarmonyOS`  
>> [setpgrp() (deprecated)](./posix_package_api/posix_package_funcs.html#func-setpgrp-deprecated)| 将当前进程所属的组 `ID` 设置为当前进程的进程 `ID`，此函数等同于调用 setpgid(0, 0)。| `Linux` `macOS` `HarmonyOS`  
>> [setuid(UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-setuiduint32-deprecated)| 设置调用进程的有效用户 `ID`，需要适当的权限。| `Linux` `macOS`  
>> [symlink(String, String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-symlinkstring-string-deprecated)| 创建一个名为 `symPath` 链接到 `path` 所指定的文件。| `Linux` `macOS` `HarmonyOS`  
>> [symlinkat(String, Int32, String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-symlinkatstring-int32-string-deprecated)| 创建一个名为 `symPath` 链接到 `path` 与 `fd` 所指定的文件。| `Linux` `macOS` `HarmonyOS`  
>> [ttyname(Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-ttynameint32-deprecated)| 返回终端名称。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [umask(UInt32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-umaskuint32-deprecated)| 设置权限掩码。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [unlink(String) (deprecated)](./posix_package_api/posix_package_funcs.html#func-unlinkstring-deprecated)| 从文件系统中删除文件。| `Linux` `macOS` `HarmonyOS`  
>> [unlinkat(Int32, String, Int32) (deprecated)](./posix_package_api/posix_package_funcs.html#func-unlinkatint32-string-int32-deprecated)| 从文件系统中删除文件。| `Linux` `macOS` `HarmonyOS`  
>> [write(Int32, CPointer<UInt8>, UIntNative) (deprecated)](./posix_package_api/posix_package_funcs.html#func-writeint32-cpointeruint8-uintnative-deprecated)| 将 `buffer` 指向的内存中 `nbyte` 字节写入到 `fd` 指向的文件。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> 常量 常量名| 功能| 支持平台  
>> ---|---|---  
>> [AT_EMPTY_PATH (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-at_empty_path-deprecated)| 表示在文件系统中空路径（即没有指定任何文件或目录）时返回的文件描述符，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `Windows` `HarmonyOS`  
>> [AT_REMOVEDIR (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-at_removedir-deprecated)| 如果指定了 `AT_REMOVEDIR` 标志，则对 `pathname` 执行等效于 `rmdir(2)` 的操作，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [O_CLOEXEC (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_cloexec-deprecated)| 在某些多线程程序中，使用此标志是必不可少的。因为在一个线程同时打开文件描述符，而另一个线程执行 `fork(2)` 加 `execve(2)` 场景下使用单独的 `fcntl(2)` `F_SETFD` 操作设置 `FD_CLOEXEC` 标志并不足以避免竞争条件，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `macOS` `HarmonyOS`  
>> [O_DIRECTORY (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_directory-deprecated)| 如果 `pathname` 指定的文件不是目录，则打开文件失败，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `macOS` `HarmonyOS`  
>> [O_CREAT (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_creat-deprecated)| 如果要打开的文件不存在，则自动创建该文件，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [O_DSYNC (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_dsync-deprecated)| 每次写入都会等待物理 `I/O` 完成，但如果写操作不影响读取刚写入的数据，则不等待文件属性更新，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `macOS` `HarmonyOS`  
>> [O_EXCL (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_excl-deprecated)| 如同时设置 `O_CREAT`，则此指令检查文件是否存在。如果文件不存在，则创建文件。否则，打开文件出错。此外，如果同时设置了 `O_CREAT` 和 `O_EXCL`，并且要打开的文件是符号链接，则打开文件失败，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [O_NOCTTY (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_noctty-deprecated)| 如要打开的文件是终端设备，则该文件不会成为这个进程的控制终端，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `macOS` `HarmonyOS`  
>> [O_NOFOLLOW (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_nofollow-deprecated)| 如 `pathname` 指定的文件是单符号链接，则打开文件失败，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `macOS` `HarmonyOS`  
>> [O_NONBLOCK (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_nonblock-deprecated)| 以非阻塞的方式打开文件，即 `I/O` 操作不会导致调用进程等待，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `macOS` `HarmonyOS`  
>> [O_SYNC (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_sync-deprecated)| 同步打开文件，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `macOS` `HarmonyOS`  
>> [O_RDONLY (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_rdonly-deprecated)| 以只读方式打开文件，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [O_RDWR (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_rdwr-deprecated)| 以读写模式打开文件，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [O_WRONLY (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_wronly-deprecated)| 以只写方式打开文件，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [O_APPEND (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_append-deprecated)| 读取或写入文件时，数据将从文件末尾移动。即写入的数据将附加到文件的末尾，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [O_RSYNC (deprecated) `Windows` `macOS` `HarmonyOS`  
>> [SIGTRAP (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigtrap-deprecated)| 硬件故障，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGIOT (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigiot-deprecated)| 硬件故障，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGIO (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigio-deprecated)| 异步 `IO`，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGPIPE (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigpipe-deprecated)| 写入未读进程的管道，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGALRM (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigalrm-deprecated)| 计时器到期，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGPWR (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigpwr-deprecated)| 电源故障或重启，系统调用无效，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `HarmonyOS`  
>> [SIGSEGV (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigsegv-deprecated)| 内存引用无效，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGSTOP (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigstop-deprecated)| 停止，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGTERM (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigterm-deprecated)| 终止，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGSTKFLT (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigstkflt-deprecated)| 协处理器堆栈故障，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `HarmonyOS`  
>> [SIGCHLD (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigchld-deprecated)| 子进程状态更改，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGTSTP (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigtstp-deprecated)| 终端停止符号，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGTTIN (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigttin-deprecated)| 后台读取控件 `tty`，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGTTOU (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigttou-deprecated)| 后台写控制 `tty`，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGURG (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigurg-deprecated)| 紧急情况（套接字），忽略默认操作，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGUSR1 (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigusr1-deprecated)| 用户定义的信号，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGUSR2 (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigusr2-deprecated)| 用户定义的信号，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGVTALRM (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigvtalrm-deprecated)| 虚拟时间警报，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGPROF (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigprof-deprecated)| 摘要超时，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGWINCH (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigwinch-deprecated)| 终端窗口大小更改，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGXCPU (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigxcpu-deprecated)| `CPU` 占用率超过上限，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGXFSZ (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigxfsz-deprecated)| 文件长度超过上限，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IRUSR (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_irusr-deprecated)| 表示文件所有者具有读权限，适用函数 `open`，`open64`，`openat`，`openat64`，`chmod(mode)`，`fchmod(mode)`，`fchmodat(mode)`，`creat`， 所属函数参数 `flag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IWUSR (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_iwusr-deprecated)| 表示文件所有者具有写权限，适用函数 `open`，`open64`，`openat`，`openat64`，`chmod(mode)`，`fchmod(mode)`，`fchmodat(mode)`，`creat`， 所属函数参数 `flag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IRGRP (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_iwgrp-deprecated)| 表示文件用户组具有读权限，适用函数 `open`，`open64`，`openat`，`openat64`，`chmod(mode)`，`fchmod(mode)`，`fchmodat(mode)`，`creat`， 所属函数参数 `flag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IWGRP (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_iwgrp-deprecated)| 表示文件用户组具有写权限，适用函数 `open`，`open64`，`openat`，`openat64`，`chmod(mode)`，`fchmod(mode)`，`fchmodat(mode)`，`creat`， 所属函数参数 `flag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IFREG (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_ifreg-deprecated)| 文件类型为一般文件，适用函数 `isType`， 所属函数参数 `mode`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IFBLK (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_ifblk-deprecated)| 文件类型为块设备，适用函数 `isType`， 所属函数参数 `mode`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IFDIR (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_ifdir-deprecated)| 文件类型为目录，适用函数 `isType`， 所属函数参数 `mode`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IFCHR (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_ifchr-deprecated)| 文件类型为字符设备，适用函数 `isType`， 所属函数参数 `mode`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IFIFO (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_ififo-deprecated)| 文件类型为 `FIFO` 文件，适用函数 `isType`， 所属函数参数 `mode`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IFLNK (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_iflnk-deprecated)| 文件类型为软连接，适用函数 `isType`， 所属函数参数 `mode`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IFSOCK (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_ifsock-deprecated)| 文件类型为套接字文件，适用函数 `isType`， 所属函数参数 `mode`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IROTH (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_iroth-deprecated)| 表示其他用户对文件具有读权限，适用函数 `open`，`open64`，`openat`，`openat64`，`chmod(mode)`，`fchmod(mode)`，`fchmodat(mode)`，`creat`， 所属函数参数 `flag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IRWXG (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_irwxg-deprecated)| 表示文件用户组具有读、写、执行权限，适用函数 `open`，`open64`，`openat`，`openat64`，`chmod(mode)`，`fchmod(mode)`，`fchmodat(mode)`，`creat`， 所属函数参数 `flag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IRWXU (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_irwxu-deprecated)| 表示文件所有者具有读、写和执行权限，适用函数 `open`，`open64`，`openat`，`openat64`，`chmod(mode)`，`fchmod(mode)`，`fchmodat(mode)`，`creat`， 所属函数参数 `flag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IWOTH (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_iwoth-deprecated)| 表示其他用户对文件具有写权限，适用函数 `open`，`open64`，`openat`，`openat64`，`chmod(mode)`，`fchmod(mode)`，`fchmodat(mode)`，`creat`， 所属函数参数 `flag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IXOTH (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_ixoth-deprecated)| 表示其他用户对文件具有执行权限，适用函数 `open`，`open64`，`openat`，`openat64`，`chmod(mode)`，`fchmod(mode)`，`fchmodat(mode)`，`creat`， 所属函数参数 `flag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IRWXO (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_irwxo-deprecated)| 表示其他用户对文件具有读、写和执行权限，适用函数 `open`，`open64`，`openat`，`openat64`，`chmod(mode)`，`fchmod(mode)`，`fchmodat(mode)`，`creat`， 所属函数参数 `flag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IXGRP (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_ixgrp-deprecated)| 表示文件用户组具有执行权限，适用函数 `open`，`open64`，`openat`，`openat64`，`chmod(mode)`，`fchmod(mode)`，`fchmodat(mode)`，`creat`， 所属函数参数 `flag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IXUSR (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_ixusr-deprecated)| 表示文件所有者具有执行权限，适用函数 `open`，`open64`，`openat`，`openat64`，`chmod(mode)`，`fchmod(mode)`，`fchmodat(mode)`，`creat`， 所属函数参数 `flag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> 常量&变量 const AT_EMPTY_PATH (deprecated)
>>     
>>     public const AT_EMPTY_PATH: Int32 = 0x1000
>>     
>> 
>> 功能：表示在文件系统中空路径（即没有指定任何文件或目录）时返回的文件描述符，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const AT_REMOVEDIR (deprecated)
>>     
>>     public const AT_REMOVEDIR: Int32 = 0x200
>>     
>> 
>> 功能：如果指定了 [AT_REMOVEDIR](posix_package_constants_vars.html#const-at_removedir-deprecated) 标志，则对 `pathname` 执行等效于 `rmdir(2)` 的操作，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const F_OK (deprecated)
>>     
>>     public const F_OK: Int32 = 0x0
>>     
>> 
>> 功能：测试文件是否存在，适用函数 [access](posix_package_funcs.html#func-accessstring-int32-deprecated)，[faccessat](posix_package_funcs.html#func-faccessatint32-string-int32-int32-deprecated)，所属函数参数 `mode`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const O_APPEND (deprecated)
>>     
>>     public const O_APPEND: Int32
>>     
>> 
>> 功能：读取或写入文件时，数据将从文件末尾移动。即写入的数据将附加到文件的末尾，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。不同系统下的值分别为：
>>                            * macOS: 0x00000008
>>                            * Windows: 0x8
>>                            * 其他情况：0x400
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const O_CLOEXEC (deprecated)
>>     
>>     public const O_CLOEXEC: Int32
>>     
>> 
>> 功能：在某些多线程程序中，使用此标志是必不可少的。因为在一个线程同时打开文件描述符，而另一个线程执行 `fork(2)` 加 `execve(2)` 场景下使用单独的 `fcntl(2)` `F_SETFD` 操作设置 `FD_CLOEXEC` 标志并不足以避免竞争条件，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。不同系统下的值分别为：
>>                            * macOS: 0x01000000
>>                            * 其他情况：0x80000
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const O_CREAT (deprecated)
>>     
>>     public const O_CREAT: Int32
>>     
>> 
>> 功能：如果要打开的文件不存在，则自动创建该文件，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。不同系统下的值分别为：
>>                            * macOS: 0x00000200
>>                            * Windows: 0x100
>>                            * 其他情况：0x40
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const O_DIRECTORY (deprecated)
>>     
>>     public const O_DIRECTORY: Int32
>>     
>> 
>> 功能：如果 `pathname` 指定的文件不是目录，则打开文件失败，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。不同系统下的值分别为：
>>                            * macOS: 0x00100000
>>                            * 其他情况：0x80000
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const O_DSYNC (deprecated)
>>     
>>     public const O_DSYNC: Int32
>>     
>> 
>> 功能：每次写入都会等待物理 `I/O` 完成，但如果写操作不影响读取刚写入的数据，则不等待文件属性更新，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。不同系统下的值分别为：
>>                            * macOS: 0x400000
>>                            * 其他情况：0x1000
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const O_EXCL (deprecated)
>>     
>>     public const O_EXCL: Int32
>>     
>> 
>> 功能：如同时设置 [O_CREAT](posix_package_constants_vars.html#const-o_creat-deprecated)，则此指令检查文件是否存在。如果文件不存在，则创建文件。否则，打开文件出错。此外，如果同时设置了 [O_CREAT](posix_package_constants_vars.html#const-o_creat-deprecated) 和 [O_EXCL](posix_package_constants_vars.html#const-o_excl-deprecated)，并且要打开的文件是符号链接，则打开文件失败，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。不同系统下的值分别为：
>>                            * macOS: 0x00000800
>>                            * Windows: 0x400
>>                            * 其他情况：0x80
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) ](./posix_package_api/posix_package_constants_vars.html#const-o_rsync-deprecated)此标志仅影响读取操作，必须与 `O_SYNC` 或 `O_DSYNC` 结合使用。如果有必要，它将导致读取调用阻塞，直到正在读取的数据（可能还有元数据）刷新到磁盘，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `HarmonyOS`  
>> [O_TRUNC (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-o_trunc-deprecated)| 如果文件存在且打开可写，则此标志将文件长度清除为 0，文件中以前存储的数据消失，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [R_OK (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-r_ok-deprecated)| 测试文件读权限，适用函数 `access`，`faccessat`，所属函数参数 `mode`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [W_OK (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-w_ok-deprecated)| 测试文件写权限，适用函数 `access`，`faccessat`，所属函数参数 `mode`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [X_OK (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-x_ok-deprecated)| 测试文件执行权限，适用函数 `access`，`faccessat`，所属函数参数 `mode`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [F_OK (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-f_ok-deprecated)| 测试文件是否存在，适用函数 `access`，`faccessat`，所属函数参数 `mode`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SEEK_SET (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-seek_set-deprecated)| 偏移参数表示新的读写位置，适用函数 `lseek`，所属函数参数 `whence`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SEEK_CUR (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-seek_cur-deprecated)| 向当前读或写位置添加偏移量，适用函数 `lseek`，所属函数参数 `whence`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SEEK_END (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-seek_end-deprecated)| 将读写位置设置为文件末尾，并添加偏移量，适用函数 `lseek`，所属函数参数 `whence`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGABRT (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigabrt-deprecated)| 异常终止，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGBUS (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigbus-deprecated)| 硬件故障，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGFPE (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigfpe-deprecated)| 算术错误，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGKILL (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigkill-deprecated)| 终止，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGCONT (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigcont-deprecated)| 暂停过程的继续，默认操作继续或忽略，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGHUP (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sighup-deprecated)| 连接已断开，默认操作已终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGINT (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigint-deprecated)| 终端中断字符，默认动作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGQUIT (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigquit-deprecated)| 终端退出字符，默认动作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGILL (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigill-deprecated)| 硬件指令无效，默认动作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGTRAP (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigtrap-deprecated)| 硬件故障，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGIOT (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigiot-deprecated)| 硬件故障，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGIO (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigio-deprecated)| 异步 `IO`，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGPIPE (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigpipe-deprecated)| 写入未读进程的管道，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGALRM (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigalrm-deprecated)| 计时器到期，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGPWR (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigpwr-deprecated)| 电源故障或重启，系统调用无效，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `HarmonyOS`  
>> [SIGSEGV (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigsegv-deprecated)| 内存引用无效，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGSTOP (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigstop-deprecated)| 停止，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGTERM (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigterm-deprecated)| 终止，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGSTKFLT (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigstkflt-deprecated)| 协处理器堆栈故障，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `HarmonyOS`  
>> [SIGCHLD (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigchld-deprecated)| 子进程状态更改，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGTSTP (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigtstp-deprecated)| 终端停止符号，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGTTIN (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigttin-deprecated)| 后台读取控件 `tty`，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGTTOU (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigttou-deprecated)| 后台写控制 `tty`，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGURG (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigurg-deprecated)| 紧急情况（套接字），忽略默认操作，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGUSR1 (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigusr1-deprecated)| 用户定义的信号，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGUSR2 (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigusr2-deprecated)| 用户定义的信号，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGVTALRM (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigvtalrm-deprecated)| 虚拟时间警报，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGPROF (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigprof-deprecated)| 摘要超时，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGWINCH (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigwinch-deprecated)| 终端窗口大小更改，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGXCPU (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigxcpu-deprecated)| `CPU` 占用率超过上限，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [SIGXFSZ (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-sigxfsz-deprecated)| 文件长度超过上限，默认操作终止，适用函数 `kill`，`killpg`，所属函数参数 `sig`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IRUSR (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_irusr-deprecated)| 表示文件所有者具有读权限，适用函数 `open`，`open64`，`openat`，`openat64`，`chmod(mode)`，`fchmod(mode)`，`fchmodat(mode)`，`creat`， 所属函数参数 `flag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IWUSR (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_iwusr-deprecated)| 表示文件所有者具有写权限，适用函数 `open`，`open64`，`openat`，`openat64`，`chmod(mode)`，`fchmod(mode)`，`fchmodat(mode)`，`creat`， 所属函数参数 `flag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IRGRP (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_iwgrp-deprecated)| 表示文件用户组具有读权限，适用函数 `open`，`open64`，`openat`，`openat64`，`chmod(mode)`，`fchmod(mode)`，`fchmodat(mode)`，`creat`， 所属函数参数 `flag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IWGRP (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_iwgrp-deprecated)| 表示文件用户组具有写权限，适用函数 `open`，`open64`，`openat`，`openat64`，`chmod(mode)`，`fchmod(mode)`，`fchmodat(mode)`，`creat`， 所属函数参数 `flag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IFREG (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_ifreg-deprecated)| 文件类型为一般文件，适用函数 `isType`， 所属函数参数 `mode`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IFBLK (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_ifblk-deprecated)| 文件类型为块设备，适用函数 `isType`， 所属函数参数 `mode`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IFDIR (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_ifdir-deprecated)| 文件类型为目录，适用函数 `isType`， 所属函数参数 `mode`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IFCHR (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_ifchr-deprecated)| 文件类型为字符设备，适用函数 `isType`， 所属函数参数 `mode`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IFIFO (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_ififo-deprecated)| 文件类型为 `FIFO` 文件，适用函数 `isType`， 所属函数参数 `mode`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IFLNK (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_iflnk-deprecated)| 文件类型为软连接，适用函数 `isType`， 所属函数参数 `mode`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IFSOCK (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_ifsock-deprecated)| 文件类型为套接字文件，适用函数 `isType`， 所属函数参数 `mode`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IROTH (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_iroth-deprecated)| 表示其他用户对文件具有读权限，适用函数 `open`，`open64`，`openat`，`openat64`，`chmod(mode)`，`fchmod(mode)`，`fchmodat(mode)`，`creat`， 所属函数参数 `flag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IRWXG (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_irwxg-deprecated)| 表示文件用户组具有读、写、执行权限，适用函数 `open`，`open64`，`openat`，`openat64`，`chmod(mode)`，`fchmod(mode)`，`fchmodat(mode)`，`creat`， 所属函数参数 `flag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IRWXU (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_irwxu-deprecated)| 表示文件所有者具有读、写和执行权限，适用函数 `open`，`open64`，`openat`，`openat64`，`chmod(mode)`，`fchmod(mode)`，`fchmodat(mode)`，`creat`， 所属函数参数 `flag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IWOTH (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_iwoth-deprecated)| 表示其他用户对文件具有写权限，适用函数 `open`，`open64`，`openat`，`openat64`，`chmod(mode)`，`fchmod(mode)`，`fchmodat(mode)`，`creat`， 所属函数参数 `flag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IXOTH (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_ixoth-deprecated)| 表示其他用户对文件具有执行权限，适用函数 `open`，`open64`，`openat`，`openat64`，`chmod(mode)`，`fchmod(mode)`，`fchmodat(mode)`，`creat`， 所属函数参数 `flag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IRWXO (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_irwxo-deprecated)| 表示其他用户对文件具有读、写和执行权限，适用函数 `open`，`open64`，`openat`，`openat64`，`chmod(mode)`，`fchmod(mode)`，`fchmodat(mode)`，`creat`， 所属函数参数 `flag`。| `Linux` `Windows` `macOS` `HarmonyOS`  
>> [S_IXGRP (deprecated)](./posix_package_api/posix_package_constants_vars.html#const-s_ixgrp-deprecated)| 表示文件用户组具有执行权限，适用函数 `open`，`open64`，`openat`，`openat64`，`chmod(mode)`，`fchmod(mode)`，`fchmodat(mode)`，`creat`， 所属函数参数 `flag`。const O_NOCTTY (deprecated)
>>     
>>     public const O_NOCTTY: Int32
>>     
>> 
>> 功能：如要打开的文件是终端设备，则该文件不会成为这个进程的控制终端，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。不同系统下的值分别为：
>>                            * macOS: 0x00020000
>>                            * 其他情况：0x100
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const O_NOFOLLOW (deprecated)
>>     
>>     public const O_NOFOLLOW: Int32
>>     
>> 
>> 功能：如 `pathname` 指定的文件是单符号连接，则打开文件失败，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。不同系统下的值分别为：
>>                            * macOS: 0x00000100
>>                            * 其他情况：0x20000
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const O_NONBLOCK (deprecated)
>>     
>>     public const O_NONBLOCK: Int32
>>     
>> 
>> 功能：以非阻塞的方式打开文件，即 `I/O` 操作不会导致调用进程等待，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。不同系统下的值分别为：
>>                            * macOS: 0x00000004
>>                            * 其他情况：0x800
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const O_RDONLY (deprecated)
>>     
>>     public const O_RDONLY: Int32 = 0x0
>>     
>> 
>> 功能：以只读方式打开文件，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const O_RDWR (deprecated)
>>     
>>     public const O_RDWR: Int32 = 0x2
>>     
>> 
>> 功能：以读写模式打开文件，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const O_RSYNC (deprecated)
>>     
>>     public const O_RSYNC: Int32 = 0x101000
>>     
>> 
>> 功能：此标志仅影响读取操作，必须与 [O_SYNC](posix_package_constants_vars.html#const-o_sync-deprecated) 或 [O_DSYNC](posix_package_constants_vars.html#const-o_dsync-deprecated) 结合使用。如果有必要，它将导致读取调用阻塞，直到正在读取的数据（可能还有元数据）刷新到磁盘，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const O_SYNC (deprecated)
>>     
>>     public const O_SYNC: Int32
>>     
>> 
>> 功能：同步打开文件，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。不同系统下的值分别为：
>>                            * macOS: 0x0080
>>                            * 其他情况：0x101000
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const O_TRUNC (deprecated)
>>     
>>     public const O_TRUNC: Int32
>>     
>> 
>> 功能：如果文件存在且打开可写，则此标志将文件长度清除为 0，文件中以前存储的数据消失，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。不同系统下的值分别为：
>>                            * macOS: 0x00000400
>>                            * 其他情况：0x200
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const O_WRONLY (deprecated)
>>     
>>     public const O_WRONLY: Int32 = 0x1
>>     
>> 
>> 功能：以只写方式打开文件，适用函数 `open`、`open64`、`openat`、`openat64`，所属函数参数 `oflag`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const R_OK (deprecated)
>>     
>>     public const R_OK: Int32 = 0x4
>>     
>> 
>> 功能：测试文件读权限，适用函数 [access](posix_package_funcs.html#func-accessstring-int32-deprecated)，[faccessat](posix_package_funcs.html#func-faccessatint32-string-int32-int32-deprecated)，所属函数参数 `mode`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const SEEK_CUR (deprecated)
>>     
>>     public const SEEK_CUR: Int32 = 0x1
>>     
>> 
>> 功能：向当前读或写位置添加偏移量，适用函数 [lseek](posix_package_funcs.html#func-lseekint32-int64-int32-deprecated)，所属函数参数 `whence`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const SEEK_END (deprecated)
>>     
>>     public const SEEK_END: Int32 = 0x2
>>     
>> 
>> 功能：将读写位置设置为文件末尾，并添加偏移量，适用函数 [lseek](posix_package_funcs.html#func-lseekint32-int64-int32-deprecated)，所属函数参数 `whence`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const SEEK_SET (deprecated)
>>     
>>     public const SEEK_SET: Int32 = 0x0
>>     
>> 
>> 功能：偏移参数表示新的读写位置，适用函数 [lseek](posix_package_funcs.html#func-lseekint32-int64-int32-deprecated)，所属函数参数 `whence`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const SIGABRT (deprecated)
>>     
>>     public const SIGABRT: Int32 = 0x6
>>     
>> 
>> 功能：异常终止，默认操作终止，适用函数 [kill](posix_package_funcs.html#func-killint32-int32-deprecated)，[killpg](posix_package_funcs.html#func-killpgint32-int32-deprecated)，所属函数参数 `sig`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const SIGALRM (deprecated)
>>     
>>     public const SIGALRM: Int32 = 0xE
>>     
>> 
>> 功能：计时器到期，默认操作终止，适用函数 [kill](posix_package_funcs.html#func-killint32-int32-deprecated)，[killpg](posix_package_funcs.html#func-killpgint32-int32-deprecated)，所属函数参数 `sig`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const SIGBUS (deprecated)
>>     
>>     public const SIGBUS: Int32
>>     
>> 
>> 功能：硬件故障，默认操作终止，适用函数 [kill](posix_package_funcs.html#func-killint32-int32-deprecated)，[killpg](posix_package_funcs.html#func-killpgint32-int32-deprecated)，所属函数参数 `sig`。不同系统下的值分别为：
>>                            * macOS: 0xA
>>                            * 其他情况：0x7
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const SIGCHLD (deprecated)
>>     
>>     public const SIGCHLD: Int32
>>     
>> 
>> 功能：子进程状态更改，默认操作终止，适用函数 [kill](posix_package_funcs.html#func-killint32-int32-deprecated)，[killpg](posix_package_funcs.html#func-killpgint32-int32-deprecated)，所属函数参数 `sig`。不同系统下的值分别为：
>>                            * macOS: 0x14
>>                            * 其他情况：0x11
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const SIGCONT (deprecated)
>>     
>>     public const SIGCONT: Int32
>>     
>> 
>> 功能：暂停过程的继续，默认操作继续或忽略，适用函数 [kill](posix_package_funcs.html#func-killint32-int32-deprecated)，[killpg](posix_package_funcs.html#func-killpgint32-int32-deprecated)，所属函数参数 `sig`。不同系统下的值分别为：
>>                            * macOS: 0x13
>>                            * 其他情况：0x12
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const SIGFPE (deprecated)
>>     
>>     public const SIGFPE: Int32 = 0x8
>>     
>> 
>> 功能：算术错误，默认操作终止，适用函数 [kill](posix_package_funcs.html#func-killint32-int32-deprecated)，[killpg](posix_package_funcs.html#func-killpgint32-int32-deprecated)，所属函数参数 `sig`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const SIGHUP (deprecated)
>>     
>>     public const SIGHUP: Int32 = 0x1
>>     
>> 
>> 功能：连接已断开，默认操作已终止，适用函数 [kill](posix_package_funcs.html#func-killint32-int32-deprecated)，[killpg](posix_package_funcs.html#func-killpgint32-int32-deprecated)，所属函数参数 `sig`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const SIGILL (deprecated)
>>     
>>     public const SIGILL: Int32 = 0x4
>>     
>> 
>> 功能：硬件指令无效，默认动作终止，适用函数 [kill](posix_package_funcs.html#func-killint32-int32-deprecated)，[killpg](posix_package_funcs.html#func-killpgint32-int32-deprecated)，所属函数参数 `sig`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const SIGINT (deprecated)
>>     
>>     public const SIGINT: Int32 =  0x2
>>     
>> 
>> 功能：终端中断字符，默认动作终止，适用函数 [kill](posix_package_funcs.html#func-killint32-int32-deprecated)，[killpg](posix_package_funcs.html#func-killpgint32-int32-deprecated)，所属函数参数 `sig`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const SIGIO (deprecated)
>>     
>>     public const SIGIO: Int32
>>     
>> 
>> 功能：异步 `IO`，默认操作终止，适用函数 [kill](posix_package_funcs.html#func-killint32-int32-deprecated)，[killpg](posix_package_funcs.html#func-killpgint32-int32-deprecated)，所属函数参数 `sig`。不同系统下的值分别为：
>>                            * macOS: 0x17
>>                            * 其他情况：0x1D
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const SIGIOT (deprecated)
>>     
>>     public const SIGIOT: Int32 = 0x6
>>     
>> 
>> 功能：硬件故障，默认操作终止，适用函数 [kill](posix_package_funcs.html#func-killint32-int32-deprecated)，[killpg](posix_package_funcs.html#func-killpgint32-int32-deprecated)，所属函数参数 `sig`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const SIGKILL (deprecated)
>>     
>>     public const SIGKILL: Int32 = 0x9
>>     
>> 
>> 功能：终止，默认操作终止，适用函数 [kill](posix_package_funcs.html#func-killint32-int32-deprecated)，[killpg](posix_package_funcs.html#func-killpgint32-int32-deprecated)，所属函数参数 `sig`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const SIGPIPE (deprecated)
>>     
>>     public const SIGPIPE: Int32 = 0xD
>>     
>> 
>> 功能：写入未读进程的管道，默认操作终止，适用函数 [kill](posix_package_funcs.html#func-killint32-int32-deprecated)，[killpg](posix_package_funcs.html#func-killpgint32-int32-deprecated)，所属函数参数 `sig`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const SIGPROF (deprecated)
>>     
>>     public const SIGPROF: Int32 = 0x1B
>>     
>> 
>> 功能：摘要超时，默认操作终止，适用函数 [kill](posix_package_funcs.html#func-killint32-int32-deprecated)，[killpg](posix_package_funcs.html#func-killpgint32-int32-deprecated)，所属函数参数 `sig`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const SIGPWR (deprecated)
>>     
>>     public const SIGPWR: Int32 = 0x1E
>>     
>> 
>> 功能：电源故障或重启，系统调用无效，默认操作终止，适用函数 [kill](posix_package_funcs.html#func-killint32-int32-deprecated)，[killpg](posix_package_funcs.html#func-killpgint32-int32-deprecated)，所属函数参数 `sig`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const SIGQUIT (deprecated)
>>     
>>     public const SIGQUIT: Int32 = 0x3
>>     
>> 
>> 功能：终端退出字符，默认动作终止，适用函数 [kill](posix_package_funcs.html#func-killint32-int32-deprecated)，[killpg](posix_package_funcs.html#func-killpgint32-int32-deprecated)，所属函数参数 `sig`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const SIGSEGV (deprecated)
>>     
>>     public const SIGSEGV: Int32 = 0xB
>>     
>> 
>> 功能：内存引用无效，默认操作终止，适用函数 [kill](posix_package_funcs.html#func-killint32-int32-deprecated)，[killpg](posix_package_funcs.html#func-killpgint32-int32-deprecated)，所属函数参数 `sig`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const SIGSTKFLT (deprecated)
>>     
>>     public const SIGSTKFLT: Int32 = 0x10
>>     
>> 
>> 功能：协处理器堆栈故障，默认操作终止，适用函数 [kill](posix_package_funcs.html#func-killint32-int32-deprecated)，[killpg](posix_package_funcs.html#func-killpgint32-int32-deprecated)，所属函数参数 `sig`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const SIGSTOP (deprecated)
>>     
>>     public const SIGSTOP: Int32
>>     
>> 
>> 功能：停止，默认操作终止，适用函数 [kill](posix_package_funcs.html#func-killint32-int32-deprecated)，[killpg](posix_package_funcs.html#func-killpgint32-int32-deprecated)，所属函数参数 `sig`。不同系统下的值分别为：
>>                            * macOS: 0x11
>>                            * 其他情况：0x13
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const SIGTERM (deprecated)
>>     
>>     public const SIGTERM: Int32 = 0xF
>>     
>> 
>> 功能：终止，默认操作终止，适用函数 [kill](posix_package_funcs.html#func-killint32-int32-deprecated)，[killpg](posix_package_funcs.html#func-killpgint32-int32-deprecated)，所属函数参数 `sig`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const SIGTRAP (deprecated)
>>     
>>     public const SIGTRAP: Int32 = 0x5
>>     
>> 
>> 功能：硬件故障，默认操作终止，适用函数 [kill](posix_package_funcs.html#func-killint32-int32-deprecated)，[killpg](posix_package_funcs.html#func-killpgint32-int32-deprecated)，所属函数参数 `sig`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const SIGTSTP (deprecated)
>>     
>>     public const SIGTSTP: Int32
>>     
>> 
>> 功能：终端停止符号，默认操作终止，适用函数 [kill](posix_package_funcs.html#func-killint32-int32-deprecated)，[killpg](posix_package_funcs.html#func-killpgint32-int32-deprecated)，所属函数参数 `sig`。不同系统下的值分别为：
>>                            * macOS: 0x12
>>                            * 其他情况：0x14
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const SIGTTIN (deprecated)
>>     
>>     public const SIGTTIN: Int32 = 0x15
>>     
>> 
>> 功能：后台读取控件 `tty`，默认操作终止，适用函数 [kill](posix_package_funcs.html#func-killint32-int32-deprecated)，[killpg](posix_package_funcs.html#func-killpgint32-int32-deprecated)，所属函数参数 `sig`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const SIGTTOU (deprecated)
>>     
>>     public const SIGTTOU: Int32 = 0x16
>>     
>> 
>> 功能：后台写控制 `tty`，默认操作终止，适用函数 [kill](posix_package_funcs.html#func-killint32-int32-deprecated)，[killpg](posix_package_funcs.html#func-killpgint32-int32-deprecated)，所属函数参数 `sig`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const SIGURG (deprecated)
>>     
>>     public const SIGURG: Int32
>>     
>> 
>> 功能：紧急情况（套接字），忽略默认操作，适用函数 [kill](posix_package_funcs.html#func-killint32-int32-deprecated)，[killpg](posix_package_funcs.html#func-killpgint32-int32-deprecated)，所属函数参数 `sig`。不同系统下的值分别为：
>>                            * macOS: 0x10
>>                            * 其他情况：0x17
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const SIGUSR1 (deprecated)
>>     
>>     public const SIGUSR1: Int32
>>     
>> 
>> 功能：用户定义的信号，默认操作终止，适用函数 [kill](posix_package_funcs.html#func-killint32-int32-deprecated)，[killpg](posix_package_funcs.html#func-killpgint32-int32-deprecated)，所属函数参数 `sig`。不同系统下的值分别为：
>>                            * macOS: 0x1E
>>                            * 其他情况：0xA
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const SIGUSR2 (deprecated)
>>     
>>     public const SIGUSR2: Int32
>>     
>> 
>> 功能：用户定义的信号，默认操作终止，适用函数 [kill](posix_package_funcs.html#func-killint32-int32-deprecated)，[killpg](posix_package_funcs.html#func-killpgint32-int32-deprecated)，所属函数参数 `sig`。不同系统下的值分别为：
>>                            * macOS: 0x1F
>>                            * 其他情况：0xC
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const SIGVTALRM (deprecated)
>>     
>>     public const SIGVTALRM: Int32 = 0x1A
>>     
>> 
>> 功能：虚拟时间警报，默认操作终止，适用函数 [kill](posix_package_funcs.html#func-killint32-int32-deprecated)，[killpg](posix_package_funcs.html#func-killpgint32-int32-deprecated)，所属函数参数 `sig`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const SIGWINCH (deprecated)
>>     
>>     public const SIGWINCH: Int32 = 0x1C
>>     
>> 
>> 功能：终端窗口大小更改，默认操作终止，适用函数 [kill](posix_package_funcs.html#func-killint32-int32-deprecated)，[killpg](posix_package_funcs.html#func-killpgint32-int32-deprecated)，所属函数参数 `sig`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const SIGXCPU (deprecated)
>>     
>>     public const SIGXCPU: Int32 = 0x18
>>     
>> 
>> 功能：`CPU` 占用率超过上限，默认操作终止，适用函数 [kill](posix_package_funcs.html#func-killint32-int32-deprecated)，[killpg](posix_package_funcs.html#func-killpgint32-int32-deprecated)，所属函数参数 `sig`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const SIGXFSZ (deprecated)
>>     
>>     public const SIGXFSZ: Int32 = 0x19
>>     
>> 
>> 功能：文件长度超过上限，默认操作终止，适用函数 [kill](posix_package_funcs.html#func-killint32-int32-deprecated)，[killpg](posix_package_funcs.html#func-killpgint32-int32-deprecated)，所属函数参数 `sig`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) const S_IFBLK (deprecated)
>>     
>>     public const S_IFBLK: UInt32 = 0x6000
>>     
>> 
>> 功能：文件类型为块设备，适用函数 [isType](posix_package_funcs.html#func-istypestring-uint32-deprecated)， 所属函数参数 `mode`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) const S_IFCHR (deprecated)
>>     
>>     public const S_IFCHR: UInt32 = 0x2000
>>     
>> 
>> 功能：文件类型为字符设备，适用函数 [isType](posix_package_funcs.html#func-istypestring-uint32-deprecated)， 所属函数参数 `mode`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) const S_IFDIR (deprecated)
>>     
>>     public const S_IFDIR: UInt32 = 0x4000
>>     
>> 
>> 功能：文件类型为目录，适用函数 [isType](posix_package_funcs.html#func-istypestring-uint32-deprecated)， 所属函数参数 `mode`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) const S_IFIFO (deprecated)
>>     
>>     public const S_IFIFO: UInt32 = 0x1000
>>     
>> 
>> 功能：文件类型为 `FIFO` 文件，适用函数 [isType](posix_package_funcs.html#func-istypestring-uint32-deprecated)， 所属函数参数 `mode`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) const S_IFLNK (deprecated)
>>     
>>     public const S_IFLNK: UInt32 = 0xA000
>>     
>> 
>> 功能：文件类型为软连接，适用函数 [isType](posix_package_funcs.html#func-istypestring-uint32-deprecated)， 所属函数参数 `mode`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) const S_IFREG (deprecated)
>>     
>>     public const S_IFREG: UInt32 = 0x8000
>>     
>> 
>> 功能：文件类型为一般文件，适用函数 [isType](posix_package_funcs.html#func-istypestring-uint32-deprecated)， 所属函数参数 `mode`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) const S_IFSOCK (deprecated)
>>     
>>     public const S_IFSOCK: UInt32 = 0xC000
>>     
>> 
>> 功能：文件类型为套接字文件，适用函数 [isType](posix_package_funcs.html#func-istypestring-uint32-deprecated)， 所属函数参数 `mode`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) const S_IRGRP (deprecated)
>>     
>>     public const S_IRGRP: UInt32 = 0x20
>>     
>> 
>> 功能：表示文件用户组具有读权限，适用函数 open，open64，openat，openat64，[chmod](posix_package_funcs.html#func-chmodstring-uint32-deprecated)(mode)，[fchmod](posix_package_funcs.html#func-fchmodint32-uint32-deprecated)(mode)，[fchmodat](posix_package_funcs.html#func-fchmodatint32-string-uint32-int32-deprecated)(mode)，[creat](posix_package_funcs.html#func-creatstring-uint32-deprecated)， 所属函数参数 `flag`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) const S_IROTH (deprecated)
>>     
>>     public const S_IROTH: UInt32 = 0x4
>>     
>> 
>> 功能：表示其他用户对文件具有读权限，适用函数 open，open64，openat，openat64，[chmod](posix_package_funcs.html#func-chmodstring-uint32-deprecated)(mode)，[fchmod](posix_package_funcs.html#func-fchmodint32-uint32-deprecated)(mode)，[fchmodat](posix_package_funcs.html#func-fchmodatint32-string-uint32-int32-deprecated)(mode)，[creat](posix_package_funcs.html#func-creatstring-uint32-deprecated)， 所属函数参数 `flag`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) const S_IRUSR (deprecated)
>>     
>>     public const S_IRUSR: UInt32 = 0x100
>>     
>> 
>> 功能：表示文件所有者具有读权限，适用函数 open，open64，openat，openat64，[chmod](posix_package_funcs.html#func-chmodstring-uint32-deprecated)(mode)，[fchmod](posix_package_funcs.html#func-fchmodint32-uint32-deprecated)(mode)，[fchmodat](posix_package_funcs.html#func-fchmodatint32-string-uint32-int32-deprecated)(mode)，[creat](posix_package_funcs.html#func-creatstring-uint32-deprecated)， 所属函数参数 `flag`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) const S_IRWXG (deprecated)
>>     
>>     public const S_IRWXG: UInt32 = 0x38
>>     
>> 
>> 功能：表示文件用户组具有读、写、执行权限，适用函数 open，open64，openat，openat64，[chmod](posix_package_funcs.html#func-chmodstring-uint32-deprecated)(mode)，[fchmod](posix_package_funcs.html#func-fchmodint32-uint32-deprecated)(mode)，[fchmodat](posix_package_funcs.html#func-fchmodatint32-string-uint32-int32-deprecated)(mode)，[creat](posix_package_funcs.html#func-creatstring-uint32-deprecated)， 所属函数参数 `flag`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) const S_IRWXO (deprecated)
>>     
>>     public const S_IRWXO: UInt32 = 0x7
>>     
>> 
>> 功能：表示其他用户对文件具有读、写和执行权限，适用函数 open，open64，openat，openat64，[chmod](posix_package_funcs.html#func-chmodstring-uint32-deprecated)(mode)，[fchmod](posix_package_funcs.html#func-fchmodint32-uint32-deprecated)(mode)，[fchmodat](posix_package_funcs.html#func-fchmodatint32-string-uint32-int32-deprecated)(mode)，[creat](posix_package_funcs.html#func-creatstring-uint32-deprecated)， 所属函数参数 `flag`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) const S_IRWXU (deprecated)
>>     
>>     public const S_IRWXU: UInt32 = 0x1C0
>>     
>> 
>> 功能：表示文件所有者具有读、写和执行权限，适用函数 open，open64，openat，openat64，[chmod](posix_package_funcs.html#func-chmodstring-uint32-deprecated)(mode)，[fchmod](posix_package_funcs.html#func-fchmodint32-uint32-deprecated)(mode)，[fchmodat](posix_package_funcs.html#func-fchmodatint32-string-uint32-int32-deprecated)(mode)，[creat](posix_package_funcs.html#func-creatstring-uint32-deprecated)， 所属函数参数 `flag`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) const S_IWGRP (deprecated)
>>     
>>     public const S_IWGRP: UInt32 = 0x10
>>     
>> 
>> 功能：表示文件用户组具有写权限，适用函数 open，open64，openat，openat64，[chmod](posix_package_funcs.html#func-chmodstring-uint32-deprecated)(mode)，[fchmod](posix_package_funcs.html#func-fchmodint32-uint32-deprecated)(mode)，[fchmodat](posix_package_funcs.html#func-fchmodatint32-string-uint32-int32-deprecated)(mode)，[creat](posix_package_funcs.html#func-creatstring-uint32-deprecated)， 所属函数参数 `flag`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) const S_IWOTH (deprecated)
>>     
>>     public const S_IWOTH: UInt32 = 0x2
>>     
>> 
>> 功能：表示其他用户对文件具有写权限，适用函数 open，open64，openat，openat64，[chmod](posix_package_funcs.html#func-chmodstring-uint32-deprecated)(mode)，[fchmod](posix_package_funcs.html#func-fchmodint32-uint32-deprecated)(mode)，[fchmodat](posix_package_funcs.html#func-fchmodatint32-string-uint32-int32-deprecated)(mode)，[creat](posix_package_funcs.html#func-creatstring-uint32-deprecated)， 所属函数参数 `flag`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) const S_IWUSR (deprecated)
>>     
>>     public const S_IWUSR: UInt32 = 0x80
>>     
>> 
>> 功能：表示文件所有者具有写权限，适用函数 open，open64，openat，openat64，[chmod](posix_package_funcs.html#func-chmodstring-uint32-deprecated)(mode)，[fchmod](posix_package_funcs.html#func-fchmodint32-uint32-deprecated)(mode)，[fchmodat](posix_package_funcs.html#func-fchmodatint32-string-uint32-int32-deprecated)(mode)，[creat](posix_package_funcs.html#func-creatstring-uint32-deprecated)， 所属函数参数 `flag`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) const S_IXGRP (deprecated)
>>     
>>     public const S_IXGRP: UInt32 = 0x8
>>     
>> 
>> 功能：表示文件用户组具有执行权限，适用函数 open，open64，openat，openat64，[chmod](posix_package_funcs.html#func-chmodstring-uint32-deprecated)(mode)，[fchmod](posix_package_funcs.html#func-fchmodint32-uint32-deprecated)(mode)，[fchmodat](posix_package_funcs.html#func-fchmodatint32-string-uint32-int32-deprecated)(mode)，[creat](posix_package_funcs.html#func-creatstring-uint32-deprecated)， 所属函数参数 `flag`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) const S_IXOTH (deprecated)
>>     
>>     public const S_IXOTH: UInt32 = 0x1
>>     
>> 
>> 功能：表示其他用户对文件具有执行权限，适用函数 open，open64，openat，openat64，[chmod](posix_package_funcs.html#func-chmodstring-uint32-deprecated)(mode)，[fchmod](posix_package_funcs.html#func-fchmodint32-uint32-deprecated)(mode)，[fchmodat](posix_package_funcs.html#func-fchmodatint32-string-uint32-int32-deprecated)(mode)，[creat](posix_package_funcs.html#func-creatstring-uint32-deprecated)， 所属函数参数 `flag`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) const S_IXUSR (deprecated)
>>     
>>     public const S_IXUSR: UInt32 = 0x40
>>     
>> 
>> 功能：表示文件所有者具有执行权限，适用函数 open，open64，openat，openat64，[chmod](posix_package_funcs.html#func-chmodstring-uint32-deprecated)(mode)，[fchmod](posix_package_funcs.html#func-fchmodint32-uint32-deprecated)(mode)，[fchmodat](posix_package_funcs.html#func-fchmodatint32-string-uint32-int32-deprecated)(mode)，[creat](posix_package_funcs.html#func-creatstring-uint32-deprecated)， 所属函数参数 `flag`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> const W_OK (deprecated)
>>     
>>     public const W_OK: Int32 = 0x2
>>     
>> 
>> 功能：测试文件写权限，适用函数 [access](posix_package_funcs.html#func-accessstring-int32-deprecated)，[faccessat](posix_package_funcs.html#func-faccessatint32-string-int32-int32-deprecated)，所属函数参数 `mode`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) const X_OK (deprecated)
>>     
>>     public const X_OK: Int32 = 0x1
>>     
>> 
>> 功能：测试文件执行权限，适用函数 [access](posix_package_funcs.html#func-accessstring-int32-deprecated)，[faccessat](posix_package_funcs.html#func-faccessatint32-string-int32-int32-deprecated)，所属函数参数 `mode`。
>>
>>> **注意：** 未来版本即将废弃。
>> 
>> 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)
