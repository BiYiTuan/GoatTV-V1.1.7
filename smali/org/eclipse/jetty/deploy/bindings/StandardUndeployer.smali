.class public Lorg/eclipse/jetty/deploy/bindings/StandardUndeployer;
.super Ljava/lang/Object;
.source "StandardUndeployer.java"

# interfaces
.implements Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/eclipse/jetty/deploy/bindings/StandardUndeployer;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/deploy/bindings/StandardUndeployer;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private recursiveRemoveContext(Lorg/eclipse/jetty/server/handler/HandlerCollection;Lorg/eclipse/jetty/server/handler/ContextHandler;)V
    .locals 11
    .param p1, "coll"    # Lorg/eclipse/jetty/server/handler/HandlerCollection;
    .param p2, "context"    # Lorg/eclipse/jetty/server/handler/ContextHandler;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 48
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v1

    .line 49
    .local v1, "children":[Lorg/eclipse/jetty/server/Handler;
    array-length v4, v1

    .line 51
    .local v4, "originalCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v1

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 53
    aget-object v0, v1, v2

    .line 54
    .local v0, "child":Lorg/eclipse/jetty/server/Handler;
    sget-object v5, Lorg/eclipse/jetty/deploy/bindings/StandardUndeployer;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "Child handler {}"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v0, v7, v9

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 57
    sget-object v5, Lorg/eclipse/jetty/deploy/bindings/StandardUndeployer;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "Removing handler {}"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v0, v7, v9

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->removeHandler(Lorg/eclipse/jetty/server/Handler;)V

    .line 59
    invoke-interface {v0}, Lorg/eclipse/jetty/server/Handler;->destroy()V

    .line 60
    sget-object v5, Lorg/eclipse/jetty/deploy/bindings/StandardUndeployer;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 61
    sget-object v5, Lorg/eclipse/jetty/deploy/bindings/StandardUndeployer;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "After removal: {} (originally {})"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v8

    array-length v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .end local v0    # "child":Lorg/eclipse/jetty/server/Handler;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    .restart local v0    # "child":Lorg/eclipse/jetty/server/Handler;
    :cond_1
    instance-of v5, v0, Lorg/eclipse/jetty/server/handler/HandlerCollection;

    if-eqz v5, :cond_0

    .line 65
    check-cast v0, Lorg/eclipse/jetty/server/handler/HandlerCollection;

    .end local v0    # "child":Lorg/eclipse/jetty/server/Handler;
    invoke-direct {p0, v0, p2}, Lorg/eclipse/jetty/deploy/bindings/StandardUndeployer;->recursiveRemoveContext(Lorg/eclipse/jetty/server/handler/HandlerCollection;Lorg/eclipse/jetty/server/handler/ContextHandler;)V

    goto :goto_1

    .line 68
    :cond_2
    return-void
.end method


# virtual methods
.method public getBindingTargets()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "undeploying"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public processBinding(Lorg/eclipse/jetty/deploy/graph/Node;Lorg/eclipse/jetty/deploy/App;)V
    .locals 3
    .param p1, "node"    # Lorg/eclipse/jetty/deploy/graph/Node;
    .param p2, "app"    # Lorg/eclipse/jetty/deploy/App;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p2}, Lorg/eclipse/jetty/deploy/App;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v1

    .line 41
    .local v1, "handler":Lorg/eclipse/jetty/server/handler/ContextHandler;
    invoke-virtual {p2}, Lorg/eclipse/jetty/deploy/App;->getDeploymentManager()Lorg/eclipse/jetty/deploy/DeploymentManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/deploy/DeploymentManager;->getContexts()Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    move-result-object v0

    .line 43
    .local v0, "chcoll":Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;
    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/deploy/bindings/StandardUndeployer;->recursiveRemoveContext(Lorg/eclipse/jetty/server/handler/HandlerCollection;Lorg/eclipse/jetty/server/handler/ContextHandler;)V

    .line 44
    return-void
.end method
