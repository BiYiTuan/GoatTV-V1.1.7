.class public Lorg/eclipse/jetty/deploy/AppLifeCycle;
.super Lorg/eclipse/jetty/deploy/graph/Graph;
.source "AppLifeCycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;
    }
.end annotation


# static fields
.field private static final ALL_NODES:Ljava/lang/String; = "*"

.field public static final DEPLOYED:Ljava/lang/String; = "deployed"

.field public static final DEPLOYING:Ljava/lang/String; = "deploying"

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final STARTED:Ljava/lang/String; = "started"

.field public static final STARTING:Ljava/lang/String; = "starting"

.field public static final STOPPING:Ljava/lang/String; = "stopping"

.field public static final UNDEPLOYED:Ljava/lang/String; = "undeployed"

.field public static final UNDEPLOYING:Ljava/lang/String; = "undeploying"


# instance fields
.field private lifecyclebindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/eclipse/jetty/deploy/AppLifeCycle;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/deploy/AppLifeCycle;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/eclipse/jetty/deploy/graph/Graph;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/deploy/AppLifeCycle;->lifecyclebindings:Ljava/util/Map;

    .line 83
    const-string v0, "undeployed"

    const-string v1, "deploying"

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/deploy/AppLifeCycle;->addEdge(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "deploying"

    const-string v1, "deployed"

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/deploy/AppLifeCycle;->addEdge(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v0, "deployed"

    const-string v1, "starting"

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/deploy/AppLifeCycle;->addEdge(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "starting"

    const-string v1, "started"

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/deploy/AppLifeCycle;->addEdge(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "started"

    const-string v1, "stopping"

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/deploy/AppLifeCycle;->addEdge(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "stopping"

    const-string v1, "deployed"

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/deploy/AppLifeCycle;->addEdge(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v0, "deployed"

    const-string v1, "undeploying"

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/deploy/AppLifeCycle;->addEdge(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v0, "undeploying"

    const-string v1, "undeployed"

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/deploy/AppLifeCycle;->addEdge(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method


# virtual methods
.method public addBinding(Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;)V
    .locals 6
    .param p1, "binding"    # Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;

    .prologue
    .line 101
    invoke-interface {p1}, Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;->getBindingTargets()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 103
    .local v4, "nodeName":Ljava/lang/String;
    iget-object v5, p0, Lorg/eclipse/jetty/deploy/AppLifeCycle;->lifecyclebindings:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 104
    .local v1, "bindings":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;>;"
    if-nez v1, :cond_0

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "bindings":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .restart local v1    # "bindings":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;>;"
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v5, p0, Lorg/eclipse/jetty/deploy/AppLifeCycle;->lifecyclebindings:Ljava/util/Map;

    invoke-interface {v5, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    .end local v1    # "bindings":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;>;"
    .end local v4    # "nodeName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public getBindings()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 133
    .local v1, "boundset":Ljava/util/Set;, "Ljava/util/Set<Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;>;"
    iget-object v3, p0, Lorg/eclipse/jetty/deploy/AppLifeCycle;->lifecyclebindings:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 135
    .local v0, "bindings":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 138
    .end local v0    # "bindings":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;>;"
    :cond_0
    return-object v1
.end method

.method public getBindings(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .param p1, "nodeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 161
    .local v1, "boundset":Ljava/util/Set;, "Ljava/util/Set<Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;>;"
    iget-object v2, p0, Lorg/eclipse/jetty/deploy/AppLifeCycle;->lifecyclebindings:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 162
    .local v0, "bindings":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;>;"
    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 168
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/deploy/AppLifeCycle;->lifecyclebindings:Ljava/util/Map;

    const-string v3, "*"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bindings":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;>;"
    check-cast v0, Ljava/util/List;

    .line 169
    .restart local v0    # "bindings":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;>;"
    if-eqz v0, :cond_1

    .line 171
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 174
    :cond_1
    return-object v1
.end method

.method public getBindings(Lorg/eclipse/jetty/deploy/graph/Node;)Ljava/util/Set;
    .locals 1
    .param p1, "node"    # Lorg/eclipse/jetty/deploy/graph/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/deploy/graph/Node;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p1}, Lorg/eclipse/jetty/deploy/graph/Node;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/deploy/AppLifeCycle;->getBindings(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public removeBinding(Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;)V
    .locals 6
    .param p1, "binding"    # Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;

    .prologue
    .line 116
    invoke-interface {p1}, Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;->getBindingTargets()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 118
    .local v4, "nodeName":Ljava/lang/String;
    iget-object v5, p0, Lorg/eclipse/jetty/deploy/AppLifeCycle;->lifecyclebindings:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 119
    .local v1, "bindings":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;>;"
    if-eqz v1, :cond_0

    .line 120
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 116
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    .end local v1    # "bindings":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;>;"
    .end local v4    # "nodeName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public runBindings(Lorg/eclipse/jetty/deploy/graph/Node;Lorg/eclipse/jetty/deploy/App;Lorg/eclipse/jetty/deploy/DeploymentManager;)V
    .locals 5
    .param p1, "node"    # Lorg/eclipse/jetty/deploy/graph/Node;
    .param p2, "app"    # Lorg/eclipse/jetty/deploy/App;
    .param p3, "deploymentManager"    # Lorg/eclipse/jetty/deploy/DeploymentManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/deploy/AppLifeCycle;->getBindings(Lorg/eclipse/jetty/deploy/graph/Node;)Ljava/util/Set;

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

    .line 181
    .local v0, "binding":Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;
    sget-object v2, Lorg/eclipse/jetty/deploy/AppLifeCycle;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    sget-object v2, Lorg/eclipse/jetty/deploy/AppLifeCycle;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    :cond_0
    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;->processBinding(Lorg/eclipse/jetty/deploy/graph/Node;Lorg/eclipse/jetty/deploy/App;)V

    goto :goto_0

    .line 185
    .end local v0    # "binding":Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;
    :cond_1
    return-void
.end method
