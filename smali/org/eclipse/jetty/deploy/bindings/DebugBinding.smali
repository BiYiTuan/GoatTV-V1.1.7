.class public Lorg/eclipse/jetty/deploy/bindings/DebugBinding;
.super Ljava/lang/Object;
.source "DebugBinding.java"

# interfaces
.implements Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field final _targets:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/eclipse/jetty/deploy/bindings/DebugBinding;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/deploy/bindings/DebugBinding;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/eclipse/jetty/deploy/bindings/DebugBinding;->_targets:[Ljava/lang/String;

    .line 33
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "targets"    # [Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/eclipse/jetty/deploy/bindings/DebugBinding;->_targets:[Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getBindingTargets()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/bindings/DebugBinding;->_targets:[Ljava/lang/String;

    return-object v0
.end method

.method public processBinding(Lorg/eclipse/jetty/deploy/graph/Node;Lorg/eclipse/jetty/deploy/App;)V
    .locals 5
    .param p1, "node"    # Lorg/eclipse/jetty/deploy/graph/Node;
    .param p2, "app"    # Lorg/eclipse/jetty/deploy/App;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    sget-object v0, Lorg/eclipse/jetty/deploy/bindings/DebugBinding;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "processBinding {} {}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Lorg/eclipse/jetty/deploy/App;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    return-void
.end method
