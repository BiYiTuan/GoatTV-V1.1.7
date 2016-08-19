.class public Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "AndroidContextDeployer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/ijetty/deployer/AndroidContextDeployer$ScannerListener;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "ConfiguredDeployer"


# instance fields
.field private _attributes:Lorg/eclipse/jetty/util/AttributesMap;

.field private _configMgr:Lorg/eclipse/jetty/deploy/ConfigurationManager;

.field private _configurationDir:Lorg/eclipse/jetty/util/resource/Resource;

.field private _contexts:Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

.field private _currentDeployments:Ljava/util/Map;

.field private _recursive:Z

.field private _scanInterval:I

.field private _scanner:Lorg/eclipse/jetty/util/Scanner;

.field private _scannerListener:Lorg/mortbay/ijetty/deployer/AndroidContextDeployer$ScannerListener;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    .line 65
    const/16 v0, 0xa

    iput v0, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_scanInterval:I

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_currentDeployments:Ljava/util/Map;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_recursive:Z

    .line 78
    new-instance v0, Lorg/eclipse/jetty/util/Scanner;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/Scanner;-><init>()V

    iput-object v0, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    .line 79
    new-instance v0, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    .line 80
    return-void
.end method


# virtual methods
.method protected createContext(Ljava/lang/String;)Lorg/eclipse/jetty/server/handler/ContextHandler;
    .locals 8
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {p1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    .line 97
    .local v4, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 98
    const/4 v0, 0x0

    .line 117
    :cond_0
    return-object v0

    .line 101
    :cond_1
    new-instance v5, Lorg/eclipse/jetty/xml/XmlConfiguration;

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/eclipse/jetty/xml/XmlConfiguration;-><init>(Ljava/net/URL;)V

    .line 102
    .local v5, "xmlConfiguration":Lorg/eclipse/jetty/xml/XmlConfiguration;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 103
    .local v3, "properties":Ljava/util/HashMap;
    const-string v6, "Server"

    iget-object v7, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_contexts:Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v6, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_configMgr:Lorg/eclipse/jetty/deploy/ConfigurationManager;

    if-eqz v6, :cond_2

    .line 105
    iget-object v6, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_configMgr:Lorg/eclipse/jetty/deploy/ConfigurationManager;

    invoke-interface {v6}, Lorg/eclipse/jetty/deploy/ConfigurationManager;->getProperties()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 108
    :cond_2
    invoke-virtual {v5, v3}, Lorg/eclipse/jetty/xml/XmlConfiguration;->setProperties(Ljava/util/Map;)V

    .line 109
    invoke-virtual {v5}, Lorg/eclipse/jetty/xml/XmlConfiguration;->configure()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 111
    .local v0, "context":Lorg/eclipse/jetty/server/handler/ContextHandler;
    iget-object v6, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v6}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v2

    .line 112
    .local v2, "names":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 113
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 114
    .local v1, "name":Ljava/lang/String;
    iget-object v6, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v6, v1}, Lorg/eclipse/jetty/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public deploy(Ljava/lang/String;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->createContext(Ljava/lang/String;)Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v0

    .line 124
    .local v0, "context":Lorg/eclipse/jetty/server/handler/ContextHandler;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deploy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jetty/util/log/Log;->info(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_contexts:Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->addHandler(Lorg/eclipse/jetty/server/Handler;)V

    .line 126
    iget-object v1, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_currentDeployments:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v1, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_contexts:Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->start()V

    .line 130
    :cond_0
    return-void
.end method

.method protected doStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_configurationDir:Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 141
    const-string v0, "No configuration dir specified"

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->warn(Ljava/lang/String;)V

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No configuration dir specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_contexts:Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    if-nez v0, :cond_1

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No context handler collection specified for deployer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_1
    iget-object v0, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    iget-object v1, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_configurationDir:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/Scanner;->setScanDirs(Ljava/util/List;)V

    .line 150
    iget-object v0, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    invoke-virtual {p0}, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->getScanInterval()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/Scanner;->setScanInterval(I)V

    .line 151
    iget-object v0, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    iget-boolean v1, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_recursive:Z

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/Scanner;->setRecursive(Z)V

    .line 153
    iget-object v0, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    new-instance v1, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer$1;

    invoke-direct {v1, p0}, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer$1;-><init>(Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/Scanner;->setFilenameFilter(Ljava/io/FilenameFilter;)V

    .line 166
    new-instance v0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer$ScannerListener;

    invoke-direct {v0, p0}, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer$ScannerListener;-><init>(Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;)V

    iput-object v0, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_scannerListener:Lorg/mortbay/ijetty/deployer/AndroidContextDeployer$ScannerListener;

    .line 167
    iget-object v0, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    iget-object v1, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_scannerListener:Lorg/mortbay/ijetty/deployer/AndroidContextDeployer$ScannerListener;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/Scanner;->addListener(Lorg/eclipse/jetty/util/Scanner$Listener;)V

    .line 168
    iget-object v0, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Scanner;->scan()V

    .line 169
    iget-object v0, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Scanner;->start()V

    .line 170
    iget-object v0, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_contexts:Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/component/Container;->addBean(Ljava/lang/Object;)V

    .line 171
    return-void
.end method

.method protected doStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    iget-object v1, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_scannerListener:Lorg/mortbay/ijetty/deployer/AndroidContextDeployer$ScannerListener;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/Scanner;->removeListener(Lorg/eclipse/jetty/util/Scanner$Listener;)V

    .line 182
    iget-object v0, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Scanner;->stop()V

    .line 183
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v0, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getConfigurationDir()Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_configurationDir:Lorg/eclipse/jetty/util/resource/Resource;

    return-object v0
.end method

.method public getConfigurationManager()Lorg/eclipse/jetty/deploy/ConfigurationManager;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_configMgr:Lorg/eclipse/jetty/deploy/ConfigurationManager;

    return-object v0
.end method

.method public getContexts()Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_contexts:Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    return-object v0
.end method

.method public getDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->getConfigurationDir()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecursive()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_recursive:Z

    return v0
.end method

.method public getScanInterval()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_scanInterval:I

    return v0
.end method

.method public isRecursive()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_recursive:Z

    return v0
.end method

.method public redeploy(Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->undeploy(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0, p1}, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->deploy(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 241
    iget-object v0, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/util/AttributesMap;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    return-void
.end method

.method public setConfigurationDir(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 250
    invoke-virtual {p1}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->setConfigurationDir(Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 251
    return-void
.end method

.method public setConfigurationDir(Ljava/lang/String;)V
    .locals 1
    .param p1, "dir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 270
    invoke-static {p1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->setConfigurationDir(Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 271
    return-void
.end method

.method public setConfigurationDir(Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 2
    .param p1, "resource"    # Lorg/eclipse/jetty/util/resource/Resource;

    .prologue
    .line 258
    invoke-virtual {p0}, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->isStarting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change hot deploy dir after deployer start"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_1
    iput-object p1, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_configurationDir:Lorg/eclipse/jetty/util/resource/Resource;

    .line 262
    return-void
.end method

.method public setConfigurationManager(Lorg/eclipse/jetty/deploy/ConfigurationManager;)V
    .locals 0
    .param p1, "configMgr"    # Lorg/eclipse/jetty/deploy/ConfigurationManager;

    .prologue
    .line 278
    iput-object p1, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_configMgr:Lorg/eclipse/jetty/deploy/ConfigurationManager;

    .line 279
    return-void
.end method

.method public setContexts(Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;)V
    .locals 2
    .param p1, "contexts"    # Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    .prologue
    .line 289
    invoke-virtual {p0}, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->isStarting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set Contexts after deployer start"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_1
    iput-object p1, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_contexts:Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    .line 293
    return-void
.end method

.method public setDirectory(Ljava/lang/String;)V
    .locals 0
    .param p1, "directory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual {p0, p1}, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->setConfigurationDir(Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public setRecursive(Z)V
    .locals 0
    .param p1, "recursive"    # Z

    .prologue
    .line 304
    iput-boolean p1, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_recursive:Z

    .line 305
    return-void
.end method

.method public setScanInterval(I)V
    .locals 2
    .param p1, "seconds"    # I

    .prologue
    .line 314
    invoke-virtual {p0}, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->isStarting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change scan interval after deployer start"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_1
    iput p1, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_scanInterval:I

    .line 318
    return-void
.end method

.method public undeploy(Ljava/lang/String;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 322
    iget-object v1, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_currentDeployments:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 323
    .local v0, "context":Lorg/eclipse/jetty/server/handler/ContextHandler;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undeploy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jetty/util/log/Log;->info(Ljava/lang/String;)V

    .line 324
    if-nez v0, :cond_0

    .line 330
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->stop()V

    .line 328
    iget-object v1, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_contexts:Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->removeHandler(Lorg/eclipse/jetty/server/Handler;)V

    .line 329
    iget-object v1, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->_currentDeployments:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
