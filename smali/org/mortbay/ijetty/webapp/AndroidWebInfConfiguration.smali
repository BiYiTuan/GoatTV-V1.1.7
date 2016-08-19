.class public Lorg/mortbay/ijetty/webapp/AndroidWebInfConfiguration;
.super Lorg/eclipse/jetty/webapp/WebInfConfiguration;
.source "AndroidWebInfConfiguration.java"


# static fields
.field private static final serialVersionUID:J = 0x7249be034b10e945L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/eclipse/jetty/webapp/WebInfConfiguration;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 11
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->isStarted()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 52
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot configure webapp "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " after it is started"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/eclipse/jetty/util/log/Log;->debug(Ljava/lang/String;)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getWebInf()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v8

    .line 57
    .local v8, "web_inf":Lorg/eclipse/jetty/util/resource/Resource;
    const-string v5, ""

    .line 59
    .local v5, "paths":Ljava/lang/String;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 61
    const-string v9, "lib/"

    invoke-virtual {v8, v9}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    .line 63
    .local v4, "lib":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    check-cast v9, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;

    invoke-virtual {v9, v4}, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->addJars(Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 85
    .end local v4    # "lib":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    check-cast v9, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;

    invoke-virtual {v9}, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;->init()V

    .line 89
    const-string v9, "org.eclipse.jetty.resources"

    invoke-virtual {p1, v9}, Lorg/eclipse/jetty/webapp/WebAppContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 90
    .local v7, "resources":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/util/resource/Resource;>;"
    if-eqz v7, :cond_0

    .line 92
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    new-array v0, v9, [Lorg/eclipse/jetty/util/resource/Resource;

    .line 93
    .local v0, "collection":[Lorg/eclipse/jetty/util/resource/Resource;
    const/4 v1, 0x0

    .line 94
    .local v1, "i":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v9

    aput-object v9, v0, v1

    .line 95
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jetty/util/resource/Resource;

    .line 96
    .local v6, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    aput-object v6, v0, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 97
    .end local v6    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_3
    new-instance v9, Lorg/eclipse/jetty/util/resource/ResourceCollection;

    invoke-direct {v9, v0}, Lorg/eclipse/jetty/util/resource/ResourceCollection;-><init>([Lorg/eclipse/jetty/util/resource/Resource;)V

    invoke-virtual {p1, v9}, Lorg/eclipse/jetty/webapp/WebAppContext;->setBaseResource(Lorg/eclipse/jetty/util/resource/Resource;)V

    goto :goto_0
.end method

.method public preConfigure(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 2
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/mortbay/ijetty/webapp/AndroidClassLoader;-><init>(Ljava/lang/ClassLoader;Lorg/eclipse/jetty/webapp/WebAppContext;)V

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/webapp/WebAppContext;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 40
    invoke-super {p0, p1}, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->preConfigure(Lorg/eclipse/jetty/webapp/WebAppContext;)V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting classloader parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->debug(Ljava/lang/String;)V

    .line 43
    return-void
.end method
