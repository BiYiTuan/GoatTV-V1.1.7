.class public Lorg/eclipse/jetty/deploy/providers/WebAppProvider;
.super Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;
.source "WebAppProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/deploy/providers/WebAppProvider$Filter;
    }
.end annotation


# instance fields
.field private _configurationClasses:[Ljava/lang/String;

.field private _defaultsDescriptor:Ljava/lang/String;

.field private _extractWars:Z

.field private _filter:Lorg/eclipse/jetty/deploy/providers/WebAppProvider$Filter;

.field private _parentLoaderPriority:Z

.field private _tempDirectory:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    new-instance v0, Lorg/eclipse/jetty/deploy/providers/WebAppProvider$Filter;

    invoke-direct {v0}, Lorg/eclipse/jetty/deploy/providers/WebAppProvider$Filter;-><init>()V

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;-><init>(Ljava/io/FilenameFilter;)V

    .line 27
    iput-boolean v1, p0, Lorg/eclipse/jetty/deploy/providers/WebAppProvider;->_extractWars:Z

    .line 28
    iput-boolean v1, p0, Lorg/eclipse/jetty/deploy/providers/WebAppProvider;->_parentLoaderPriority:Z

    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/providers/WebAppProvider;->_filenameFilter:Ljava/io/FilenameFilter;

    check-cast v0, Lorg/eclipse/jetty/deploy/providers/WebAppProvider$Filter;

    iput-object v0, p0, Lorg/eclipse/jetty/deploy/providers/WebAppProvider;->_filter:Lorg/eclipse/jetty/deploy/providers/WebAppProvider$Filter;

    .line 85
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/deploy/providers/WebAppProvider;->setScanInterval(I)V

    .line 86
    return-void
.end method


# virtual methods
.method public createContextHandler(Lorg/eclipse/jetty/deploy/App;)Lorg/eclipse/jetty/server/handler/ContextHandler;
    .locals 9
    .param p1, "app"    # Lorg/eclipse/jetty/deploy/App;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 219
    invoke-virtual {p1}, Lorg/eclipse/jetty/deploy/App;->getOriginId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    .line 220
    .local v3, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v2

    .line 221
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 222
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App resouce does not exist "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 224
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "context":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 241
    :goto_0
    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 243
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 247
    :cond_1
    new-instance v5, Lorg/eclipse/jetty/webapp/WebAppContext;

    invoke-direct {v5}, Lorg/eclipse/jetty/webapp/WebAppContext;-><init>()V

    .line 248
    .local v5, "wah":Lorg/eclipse/jetty/webapp/WebAppContext;
    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/webapp/WebAppContext;->setDisplayName(Ljava/lang/String;)V

    .line 251
    const-string v6, "root"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 253
    const-string v0, "/"

    .line 264
    :cond_2
    :goto_1
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2f

    if-eq v6, v7, :cond_3

    .line 266
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    :cond_3
    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/webapp/WebAppContext;->setContextPath(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/webapp/WebAppContext;->setWar(Ljava/lang/String;)V

    .line 272
    iget-object v6, p0, Lorg/eclipse/jetty/deploy/providers/WebAppProvider;->_defaultsDescriptor:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 274
    iget-object v6, p0, Lorg/eclipse/jetty/deploy/providers/WebAppProvider;->_defaultsDescriptor:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/webapp/WebAppContext;->setDefaultsDescriptor(Ljava/lang/String;)V

    .line 276
    :cond_4
    iget-boolean v6, p0, Lorg/eclipse/jetty/deploy/providers/WebAppProvider;->_extractWars:Z

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/webapp/WebAppContext;->setExtractWAR(Z)V

    .line 277
    iget-boolean v6, p0, Lorg/eclipse/jetty/deploy/providers/WebAppProvider;->_parentLoaderPriority:Z

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/webapp/WebAppContext;->setParentLoaderPriority(Z)V

    .line 278
    iget-object v6, p0, Lorg/eclipse/jetty/deploy/providers/WebAppProvider;->_configurationClasses:[Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 280
    iget-object v6, p0, Lorg/eclipse/jetty/deploy/providers/WebAppProvider;->_configurationClasses:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/webapp/WebAppContext;->setConfigurationClasses([Ljava/lang/String;)V

    .line 283
    :cond_5
    iget-object v6, p0, Lorg/eclipse/jetty/deploy/providers/WebAppProvider;->_tempDirectory:Ljava/io/File;

    if-eqz v6, :cond_6

    .line 292
    const-string v6, "org.eclipse.jetty.webapp.basetempdir"

    iget-object v7, p0, Lorg/eclipse/jetty/deploy/providers/WebAppProvider;->_tempDirectory:Ljava/io/File;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/webapp/WebAppContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 294
    :cond_6
    return-object v5

    .line 230
    .end local v5    # "wah":Lorg/eclipse/jetty/webapp/WebAppContext;
    :cond_7
    invoke-static {v2}, Lorg/eclipse/jetty/deploy/util/FileID;->isWebArchiveFile(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 233
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 237
    :cond_8
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unable to create ContextHandler for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 255
    .restart local v5    # "wah":Lorg/eclipse/jetty/webapp/WebAppContext;
    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "root-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 257
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2d

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 258
    .local v1, "dash":I
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 259
    .local v4, "virtual":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object v4, v6, v8

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/webapp/WebAppContext;->setVirtualHosts([Ljava/lang/String;)V

    .line 260
    const-string v0, "/"

    goto/16 :goto_1
.end method

.method public getConfigurationClasses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/providers/WebAppProvider;->_configurationClasses:[Ljava/lang/String;

    return-object v0
.end method

.method public getContextXmlDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/providers/WebAppProvider;->_filter:Lorg/eclipse/jetty/deploy/providers/WebAppProvider$Filter;

    # getter for: Lorg/eclipse/jetty/deploy/providers/WebAppProvider$Filter;->_contexts:Ljava/io/File;
    invoke-static {v0}, Lorg/eclipse/jetty/deploy/providers/WebAppProvider$Filter;->access$000(Lorg/eclipse/jetty/deploy/providers/WebAppProvider$Filter;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/providers/WebAppProvider;->_filter:Lorg/eclipse/jetty/deploy/providers/WebAppProvider$Filter;

    # getter for: Lorg/eclipse/jetty/deploy/providers/WebAppProvider$Filter;->_contexts:Ljava/io/File;
    invoke-static {v0}, Lorg/eclipse/jetty/deploy/providers/WebAppProvider$Filter;->access$000(Lorg/eclipse/jetty/deploy/providers/WebAppProvider$Filter;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultsDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/providers/WebAppProvider;->_defaultsDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getTempDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/providers/WebAppProvider;->_tempDirectory:Ljava/io/File;

    return-object v0
.end method

.method public isExtractWars()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lorg/eclipse/jetty/deploy/providers/WebAppProvider;->_extractWars:Z

    return v0
.end method

.method public isParentLoaderPriority()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lorg/eclipse/jetty/deploy/providers/WebAppProvider;->_parentLoaderPriority:Z

    return v0
.end method

.method public setConfigurationClasses([Ljava/lang/String;)V
    .locals 1
    .param p1, "configurations"    # [Ljava/lang/String;

    .prologue
    .line 182
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/eclipse/jetty/deploy/providers/WebAppProvider;->_configurationClasses:[Ljava/lang/String;

    .line 183
    return-void

    .line 182
    :cond_0
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public setContextXmlDir(Ljava/lang/String;)V
    .locals 3
    .param p1, "contextsDir"    # Ljava/lang/String;

    .prologue
    .line 163
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/deploy/providers/WebAppProvider;->_filter:Lorg/eclipse/jetty/deploy/providers/WebAppProvider$Filter;

    invoke-static {p1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v2

    # setter for: Lorg/eclipse/jetty/deploy/providers/WebAppProvider$Filter;->_contexts:Ljava/io/File;
    invoke-static {v1, v2}, Lorg/eclipse/jetty/deploy/providers/WebAppProvider$Filter;->access$002(Lorg/eclipse/jetty/deploy/providers/WebAppProvider$Filter;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 173
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 169
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .line 171
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setDefaultsDescriptor(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultsDescriptor"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/eclipse/jetty/deploy/providers/WebAppProvider;->_defaultsDescriptor:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setExtractWars(Z)V
    .locals 0
    .param p1, "extractWars"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lorg/eclipse/jetty/deploy/providers/WebAppProvider;->_extractWars:Z

    .line 104
    return-void
.end method

.method public setParentLoaderPriority(Z)V
    .locals 0
    .param p1, "parentLoaderPriority"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lorg/eclipse/jetty/deploy/providers/WebAppProvider;->_parentLoaderPriority:Z

    .line 122
    return-void
.end method

.method public setTempDir(Ljava/io/File;)V
    .locals 0
    .param p1, "directory"    # Ljava/io/File;

    .prologue
    .line 203
    iput-object p1, p0, Lorg/eclipse/jetty/deploy/providers/WebAppProvider;->_tempDirectory:Ljava/io/File;

    .line 204
    return-void
.end method
