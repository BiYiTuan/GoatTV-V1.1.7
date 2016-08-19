.class public Lorg/mortbay/ijetty/deployer/AndroidWebAppDeployer;
.super Lorg/eclipse/jetty/deploy/WebAppDeployer;
.source "AndroidWebAppDeployer.java"


# instance fields
.field private _attributes:Lorg/eclipse/jetty/util/AttributesMap;

.field private _deployed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<-",
            "Lorg/eclipse/jetty/servlet/ServletContextHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/eclipse/jetty/deploy/WebAppDeployer;-><init>()V

    .line 54
    new-instance v0, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/ijetty/deployer/AndroidWebAppDeployer;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

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
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mortbay/ijetty/deployer/AndroidWebAppDeployer;->_deployed:Ljava/util/List;

    .line 63
    invoke-virtual {p0}, Lorg/mortbay/ijetty/deployer/AndroidWebAppDeployer;->scan()V

    .line 65
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
    .line 69
    iget-object v3, p0, Lorg/mortbay/ijetty/deployer/AndroidWebAppDeployer;->_deployed:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

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

    .line 70
    iget-object v3, p0, Lorg/mortbay/ijetty/deployer/AndroidWebAppDeployer;->_deployed:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 71
    .local v2, "wac":Lorg/eclipse/jetty/server/handler/ContextHandler;
    invoke-virtual {v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->stop()V

    move v1, v0

    .line 72
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 73
    .end local v1    # "i":I
    .end local v2    # "wac":Lorg/eclipse/jetty/server/handler/ContextHandler;
    .restart local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/mortbay/ijetty/deployer/AndroidWebAppDeployer;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public scan()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/ijetty/deployer/AndroidWebAppDeployer;->getContexts()Lorg/eclipse/jetty/server/handler/HandlerCollection;

    move-result-object v17

    if-nez v17, :cond_0

    .line 88
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "No HandlerContainer"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 91
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/ijetty/deployer/AndroidWebAppDeployer;->getWebAppDir()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v14

    .line 92
    .local v14, "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v14}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v17

    if-nez v17, :cond_1

    .line 93
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "No such webapps resource "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 96
    :cond_1
    invoke-virtual {v14}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v17

    if-nez v17, :cond_2

    .line 97
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Not directory webapps resource "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 100
    :cond_2
    invoke-virtual {v14}, Lorg/eclipse/jetty/util/resource/Resource;->list()[Ljava/lang/String;

    move-result-object v8

    .line 102
    .local v8, "files":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "f":I
    :goto_0
    if-eqz v8, :cond_13

    array-length v0, v8

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_13

    .line 103
    aget-object v4, v8, v7

    .line 105
    .local v4, "context":Ljava/lang/String;
    const-string v17, "CVS/"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    const-string v17, "CVS"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    const-string v17, "."

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 102
    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 109
    :cond_4
    invoke-virtual {v14, v4}, Lorg/eclipse/jetty/util/resource/Resource;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    .line 111
    .local v2, "app":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    const-string v18, ".war"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    const-string v18, ".jar"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 112
    :cond_5
    const/16 v17, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x4

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-virtual {v14, v4}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v15

    .line 115
    .local v15, "unpacked":Lorg/eclipse/jetty/util/resource/Resource;
    if-eqz v15, :cond_7

    invoke-virtual {v15}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-virtual {v15}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 116
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " already exists."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/eclipse/jetty/util/log/Log;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 119
    .end local v15    # "unpacked":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_6
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v17

    if-nez v17, :cond_7

    .line 120
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " Not directory"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/eclipse/jetty/util/log/Log;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 124
    :cond_7
    const-string v17, "root"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_8

    const-string v17, "root/"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 125
    :cond_8
    const-string v4, "/"

    .line 129
    :goto_2
    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_9

    .line 130
    const/16 v17, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 135
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/ijetty/deployer/AndroidWebAppDeployer;->getAllowDuplicates()Z

    move-result v17

    if-nez v17, :cond_e

    .line 136
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/ijetty/deployer/AndroidWebAppDeployer;->getContexts()Lorg/eclipse/jetty/server/handler/HandlerCollection;

    move-result-object v17

    const-class v18, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual/range {v17 .. v18}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object v10

    .line 137
    .local v10, "installed":[Lorg/eclipse/jetty/server/Handler;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    array-length v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_e

    .line 138
    aget-object v3, v10, v9

    check-cast v3, Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 140
    .local v3, "c":Lorg/eclipse/jetty/server/handler/ContextHandler;
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 141
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 142
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " Context were equal; duplicate!"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/eclipse/jetty/util/log/Log;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 127
    .end local v3    # "c":Lorg/eclipse/jetty/server/handler/ContextHandler;
    .end local v9    # "i":I
    .end local v10    # "installed":[Lorg/eclipse/jetty/server/Handler;
    :cond_a
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 148
    .restart local v3    # "c":Lorg/eclipse/jetty/server/handler/ContextHandler;
    .restart local v9    # "i":I
    .restart local v10    # "installed":[Lorg/eclipse/jetty/server/Handler;
    :cond_b
    instance-of v0, v3, Lorg/eclipse/jetty/webapp/WebAppContext;

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 149
    check-cast v3, Lorg/eclipse/jetty/webapp/WebAppContext;

    .end local v3    # "c":Lorg/eclipse/jetty/server/handler/ContextHandler;
    invoke-virtual {v3}, Lorg/eclipse/jetty/webapp/WebAppContext;->getWar()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    .line 154
    .local v13, "path":Ljava/lang/String;
    :goto_4
    if-eqz v13, :cond_d

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 155
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 156
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " Paths were equal; duplicate!"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/eclipse/jetty/util/log/Log;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 151
    .end local v13    # "path":Ljava/lang/String;
    .restart local v3    # "c":Lorg/eclipse/jetty/server/handler/ContextHandler;
    :cond_c
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "path":Ljava/lang/String;
    goto :goto_4

    .line 137
    .end local v3    # "c":Lorg/eclipse/jetty/server/handler/ContextHandler;
    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 165
    .end local v9    # "i":I
    .end local v10    # "installed":[Lorg/eclipse/jetty/server/Handler;
    .end local v13    # "path":Ljava/lang/String;
    :cond_e
    const/16 v16, 0x0

    .line 166
    .local v16, "wah":Lorg/eclipse/jetty/webapp/WebAppContext;
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/ijetty/deployer/AndroidWebAppDeployer;->getContexts()Lorg/eclipse/jetty/server/handler/HandlerCollection;

    move-result-object v5

    .line 167
    .local v5, "contexts":Lorg/eclipse/jetty/server/handler/HandlerCollection;
    instance-of v0, v5, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    move/from16 v17, v0

    if-eqz v17, :cond_11

    const-class v18, Lorg/eclipse/jetty/webapp/WebAppContext;

    move-object/from16 v17, v5

    check-cast v17, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->getContextClass()Ljava/lang/Class;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 170
    :try_start_0
    move-object v0, v5

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->getContextClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "wah":Lorg/eclipse/jetty/webapp/WebAppContext;
    check-cast v16, Lorg/eclipse/jetty/webapp/WebAppContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .restart local v16    # "wah":Lorg/eclipse/jetty/webapp/WebAppContext;
    :goto_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/webapp/WebAppContext;->setContextPath(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/ijetty/deployer/AndroidWebAppDeployer;->getConfigurationClasses()[Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_f

    .line 182
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/ijetty/deployer/AndroidWebAppDeployer;->getConfigurationClasses()[Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lorg/eclipse/jetty/webapp/WebAppContext;->setConfigurationClasses([Ljava/lang/String;)V

    .line 185
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/ijetty/deployer/AndroidWebAppDeployer;->getDefaultsDescriptor()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_10

    .line 186
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/ijetty/deployer/AndroidWebAppDeployer;->getDefaultsDescriptor()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lorg/eclipse/jetty/webapp/WebAppContext;->setDefaultsDescriptor(Ljava/lang/String;)V

    .line 188
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/ijetty/deployer/AndroidWebAppDeployer;->isExtract()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lorg/eclipse/jetty/webapp/WebAppContext;->setExtractWAR(Z)V

    .line 189
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lorg/eclipse/jetty/webapp/WebAppContext;->setWar(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/ijetty/deployer/AndroidWebAppDeployer;->isParentLoaderPriority()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lorg/eclipse/jetty/webapp/WebAppContext;->setParentLoaderPriority(Z)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/ijetty/deployer/AndroidWebAppDeployer;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v12

    .line 193
    .local v12, "names":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_6
    invoke-interface {v12}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_12

    .line 194
    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 195
    .local v11, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/ijetty/deployer/AndroidWebAppDeployer;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/eclipse/jetty/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Lorg/eclipse/jetty/webapp/WebAppContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 171
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "names":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v16    # "wah":Lorg/eclipse/jetty/webapp/WebAppContext;
    :catch_0
    move-exception v6

    .line 172
    .local v6, "e":Ljava/lang/Exception;
    new-instance v17, Ljava/lang/Error;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 175
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v16    # "wah":Lorg/eclipse/jetty/webapp/WebAppContext;
    :cond_11
    new-instance v16, Lorg/eclipse/jetty/webapp/WebAppContext;

    .end local v16    # "wah":Lorg/eclipse/jetty/webapp/WebAppContext;
    invoke-direct/range {v16 .. v16}, Lorg/eclipse/jetty/webapp/WebAppContext;-><init>()V

    .restart local v16    # "wah":Lorg/eclipse/jetty/webapp/WebAppContext;
    goto :goto_5

    .line 199
    .restart local v12    # "names":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_12
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "AndroidWebAppDeployer: prepared "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/eclipse/jetty/util/log/Log;->debug(Ljava/lang/String;)V

    .line 200
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->addHandler(Lorg/eclipse/jetty/server/Handler;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/ijetty/deployer/AndroidWebAppDeployer;->_deployed:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/webapp/WebAppContext;->start()V

    goto/16 :goto_1

    .line 205
    .end local v2    # "app":Lorg/eclipse/jetty/util/resource/Resource;
    .end local v4    # "context":Ljava/lang/String;
    .end local v5    # "contexts":Lorg/eclipse/jetty/server/handler/HandlerCollection;
    .end local v12    # "names":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v16    # "wah":Lorg/eclipse/jetty/webapp/WebAppContext;
    :cond_13
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 208
    iget-object v0, p0, Lorg/mortbay/ijetty/deployer/AndroidWebAppDeployer;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/util/AttributesMap;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    return-void
.end method
