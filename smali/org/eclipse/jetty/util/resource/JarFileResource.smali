.class Lorg/eclipse/jetty/util/resource/JarFileResource;
.super Lorg/eclipse/jetty/util/resource/JarResource;
.source "JarFileResource.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _directory:Z

.field private _entry:Ljava/util/jar/JarEntry;

.field private _exists:Z

.field private _file:Ljava/io/File;

.field private _jarFile:Ljava/util/jar/JarFile;

.field private _jarUrl:Ljava/lang/String;

.field private _list:[Ljava/lang/String;

.field private _path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/eclipse/jetty/util/resource/JarFileResource;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/resource/JarFileResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/util/resource/JarResource;-><init>(Ljava/net/URL;)V

    .line 45
    return-void
.end method

.method constructor <init>(Ljava/net/URL;Z)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "useCaches"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/util/resource/JarResource;-><init>(Ljava/net/URL;Z)V

    .line 51
    return-void
.end method

.method public static getNonCachingResource(Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 4
    .param p0, "resource"    # Lorg/eclipse/jetty/util/resource/Resource;

    .prologue
    .line 337
    instance-of v2, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;

    if-nez v2, :cond_0

    .line 343
    .end local p0    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    :goto_0
    return-object p0

    .restart local p0    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_0
    move-object v1, p0

    .line 340
    check-cast v1, Lorg/eclipse/jetty/util/resource/JarFileResource;

    .line 342
    .local v1, "oldResource":Lorg/eclipse/jetty/util/resource/JarFileResource;
    new-instance v0, Lorg/eclipse/jetty/util/resource/JarFileResource;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/JarFileResource;->getURL()Ljava/net/URL;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lorg/eclipse/jetty/util/resource/JarFileResource;-><init>(Ljava/net/URL;Z)V

    .local v0, "newResource":Lorg/eclipse/jetty/util/resource/JarFileResource;
    move-object p0, v0

    .line 343
    goto :goto_0
.end method


# virtual methods
.method protected checkConnection()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/util/resource/JarResource;->checkConnection()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarConnection:Ljava/net/JarURLConnection;

    if-nez v0, :cond_0

    .line 77
    iput-object v2, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    .line 78
    iput-object v2, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_file:Ljava/io/File;

    .line 79
    iput-object v2, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    .line 80
    iput-object v2, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_list:[Ljava/lang/String;

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 75
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarConnection:Ljava/net/JarURLConnection;

    if-nez v1, :cond_1

    .line 77
    iput-object v2, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    .line 78
    iput-object v2, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_file:Ljava/io/File;

    .line 79
    iput-object v2, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    .line 80
    iput-object v2, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_list:[Ljava/lang/String;

    :cond_1
    throw v0

    .line 83
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 325
    return-object p1
.end method

.method public exists()Z
    .locals 14

    .prologue
    const/16 v13, 0x2f

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 116
    iget-boolean v9, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_exists:Z

    if-eqz v9, :cond_0

    .line 207
    :goto_0
    return v11

    .line 119
    :cond_0
    iget-object v9, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_urlString:Ljava/lang/String;

    const-string v12, "!/"

    invoke-virtual {v9, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 122
    iget-object v9, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_urlString:Ljava/lang/String;

    const/4 v11, 0x4

    iget-object v12, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_urlString:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x2

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 123
    .local v6, "file_url":Ljava/lang/String;
    :try_start_0
    invoke-static {v6}, Lorg/eclipse/jetty/util/resource/JarFileResource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v9

    invoke-virtual {v9}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    goto :goto_0

    .line 124
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    sget-object v9, Lorg/eclipse/jetty/util/resource/JarFileResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v9, v3}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    move v11, v10

    goto :goto_0

    .line 127
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "file_url":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/JarFileResource;->checkConnection()Z

    move-result v2

    .line 130
    .local v2, "check":Z
    iget-object v9, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarUrl:Ljava/lang/String;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_path:Ljava/lang/String;

    if-nez v9, :cond_2

    .line 133
    iput-boolean v2, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_directory:Z

    goto :goto_0

    .line 139
    :cond_2
    const/4 v7, 0x0

    .line 140
    .local v7, "jarFile":Ljava/util/jar/JarFile;
    if-eqz v2, :cond_7

    .line 142
    iget-object v7, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    .line 159
    :goto_1
    if-eqz v7, :cond_5

    iget-object v9, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    if-nez v9, :cond_5

    iget-boolean v9, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_directory:Z

    if-nez v9, :cond_5

    .line 162
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 163
    .local v3, "e":Ljava/util/Enumeration;
    :cond_3
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 165
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/jar/JarEntry;

    .line 166
    .local v4, "entry":Ljava/util/jar/JarEntry;
    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v9

    const/16 v12, 0x5c

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    .line 169
    .local v8, "name":Ljava/lang/String;
    iget-object v9, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 171
    iput-object v4, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    .line 173
    iget-object v9, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_path:Ljava/lang/String;

    const-string v12, "/"

    invoke-virtual {v9, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_directory:Z

    .line 191
    .end local v4    # "entry":Ljava/util/jar/JarEntry;
    .end local v8    # "name":Ljava/lang/String;
    :cond_4
    :goto_2
    iget-boolean v9, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_directory:Z

    if-eqz v9, :cond_5

    iget-object v9, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_urlString:Ljava/lang/String;

    const-string v12, "/"

    invoke-virtual {v9, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 193
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_urlString:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "/"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_urlString:Ljava/lang/String;

    .line 196
    :try_start_1
    new-instance v9, Ljava/net/URL;

    iget-object v12, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_urlString:Ljava/lang/String;

    invoke-direct {v9, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_url:Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 206
    .end local v3    # "e":Ljava/util/Enumeration;
    :cond_5
    :goto_3
    iget-boolean v9, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_directory:Z

    if-nez v9, :cond_6

    iget-object v9, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    if-eqz v9, :cond_a

    :cond_6
    move v9, v11

    :goto_4
    iput-boolean v9, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_exists:Z

    .line 207
    iget-boolean v11, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_exists:Z

    goto/16 :goto_0

    .line 148
    :cond_7
    :try_start_2
    new-instance v9, Ljava/net/URL;

    iget-object v12, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarUrl:Ljava/lang/String;

    invoke-direct {v9, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/JarURLConnection;

    move-object v0, v9

    check-cast v0, Ljava/net/JarURLConnection;

    move-object v1, v0

    .line 149
    .local v1, "c":Ljava/net/JarURLConnection;
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/JarFileResource;->getUseCaches()Z

    move-result v9

    invoke-virtual {v1, v9}, Ljava/net/JarURLConnection;->setUseCaches(Z)V

    .line 150
    invoke-virtual {v1}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    goto/16 :goto_1

    .line 152
    .end local v1    # "c":Ljava/net/JarURLConnection;
    :catch_1
    move-exception v3

    .line 154
    .local v3, "e":Ljava/lang/Exception;
    sget-object v9, Lorg/eclipse/jetty/util/resource/JarFileResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v9, v3}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 176
    .local v3, "e":Ljava/util/Enumeration;
    .restart local v4    # "entry":Ljava/util/jar/JarEntry;
    .restart local v8    # "name":Ljava/lang/String;
    :cond_8
    iget-object v9, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_path:Ljava/lang/String;

    const-string v12, "/"

    invoke-virtual {v9, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 178
    iget-object v9, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 180
    iput-boolean v11, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_directory:Z

    goto :goto_2

    .line 184
    :cond_9
    iget-object v9, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    iget-object v12, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_path:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-le v9, v12, :cond_3

    iget-object v9, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_path:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v13, :cond_3

    .line 186
    iput-boolean v11, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_directory:Z

    goto/16 :goto_2

    .line 198
    .end local v4    # "entry":Ljava/util/jar/JarEntry;
    .end local v8    # "name":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 200
    .local v5, "ex":Ljava/net/MalformedURLException;
    sget-object v9, Lorg/eclipse/jetty/util/resource/JarFileResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v9, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v3    # "e":Ljava/util/Enumeration;
    .end local v5    # "ex":Ljava/net/MalformedURLException;
    :cond_a
    move v9, v10

    .line 206
    goto :goto_4
.end method

.method public isContainedIn(Lorg/eclipse/jetty/util/resource/Resource;)Z
    .locals 4
    .param p1, "resource"    # Lorg/eclipse/jetty/util/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 358
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_urlString:Ljava/lang/String;

    .line 359
    .local v1, "string":Ljava/lang/String;
    const-string v3, "!/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 360
    .local v0, "index":I
    if-lez v0, :cond_0

    .line 361
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 362
    :cond_0
    const-string v3, "jar:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 363
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 364
    :cond_1
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 365
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/URL;->sameFile(Ljava/net/URL;)Z

    move-result v3

    return v3
.end method

.method public isDirectory()Z
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_urlString:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/JarFileResource;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_directory:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastModified()J
    .locals 2

    .prologue
    .line 230
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/JarFileResource;->checkConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 232
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public length()J
    .locals 3

    .prologue
    const-wide/16 v0, -0x1

    .line 307
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/JarFileResource;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-wide v0

    .line 310
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    if-eqz v2, :cond_0

    .line 311
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v0

    goto :goto_0
.end method

.method public declared-synchronized list()[Ljava/lang/String;
    .locals 13

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/JarFileResource;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_list:[Ljava/lang/String;

    if-nez v10, :cond_6

    .line 242
    new-instance v7, Ljava/util/ArrayList;

    const/16 v10, 0x20

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 244
    .local v7, "list":Ljava/util/ArrayList;
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/JarFileResource;->checkConnection()Z

    .line 246
    iget-object v5, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    .local v5, "jarFile":Ljava/util/jar/JarFile;
    if-nez v5, :cond_0

    .line 251
    :try_start_1
    new-instance v10, Ljava/net/URL;

    iget-object v11, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarUrl:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/JarURLConnection;

    move-object v0, v10

    check-cast v0, Ljava/net/JarURLConnection;

    move-object v6, v0

    .line 252
    .local v6, "jc":Ljava/net/JarURLConnection;
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/JarFileResource;->getUseCaches()Z

    move-result v10

    invoke-virtual {v6, v10}, Ljava/net/JarURLConnection;->setUseCaches(Z)V

    .line 253
    invoke-virtual {v6}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 261
    .end local v6    # "jc":Ljava/net/JarURLConnection;
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 262
    .local v3, "e":Ljava/util/Enumeration;
    iget-object v10, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_urlString:Ljava/lang/String;

    iget-object v11, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_urlString:Ljava/lang/String;

    const-string v12, "!/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x2

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "dir":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 266
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/jar/JarEntry;

    .line 267
    .local v4, "entry":Ljava/util/jar/JarEntry;
    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x5c

    const/16 v12, 0x2f

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    .line 268
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-eq v10, v11, :cond_1

    .line 272
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 273
    .local v8, "listName":Ljava/lang/String;
    const/16 v10, 0x2f

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 274
    .local v1, "dash":I
    if-ltz v1, :cond_3

    .line 278
    if-nez v1, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1

    .line 282
    :cond_2
    if-nez v1, :cond_4

    .line 283
    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 287
    :goto_2
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 291
    :cond_3
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 240
    .end local v1    # "dash":I
    .end local v2    # "dir":Ljava/lang/String;
    .end local v3    # "e":Ljava/util/Enumeration;
    .end local v4    # "entry":Ljava/util/jar/JarEntry;
    .end local v5    # "jarFile":Ljava/util/jar/JarFile;
    .end local v7    # "list":Ljava/util/ArrayList;
    .end local v8    # "listName":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 255
    .restart local v5    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v7    # "list":Ljava/util/ArrayList;
    :catch_0
    move-exception v3

    .line 257
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v10, Lorg/eclipse/jetty/util/resource/JarFileResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v10, v3}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 285
    .restart local v1    # "dash":I
    .restart local v2    # "dir":Ljava/lang/String;
    .local v3, "e":Ljava/util/Enumeration;
    .restart local v4    # "entry":Ljava/util/jar/JarEntry;
    .restart local v8    # "listName":Ljava/lang/String;
    .restart local v9    # "name":Ljava/lang/String;
    :cond_4
    const/4 v10, 0x0

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 294
    .end local v1    # "dash":I
    .end local v4    # "entry":Ljava/util/jar/JarEntry;
    .end local v8    # "listName":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    :cond_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_list:[Ljava/lang/String;

    .line 295
    iget-object v10, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_list:[Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 297
    .end local v2    # "dir":Ljava/lang/String;
    .end local v3    # "e":Ljava/util/Enumeration;
    .end local v5    # "jarFile":Ljava/util/jar/JarFile;
    .end local v7    # "list":Ljava/util/ArrayList;
    :cond_6
    iget-object v10, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_list:[Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v10
.end method

.method protected declared-synchronized newConnection()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/util/resource/JarResource;->newConnection()V

    .line 94
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    .line 95
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_file:Ljava/io/File;

    .line 96
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    .line 97
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_list:[Ljava/lang/String;

    .line 99
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_urlString:Ljava/lang/String;

    const-string v2, "!/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 100
    .local v0, "sep":I
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_urlString:Ljava/lang/String;

    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarUrl:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_urlString:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_path:Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 103
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_path:Ljava/lang/String;

    .line 104
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarConnection:Ljava/net/JarURLConnection;

    invoke-virtual {v1}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    .line 105
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {v2}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_file:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    .line 92
    .end local v0    # "sep":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 58
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_list:[Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_file:Ljava/io/File;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    .line 62
    invoke-super {p0}, Lorg/eclipse/jetty/util/resource/JarResource;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
