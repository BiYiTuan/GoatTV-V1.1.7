.class public Lorg/eclipse/jetty/deploy/WebAppDeployer;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "WebAppDeployer.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _allowDuplicates:Z

.field private _configurationClasses:[Ljava/lang/String;

.field private _contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

.field private _contexts:Lorg/eclipse/jetty/server/handler/HandlerCollection;

.field private _defaultsDescriptor:Ljava/lang/String;

.field private _deployed:Ljava/util/ArrayList;

.field private _extract:Z

.field private _parentLoaderPriority:Z

.field private _webAppDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lorg/eclipse/jetty/deploy/WebAppDeployer;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 66
    new-instance v0, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    .line 71
    sget-object v0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "WebAppDeployer is deprecated. Use WebAppProvider"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    return-void
.end method


# virtual methods
.method public doStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_deployed:Ljava/util/ArrayList;

    .line 189
    invoke-virtual {p0}, Lorg/eclipse/jetty/deploy/WebAppDeployer;->scan()V

    .line 191
    return-void
.end method

.method public doStop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 316
    iget-object v3, p0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_deployed:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_0

    .line 318
    iget-object v3, p0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_deployed:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 319
    .local v2, "wac":Lorg/eclipse/jetty/server/handler/ContextHandler;
    invoke-virtual {v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->stop()V

    move v1, v0

    .line 320
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 321
    .end local v1    # "i":I
    .end local v2    # "wac":Lorg/eclipse/jetty/server/handler/ContextHandler;
    .restart local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getAllowDuplicates()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_allowDuplicates:Z

    return v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 167
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getConfigurationClasses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_configurationClasses:[Ljava/lang/String;

    return-object v0
.end method

.method public getContexts()Lorg/eclipse/jetty/server/handler/HandlerCollection;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_contexts:Lorg/eclipse/jetty/server/handler/HandlerCollection;

    return-object v0
.end method

.method public getDefaultsDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_defaultsDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getWebAppDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_webAppDir:Ljava/lang/String;

    return-object v0
.end method

.method public isExtract()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_extract:Z

    return v0
.end method

.method public isParentLoaderPriority()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_parentLoaderPriority:Z

    return v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 177
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->removeAttribute(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public scan()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 200
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_contexts:Lorg/eclipse/jetty/server/handler/HandlerCollection;

    if-nez v13, :cond_0

    .line 201
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "No HandlerContainer"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 203
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_webAppDir:Ljava/lang/String;

    invoke-static {v13}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v10

    .line 204
    .local v10, "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v10}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v13

    if-nez v13, :cond_1

    .line 205
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "No such webapps resource "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 207
    :cond_1
    invoke-virtual {v10}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_2

    .line 208
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Not directory webapps resource "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 210
    :cond_2
    invoke-virtual {v10}, Lorg/eclipse/jetty/util/resource/Resource;->list()[Ljava/lang/String;

    move-result-object v6

    .line 212
    .local v6, "files":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "f":I
    :goto_0
    if-eqz v6, :cond_12

    array-length v13, v6

    if-ge v5, v13, :cond_12

    .line 214
    aget-object v3, v6, v5

    .line 216
    .local v3, "context":Ljava/lang/String;
    const-string v13, "CVS/"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "CVS"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "."

    invoke-virtual {v3, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 212
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 219
    :cond_4
    invoke-virtual {v10, v3}, Lorg/eclipse/jetty/util/resource/Resource;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 221
    .local v1, "app":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, ".war"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, ".jar"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 223
    :cond_5
    const/4 v13, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x4

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 224
    invoke-virtual {v10, v3}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v11

    .line 225
    .local v11, "unpacked":Lorg/eclipse/jetty/util/resource/Resource;
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v11}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_3

    .line 231
    .end local v11    # "unpacked":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_6
    const-string v13, "root"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_7

    const-string v13, "root/"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 232
    :cond_7
    const-string v3, "/"

    .line 235
    :goto_2
    const-string v13, "/"

    invoke-virtual {v3, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_8

    .line 236
    const/4 v13, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 239
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_allowDuplicates:Z

    if-nez v13, :cond_e

    .line 241
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_contexts:Lorg/eclipse/jetty/server/handler/HandlerCollection;

    const-class v14, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v13, v14}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object v8

    .line 242
    .local v8, "installed":[Lorg/eclipse/jetty/server/Handler;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    array-length v13, v8

    if-ge v7, v13, :cond_e

    .line 244
    aget-object v2, v8, v7

    check-cast v2, Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 246
    .local v2, "c":Lorg/eclipse/jetty/server/handler/ContextHandler;
    invoke-virtual {v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 252
    const/4 v9, 0x0

    .line 253
    .local v9, "path":Ljava/lang/String;
    :try_start_0
    instance-of v13, v2, Lorg/eclipse/jetty/webapp/WebAppContext;

    if-eqz v13, :cond_d

    .line 254
    check-cast v2, Lorg/eclipse/jetty/webapp/WebAppContext;

    .end local v2    # "c":Lorg/eclipse/jetty/server/handler/ContextHandler;
    invoke-virtual {v2}, Lorg/eclipse/jetty/webapp/WebAppContext;->getWar()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v13

    invoke-virtual {v13}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9

    .line 258
    :cond_9
    :goto_4
    if-eqz v9, :cond_a

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 260
    sget-object v13, Lorg/eclipse/jetty/deploy/WebAppDeployer;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v14, "Already deployed: {}"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v9, v15, v16

    invoke-interface {v13, v14, v15}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 264
    :catch_0
    move-exception v4

    .line 266
    .local v4, "e":Ljava/lang/Exception;
    sget-object v13, Lorg/eclipse/jetty/deploy/WebAppDeployer;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v13, v4}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 242
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 228
    .end local v7    # "i":I
    .end local v8    # "installed":[Lorg/eclipse/jetty/server/Handler;
    .end local v9    # "path":Ljava/lang/String;
    :cond_b
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_6

    goto/16 :goto_1

    .line 234
    :cond_c
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 255
    .restart local v2    # "c":Lorg/eclipse/jetty/server/handler/ContextHandler;
    .restart local v7    # "i":I
    .restart local v8    # "installed":[Lorg/eclipse/jetty/server/Handler;
    .restart local v9    # "path":Ljava/lang/String;
    :cond_d
    :try_start_1
    invoke-virtual {v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v13

    if-eqz v13, :cond_9

    .line 256
    invoke-virtual {v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v13

    invoke-virtual {v13}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto :goto_4

    .line 273
    .end local v2    # "c":Lorg/eclipse/jetty/server/handler/ContextHandler;
    .end local v7    # "i":I
    .end local v8    # "installed":[Lorg/eclipse/jetty/server/Handler;
    .end local v9    # "path":Ljava/lang/String;
    :cond_e
    const/4 v12, 0x0

    .line 274
    .local v12, "wah":Lorg/eclipse/jetty/webapp/WebAppContext;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_contexts:Lorg/eclipse/jetty/server/handler/HandlerCollection;

    instance-of v13, v13, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    if-eqz v13, :cond_11

    const-class v14, Lorg/eclipse/jetty/webapp/WebAppContext;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_contexts:Lorg/eclipse/jetty/server/handler/HandlerCollection;

    check-cast v13, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    invoke-virtual {v13}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->getContextClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 279
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_contexts:Lorg/eclipse/jetty/server/handler/HandlerCollection;

    check-cast v13, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    invoke-virtual {v13}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->getContextClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "wah":Lorg/eclipse/jetty/webapp/WebAppContext;
    check-cast v12, Lorg/eclipse/jetty/webapp/WebAppContext;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 292
    .restart local v12    # "wah":Lorg/eclipse/jetty/webapp/WebAppContext;
    :goto_5
    invoke-virtual {v12, v3}, Lorg/eclipse/jetty/webapp/WebAppContext;->setContextPath(Ljava/lang/String;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_configurationClasses:[Ljava/lang/String;

    if-eqz v13, :cond_f

    .line 294
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_configurationClasses:[Ljava/lang/String;

    invoke-virtual {v12, v13}, Lorg/eclipse/jetty/webapp/WebAppContext;->setConfigurationClasses([Ljava/lang/String;)V

    .line 295
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_defaultsDescriptor:Ljava/lang/String;

    if-eqz v13, :cond_10

    .line 296
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_defaultsDescriptor:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lorg/eclipse/jetty/webapp/WebAppContext;->setDefaultsDescriptor(Ljava/lang/String;)V

    .line 297
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_extract:Z

    invoke-virtual {v12, v13}, Lorg/eclipse/jetty/webapp/WebAppContext;->setExtractWAR(Z)V

    .line 298
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/eclipse/jetty/webapp/WebAppContext;->setWar(Ljava/lang/String;)V

    .line 299
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_parentLoaderPriority:Z

    invoke-virtual {v12, v13}, Lorg/eclipse/jetty/webapp/WebAppContext;->setParentLoaderPriority(Z)V

    .line 302
    new-instance v13, Lorg/eclipse/jetty/util/AttributesMap;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v13, v14}, Lorg/eclipse/jetty/util/AttributesMap;-><init>(Lorg/eclipse/jetty/util/AttributesMap;)V

    invoke-virtual {v12, v13}, Lorg/eclipse/jetty/webapp/WebAppContext;->setAttributes(Lorg/eclipse/jetty/util/Attributes;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_contexts:Lorg/eclipse/jetty/server/handler/HandlerCollection;

    invoke-virtual {v13, v12}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->addHandler(Lorg/eclipse/jetty/server/Handler;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_deployed:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_contexts:Lorg/eclipse/jetty/server/handler/HandlerCollection;

    invoke-virtual {v13}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->isStarted()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 309
    invoke-virtual {v12}, Lorg/eclipse/jetty/webapp/WebAppContext;->start()V

    goto/16 :goto_1

    .line 281
    .end local v12    # "wah":Lorg/eclipse/jetty/webapp/WebAppContext;
    :catch_1
    move-exception v4

    .line 283
    .restart local v4    # "e":Ljava/lang/Exception;
    new-instance v13, Ljava/lang/Error;

    invoke-direct {v13, v4}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 288
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v12    # "wah":Lorg/eclipse/jetty/webapp/WebAppContext;
    :cond_11
    new-instance v12, Lorg/eclipse/jetty/webapp/WebAppContext;

    .end local v12    # "wah":Lorg/eclipse/jetty/webapp/WebAppContext;
    invoke-direct {v12}, Lorg/eclipse/jetty/webapp/WebAppContext;-><init>()V

    .restart local v12    # "wah":Lorg/eclipse/jetty/webapp/WebAppContext;
    goto :goto_5

    .line 311
    .end local v1    # "app":Lorg/eclipse/jetty/util/resource/Resource;
    .end local v3    # "context":Ljava/lang/String;
    .end local v12    # "wah":Lorg/eclipse/jetty/webapp/WebAppContext;
    :cond_12
    return-void
.end method

.method public setAllowDuplicates(Z)V
    .locals 0
    .param p1, "allowDuplicates"    # Z

    .prologue
    .line 145
    iput-boolean p1, p0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_allowDuplicates:Z

    .line 146
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 156
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/util/AttributesMap;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public setConfigurationClasses([Ljava/lang/String;)V
    .locals 0
    .param p1, "configurationClasses"    # [Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_configurationClasses:[Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setContexts(Lorg/eclipse/jetty/server/handler/HandlerCollection;)V
    .locals 0
    .param p1, "contexts"    # Lorg/eclipse/jetty/server/handler/HandlerCollection;

    .prologue
    .line 91
    iput-object p1, p0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_contexts:Lorg/eclipse/jetty/server/handler/HandlerCollection;

    .line 92
    return-void
.end method

.method public setDefaultsDescriptor(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultsDescriptor"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_defaultsDescriptor:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setExtract(Z)V
    .locals 0
    .param p1, "extract"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_extract:Z

    .line 112
    return-void
.end method

.method public setParentLoaderPriority(Z)V
    .locals 0
    .param p1, "parentPriorityClassLoading"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_parentLoaderPriority:Z

    .line 122
    return-void
.end method

.method public setWebAppDir(Ljava/lang/String;)V
    .locals 0
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lorg/eclipse/jetty/deploy/WebAppDeployer;->_webAppDir:Ljava/lang/String;

    .line 132
    return-void
.end method
