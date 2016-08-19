.class public Lorg/eclipse/jetty/deploy/bindings/GlobalWebappConfigBinding;
.super Ljava/lang/Object;
.source "GlobalWebappConfigBinding.java"

# interfaces
.implements Lorg/eclipse/jetty/deploy/AppLifeCycle$Binding;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _jettyXml:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/eclipse/jetty/deploy/bindings/GlobalWebappConfigBinding;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/deploy/bindings/GlobalWebappConfigBinding;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBindingTargets()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "deploying"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getJettyXml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/bindings/GlobalWebappConfigBinding;->_jettyXml:Ljava/lang/String;

    return-object v0
.end method

.method public processBinding(Lorg/eclipse/jetty/deploy/graph/Node;Lorg/eclipse/jetty/deploy/App;)V
    .locals 8
    .param p1, "node"    # Lorg/eclipse/jetty/deploy/graph/Node;
    .param p2, "app"    # Lorg/eclipse/jetty/deploy/App;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 69
    invoke-virtual {p2}, Lorg/eclipse/jetty/deploy/App;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v2

    .line 70
    .local v2, "handler":Lorg/eclipse/jetty/server/handler/ContextHandler;
    if-nez v2, :cond_0

    .line 72
    new-instance v4, Ljava/lang/NullPointerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No Handler created for App: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 75
    :cond_0
    instance-of v4, v2, Lorg/eclipse/jetty/webapp/WebAppContext;

    if-eqz v4, :cond_3

    move-object v0, v2

    .line 77
    check-cast v0, Lorg/eclipse/jetty/webapp/WebAppContext;

    .line 79
    .local v0, "context":Lorg/eclipse/jetty/webapp/WebAppContext;
    sget-object v4, Lorg/eclipse/jetty/deploy/bindings/GlobalWebappConfigBinding;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    sget-object v4, Lorg/eclipse/jetty/deploy/bindings/GlobalWebappConfigBinding;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Binding: Configuring webapp context with global settings from: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/deploy/bindings/GlobalWebappConfigBinding;->_jettyXml:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :cond_1
    iget-object v4, p0, Lorg/eclipse/jetty/deploy/bindings/GlobalWebappConfigBinding;->_jettyXml:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 86
    sget-object v4, Lorg/eclipse/jetty/deploy/bindings/GlobalWebappConfigBinding;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "Binding: global context binding is enabled but no jetty-web.xml file has been registered"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :cond_2
    iget-object v4, p0, Lorg/eclipse/jetty/deploy/bindings/GlobalWebappConfigBinding;->_jettyXml:Ljava/lang/String;

    invoke-static {v4}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 91
    .local v1, "globalContextSettings":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 93
    new-instance v3, Lorg/eclipse/jetty/xml/XmlConfiguration;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/eclipse/jetty/xml/XmlConfiguration;-><init>(Ljava/io/InputStream;)V

    .line 95
    .local v3, "jettyXmlConfig":Lorg/eclipse/jetty/xml/XmlConfiguration;
    invoke-virtual {v3, v0}, Lorg/eclipse/jetty/xml/XmlConfiguration;->configure(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .end local v0    # "context":Lorg/eclipse/jetty/webapp/WebAppContext;
    .end local v1    # "globalContextSettings":Lorg/eclipse/jetty/util/resource/Resource;
    .end local v3    # "jettyXmlConfig":Lorg/eclipse/jetty/xml/XmlConfiguration;
    :cond_3
    :goto_0
    return-void

    .line 99
    .restart local v0    # "context":Lorg/eclipse/jetty/webapp/WebAppContext;
    .restart local v1    # "globalContextSettings":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_4
    sget-object v4, Lorg/eclipse/jetty/deploy/bindings/GlobalWebappConfigBinding;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Binding: Unable to locate global webapp context settings: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/deploy/bindings/GlobalWebappConfigBinding;->_jettyXml:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setJettyXml(Ljava/lang/String;)V
    .locals 0
    .param p1, "jettyXml"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/eclipse/jetty/deploy/bindings/GlobalWebappConfigBinding;->_jettyXml:Ljava/lang/String;

    .line 60
    return-void
.end method
