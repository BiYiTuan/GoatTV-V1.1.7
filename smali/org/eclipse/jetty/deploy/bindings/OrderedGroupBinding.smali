.class public Lorg/eclipse/jetty/deploy/bindings/OrderedGroupBinding;
.super Ljava/lang/Object;
.source "OrderedGroupBinding.java"

# interfaces
.implements Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;


# instance fields
.field private _bindingTargets:[Ljava/lang/String;

.field private _orderedBindings:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "bindingTargets"    # [Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/eclipse/jetty/deploy/bindings/OrderedGroupBinding;->_bindingTargets:[Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public addBinding(Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;)V
    .locals 1
    .param p1, "binding"    # Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/bindings/OrderedGroupBinding;->_orderedBindings:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/deploy/bindings/OrderedGroupBinding;->_orderedBindings:Ljava/util/LinkedList;

    .line 47
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/bindings/OrderedGroupBinding;->_orderedBindings:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public addBindings([Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;)V
    .locals 5
    .param p1, "bindings"    # [Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;

    .prologue
    .line 52
    iget-object v4, p0, Lorg/eclipse/jetty/deploy/bindings/OrderedGroupBinding;->_orderedBindings:Ljava/util/LinkedList;

    if-nez v4, :cond_0

    .line 54
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lorg/eclipse/jetty/deploy/bindings/OrderedGroupBinding;->_orderedBindings:Ljava/util/LinkedList;

    .line 57
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 59
    .local v1, "binding":Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;
    iget-object v4, p0, Lorg/eclipse/jetty/deploy/bindings/OrderedGroupBinding;->_orderedBindings:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    .end local v1    # "binding":Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;
    :cond_1
    return-void
.end method

.method public getBindingTargets()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/bindings/OrderedGroupBinding;->_bindingTargets:[Ljava/lang/String;

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
    .line 70
    iget-object v2, p0, Lorg/eclipse/jetty/deploy/bindings/OrderedGroupBinding;->_orderedBindings:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;

    .line 72
    .local v0, "binding":Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;
    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;->processBinding(Lorg/eclipse/jetty/deploy/graph/Node;Lorg/eclipse/jetty/deploy/App;)V

    goto :goto_0

    .line 74
    .end local v0    # "binding":Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;
    :cond_0
    return-void
.end method
