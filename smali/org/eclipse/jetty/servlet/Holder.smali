.class public Lorg/eclipse/jetty/servlet/Holder;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "Holder.java"

# interfaces
.implements Lorg/eclipse/jetty/util/component/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;,
        Lorg/eclipse/jetty/servlet/Holder$HolderConfig;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/eclipse/jetty/util/component/AbstractLifeCycle;",
        "Lorg/eclipse/jetty/util/component/Dumpable;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field protected _asyncSupported:Z

.field protected transient _class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+TT;>;"
        }
    .end annotation
.end field

.field protected _className:Ljava/lang/String;

.field protected _displayName:Ljava/lang/String;

.field protected _extInstance:Z

.field protected final _initParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _name:Ljava/lang/String;

.field protected _servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lorg/eclipse/jetty/servlet/Holder;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/servlet/Holder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 58
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder;, "Lorg/eclipse/jetty/servlet/Holder<TT;>;"
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->_initParams:Ljava/util/Map;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/Holder;->_asyncSupported:Z

    .line 59
    return-void
.end method

.method static synthetic access$000()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method


# virtual methods
.method public destroyInstance(Ljava/lang/Object;)V
    .locals 0
    .param p1, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder;, "Lorg/eclipse/jetty/servlet/Holder<TT;>;"
    return-void
.end method

.method public doStart()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder;, "Lorg/eclipse/jetty/servlet/Holder<TT;>;"
    const/4 v6, -0x1

    .line 76
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/Holder;->_className:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/Holder;->_className:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    :cond_0
    new-instance v1, Ljavax/servlet/UnavailableException;

    const-string v2, "No class for Servlet or Filter"

    invoke-direct {v1, v2, v6}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 80
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    if-nez v1, :cond_2

    .line 84
    :try_start_0
    const-class v1, Lorg/eclipse/jetty/servlet/Holder;

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/Holder;->_className:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    .line 85
    sget-object v1, Lorg/eclipse/jetty/servlet/Holder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    sget-object v1, Lorg/eclipse/jetty/servlet/Holder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "Holding {}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/eclipse/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_2
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/eclipse/jetty/servlet/Holder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 91
    new-instance v1, Ljavax/servlet/UnavailableException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder;, "Lorg/eclipse/jetty/servlet/Holder<TT;>;"
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/Holder;->_extInstance:Z

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    .line 103
    :cond_0
    return-void
.end method

.method public dump()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder;, "Lorg/eclipse/jetty/servlet/Holder<TT;>;"
    invoke-static {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Lorg/eclipse/jetty/util/component/Dumpable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 3
    .param p1, "out"    # Ljava/lang/Appendable;
    .param p2, "indent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder;, "Lorg/eclipse/jetty/servlet/Holder<TT;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->_name:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "=="

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/Holder;->_className:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, " - "

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-static {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->getState(Lorg/eclipse/jetty/util/component/LifeCycle;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 265
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Collection;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/Holder;->_initParams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 266
    return-void
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder;, "Lorg/eclipse/jetty/servlet/Holder<TT;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->_className:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder;, "Lorg/eclipse/jetty/servlet/Holder<TT;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->_displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeldClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder;, "Lorg/eclipse/jetty/servlet/Holder<TT;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    return-object v0
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 126
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder;, "Lorg/eclipse/jetty/servlet/Holder<TT;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->_initParams:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->_initParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getInitParameterNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 134
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder;, "Lorg/eclipse/jetty/servlet/Holder<TT;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->_initParams:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 135
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->_initParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0
.end method

.method public getInitParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder;, "Lorg/eclipse/jetty/servlet/Holder<TT;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->_initParams:Ljava/util/Map;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder;, "Lorg/eclipse/jetty/servlet/Holder<TT;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;
    .locals 1

    .prologue
    .line 157
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder;, "Lorg/eclipse/jetty/servlet/Holder<TT;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    return-object v0
.end method

.method protected illegalStateIfContextStarted()V
    .locals 3

    .prologue
    .line 252
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder;, "Lorg/eclipse/jetty/servlet/Holder<TT;>;"
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/Holder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/Holder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 255
    .local v0, "context":Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Started"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    .end local v0    # "context":Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    :cond_0
    return-void
.end method

.method public isAsyncSupported()Z
    .locals 1

    .prologue
    .line 240
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder;, "Lorg/eclipse/jetty/servlet/Holder<TT;>;"
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/Holder;->_asyncSupported:Z

    return v0
.end method

.method public isInstance()Z
    .locals 1

    .prologue
    .line 67
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder;, "Lorg/eclipse/jetty/servlet/Holder<TT;>;"
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/Holder;->_extInstance:Z

    return v0
.end method

.method public setAsyncSupported(Z)V
    .locals 0
    .param p1, "suspendable"    # Z

    .prologue
    .line 234
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder;, "Lorg/eclipse/jetty/servlet/Holder<TT;>;"
    iput-boolean p1, p0, Lorg/eclipse/jetty/servlet/Holder;->_asyncSupported:Z

    .line 235
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 172
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder;, "Lorg/eclipse/jetty/servlet/Holder<TT;>;"
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/Holder;->_className:Ljava/lang/String;

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    .line 174
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 194
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder;, "Lorg/eclipse/jetty/servlet/Holder<TT;>;"
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/Holder;->_displayName:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setHeldClass(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder;, "Lorg/eclipse/jetty/servlet/Holder<TT;>;"
    .local p1, "held":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    .line 183
    if-eqz p1, :cond_0

    .line 185
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->_className:Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->_name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->_name:Ljava/lang/String;

    .line 189
    :cond_0
    return-void
.end method

.method public setInitParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 200
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder;, "Lorg/eclipse/jetty/servlet/Holder<TT;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->_initParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void
.end method

.method public setInitParameters(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder;, "Lorg/eclipse/jetty/servlet/Holder<TT;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->_initParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 207
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->_initParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 208
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 219
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder;, "Lorg/eclipse/jetty/servlet/Holder<TT;>;"
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/Holder;->_name:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setServletHandler(Lorg/eclipse/jetty/servlet/ServletHandler;)V
    .locals 0
    .param p1, "servletHandler"    # Lorg/eclipse/jetty/servlet/ServletHandler;

    .prologue
    .line 228
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder;, "Lorg/eclipse/jetty/servlet/Holder<TT;>;"
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/Holder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    .line 229
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder;, "Lorg/eclipse/jetty/servlet/Holder<TT;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->_name:Ljava/lang/String;

    return-object v0
.end method
