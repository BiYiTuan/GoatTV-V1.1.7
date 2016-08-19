.class public Lorg/eclipse/jetty/webapp/WebXmlConfiguration;
.super Lorg/eclipse/jetty/webapp/AbstractConfiguration;
.source "WebXmlConfiguration.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/eclipse/jetty/webapp/WebXmlConfiguration;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/webapp/WebXmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/eclipse/jetty/webapp/AbstractConfiguration;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 3
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lorg/eclipse/jetty/webapp/WebXmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "Cannot configure webapp after it is started"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;

    invoke-direct {v1}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;-><init>()V

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/webapp/MetaData;->addDescriptorProcessor(Lorg/eclipse/jetty/webapp/DescriptorProcessor;)V

    goto :goto_0
.end method

.method public deconfigure(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 3
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    .line 120
    .local v0, "_servletHandler":Lorg/eclipse/jetty/servlet/ServletHandler;
    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 121
    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/eclipse/jetty/servlet/FilterMapping;)V

    .line 122
    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/servlet/ServletHandler;->setServlets([Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .line 123
    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/servlet/ServletHandler;->setServletMappings([Lorg/eclipse/jetty/servlet/ServletMapping;)V

    .line 125
    invoke-virtual {p1, v2}, Lorg/eclipse/jetty/webapp/WebAppContext;->setEventListeners([Ljava/util/EventListener;)V

    .line 126
    invoke-virtual {p1, v2}, Lorg/eclipse/jetty/webapp/WebAppContext;->setWelcomeFiles([Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getErrorHandler()Lorg/eclipse/jetty/server/handler/ErrorHandler;

    move-result-object v1

    instance-of v1, v1, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getErrorHandler()Lorg/eclipse/jetty/server/handler/ErrorHandler;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->setErrorPages(Ljava/util/Map;)V

    .line 135
    :cond_0
    return-void
.end method

.method protected findWebXml(Lorg/eclipse/jetty/webapp/WebAppContext;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 6
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "descriptor":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/webapp/WebAppContext;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 96
    .local v1, "web":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 108
    .end local v1    # "web":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_0
    :goto_0
    return-object v1

    .line 99
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getWebInf()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    .line 100
    .local v2, "web_inf":Lorg/eclipse/jetty/util/resource/Resource;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 103
    const-string v3, "web.xml"

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 104
    .restart local v1    # "web":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 105
    sget-object v3, Lorg/eclipse/jetty/webapp/WebXmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 106
    sget-object v3, Lorg/eclipse/jetty/webapp/WebXmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No WEB-INF/web.xml in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getWar()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Serving files and default/dynamic servlets only"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    .end local v1    # "web":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public preConfigure(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 7
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getDefaultsDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "defaultsDescriptor":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 45
    invoke-static {v0}, Lorg/eclipse/jetty/util/resource/Resource;->newSystemResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 46
    .local v1, "dftResource":Lorg/eclipse/jetty/util/resource/Resource;
    if-nez v1, :cond_0

    .line 47
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/webapp/WebAppContext;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 48
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/eclipse/jetty/webapp/MetaData;->setDefaults(Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 52
    .end local v1    # "dftResource":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/webapp/WebXmlConfiguration;->findWebXml(Lorg/eclipse/jetty/webapp/WebAppContext;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v5

    .line 53
    .local v5, "webxml":Lorg/eclipse/jetty/util/resource/Resource;
    if-eqz v5, :cond_2

    .line 55
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/eclipse/jetty/webapp/MetaData;->setWebXml(Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 59
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getOverrideDescriptors()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 61
    .local v4, "overrideDescriptor":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 63
    invoke-static {v4}, Lorg/eclipse/jetty/util/resource/Resource;->newSystemResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    .line 64
    .local v3, "orideResource":Lorg/eclipse/jetty/util/resource/Resource;
    if-nez v3, :cond_4

    .line 65
    invoke-virtual {p1, v4}, Lorg/eclipse/jetty/webapp/WebAppContext;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    .line 66
    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/eclipse/jetty/webapp/MetaData;->addOverride(Lorg/eclipse/jetty/util/resource/Resource;)V

    goto :goto_0

    .line 69
    .end local v3    # "orideResource":Lorg/eclipse/jetty/util/resource/Resource;
    .end local v4    # "overrideDescriptor":Ljava/lang/String;
    :cond_5
    return-void
.end method
