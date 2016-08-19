.class public Lorg/eclipse/jetty/server/handler/jmx/ContextHandlerMBean;
.super Lorg/eclipse/jetty/server/handler/jmx/AbstractHandlerMBean;
.source "ContextHandlerMBean.java"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "managedObject"    # Ljava/lang/Object;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/handler/jmx/AbstractHandlerMBean;-><init>(Ljava/lang/Object;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getContextAttributes()Ljava/util/Map;
    .locals 6

    .prologue
    .line 32
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 33
    .local v2, "map":Ljava/util/Map;
    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/jmx/ContextHandlerMBean;->_managed:Ljava/lang/Object;

    check-cast v5, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getAttributes()Lorg/eclipse/jetty/util/Attributes;

    move-result-object v0

    .line 34
    .local v0, "attrs":Lorg/eclipse/jetty/util/Attributes;
    invoke-interface {v0}, Lorg/eclipse/jetty/util/Attributes;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 35
    .local v1, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 37
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 38
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v0, v3}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 39
    .local v4, "value":Ljava/lang/Object;
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 41
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_0
    return-object v2
.end method

.method public removeContextAttribute(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/jmx/ContextHandlerMBean;->_managed:Ljava/lang/Object;

    check-cast v1, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getAttributes()Lorg/eclipse/jetty/util/Attributes;

    move-result-object v0

    .line 59
    .local v0, "attrs":Lorg/eclipse/jetty/util/Attributes;
    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/Attributes;->removeAttribute(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public setContextAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 46
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/jmx/ContextHandlerMBean;->_managed:Ljava/lang/Object;

    check-cast v1, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getAttributes()Lorg/eclipse/jetty/util/Attributes;

    move-result-object v0

    .line 47
    .local v0, "attrs":Lorg/eclipse/jetty/util/Attributes;
    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/util/Attributes;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public setContextAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/jmx/ContextHandlerMBean;->_managed:Ljava/lang/Object;

    check-cast v1, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getAttributes()Lorg/eclipse/jetty/util/Attributes;

    move-result-object v0

    .line 53
    .local v0, "attrs":Lorg/eclipse/jetty/util/Attributes;
    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/util/Attributes;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    return-void
.end method
