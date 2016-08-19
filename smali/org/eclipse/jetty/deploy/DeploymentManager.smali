.class public Lorg/eclipse/jetty/deploy/DeploymentManager;
.super Lorg/eclipse/jetty/util/component/AggregateLifeCycle;
.source "DeploymentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final _apps:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private _contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

.field private _contexts:Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

.field private _defaultLifeCycleGoal:Ljava/lang/String;

.field private final _lifecycle:Lorg/eclipse/jetty/deploy/AppLifeCycle;

.field private final _providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/deploy/AppProvider;",
            ">;"
        }
    .end annotation
.end field

.field private _useStandardBindings:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lorg/eclipse/jetty/deploy/DeploymentManager;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/deploy/DeploymentManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;-><init>()V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_providers:Ljava/util/List;

    .line 115
    new-instance v0, Lorg/eclipse/jetty/deploy/AppLifeCycle;

    invoke-direct {v0}, Lorg/eclipse/jetty/deploy/AppLifeCycle;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_lifecycle:Lorg/eclipse/jetty/deploy/AppLifeCycle;

    .line 116
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_apps:Ljava/util/Queue;

    .line 117
    new-instance v0, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_useStandardBindings:Z

    .line 120
    const-string v0, "started"

    iput-object v0, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_defaultLifeCycleGoal:Ljava/lang/String;

    return-void
.end method

.method private findAppByOriginId(Ljava/lang/String;)Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;
    .locals 4
    .param p1, "originId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 252
    if-nez p1, :cond_0

    move-object v0, v2

    .line 264
    :goto_0
    return-object v0

    .line 257
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_apps:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;

    .line 259
    .local v0, "entry":Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;
    # getter for: Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->app:Lorg/eclipse/jetty/deploy/App;
    invoke-static {v0}, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->access$000(Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;)Lorg/eclipse/jetty/deploy/App;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jetty/deploy/App;->getOriginId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .end local v0    # "entry":Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;
    :cond_2
    move-object v0, v2

    .line 264
    goto :goto_0
.end method

.method private requestAppGoal(Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;Ljava/lang/String;)V
    .locals 9
    .param p1, "appentry"    # Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;
    .param p2, "nodeName"    # Ljava/lang/String;

    .prologue
    .line 465
    iget-object v5, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_lifecycle:Lorg/eclipse/jetty/deploy/AppLifeCycle;

    invoke-virtual {v5, p2}, Lorg/eclipse/jetty/deploy/AppLifeCycle;->getNodeByName(Ljava/lang/String;)Lorg/eclipse/jetty/deploy/graph/Node;

    move-result-object v0

    .line 466
    .local v0, "destinationNode":Lorg/eclipse/jetty/deploy/graph/Node;
    if-nez v0, :cond_0

    .line 468
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Node not present in Deployment Manager: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 471
    :cond_0
    iget-object v5, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_lifecycle:Lorg/eclipse/jetty/deploy/AppLifeCycle;

    # getter for: Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->lifecyleNode:Lorg/eclipse/jetty/deploy/graph/Node;
    invoke-static {p1}, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->access$100(Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;)Lorg/eclipse/jetty/deploy/graph/Node;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lorg/eclipse/jetty/deploy/AppLifeCycle;->getPath(Lorg/eclipse/jetty/deploy/graph/Node;Lorg/eclipse/jetty/deploy/graph/Node;)Lorg/eclipse/jetty/deploy/graph/Path;

    move-result-object v3

    .line 472
    .local v3, "path":Lorg/eclipse/jetty/deploy/graph/Path;
    invoke-virtual {v3}, Lorg/eclipse/jetty/deploy/graph/Path;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 500
    :cond_1
    :goto_0
    return-void

    .line 481
    :cond_2
    :try_start_0
    invoke-virtual {v3}, Lorg/eclipse/jetty/deploy/graph/Path;->getNodes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 482
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/deploy/graph/Node;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 486
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 487
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 489
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/deploy/graph/Node;

    .line 490
    .local v2, "node":Lorg/eclipse/jetty/deploy/graph/Node;
    sget-object v5, Lorg/eclipse/jetty/deploy/DeploymentManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "Executing Node {}"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    iget-object v5, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_lifecycle:Lorg/eclipse/jetty/deploy/AppLifeCycle;

    # getter for: Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->app:Lorg/eclipse/jetty/deploy/App;
    invoke-static {p1}, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->access$000(Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;)Lorg/eclipse/jetty/deploy/App;

    move-result-object v6

    invoke-virtual {v5, v2, v6, p0}, Lorg/eclipse/jetty/deploy/AppLifeCycle;->runBindings(Lorg/eclipse/jetty/deploy/graph/Node;Lorg/eclipse/jetty/deploy/App;Lorg/eclipse/jetty/deploy/DeploymentManager;)V

    .line 492
    invoke-virtual {p1, v2}, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->setLifeCycleNode(Lorg/eclipse/jetty/deploy/graph/Node;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 496
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/deploy/graph/Node;>;"
    .end local v2    # "node":Lorg/eclipse/jetty/deploy/graph/Node;
    :catch_0
    move-exception v4

    .line 498
    .local v4, "t":Ljava/lang/Throwable;
    sget-object v5, Lorg/eclipse/jetty/deploy/DeploymentManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to reach node goal: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private startAppProvider(Lorg/eclipse/jetty/deploy/AppProvider;)V
    .locals 3
    .param p1, "provider"    # Lorg/eclipse/jetty/deploy/AppProvider;

    .prologue
    .line 551
    :try_start_0
    invoke-interface {p1, p0}, Lorg/eclipse/jetty/deploy/AppProvider;->setDeploymentManager(Lorg/eclipse/jetty/deploy/DeploymentManager;)V

    .line 552
    invoke-interface {p1}, Lorg/eclipse/jetty/deploy/AppProvider;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :goto_0
    return-void

    .line 554
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/eclipse/jetty/deploy/DeploymentManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "Unable to start AppProvider"

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public addApp(Lorg/eclipse/jetty/deploy/App;)V
    .locals 4
    .param p1, "app"    # Lorg/eclipse/jetty/deploy/App;

    .prologue
    .line 129
    sget-object v1, Lorg/eclipse/jetty/deploy/DeploymentManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deployable added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/eclipse/jetty/deploy/App;->getOriginId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    new-instance v0, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;-><init>(Lorg/eclipse/jetty/deploy/DeploymentManager;)V

    .line 131
    .local v0, "entry":Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;
    # setter for: Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->app:Lorg/eclipse/jetty/deploy/App;
    invoke-static {v0, p1}, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->access$002(Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;Lorg/eclipse/jetty/deploy/App;)Lorg/eclipse/jetty/deploy/App;

    .line 132
    iget-object v1, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_lifecycle:Lorg/eclipse/jetty/deploy/AppLifeCycle;

    const-string v2, "undeployed"

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/deploy/AppLifeCycle;->getNodeByName(Ljava/lang/String;)Lorg/eclipse/jetty/deploy/graph/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->setLifeCycleNode(Lorg/eclipse/jetty/deploy/graph/Node;)V

    .line 133
    iget-object v1, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_apps:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {p0}, Lorg/eclipse/jetty/deploy/DeploymentManager;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_defaultLifeCycleGoal:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_defaultLifeCycleGoal:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/deploy/DeploymentManager;->requestAppGoal(Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;Ljava/lang/String;)V

    .line 140
    :cond_0
    return-void
.end method

.method public addAppProvider(Lorg/eclipse/jetty/deploy/AppProvider;)V
    .locals 4
    .param p1, "provider"    # Lorg/eclipse/jetty/deploy/AppProvider;

    .prologue
    .line 167
    invoke-virtual {p0}, Lorg/eclipse/jetty/deploy/DeploymentManager;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 170
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_providers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 171
    .local v0, "old":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/deploy/AppProvider;>;"
    iget-object v1, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_providers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jetty/deploy/DeploymentManager;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 172
    invoke-virtual {p0}, Lorg/eclipse/jetty/deploy/DeploymentManager;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "provider"

    invoke-virtual {v1, p0, v2, p1, v3}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/deploy/DeploymentManager;->addBean(Ljava/lang/Object;)Z

    .line 175
    return-void
.end method

.method public addLifeCycleBinding(Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;)V
    .locals 1
    .param p1, "binding"    # Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;

    .prologue
    .line 194
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_lifecycle:Lorg/eclipse/jetty/deploy/AppLifeCycle;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/deploy/AppLifeCycle;->addBinding(Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;)V

    .line 195
    return-void
.end method

.method protected doStart()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 215
    iget-boolean v2, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_useStandardBindings:Z

    if-eqz v2, :cond_0

    .line 217
    sget-object v2, Lorg/eclipse/jetty/deploy/DeploymentManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "DeploymentManager using standard bindings"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    new-instance v2, Lorg/eclipse/jetty/deploy/bindings/StandardDeployer;

    invoke-direct {v2}, Lorg/eclipse/jetty/deploy/bindings/StandardDeployer;-><init>()V

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/deploy/DeploymentManager;->addLifeCycleBinding(Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;)V

    .line 219
    new-instance v2, Lorg/eclipse/jetty/deploy/bindings/StandardStarter;

    invoke-direct {v2}, Lorg/eclipse/jetty/deploy/bindings/StandardStarter;-><init>()V

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/deploy/DeploymentManager;->addLifeCycleBinding(Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;)V

    .line 220
    new-instance v2, Lorg/eclipse/jetty/deploy/bindings/StandardStopper;

    invoke-direct {v2}, Lorg/eclipse/jetty/deploy/bindings/StandardStopper;-><init>()V

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/deploy/DeploymentManager;->addLifeCycleBinding(Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;)V

    .line 221
    new-instance v2, Lorg/eclipse/jetty/deploy/bindings/StandardUndeployer;

    invoke-direct {v2}, Lorg/eclipse/jetty/deploy/bindings/StandardUndeployer;-><init>()V

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/deploy/DeploymentManager;->addLifeCycleBinding(Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;)V

    .line 225
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_providers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/deploy/AppProvider;

    .line 227
    .local v1, "provider":Lorg/eclipse/jetty/deploy/AppProvider;
    invoke-direct {p0, v1}, Lorg/eclipse/jetty/deploy/DeploymentManager;->startAppProvider(Lorg/eclipse/jetty/deploy/AppProvider;)V

    goto :goto_0

    .line 229
    .end local v1    # "provider":Lorg/eclipse/jetty/deploy/AppProvider;
    :cond_1
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->doStart()V

    .line 230
    return-void
.end method

.method protected doStop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v3, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_providers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/deploy/AppProvider;

    .line 240
    .local v2, "provider":Lorg/eclipse/jetty/deploy/AppProvider;
    :try_start_0
    invoke-interface {v2}, Lorg/eclipse/jetty/deploy/AppProvider;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/eclipse/jetty/deploy/DeploymentManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "Unable to start AppProvider"

    invoke-interface {v3, v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 247
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "provider":Lorg/eclipse/jetty/deploy/AppProvider;
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->doStop()V

    .line 248
    return-void
.end method

.method public getAppByOriginId(Ljava/lang/String;)Lorg/eclipse/jetty/deploy/App;
    .locals 2
    .param p1, "originId"    # Ljava/lang/String;

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/deploy/DeploymentManager;->findAppByOriginId(Ljava/lang/String;)Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;

    move-result-object v0

    .line 270
    .local v0, "entry":Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;
    if-nez v0, :cond_0

    .line 272
    const/4 v1, 0x0

    .line 274
    :goto_0
    return-object v1

    :cond_0
    # getter for: Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->app:Lorg/eclipse/jetty/deploy/App;
    invoke-static {v0}, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->access$000(Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;)Lorg/eclipse/jetty/deploy/App;

    move-result-object v1

    goto :goto_0
.end method

.method public getAppEntries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_apps:Ljava/util/Queue;

    return-object v0
.end method

.method public getAppProviders()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/eclipse/jetty/deploy/AppProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_providers:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getApps()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/eclipse/jetty/deploy/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/deploy/App;>;"
    iget-object v3, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_apps:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;

    .line 287
    .local v0, "entry":Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;
    # getter for: Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->app:Lorg/eclipse/jetty/deploy/App;
    invoke-static {v0}, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->access$000(Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;)Lorg/eclipse/jetty/deploy/App;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 289
    .end local v0    # "entry":Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;
    :cond_0
    return-object v2
.end method

.method public getApps(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .param p1, "nodeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/eclipse/jetty/deploy/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 586
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_lifecycle:Lorg/eclipse/jetty/deploy/AppLifeCycle;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/deploy/AppLifeCycle;->getNodeByName(Ljava/lang/String;)Lorg/eclipse/jetty/deploy/graph/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/deploy/DeploymentManager;->getApps(Lorg/eclipse/jetty/deploy/graph/Node;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getApps(Lorg/eclipse/jetty/deploy/graph/Node;)Ljava/util/Collection;
    .locals 4
    .param p1, "node"    # Lorg/eclipse/jetty/deploy/graph/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/deploy/graph/Node;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/eclipse/jetty/deploy/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/deploy/App;>;"
    iget-object v3, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_apps:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;

    .line 304
    .local v0, "entry":Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;
    # getter for: Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->lifecyleNode:Lorg/eclipse/jetty/deploy/graph/Node;
    invoke-static {v0}, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->access$100(Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;)Lorg/eclipse/jetty/deploy/graph/Node;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 306
    # getter for: Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->app:Lorg/eclipse/jetty/deploy/App;
    invoke-static {v0}, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->access$000(Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;)Lorg/eclipse/jetty/deploy/App;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 309
    .end local v0    # "entry":Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;
    :cond_1
    return-object v2
.end method

.method public getAppsWithSameContext(Lorg/eclipse/jetty/deploy/App;)Ljava/util/List;
    .locals 5
    .param p1, "app"    # Lorg/eclipse/jetty/deploy/App;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/deploy/App;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/deploy/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v3, "ret":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/deploy/App;>;"
    if-nez p1, :cond_1

    .line 341
    :cond_0
    return-object v3

    .line 320
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jetty/deploy/App;->getContextPath()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "contextId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 327
    iget-object v4, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_apps:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;

    .line 329
    .local v1, "entry":Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;
    # getter for: Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->app:Lorg/eclipse/jetty/deploy/App;
    invoke-static {v1}, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->access$000(Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;)Lorg/eclipse/jetty/deploy/App;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 336
    # getter for: Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->app:Lorg/eclipse/jetty/deploy/App;
    invoke-static {v1}, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->access$000(Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;)Lorg/eclipse/jetty/deploy/App;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/deploy/App;->getContextPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 338
    # getter for: Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->app:Lorg/eclipse/jetty/deploy/App;
    invoke-static {v1}, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->access$000(Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;)Lorg/eclipse/jetty/deploy/App;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getContextAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 352
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContextAttributes()Lorg/eclipse/jetty/util/AttributesMap;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    return-object v0
.end method

.method public getContexts()Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_contexts:Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    return-object v0
.end method

.method public getDefaultLifeCycleGoal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_defaultLifeCycleGoal:Ljava/lang/String;

    return-object v0
.end method

.method public getLifeCycle()Lorg/eclipse/jetty/deploy/AppLifeCycle;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_lifecycle:Lorg/eclipse/jetty/deploy/AppLifeCycle;

    return-object v0
.end method

.method public getLifeCycleBindings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_lifecycle:Lorg/eclipse/jetty/deploy/AppLifeCycle;

    invoke-virtual {v0}, Lorg/eclipse/jetty/deploy/AppLifeCycle;->getBindings()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getNodes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/eclipse/jetty/deploy/graph/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 581
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_lifecycle:Lorg/eclipse/jetty/deploy/AppLifeCycle;

    invoke-virtual {v0}, Lorg/eclipse/jetty/deploy/AppLifeCycle;->getNodes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getServer()Lorg/eclipse/jetty/server/Server;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_contexts:Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    if-nez v0, :cond_0

    .line 379
    const/4 v0, 0x0

    .line 381
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_contexts:Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    goto :goto_0
.end method

.method public insertLifeCycleNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "existingFromNodeName"    # Ljava/lang/String;
    .param p2, "existingToNodeName"    # Ljava/lang/String;
    .param p3, "insertedNodeName"    # Ljava/lang/String;

    .prologue
    .line 206
    iget-object v3, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_lifecycle:Lorg/eclipse/jetty/deploy/AppLifeCycle;

    invoke-virtual {v3, p1}, Lorg/eclipse/jetty/deploy/AppLifeCycle;->getNodeByName(Ljava/lang/String;)Lorg/eclipse/jetty/deploy/graph/Node;

    move-result-object v1

    .line 207
    .local v1, "fromNode":Lorg/eclipse/jetty/deploy/graph/Node;
    iget-object v3, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_lifecycle:Lorg/eclipse/jetty/deploy/AppLifeCycle;

    invoke-virtual {v3, p2}, Lorg/eclipse/jetty/deploy/AppLifeCycle;->getNodeByName(Ljava/lang/String;)Lorg/eclipse/jetty/deploy/graph/Node;

    move-result-object v2

    .line 208
    .local v2, "toNode":Lorg/eclipse/jetty/deploy/graph/Node;
    new-instance v0, Lorg/eclipse/jetty/deploy/graph/Edge;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/deploy/graph/Edge;-><init>(Lorg/eclipse/jetty/deploy/graph/Node;Lorg/eclipse/jetty/deploy/graph/Node;)V

    .line 209
    .local v0, "edge":Lorg/eclipse/jetty/deploy/graph/Edge;
    iget-object v3, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_lifecycle:Lorg/eclipse/jetty/deploy/AppLifeCycle;

    invoke-virtual {v3, v0, p3}, Lorg/eclipse/jetty/deploy/AppLifeCycle;->insertNode(Lorg/eclipse/jetty/deploy/graph/Edge;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public isUseStandardBindings()Z
    .locals 1

    .prologue
    .line 571
    iget-boolean v0, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_useStandardBindings:Z

    return v0
.end method

.method public removeApp(Lorg/eclipse/jetty/deploy/App;)V
    .locals 5
    .param p1, "app"    # Lorg/eclipse/jetty/deploy/App;

    .prologue
    .line 392
    iget-object v2, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_apps:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 393
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 395
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;

    .line 396
    .local v0, "entry":Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;
    # getter for: Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->app:Lorg/eclipse/jetty/deploy/App;
    invoke-static {v0}, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->access$000(Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;)Lorg/eclipse/jetty/deploy/App;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 398
    const-string v2, "undeployed"

    # getter for: Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->lifecyleNode:Lorg/eclipse/jetty/deploy/graph/Node;
    invoke-static {v0}, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->access$100(Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;)Lorg/eclipse/jetty/deploy/graph/Node;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jetty/deploy/graph/Node;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 399
    # getter for: Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->app:Lorg/eclipse/jetty/deploy/App;
    invoke-static {v0}, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->access$000(Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;)Lorg/eclipse/jetty/deploy/App;

    move-result-object v2

    const-string v3, "undeployed"

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jetty/deploy/DeploymentManager;->requestAppGoal(Lorg/eclipse/jetty/deploy/App;Ljava/lang/String;)V

    .line 400
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 401
    sget-object v2, Lorg/eclipse/jetty/deploy/DeploymentManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deployable removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->app:Lorg/eclipse/jetty/deploy/App;
    invoke-static {v0}, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->access$000(Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;)Lorg/eclipse/jetty/deploy/App;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 404
    .end local v0    # "entry":Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;
    :cond_2
    return-void
.end method

.method public removeAppProvider(Lorg/eclipse/jetty/deploy/AppProvider;)V
    .locals 4
    .param p1, "provider"    # Lorg/eclipse/jetty/deploy/AppProvider;

    .prologue
    .line 408
    iget-object v1, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_providers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/deploy/DeploymentManager;->removeBean(Ljava/lang/Object;)Z

    .line 411
    invoke-virtual {p0}, Lorg/eclipse/jetty/deploy/DeploymentManager;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 412
    invoke-virtual {p0}, Lorg/eclipse/jetty/deploy/DeploymentManager;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "provider"

    invoke-virtual {v1, p0, p1, v2, v3}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jetty/deploy/AppProvider;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_0
    return-void

    .line 418
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/eclipse/jetty/deploy/DeploymentManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "Unable to stop Provider"

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public removeContextAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 431
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->removeAttribute(Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public requestAppGoal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "nodeName"    # Ljava/lang/String;

    .prologue
    .line 513
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/deploy/DeploymentManager;->findAppByOriginId(Ljava/lang/String;)Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;

    move-result-object v0

    .line 514
    .local v0, "appentry":Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;
    if-nez v0, :cond_0

    .line 516
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App not being tracked by Deployment Manager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 518
    :cond_0
    invoke-direct {p0, v0, p2}, Lorg/eclipse/jetty/deploy/DeploymentManager;->requestAppGoal(Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method public requestAppGoal(Lorg/eclipse/jetty/deploy/App;Ljava/lang/String;)V
    .locals 4
    .param p1, "app"    # Lorg/eclipse/jetty/deploy/App;
    .param p2, "nodeName"    # Ljava/lang/String;

    .prologue
    .line 445
    invoke-virtual {p1}, Lorg/eclipse/jetty/deploy/App;->getOriginId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/eclipse/jetty/deploy/DeploymentManager;->findAppByOriginId(Ljava/lang/String;)Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;

    move-result-object v0

    .line 446
    .local v0, "appentry":Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;
    if-nez v0, :cond_0

    .line 448
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App not being tracked by Deployment Manager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 451
    :cond_0
    invoke-direct {p0, v0, p2}, Lorg/eclipse/jetty/deploy/DeploymentManager;->requestAppGoal(Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method public setAppProviders(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/eclipse/jetty/deploy/AppProvider;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "providers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/eclipse/jetty/deploy/AppProvider;>;"
    invoke-virtual {p0}, Lorg/eclipse/jetty/deploy/DeploymentManager;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 153
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_providers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 154
    invoke-virtual {p0}, Lorg/eclipse/jetty/deploy/DeploymentManager;->removeBeans()V

    .line 155
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/deploy/AppProvider;

    .line 156
    .local v1, "provider":Lorg/eclipse/jetty/deploy/AppProvider;
    iget-object v2, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_providers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/deploy/DeploymentManager;->addBean(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    .end local v1    # "provider":Lorg/eclipse/jetty/deploy/AppProvider;
    :cond_2
    return-void
.end method

.method public setContextAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 529
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/util/AttributesMap;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 530
    return-void
.end method

.method public setContextAttributes(Lorg/eclipse/jetty/util/AttributesMap;)V
    .locals 0
    .param p1, "contextAttributes"    # Lorg/eclipse/jetty/util/AttributesMap;

    .prologue
    .line 534
    iput-object p1, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    .line 535
    return-void
.end method

.method public setContexts(Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;)V
    .locals 0
    .param p1, "contexts"    # Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    .prologue
    .line 539
    iput-object p1, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_contexts:Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    .line 540
    return-void
.end method

.method public setDefaultLifeCycleGoal(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultLifeCycleState"    # Ljava/lang/String;

    .prologue
    .line 544
    iput-object p1, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_defaultLifeCycleGoal:Ljava/lang/String;

    .line 545
    return-void
.end method

.method public setLifeCycleBindings(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "bindings":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;>;"
    invoke-virtual {p0}, Lorg/eclipse/jetty/deploy/DeploymentManager;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 181
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_lifecycle:Lorg/eclipse/jetty/deploy/AppLifeCycle;

    invoke-virtual {v2}, Lorg/eclipse/jetty/deploy/AppLifeCycle;->getBindings()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;

    .line 182
    .local v0, "b":Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;
    iget-object v2, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_lifecycle:Lorg/eclipse/jetty/deploy/AppLifeCycle;

    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/deploy/AppLifeCycle;->removeBinding(Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;)V

    goto :goto_0

    .line 183
    .end local v0    # "b":Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;

    .line 184
    .restart local v0    # "b":Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;
    iget-object v2, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_lifecycle:Lorg/eclipse/jetty/deploy/AppLifeCycle;

    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/deploy/AppLifeCycle;->addBinding(Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;)V

    goto :goto_1

    .line 185
    .end local v0    # "b":Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;
    :cond_2
    return-void
.end method

.method public setUseStandardBindings(Z)V
    .locals 0
    .param p1, "useStandardBindings"    # Z

    .prologue
    .line 576
    iput-boolean p1, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_useStandardBindings:Z

    .line 577
    return-void
.end method

.method public undeployAll()V
    .locals 5

    .prologue
    .line 562
    sget-object v2, Lorg/eclipse/jetty/deploy/DeploymentManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "Undeploy All"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    iget-object v2, p0, Lorg/eclipse/jetty/deploy/DeploymentManager;->_apps:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;

    .line 565
    .local v0, "appentry":Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;
    const-string v2, "undeployed"

    invoke-direct {p0, v0, v2}, Lorg/eclipse/jetty/deploy/DeploymentManager;->requestAppGoal(Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;Ljava/lang/String;)V

    goto :goto_0

    .line 567
    .end local v0    # "appentry":Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;
    :cond_0
    return-void
.end method
