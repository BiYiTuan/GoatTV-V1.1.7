.class public Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;
.super Ljava/lang/Object;
.source "DeploymentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/deploy/DeploymentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppEntry"
.end annotation


# instance fields
.field private app:Lorg/eclipse/jetty/deploy/App;

.field private lifecyleNode:Lorg/eclipse/jetty/deploy/graph/Node;

.field private stateTimestamps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/eclipse/jetty/deploy/graph/Node;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/eclipse/jetty/deploy/DeploymentManager;

.field private version:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/deploy/DeploymentManager;)V
    .locals 1

    .prologue
    .line 63
    iput-object p1, p0, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->this$0:Lorg/eclipse/jetty/deploy/DeploymentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->stateTimestamps:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;)Lorg/eclipse/jetty/deploy/App;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->app:Lorg/eclipse/jetty/deploy/App;

    return-object v0
.end method

.method static synthetic access$002(Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;Lorg/eclipse/jetty/deploy/App;)Lorg/eclipse/jetty/deploy/App;
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;
    .param p1, "x1"    # Lorg/eclipse/jetty/deploy/App;

    .prologue
    .line 63
    iput-object p1, p0, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->app:Lorg/eclipse/jetty/deploy/App;

    return-object p1
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;)Lorg/eclipse/jetty/deploy/graph/Node;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->lifecyleNode:Lorg/eclipse/jetty/deploy/graph/Node;

    return-object v0
.end method


# virtual methods
.method public getApp()Lorg/eclipse/jetty/deploy/App;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->app:Lorg/eclipse/jetty/deploy/App;

    return-object v0
.end method

.method public getLifecyleNode()Lorg/eclipse/jetty/deploy/graph/Node;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->lifecyleNode:Lorg/eclipse/jetty/deploy/graph/Node;

    return-object v0
.end method

.method public getStateTimestamps()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/eclipse/jetty/deploy/graph/Node;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->stateTimestamps:Ljava/util/Map;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->version:I

    return v0
.end method

.method setLifeCycleNode(Lorg/eclipse/jetty/deploy/graph/Node;)V
    .locals 3
    .param p1, "node"    # Lorg/eclipse/jetty/deploy/graph/Node;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->lifecyleNode:Lorg/eclipse/jetty/deploy/graph/Node;

    .line 110
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/DeploymentManager$AppEntry;->stateTimestamps:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method
