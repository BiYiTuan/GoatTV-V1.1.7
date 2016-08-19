.class public abstract Lorg/eclipse/jetty/webapp/IterativeDescriptorProcessor;
.super Ljava/lang/Object;
.source "IterativeDescriptorProcessor.java"

# interfaces
.implements Lorg/eclipse/jetty/webapp/DescriptorProcessor;


# static fields
.field public static final __signature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field protected _visitors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lorg/eclipse/jetty/webapp/WebAppContext;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lorg/eclipse/jetty/webapp/Descriptor;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lorg/eclipse/jetty/xml/XmlParser$Node;

    aput-object v2, v0, v1

    sput-object v0, Lorg/eclipse/jetty/webapp/IterativeDescriptorProcessor;->__signature:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/IterativeDescriptorProcessor;->_visitors:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public abstract end(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;)V
.end method

.method public process(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;)V
    .locals 5
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 54
    if-nez p2, :cond_0

    .line 71
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/webapp/IterativeDescriptorProcessor;->start(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;)V

    .line 59
    invoke-virtual {p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getRoot()Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v3

    .line 60
    .local v3, "root":Lorg/eclipse/jetty/xml/XmlParser$Node;
    invoke-virtual {v3}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 61
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v1, 0x0

    .line 62
    .local v1, "node":Lorg/eclipse/jetty/xml/XmlParser$Node;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 65
    .local v2, "o":Ljava/lang/Object;
    instance-of v4, v2, Lorg/eclipse/jetty/xml/XmlParser$Node;

    if-eqz v4, :cond_1

    move-object v1, v2

    .line 66
    check-cast v1, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 67
    invoke-virtual {p0, p1, p2, v1}, Lorg/eclipse/jetty/webapp/IterativeDescriptorProcessor;->visit(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V

    goto :goto_1

    .line 70
    .end local v2    # "o":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/webapp/IterativeDescriptorProcessor;->end(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_0
.end method

.method public registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 1
    .param p1, "nodeName"    # Ljava/lang/String;
    .param p2, "m"    # Ljava/lang/reflect/Method;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/IterativeDescriptorProcessor;->_visitors:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public abstract start(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;)V
.end method

.method protected visit(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 4
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p3}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/IterativeDescriptorProcessor;->_visitors:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 79
    .local v0, "m":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 80
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_0
    return-void
.end method
