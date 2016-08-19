.class public abstract Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "ScanningAppProvider.java"

# interfaces
.implements Lorg/eclipse/jetty/deploy/AppProvider;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _appMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/deploy/App;",
            ">;"
        }
    .end annotation
.end field

.field private _deploymentManager:Lorg/eclipse/jetty/deploy/DeploymentManager;

.field protected final _filenameFilter:Ljava/io/FilenameFilter;

.field private _monitoredDir:Lorg/eclipse/jetty/util/resource/Resource;

.field private _recursive:Z

.field private _scanInterval:I

.field private _scanner:Lorg/eclipse/jetty/util/Scanner;

.field private final _scannerListener:Lorg/eclipse/jetty/util/Scanner$DiscreteListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method protected constructor <init>(Ljava/io/FilenameFilter;)V
    .locals 1
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_appMap:Ljava/util/Map;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_recursive:Z

    .line 45
    const/16 v0, 0xa

    iput v0, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_scanInterval:I

    .line 49
    new-instance v0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider$1;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider$1;-><init>(Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;)V

    iput-object v0, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_scannerListener:Lorg/eclipse/jetty/util/Scanner$DiscreteListener;

    .line 70
    iput-object p1, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_filenameFilter:Ljava/io/FilenameFilter;

    .line 71
    return-void
.end method


# virtual methods
.method public addScannerListener(Lorg/eclipse/jetty/util/Scanner$Listener;)V
    .locals 1
    .param p1, "listener"    # Lorg/eclipse/jetty/util/Scanner$Listener;

    .prologue
    .line 225
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/Scanner;->addListener(Lorg/eclipse/jetty/util/Scanner$Listener;)V

    .line 226
    return-void
.end method

.method protected createApp(Ljava/lang/String;)Lorg/eclipse/jetty/deploy/App;
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 95
    new-instance v0, Lorg/eclipse/jetty/deploy/App;

    iget-object v1, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_deploymentManager:Lorg/eclipse/jetty/deploy/DeploymentManager;

    invoke-direct {v0, v1, p0, p1}, Lorg/eclipse/jetty/deploy/App;-><init>(Lorg/eclipse/jetty/deploy/DeploymentManager;Lorg/eclipse/jetty/deploy/AppProvider;Ljava/lang/String;)V

    return-object v0
.end method

.method protected doStart()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 102
    sget-object v1, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    sget-object v1, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".doStart()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_monitoredDir:Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v1, :cond_1

    .line 106
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No configuration dir specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_monitoredDir:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v0

    .line 110
    .local v0, "scandir":Ljava/io/File;
    sget-object v1, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deployment monitor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at interval "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_scanInterval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    new-instance v1, Lorg/eclipse/jetty/util/Scanner;

    invoke-direct {v1}, Lorg/eclipse/jetty/util/Scanner;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    .line 112
    iget-object v1, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/util/Scanner;->setScanDirs(Ljava/util/List;)V

    .line 113
    iget-object v1, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    iget v2, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_scanInterval:I

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/util/Scanner;->setScanInterval(I)V

    .line 114
    iget-object v1, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    iget-boolean v2, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_recursive:Z

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/util/Scanner;->setRecursive(Z)V

    .line 115
    iget-object v1, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    iget-object v2, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_filenameFilter:Ljava/io/FilenameFilter;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/util/Scanner;->setFilenameFilter(Ljava/io/FilenameFilter;)V

    .line 116
    iget-object v1, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/util/Scanner;->setReportDirs(Z)V

    .line 117
    iget-object v1, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    iget-object v2, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_scannerListener:Lorg/eclipse/jetty/util/Scanner$DiscreteListener;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/util/Scanner;->addListener(Lorg/eclipse/jetty/util/Scanner$Listener;)V

    .line 118
    iget-object v1, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/Scanner;->start()V

    .line 119
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
    .line 125
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Scanner;->stop()V

    .line 128
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    iget-object v1, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_scannerListener:Lorg/eclipse/jetty/util/Scanner$DiscreteListener;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/Scanner;->removeListener(Lorg/eclipse/jetty/util/Scanner$Listener;)V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    .line 131
    :cond_0
    return-void
.end method

.method protected fileAdded(Ljava/lang/String;)V
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 136
    sget-object v1, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    sget-object v1, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "added {}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->createApp(Ljava/lang/String;)Lorg/eclipse/jetty/deploy/App;

    move-result-object v0

    .line 139
    .local v0, "app":Lorg/eclipse/jetty/deploy/App;
    if-eqz v0, :cond_1

    .line 141
    iget-object v1, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_appMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v1, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_deploymentManager:Lorg/eclipse/jetty/deploy/DeploymentManager;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/deploy/DeploymentManager;->addApp(Lorg/eclipse/jetty/deploy/App;)V

    .line 144
    :cond_1
    return-void
.end method

.method protected fileChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 149
    sget-object v1, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    sget-object v1, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "changed {}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_appMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/deploy/App;

    .line 152
    .local v0, "app":Lorg/eclipse/jetty/deploy/App;
    if-eqz v0, :cond_1

    .line 154
    iget-object v1, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_deploymentManager:Lorg/eclipse/jetty/deploy/DeploymentManager;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/deploy/DeploymentManager;->removeApp(Lorg/eclipse/jetty/deploy/App;)V

    .line 156
    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->createApp(Ljava/lang/String;)Lorg/eclipse/jetty/deploy/App;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_2

    .line 159
    iget-object v1, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_appMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v1, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_deploymentManager:Lorg/eclipse/jetty/deploy/DeploymentManager;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/deploy/DeploymentManager;->addApp(Lorg/eclipse/jetty/deploy/App;)V

    .line 162
    :cond_2
    return-void
.end method

.method protected fileRemoved(Ljava/lang/String;)V
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 167
    sget-object v1, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    sget-object v1, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "removed {}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_appMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/deploy/App;

    .line 170
    .local v0, "app":Lorg/eclipse/jetty/deploy/App;
    if-eqz v0, :cond_1

    .line 171
    iget-object v1, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_deploymentManager:Lorg/eclipse/jetty/deploy/DeploymentManager;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/deploy/DeploymentManager;->removeApp(Lorg/eclipse/jetty/deploy/App;)V

    .line 172
    :cond_1
    return-void
.end method

.method protected getDeployedApps()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/deploy/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_appMap:Ljava/util/Map;

    return-object v0
.end method

.method public getDeploymentManager()Lorg/eclipse/jetty/deploy/DeploymentManager;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_deploymentManager:Lorg/eclipse/jetty/deploy/DeploymentManager;

    return-object v0
.end method

.method public getMonitoredDirName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_monitoredDir:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMonitoredDirResource()Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_monitoredDir:Lorg/eclipse/jetty/util/resource/Resource;

    return-object v0
.end method

.method public getScanInterval()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_scanInterval:I

    return v0
.end method

.method public isRecursive()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_recursive:Z

    return v0
.end method

.method public setDeploymentManager(Lorg/eclipse/jetty/deploy/DeploymentManager;)V
    .locals 0
    .param p1, "deploymentManager"    # Lorg/eclipse/jetty/deploy/DeploymentManager;

    .prologue
    .line 213
    iput-object p1, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_deploymentManager:Lorg/eclipse/jetty/deploy/DeploymentManager;

    .line 214
    return-void
.end method

.method public setMonitoredDir(Ljava/lang/String;)V
    .locals 0
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->setMonitoredDirName(Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public setMonitoredDirName(Ljava/lang/String;)V
    .locals 2
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    .line 246
    :try_start_0
    invoke-static {p1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->setMonitoredDirResource(Lorg/eclipse/jetty/util/resource/Resource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setMonitoredDirResource(Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 0
    .param p1, "contextsDir"    # Lorg/eclipse/jetty/util/resource/Resource;

    .prologue
    .line 219
    iput-object p1, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_monitoredDir:Lorg/eclipse/jetty/util/resource/Resource;

    .line 220
    return-void
.end method

.method protected setRecursive(Z)V
    .locals 0
    .param p1, "recursive"    # Z

    .prologue
    .line 257
    iput-boolean p1, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_recursive:Z

    .line 258
    return-void
.end method

.method public setScanInterval(I)V
    .locals 0
    .param p1, "scanInterval"    # I

    .prologue
    .line 263
    iput p1, p0, Lorg/eclipse/jetty/deploy/providers/ScanningAppProvider;->_scanInterval:I

    .line 264
    return-void
.end method
