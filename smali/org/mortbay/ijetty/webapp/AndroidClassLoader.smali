.class public Lorg/mortbay/ijetty/webapp/AndroidClassLoader;
.super Ljava/lang/ClassLoader;
.source "AndroidClassLoader.java"


# instance fields
.field private _context:Lorg/eclipse/jetty/webapp/WebAppContext;

.field private _delegate:Ljava/lang/ClassLoader;

.field private _parent:Ljava/lang/ClassLoader;

.field private _path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 1
    .param p1, "parent"    # Ljava/lang/ClassLoader;
    .param p2, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_path:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_parent:Ljava/lang/ClassLoader;

    .line 68
    iput-object p2, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_context:Lorg/eclipse/jetty/webapp/WebAppContext;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "parent"    # Ljava/lang/ClassLoader;
    .param p3, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p2, p3}, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;-><init>(Ljava/lang/ClassLoader;Lorg/eclipse/jetty/webapp/WebAppContext;)V

    .line 54
    iput-object p1, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_path:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 1
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;-><init>(Ljava/lang/ClassLoader;Lorg/eclipse/jetty/webapp/WebAppContext;)V

    .line 61
    return-void
.end method

.method private toList(Ljava/util/Enumeration;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    :goto_0
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addClassPath(Ljava/lang/String;)V
    .locals 2
    .param p1, "classPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 121
    :goto_0
    return-void

    .line 116
    :cond_0
    const-string v0, ""

    iget-object v1, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_path:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_path:Ljava/lang/String;

    .line 119
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_path:Ljava/lang/String;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addClassPath(Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 5
    .param p1, "resource"    # Lorg/eclipse/jetty/util/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    instance-of v4, p1, Lorg/eclipse/jetty/util/resource/ResourceCollection;

    if-eqz v4, :cond_0

    .line 94
    check-cast p1, Lorg/eclipse/jetty/util/resource/ResourceCollection;

    .end local p1    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/ResourceCollection;->getResources()[Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    .local v0, "arr$":[Lorg/eclipse/jetty/util/resource/Resource;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 95
    .local v3, "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {p0, v3}, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->addClassPath(Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "arr$":[Lorg/eclipse/jetty/util/resource/Resource;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    .restart local p1    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->addClassPath(Ljava/lang/String;)V

    .line 101
    .end local p1    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_1
    return-void
.end method

.method public addJars(Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 7
    .param p1, "lib"    # Lorg/eclipse/jetty/util/resource/Resource;

    .prologue
    .line 126
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 128
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->list()[Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "files":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "f":I
    :goto_0
    if-eqz v2, :cond_1

    array-length v6, v2

    if-ge v1, v6, :cond_1

    .line 133
    :try_start_0
    aget-object v6, v2, v1

    invoke-virtual {p1, v6}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    .line 134
    .local v3, "fn":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "fnlc":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0, v4}, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->isAndroidArchive(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 138
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, "jar":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->addClassPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v3    # "fn":Lorg/eclipse/jetty/util/resource/Resource;
    .end local v4    # "fnlc":Ljava/lang/String;
    .end local v5    # "jar":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 144
    .local v0, "ex":Ljava/lang/Exception;
    const-string v6, "EXCEPTION "

    invoke-static {v6, v0}, Lorg/eclipse/jetty/util/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 148
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "f":I
    .end local v2    # "files":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public getContext()Lorg/eclipse/jetty/webapp/WebAppContext;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_context:Lorg/eclipse/jetty/webapp/WebAppContext;

    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 191
    const/4 v3, 0x0

    .line 192
    .local v3, "url":Ljava/net/URL;
    const/4 v2, 0x0

    .line 193
    .local v2, "tried_parent":Z
    iget-object v4, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_context:Lorg/eclipse/jetty/webapp/WebAppContext;

    invoke-virtual {v4, p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->isSystemClass(Ljava/lang/String;)Z

    move-result v1

    .line 194
    .local v1, "system_class":Z
    iget-object v4, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_context:Lorg/eclipse/jetty/webapp/WebAppContext;

    invoke-virtual {v4, p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->isServerClass(Ljava/lang/String;)Z

    move-result v0

    .line 196
    .local v0, "server_class":Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 197
    const/4 v4, 0x0

    .line 229
    :goto_0
    return-object v4

    .line 199
    :cond_0
    iget-object v4, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_parent:Ljava/lang/ClassLoader;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_context:Lorg/eclipse/jetty/webapp/WebAppContext;

    invoke-virtual {v4}, Lorg/eclipse/jetty/webapp/WebAppContext;->isParentLoaderPriority()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    if-nez v0, :cond_2

    .line 201
    const/4 v2, 0x1

    .line 203
    iget-object v4, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_parent:Ljava/lang/ClassLoader;

    if-eqz v4, :cond_2

    .line 204
    iget-object v4, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_parent:Ljava/lang/ClassLoader;

    invoke-virtual {v4, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 207
    :cond_2
    if-nez v3, :cond_4

    .line 209
    invoke-virtual {p0, p1}, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 211
    if-nez v3, :cond_4

    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 213
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HACK leading / off "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jetty/util/log/Log;->debug(Ljava/lang/String;)V

    .line 215
    :cond_3
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 219
    :cond_4
    if-nez v3, :cond_5

    if-nez v2, :cond_5

    if-nez v0, :cond_5

    .line 221
    iget-object v4, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_parent:Ljava/lang/ClassLoader;

    if-eqz v4, :cond_5

    .line 222
    iget-object v4, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_parent:Ljava/lang/ClassLoader;

    invoke-virtual {v4, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 225
    :cond_5
    if-eqz v3, :cond_6

    .line 226
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 227
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getResource("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jetty/util/log/Log;->debug(Ljava/lang/String;)V

    :cond_6
    move-object v4, v3

    .line 229
    goto/16 :goto_0
.end method

.method public getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 164
    iget-object v4, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_context:Lorg/eclipse/jetty/webapp/WebAppContext;

    invoke-virtual {v4, p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->isSystemClass(Ljava/lang/String;)Z

    move-result v3

    .line 165
    .local v3, "system_class":Z
    iget-object v4, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_context:Lorg/eclipse/jetty/webapp/WebAppContext;

    invoke-virtual {v4, p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->isServerClass(Ljava/lang/String;)Z

    move-result v2

    .line 167
    .local v2, "server_class":Z
    if-eqz v2, :cond_0

    move-object v4, v5

    :goto_0
    invoke-direct {p0, v4}, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->toList(Ljava/util/Enumeration;)Ljava/util/List;

    move-result-object v0

    .line 168
    .local v0, "from_parent":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    invoke-direct {p0, v5}, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->toList(Ljava/util/Enumeration;)Ljava/util/List;

    move-result-object v1

    .line 170
    .local v1, "from_webapp":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    iget-object v4, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_context:Lorg/eclipse/jetty/webapp/WebAppContext;

    invoke-virtual {v4}, Lorg/eclipse/jetty/webapp/WebAppContext;->isParentLoaderPriority()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 172
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 173
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v4

    .line 176
    :goto_2
    return-object v4

    .line 167
    .end local v0    # "from_parent":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    .end local v1    # "from_webapp":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    :cond_0
    iget-object v4, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_parent:Ljava/lang/ClassLoader;

    invoke-virtual {v4, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v4

    goto :goto_0

    .line 168
    .restart local v0    # "from_parent":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    :cond_1
    invoke-virtual {p0, p1}, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->findResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v5

    goto :goto_1

    .line 175
    .restart local v1    # "from_webapp":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 176
    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v4

    goto :goto_2
.end method

.method public init()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 79
    iget-object v0, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_path:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    :cond_0
    new-instance v0, Ldalvik/system/DexClassLoader;

    const-string v1, ""

    invoke-virtual {p0}, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->getContext()Lorg/eclipse/jetty/webapp/WebAppContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/webapp/WebAppContext;->getTempDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_parent:Ljava/lang/ClassLoader;

    invoke-direct {v0, v1, v2, v4, v3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_delegate:Ljava/lang/ClassLoader;

    .line 84
    :goto_0
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android webapp classloader path= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tmpdir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->getContext()Lorg/eclipse/jetty/webapp/WebAppContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getTempDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dexloader = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_delegate:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " parentloader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_parent:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->debug(Ljava/lang/String;)V

    .line 85
    :cond_1
    return-void

    .line 82
    :cond_2
    new-instance v0, Ldalvik/system/DexClassLoader;

    iget-object v1, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_path:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->getContext()Lorg/eclipse/jetty/webapp/WebAppContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/webapp/WebAppContext;->getTempDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_parent:Ljava/lang/ClassLoader;

    invoke-direct {v0, v1, v2, v4, v3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_delegate:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method protected isAndroidArchive(Ljava/lang/String;)Z
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 154
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 155
    .local v0, "dot":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v2

    .line 158
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "extension":Ljava/lang/String;
    const-string v3, ".zip"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ".apk"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected declared-synchronized loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resolve"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 235
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 236
    .local v2, "ex":Ljava/lang/ClassNotFoundException;
    const/4 v5, 0x0

    .line 238
    .local v5, "tried_parent":Z
    invoke-virtual {p0}, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->getContext()Lorg/eclipse/jetty/webapp/WebAppContext;

    move-result-object v6

    invoke-virtual {v6, p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->isSystemClass(Ljava/lang/String;)Z

    move-result v4

    .line 239
    .local v4, "system_class":Z
    invoke-virtual {p0}, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->getContext()Lorg/eclipse/jetty/webapp/WebAppContext;

    move-result-object v6

    invoke-virtual {v6, p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->isServerClass(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 241
    .local v3, "server_class":Z
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 243
    const/4 v6, 0x0

    .line 291
    :goto_0
    monitor-exit p0

    return-object v6

    .line 246
    :cond_0
    if-nez v0, :cond_2

    :try_start_1
    iget-object v6, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_parent:Ljava/lang/ClassLoader;

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->getContext()Lorg/eclipse/jetty/webapp/WebAppContext;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eclipse/jetty/webapp/WebAppContext;->isParentLoaderPriority()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    if-eqz v4, :cond_2

    :cond_1
    if-nez v3, :cond_2

    .line 248
    const/4 v5, 0x1

    .line 251
    :try_start_2
    iget-object v6, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_parent:Ljava/lang/ClassLoader;

    invoke-virtual {v6, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 252
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 253
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loaded "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/eclipse/jetty/util/log/Log;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    :cond_2
    :goto_1
    if-nez v0, :cond_4

    .line 265
    :try_start_3
    iget-object v6, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_delegate:Ljava/lang/ClassLoader;

    if-eqz v6, :cond_4

    .line 267
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loading class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " trying delegate loader"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_delegate:Ljava/lang/ClassLoader;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/eclipse/jetty/util/log/Log;->debug(Ljava/lang/String;)V

    .line 268
    :cond_3
    iget-object v6, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_delegate:Ljava/lang/ClassLoader;

    invoke-virtual {v6, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 269
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delegate loaded "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/eclipse/jetty/util/log/Log;->debug(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 279
    :cond_4
    :goto_2
    if-nez v0, :cond_5

    :try_start_4
    iget-object v6, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_parent:Ljava/lang/ClassLoader;

    if-eqz v6, :cond_5

    if-nez v5, :cond_5

    if-nez v3, :cond_5

    .line 280
    iget-object v6, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_parent:Ljava/lang/ClassLoader;

    invoke-virtual {v6, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 282
    :cond_5
    if-nez v0, :cond_6

    .line 283
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 234
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "ex":Ljava/lang/ClassNotFoundException;
    .end local v3    # "server_class":Z
    .end local v4    # "system_class":Z
    .end local v5    # "tried_parent":Z
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 255
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v3    # "server_class":Z
    .restart local v4    # "system_class":Z
    .restart local v5    # "tried_parent":Z
    :catch_0
    move-exception v1

    .line 257
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    move-object v2, v1

    goto :goto_1

    .line 272
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 274
    .restart local v1    # "e":Ljava/lang/ClassNotFoundException;
    move-object v2, v1

    goto :goto_2

    .line 285
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_6
    if-eqz p2, :cond_7

    .line 286
    :try_start_5
    invoke-virtual {p0, v0}, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->resolveClass(Ljava/lang/Class;)V

    .line 288
    :cond_7
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 289
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loaded "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/eclipse/jetty/util/log/Log;->debug(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_8
    move-object v6, v0

    .line 291
    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(AndroidClassLoader, delegate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->_delegate:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
