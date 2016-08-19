.class public Lorg/eclipse/jetty/server/handler/ContextHandler;
.super Lorg/eclipse/jetty/server/handler/ScopedHandler;
.source "ContextHandler.java"

# interfaces
.implements Lorg/eclipse/jetty/util/Attributes;
.implements Lorg/eclipse/jetty/server/Server$Graceful;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/handler/ContextHandler$CLDump;,
        Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final MANAGED_ATTRIBUTES:Ljava/lang/String; = "org.eclipse.jetty.server.context.ManagedAttributes"

.field private static final __AVAILABLE:I = 0x1

.field private static final __SHUTDOWN:I = 0x2

.field private static final __STOPPED:I = 0x0

.field private static final __UNAVAILABLE:I = 0x3

.field private static final __context:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/eclipse/jetty/server/handler/ContextHandler$Context;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _aliases:Z

.field private _allowNullPathInfo:Z

.field private final _attributes:Lorg/eclipse/jetty/util/AttributesMap;

.field private volatile _availability:I

.field private _available:Z

.field private _baseResource:Lorg/eclipse/jetty/util/resource/Resource;

.field private _classLoader:Ljava/lang/ClassLoader;

.field private _compactPath:Z

.field private _connectors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _contextAttributeListeners:Ljava/lang/Object;

.field private final _contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

.field private _contextListeners:Ljava/lang/Object;

.field private _contextPath:Ljava/lang/String;

.field private _displayName:Ljava/lang/String;

.field private _errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

.field private _eventListeners:[Ljava/util/EventListener;

.field private final _initParams:Ljava/util/Map;
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

.field private _localeEncodingMap:Ljava/util/Map;
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

.field private _logger:Lorg/eclipse/jetty/util/log/Logger;

.field private _managedAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _maxFormContentSize:I

.field private _maxFormKeys:I

.field private _mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

.field private _requestAttributeListeners:Ljava/lang/Object;

.field private _requestListeners:Ljava/lang/Object;

.field protected _scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

.field private _shutdown:Z

.field private _vhosts:[Ljava/lang/String;

.field private _welcomeFiles:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const-class v0, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 88
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;-><init>()V

    .line 114
    const-string v0, "/"

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    .line 126
    const-string v0, "org.eclipse.jetty.server.Request.maxFormKeys"

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_maxFormKeys:I

    .line 127
    const-string v0, "org.eclipse.jetty.server.Request.maxFormContentSize"

    const v1, 0x30d40

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_maxFormContentSize:I

    .line 128
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_compactPath:Z

    .line 129
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliases:Z

    .line 137
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_shutdown:Z

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_available:Z

    .line 150
    new-instance v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;-><init>(Lorg/eclipse/jetty/server/handler/ContextHandler;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 151
    new-instance v0, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    .line 152
    new-instance v0, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_initParams:Ljava/util/Map;

    .line 154
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "contextPath"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;-><init>()V

    .line 176
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setContextPath(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/HandlerContainer;Ljava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Lorg/eclipse/jetty/server/HandlerContainer;
    .param p2, "contextPath"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;-><init>()V

    .line 186
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setContextPath(Ljava/lang/String;)V

    .line 187
    instance-of v0, p1, Lorg/eclipse/jetty/server/handler/HandlerWrapper;

    if-eqz v0, :cond_1

    .line 188
    check-cast p1, Lorg/eclipse/jetty/server/handler/HandlerWrapper;

    .end local p1    # "parent":Lorg/eclipse/jetty/server/HandlerContainer;
    invoke-virtual {p1, p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->setHandler(Lorg/eclipse/jetty/server/Handler;)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 189
    .restart local p1    # "parent":Lorg/eclipse/jetty/server/HandlerContainer;
    :cond_1
    instance-of v0, p1, Lorg/eclipse/jetty/server/handler/HandlerCollection;

    if-eqz v0, :cond_0

    .line 190
    check-cast p1, Lorg/eclipse/jetty/server/handler/HandlerCollection;

    .end local p1    # "parent":Lorg/eclipse/jetty/server/HandlerContainer;
    invoke-virtual {p1, p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->addHandler(Lorg/eclipse/jetty/server/Handler;)V

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)V
    .locals 3
    .param p1, "context"    # Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .prologue
    const/4 v2, 0x0

    .line 162
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;-><init>()V

    .line 114
    const-string v0, "/"

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    .line 126
    const-string v0, "org.eclipse.jetty.server.Request.maxFormKeys"

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_maxFormKeys:I

    .line 127
    const-string v0, "org.eclipse.jetty.server.Request.maxFormContentSize"

    const v1, 0x30d40

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_maxFormContentSize:I

    .line 128
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_compactPath:Z

    .line 129
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliases:Z

    .line 137
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_shutdown:Z

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_available:Z

    .line 163
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 164
    new-instance v0, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    .line 165
    new-instance v0, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_initParams:Ljava/util/Map;

    .line 167
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/http/MimeTypes;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/handler/ContextHandler;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    return-object v0
.end method

.method static synthetic access$100()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/log/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/handler/ContextHandler;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/handler/ContextHandler;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    return-object v0
.end method

.method static synthetic access$400(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/handler/ContextHandler;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    return-object v0
.end method

.method static synthetic access$500(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/handler/ContextHandler;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributeListeners:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/handler/ContextHandler;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    return-object v0
.end method

.method private normalizeHostname(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 1571
    if-nez p1, :cond_1

    .line 1572
    const/4 p1, 0x0

    .line 1577
    .end local p1    # "host":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 1574
    .restart local p1    # "host":Ljava/lang/String;
    :cond_1
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1575
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public addEventListener(Ljava/util/EventListener;)V
    .locals 2
    .param p1, "listener"    # Ljava/util/EventListener;

    .prologue
    .line 573
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getEventListeners()[Ljava/util/EventListener;

    move-result-object v0

    const-class v1, Ljava/util/EventListener;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/EventListener;

    check-cast v0, [Ljava/util/EventListener;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setEventListeners([Ljava/util/EventListener;)V

    .line 574
    return-void
.end method

.method public addLocaleEncoding(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    .line 1443
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1444
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    .line 1445
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    return-void
.end method

.method public addVirtualHosts([Ljava/lang/String;)V
    .locals 4
    .param p1, "virtualHosts"    # [Ljava/lang/String;

    .prologue
    .line 278
    if-nez p1, :cond_0

    .line 304
    :goto_0
    return-void

    .line 284
    :cond_0
    const/4 v0, 0x0

    .line 285
    .local v0, "currentVirtualHosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "currentVirtualHosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 294
    .restart local v0    # "currentVirtualHosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v3, p1

    if-ge v1, v3, :cond_3

    .line 296
    aget-object v3, p1, v1

    invoke-direct {p0, v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->normalizeHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, "normVhost":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 299
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 291
    .end local v1    # "i":I
    .end local v2    # "normVhost":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "currentVirtualHosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0    # "currentVirtualHosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 302
    .restart local v1    # "i":I
    :cond_3
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    goto :goto_0
.end method

.method public checkContext(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletResponse;)Z
    .locals 11
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "baseRequest"    # Lorg/eclipse/jetty/server/Request;
    .param p3, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x0

    .line 804
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Lorg/eclipse/jetty/server/DispatcherType;

    move-result-object v7

    .line 806
    .local v7, "dispatch":Lorg/eclipse/jetty/server/DispatcherType;
    iget v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_availability:I

    packed-switch v2, :pswitch_data_0

    .line 816
    :pswitch_0
    sget-object v2, Lorg/eclipse/jetty/server/DispatcherType;->REQUEST:Lorg/eclipse/jetty/server/DispatcherType;

    invoke-virtual {v2, v7}, Lorg/eclipse/jetty/server/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v10

    .line 875
    :cond_0
    :goto_0
    return v1

    :pswitch_1
    move v1, v10

    .line 810
    goto :goto_0

    .line 812
    :pswitch_2
    invoke-virtual {p2, v1}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 813
    const/16 v1, 0x1f7

    invoke-interface {p3, v1}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    move v1, v10

    .line 814
    goto :goto_0

    .line 821
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 823
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->normalizeHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 825
    .local v3, "vhost":Ljava/lang/String;
    const/4 v9, 0x0

    .line 828
    .local v9, "match":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-nez v9, :cond_4

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    array-length v2, v2

    if-ge v8, v2, :cond_4

    .line 830
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    aget-object v0, v2, v8

    .line 831
    .local v0, "contextVhost":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 828
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 833
    :cond_2
    const-string v2, "*."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 836
    const/4 v2, 0x2

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v9

    goto :goto_2

    .line 839
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    goto :goto_2

    .line 841
    .end local v0    # "contextVhost":Ljava/lang/String;
    :cond_4
    if-nez v9, :cond_5

    move v1, v10

    .line 842
    goto :goto_0

    .line 846
    .end local v3    # "vhost":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "match":Z
    :cond_5
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 848
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getConnector()Lorg/eclipse/jetty/server/Connector;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jetty/server/Connector;->getName()Ljava/lang/String;

    move-result-object v6

    .line 849
    .local v6, "connector":Ljava/lang/String;
    if-eqz v6, :cond_6

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    move v1, v10

    .line 850
    goto :goto_0

    .line 854
    .end local v6    # "connector":Ljava/lang/String;
    :cond_7
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 857
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    move v1, v10

    .line 858
    goto/16 :goto_0

    .line 859
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v2, v4, :cond_9

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2f

    if-eq v2, v4, :cond_9

    move v1, v10

    .line 860
    goto/16 :goto_0

    .line 863
    :cond_9
    iget-boolean v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_allowNullPathInfo:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 866
    invoke-virtual {p2, v1}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 867
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getQueryString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 868
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v2

    const-string v4, "/"

    invoke-static {v2, v4}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    :goto_3
    move v1, v10

    .line 871
    goto/16 :goto_0

    .line 870
    :cond_a
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-static {v1, v2}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    goto :goto_3

    .line 806
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1163
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_managedAttributes:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_managedAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1165
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1167
    :cond_0
    return-void
.end method

.method public clearAttributes()V
    .locals 3

    .prologue
    .line 1151
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 1152
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1154
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1155
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1157
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/AttributesMap;->clearAttributes()V

    .line 1158
    return-void
.end method

.method public doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 9
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "baseRequest"    # Lorg/eclipse/jetty/server/Request;
    .param p3, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p4, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 1000
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Lorg/eclipse/jetty/server/DispatcherType;

    move-result-object v0

    .line 1001
    .local v0, "dispatch":Lorg/eclipse/jetty/server/DispatcherType;
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->takeNewContext()Z

    move-result v4

    .line 1004
    .local v4, "new_context":Z
    if-eqz v4, :cond_1

    .line 1007
    :try_start_0
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 1009
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v7}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v5

    .line 1010
    .local v5, "s":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 1011
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v7, v2}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/EventListener;

    invoke-virtual {p2, v7}, Lorg/eclipse/jetty/server/Request;->addEventListener(Ljava/util/EventListener;)V

    .line 1010
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1014
    .end local v2    # "i":I
    .end local v5    # "s":I
    :cond_0
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    if-eqz v7, :cond_1

    .line 1016
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {v7}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v5

    .line 1017
    .restart local v5    # "s":I
    new-instance v6, Ljavax/servlet/ServletRequestEvent;

    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {v6, v7, p3}, Ljavax/servlet/ServletRequestEvent;-><init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;)V

    .line 1018
    .local v6, "sre":Ljavax/servlet/ServletRequestEvent;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 1019
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {v7, v2}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/servlet/ServletRequestListener;

    invoke-interface {v7, v6}, Ljavax/servlet/ServletRequestListener;->requestInitialized(Ljavax/servlet/ServletRequestEvent;)V

    .line 1018
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1023
    .end local v2    # "i":I
    .end local v5    # "s":I
    .end local v6    # "sre":Ljavax/servlet/ServletRequestEvent;
    :cond_1
    sget-object v7, Lorg/eclipse/jetty/server/DispatcherType;->REQUEST:Lorg/eclipse/jetty/server/DispatcherType;

    invoke-virtual {v7, v0}, Lorg/eclipse/jetty/server/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isProtectedTarget(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1024
    new-instance v7, Lorg/eclipse/jetty/http/HttpException;

    const/16 v8, 0x194

    invoke-direct {v7, v8}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw v7
    :try_end_0
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1036
    :catch_0
    move-exception v1

    .line 1038
    .local v1, "e":Lorg/eclipse/jetty/http/HttpException;
    :try_start_1
    sget-object v7, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v7, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 1039
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 1040
    invoke-virtual {v1}, Lorg/eclipse/jetty/http/HttpException;->getStatus()I

    move-result v7

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/HttpException;->getReason()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p4, v7, v8}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1045
    if-eqz v4, :cond_7

    .line 1047
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    if-eqz v7, :cond_9

    .line 1049
    new-instance v6, Ljavax/servlet/ServletRequestEvent;

    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {v6, v7, p3}, Ljavax/servlet/ServletRequestEvent;-><init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;)V

    .line 1050
    .restart local v6    # "sre":Ljavax/servlet/ServletRequestEvent;
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {v7}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    .restart local v2    # "i":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_2
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    if-lez v3, :cond_9

    .line 1051
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {v7, v2}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/servlet/ServletRequestListener;

    invoke-interface {v7, v6}, Ljavax/servlet/ServletRequestListener;->requestDestroyed(Ljavax/servlet/ServletRequestEvent;)V

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_2

    .line 1028
    .end local v1    # "e":Lorg/eclipse/jetty/http/HttpException;
    .end local v3    # "i":I
    .end local v6    # "sre":Ljavax/servlet/ServletRequestEvent;
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->never()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1029
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->nextHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_2
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1045
    :cond_3
    :goto_3
    if-eqz v4, :cond_7

    .line 1047
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    if-eqz v7, :cond_a

    .line 1049
    new-instance v6, Ljavax/servlet/ServletRequestEvent;

    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {v6, v7, p3}, Ljavax/servlet/ServletRequestEvent;-><init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;)V

    .line 1050
    .restart local v6    # "sre":Ljavax/servlet/ServletRequestEvent;
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {v7}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    .restart local v2    # "i":I
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    :goto_4
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    if-lez v3, :cond_a

    .line 1051
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {v7, v2}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/servlet/ServletRequestListener;

    invoke-interface {v7, v6}, Ljavax/servlet/ServletRequestListener;->requestDestroyed(Ljavax/servlet/ServletRequestEvent;)V

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_4

    .line 1030
    .end local v3    # "i":I
    .end local v6    # "sre":Ljavax/servlet/ServletRequestEvent;
    :cond_4
    :try_start_3
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    if-ne v7, v8, :cond_5

    .line 1031
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    invoke-virtual {v7, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_3
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 1045
    :catchall_0
    move-exception v7

    move-object v8, v7

    if-eqz v4, :cond_6

    .line 1047
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    if-eqz v7, :cond_8

    .line 1049
    new-instance v6, Ljavax/servlet/ServletRequestEvent;

    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {v6, v7, p3}, Ljavax/servlet/ServletRequestEvent;-><init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;)V

    .line 1050
    .restart local v6    # "sre":Ljavax/servlet/ServletRequestEvent;
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {v7}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    .restart local v2    # "i":I
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    :goto_5
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    if-lez v3, :cond_8

    .line 1051
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {v7, v2}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/servlet/ServletRequestListener;

    invoke-interface {v7, v6}, Ljavax/servlet/ServletRequestListener;->requestDestroyed(Ljavax/servlet/ServletRequestEvent;)V

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_5

    .line 1032
    .end local v3    # "i":I
    .end local v6    # "sre":Ljavax/servlet/ServletRequestEvent;
    :cond_5
    :try_start_4
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    if-eqz v7, :cond_3

    .line 1033
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    invoke-interface {v7, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_4
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 1045
    :cond_6
    throw v8

    .line 1061
    :cond_7
    return-void

    .line 1054
    :cond_8
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    if-eqz v7, :cond_6

    .line 1056
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v7}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    .restart local v2    # "i":I
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    :goto_6
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    if-lez v3, :cond_6

    .line 1057
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v7, v2}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/EventListener;

    invoke-virtual {p2, v7}, Lorg/eclipse/jetty/server/Request;->removeEventListener(Ljava/util/EventListener;)V

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_6

    .line 1054
    .end local v3    # "i":I
    .restart local v1    # "e":Lorg/eclipse/jetty/http/HttpException;
    :cond_9
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    if-eqz v7, :cond_7

    .line 1056
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v7}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    .restart local v2    # "i":I
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    :goto_7
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    if-lez v3, :cond_7

    .line 1057
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v7, v2}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/EventListener;

    invoke-virtual {p2, v7}, Lorg/eclipse/jetty/server/Request;->removeEventListener(Ljava/util/EventListener;)V

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_7

    .line 1054
    .end local v1    # "e":Lorg/eclipse/jetty/http/HttpException;
    .end local v3    # "i":I
    :cond_a
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    if-eqz v7, :cond_7

    .line 1056
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v7}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    .restart local v2    # "i":I
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    :goto_8
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    if-lez v3, :cond_7

    .line 1057
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v7, v2}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/EventListener;

    invoke-virtual {p2, v7}, Lorg/eclipse/jetty/server/Request;->removeEventListener(Ljava/util/EventListener;)V

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_8
.end method

.method public doScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 17
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "baseRequest"    # Lorg/eclipse/jetty/server/Request;
    .param p3, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p4, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 886
    sget-object v12, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v12}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 887
    sget-object v12, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v13, "scope {}|{}|{} @ {}"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getContextPath()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getServletPath()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    aput-object p0, v14, v15

    invoke-interface {v12, v13, v14}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 889
    :cond_0
    const/4 v7, 0x0

    .line 890
    .local v7, "old_context":Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    const/4 v8, 0x0

    .line 891
    .local v8, "old_context_path":Ljava/lang/String;
    const/4 v10, 0x0

    .line 892
    .local v10, "old_servlet_path":Ljava/lang/String;
    const/4 v9, 0x0

    .line 893
    .local v9, "old_path_info":Ljava/lang/String;
    const/4 v6, 0x0

    .line 894
    .local v6, "old_classloader":Ljava/lang/ClassLoader;
    const/4 v4, 0x0

    .line 895
    .local v4, "current_thread":Ljava/lang/Thread;
    move-object/from16 v11, p1

    .line 897
    .local v11, "pathInfo":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Lorg/eclipse/jetty/server/DispatcherType;

    move-result-object v5

    .line 899
    .local v5, "dispatch":Lorg/eclipse/jetty/server/DispatcherType;
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v7

    .line 902
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-eq v7, v12, :cond_7

    .line 905
    sget-object v12, Lorg/eclipse/jetty/server/DispatcherType;->REQUEST:Lorg/eclipse/jetty/server/DispatcherType;

    invoke-virtual {v12, v5}, Lorg/eclipse/jetty/server/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    sget-object v12, Lorg/eclipse/jetty/server/DispatcherType;->ASYNC:Lorg/eclipse/jetty/server/DispatcherType;

    invoke-virtual {v12, v5}, Lorg/eclipse/jetty/server/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 907
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_compactPath:Z

    if-eqz v12, :cond_2

    .line 908
    invoke-static/range {p1 .. p1}, Lorg/eclipse/jetty/util/URIUtil;->compactPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 909
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkContext(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletResponse;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 990
    :cond_3
    :goto_0
    return-void

    .line 912
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-le v12, v13, :cond_b

    .line 914
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_5

    .line 915
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 916
    :cond_5
    move-object/from16 v11, p1

    .line 931
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v12, :cond_7

    .line 933
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    .line 934
    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 935
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v4, v12}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 941
    :cond_7
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getContextPath()Ljava/lang/String;

    move-result-object v8

    .line 942
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getServletPath()Ljava/lang/String;

    move-result-object v10

    .line 943
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v9

    .line 946
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/eclipse/jetty/server/Request;->setContext(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)V

    .line 947
    sget-object v12, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v12, v13}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 948
    sget-object v12, Lorg/eclipse/jetty/server/DispatcherType;->INCLUDE:Lorg/eclipse/jetty/server/DispatcherType;

    invoke-virtual {v12, v5}, Lorg/eclipse/jetty/server/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    const-string v12, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 950
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_d

    .line 951
    const-string v12, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/eclipse/jetty/server/Request;->setContextPath(Ljava/lang/String;)V

    .line 954
    :goto_2
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 955
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    .line 958
    :cond_8
    sget-object v12, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v12}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 959
    sget-object v12, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v13, "context={}|{}|{} @ {}"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getContextPath()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getServletPath()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    aput-object p0, v14, v15

    invoke-interface {v12, v13, v14}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 962
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->never()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 963
    invoke-virtual/range {p0 .. p4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->nextScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 974
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-eq v7, v12, :cond_3

    .line 977
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v12, :cond_a

    .line 979
    invoke-virtual {v4, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 983
    :cond_a
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/eclipse/jetty/server/Request;->setContext(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)V

    .line 984
    sget-object v12, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v12, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 985
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/server/Request;->setContextPath(Ljava/lang/String;)V

    .line 986
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 987
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 918
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_c

    .line 920
    const-string p1, "/"

    .line 921
    const-string v11, "/"

    goto/16 :goto_1

    .line 925
    :cond_c
    const-string p1, "/"

    .line 926
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 953
    :cond_d
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/eclipse/jetty/server/Request;->setContextPath(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 974
    :catchall_0
    move-exception v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-eq v7, v13, :cond_f

    .line 977
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v13, :cond_e

    .line 979
    invoke-virtual {v4, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 983
    :cond_e
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/eclipse/jetty/server/Request;->setContext(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)V

    .line 984
    sget-object v13, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v13, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 985
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/server/Request;->setContextPath(Ljava/lang/String;)V

    .line 986
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 987
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    .line 974
    :cond_f
    throw v12

    .line 964
    :cond_10
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v12, :cond_11

    .line 965
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v12, v0, v1, v2, v3}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto/16 :goto_3

    .line 966
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v12, :cond_12

    .line 967
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v12, v0, v1, v2, v3}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto/16 :goto_3

    .line 969
    :cond_12
    invoke-virtual/range {p0 .. p4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3
.end method

.method protected doStart()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 649
    const/4 v4, 0x0

    iput v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_availability:I

    .line 651
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 652
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Null contextPath"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 654
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-static {v4}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v4

    iput-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    .line 655
    const/4 v2, 0x0

    .line 656
    .local v2, "old_classloader":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    .line 657
    .local v1, "current_thread":Ljava/lang/Thread;
    const/4 v3, 0x0

    .line 662
    .local v3, "old_context":Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    :try_start_0
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v4, :cond_1

    .line 664
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 665
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 666
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v4}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 669
    :cond_1
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    if-nez v4, :cond_2

    .line 670
    new-instance v4, Lorg/eclipse/jetty/http/MimeTypes;

    invoke-direct {v4}, Lorg/eclipse/jetty/http/MimeTypes;-><init>()V

    iput-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    .line 672
    :cond_2
    sget-object v4, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-object v3, v0

    .line 673
    sget-object v4, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 676
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->startContext()V

    .line 678
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 680
    :try_start_1
    iget-boolean v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_shutdown:Z

    if-eqz v4, :cond_5

    const/4 v4, 0x2

    :goto_1
    iput v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_availability:I

    .line 681
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 685
    sget-object v4, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 688
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v4, :cond_3

    .line 690
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 694
    :cond_3
    return-void

    .line 654
    .end local v1    # "current_thread":Ljava/lang/Thread;
    .end local v2    # "old_classloader":Ljava/lang/ClassLoader;
    .end local v3    # "old_context":Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 680
    .restart local v1    # "current_thread":Ljava/lang/Thread;
    .restart local v2    # "old_classloader":Ljava/lang/ClassLoader;
    .restart local v3    # "old_context":Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    :cond_5
    :try_start_2
    iget-boolean v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_available:Z

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v4, 0x3

    goto :goto_1

    .line 681
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 685
    :catchall_1
    move-exception v4

    sget-object v5, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v5, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 688
    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v5, :cond_7

    .line 690
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 685
    :cond_7
    throw v4
.end method

.method protected doStop()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 747
    iput v12, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_availability:I

    .line 749
    const/4 v6, 0x0

    .line 750
    .local v6, "old_classloader":Ljava/lang/ClassLoader;
    const/4 v0, 0x0

    .line 752
    .local v0, "current_thread":Ljava/lang/Thread;
    sget-object v8, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 753
    .local v7, "old_context":Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    sget-object v8, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    iget-object v9, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v8, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 757
    :try_start_0
    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v8, :cond_0

    .line 759
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 760
    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 761
    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v8}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 764
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doStop()V

    .line 767
    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    if-eqz v8, :cond_1

    .line 769
    new-instance v2, Ljavax/servlet/ServletContextEvent;

    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {v2, v8}, Ljavax/servlet/ServletContextEvent;-><init>(Ljavax/servlet/ServletContext;)V

    .line 770
    .local v2, "event":Ljavax/servlet/ServletContextEvent;
    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    invoke-static {v8}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v3

    .local v3, "i":I
    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_0
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    if-lez v4, :cond_1

    .line 772
    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    invoke-static {v8, v3}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/servlet/ServletContextListener;

    invoke-interface {v8, v2}, Ljavax/servlet/ServletContextListener;->contextDestroyed(Ljavax/servlet/ServletContextEvent;)V

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 776
    .end local v2    # "event":Ljavax/servlet/ServletContextEvent;
    .end local v4    # "i":I
    :cond_1
    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    if-eqz v8, :cond_2

    .line 777
    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->stop()V

    .line 779
    :cond_2
    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 780
    .local v1, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 782
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 783
    .local v5, "name":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {p0, v5, v8}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 788
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v5    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v8

    sget-object v9, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v10, "stopped {}"

    new-array v11, v11, [Ljava/lang/Object;

    aput-object p0, v11, v12

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 789
    sget-object v9, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v9, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 791
    iget-object v9, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v9, :cond_3

    .line 792
    invoke-virtual {v0, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 788
    :cond_3
    throw v8

    .restart local v1    # "e":Ljava/util/Enumeration;
    :cond_4
    sget-object v8, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "stopped {}"

    new-array v10, v11, [Ljava/lang/Object;

    aput-object p0, v10, v12

    invoke-interface {v8, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 789
    sget-object v8, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v8, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 791
    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v8, :cond_5

    .line 792
    invoke-virtual {v0, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 795
    :cond_5
    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v8}, Lorg/eclipse/jetty/util/AttributesMap;->clearAttributes()V

    .line 796
    return-void
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 4
    .param p1, "out"    # Ljava/lang/Appendable;
    .param p2, "indent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->dumpThis(Ljava/lang/Appendable;)V

    .line 198
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/util/Collection;

    const/4 v1, 0x0

    new-instance v2, Lorg/eclipse/jetty/server/handler/ContextHandler$CLDump;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/eclipse/jetty/server/handler/ContextHandler$CLDump;-><init>(Ljava/lang/ClassLoader;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getBeans()Ljava/util/Collection;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_initParams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeEntrySet()Ljava/util/Set;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeEntrySet()Ljava/util/Set;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 200
    return-void
.end method

.method public getAllowNullPathInfo()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_allowNullPathInfo:Z

    return v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 397
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-static {v0}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeNamesCopy(Lorg/eclipse/jetty/util/Attributes;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Lorg/eclipse/jetty/util/Attributes;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    return-object v0
.end method

.method public getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1

    .prologue
    .line 1221
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 1222
    const/4 v0, 0x0

    .line 1223
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    goto :goto_0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getClassPath()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 436
    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    instance-of v8, v8, Ljava/net/URLClassLoader;

    if-nez v8, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-object v7

    .line 438
    :cond_1
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    check-cast v4, Ljava/net/URLClassLoader;

    .line 439
    .local v4, "loader":Ljava/net/URLClassLoader;
    invoke-virtual {v4}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v6

    .line 440
    .local v6, "urls":[Ljava/net/URL;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 441
    .local v0, "classpath":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v8, v6

    if-ge v3, v8, :cond_4

    .line 445
    :try_start_0
    aget-object v8, v6, v3

    invoke-virtual {p0, v8}, Lorg/eclipse/jetty/server/handler/ContextHandler;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v5

    .line 446
    .local v5, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v2

    .line 447
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 449
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 450
    sget-char v8, Ljava/io/File;->pathSeparatorChar:C

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 451
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 454
    :catch_0
    move-exception v1

    .line 456
    .local v1, "e":Ljava/io/IOException;
    sget-object v8, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v8, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 459
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_0

    .line 461
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public getConnectorNames()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 369
    :cond_0
    const/4 v0, 0x0

    .line 371
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getContextPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorHandler()Lorg/eclipse/jetty/server/handler/ErrorHandler;
    .locals 1

    .prologue
    .line 1331
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    return-object v0
.end method

.method public getEventListeners()[Ljava/util/EventListener;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_eventListeners:[Ljava/util/EventListener;

    return-object v0
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 479
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_initParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInitParameterNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_initParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getInitParams()Ljava/util/Map;
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
    .line 506
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_initParams:Ljava/util/Map;

    return-object v0
.end method

.method public getLocaleEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 1450
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 1451
    const/4 v0, 0x0

    .line 1453
    :goto_0
    return-object v0

    .line 1452
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1453
    .local v0, "encoding":Ljava/lang/String;
    goto :goto_0
.end method

.method public getLocaleEncoding(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1467
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 1468
    const/4 v0, 0x0

    .line 1472
    :cond_0
    :goto_0
    return-object v0

    .line 1469
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1470
    .local v0, "encoding":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1471
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "encoding":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "encoding":Ljava/lang/String;
    goto :goto_0
.end method

.method public getLogger()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method public getMaxFormContentSize()I
    .locals 1

    .prologue
    .line 1351
    iget v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_maxFormContentSize:I

    return v0
.end method

.method public getMaxFormKeys()I
    .locals 1

    .prologue
    .line 1367
    iget v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_maxFormKeys:I

    return v0
.end method

.method public getMimeTypes()Lorg/eclipse/jetty/http/MimeTypes;
    .locals 1

    .prologue
    .line 1291
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    if-nez v0, :cond_0

    .line 1292
    new-instance v0, Lorg/eclipse/jetty/http/MimeTypes;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/MimeTypes;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    .line 1293
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1480
    if-eqz p1, :cond_0

    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1481
    :cond_0
    new-instance v2, Ljava/net/MalformedURLException;

    invoke-direct {v2, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1483
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v3, :cond_3

    move-object v1, v2

    .line 1509
    :cond_2
    :goto_0
    return-object v1

    .line 1488
    :cond_3
    :try_start_0
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1489
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v3, p1}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 1491
    .local v1, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    iget-boolean v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliases:Z

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1493
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1494
    sget-object v3, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Aliased resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "~="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_1
    move-object v1, v2

    .line 1499
    goto :goto_0

    .line 1495
    :cond_5
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1497
    :cond_6
    sget-object v3, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1498
    sget-object v3, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Aliased resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "~="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1504
    .end local v1    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    :catch_0
    move-exception v0

    .line 1506
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 1509
    goto/16 :goto_0
.end method

.method public getResourceBase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1232
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 1233
    const/4 v0, 0x0

    .line 1234
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResourcePaths(Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1543
    :try_start_0
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1544
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    .line 1546
    .local v3, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1548
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1549
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1551
    :cond_0
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->list()[Ljava/lang/String;

    move-result-object v2

    .line 1552
    .local v2, "l":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1554
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1555
    .local v4, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_2

    .line 1556
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1555
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1561
    .end local v1    # "i":I
    .end local v2    # "l":[Ljava/lang/String;
    .end local v3    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    .end local v4    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 1563
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 1565
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    :cond_2
    return-object v4
.end method

.method public getServletContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    return-object v0
.end method

.method public getVirtualHosts()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    return-object v0
.end method

.method public getWelcomeFiles()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1322
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_welcomeFiles:[Ljava/lang/String;

    return-object v0
.end method

.method public handle(Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1069
    const/4 v2, 0x0

    .line 1070
    .local v2, "old_classloader":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    .line 1071
    .local v1, "current_thread":Ljava/lang/Thread;
    const/4 v3, 0x0

    .line 1074
    .local v3, "old_context":Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    :try_start_0
    sget-object v4, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-object v3, v0

    .line 1075
    sget-object v4, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1078
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v4, :cond_0

    .line 1080
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 1081
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 1082
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v4}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 1085
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1089
    sget-object v4, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1090
    if-eqz v2, :cond_1

    .line 1092
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 1095
    :cond_1
    return-void

    .line 1089
    :catchall_0
    move-exception v4

    sget-object v5, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v5, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1090
    if-eqz v2, :cond_2

    .line 1092
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 1089
    :cond_2
    throw v4
.end method

.method public isAliases()Z
    .locals 1

    .prologue
    .line 1272
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliases:Z

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 611
    monitor-enter p0

    .line 613
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_available:Z

    monitor-exit p0

    return v0

    .line 614
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCompactPath()Z
    .locals 1

    .prologue
    .line 1386
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_compactPath:Z

    return v0
.end method

.method protected isProtectedTarget(Ljava/lang/String;)Z
    .locals 1
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 1105
    const/4 v0, 0x0

    return v0
.end method

.method public isShutdown()Z
    .locals 1

    .prologue
    .line 582
    monitor-enter p0

    .line 584
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_shutdown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 585
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1431
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1432
    const/4 v0, 0x0

    .line 1437
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1434
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_1

    .line 1435
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1437
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1431
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1
    .param p1, "urlOrPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1533
    invoke-static {p1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    return-object v0
.end method

.method public newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1518
    invoke-static {p1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1114
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1115
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->removeAttribute(Ljava/lang/String;)V

    .line 1116
    return-void
.end method

.method public removeVirtualHosts([Ljava/lang/String;)V
    .locals 4
    .param p1, "virtualHosts"    # [Ljava/lang/String;

    .prologue
    .line 316
    if-nez p1, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    array-length v3, v3

    if-eqz v3, :cond_0

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 328
    .local v0, "existingVirtualHosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_3

    .line 330
    aget-object v3, p1, v1

    invoke-direct {p0, v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->normalizeHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, "toRemoveVirtualHost":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 333
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 328
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 337
    .end local v2    # "toRemoveVirtualHost":Ljava/lang/String;
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 339
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    goto :goto_0

    .line 343
    :cond_4
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    goto :goto_0
.end method

.method public setAliases(Z)V
    .locals 0
    .param p1, "aliases"    # Z

    .prologue
    .line 1282
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliases:Z

    .line 1283
    return-void
.end method

.method public setAllowNullPathInfo(Z)V
    .locals 0
    .param p1, "allowNullPathInfo"    # Z

    .prologue
    .line 224
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_allowNullPathInfo:Z

    .line 225
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1127
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1128
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/util/AttributesMap;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1129
    return-void
.end method

.method public setAttributes(Lorg/eclipse/jetty/util/Attributes;)V
    .locals 3
    .param p1, "attributes"    # Lorg/eclipse/jetty/util/Attributes;

    .prologue
    .line 1138
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/AttributesMap;->clearAttributes()V

    .line 1139
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v2, p1}, Lorg/eclipse/jetty/util/AttributesMap;->addAll(Lorg/eclipse/jetty/util/Attributes;)V

    .line 1140
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 1141
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1143
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1144
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p1, v1}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1146
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setAvailable(Z)V
    .locals 1
    .param p1, "available"    # Z

    .prologue
    .line 623
    monitor-enter p0

    .line 625
    :try_start_0
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_available:Z

    .line 626
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_shutdown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_availability:I

    .line 627
    monitor-exit p0

    .line 628
    return-void

    .line 626
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_available:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 627
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBaseResource(Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 0
    .param p1, "base"    # Lorg/eclipse/jetty/util/resource/Resource;

    .prologue
    .line 1244
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    .line 1245
    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1183
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    .line 1184
    return-void
.end method

.method public setCompactPath(Z)V
    .locals 0
    .param p1, "compactPath"    # Z

    .prologue
    .line 1396
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_compactPath:Z

    .line 1397
    return-void
.end method

.method public setConnectorNames([Ljava/lang/String;)V
    .locals 2
    .param p1, "connectors"    # [Ljava/lang/String;

    .prologue
    .line 385
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 386
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    .line 389
    :goto_0
    return-void

    .line 388
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    goto :goto_0
.end method

.method public setContextPath(Ljava/lang/String;)V
    .locals 4
    .param p1, "contextPath"    # Ljava/lang/String;

    .prologue
    .line 1193
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1194
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ends with /"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1195
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    .line 1197
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Server;->isStarting()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Server;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1199
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v2

    const-class v3, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/server/Server;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    .line 1200
    .local v0, "contextCollections":[Lorg/eclipse/jetty/server/Handler;
    const/4 v1, 0x0

    .local v1, "h":I
    :goto_0
    if-eqz v0, :cond_2

    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 1201
    aget-object v2, v0, v1

    check-cast v2, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->mapContexts()V

    .line 1200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1203
    .end local v0    # "contextCollections":[Lorg/eclipse/jetty/server/Handler;
    .end local v1    # "h":I
    :cond_2
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "servletContextName"    # Ljava/lang/String;

    .prologue
    .line 1212
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_displayName:Ljava/lang/String;

    .line 1213
    return-void
.end method

.method public setErrorHandler(Lorg/eclipse/jetty/server/handler/ErrorHandler;)V
    .locals 6
    .param p1, "errorHandler"    # Lorg/eclipse/jetty/server/handler/ErrorHandler;

    .prologue
    .line 1341
    if-eqz p1, :cond_0

    .line 1342
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 1343
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1344
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    const-string v4, "errorHandler"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1345
    :cond_1
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    .line 1346
    return-void
.end method

.method public setEventListeners([Ljava/util/EventListener;)V
    .locals 3
    .param p1, "eventListeners"    # [Ljava/util/EventListener;

    .prologue
    const/4 v2, 0x0

    .line 537
    iput-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    .line 538
    iput-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributeListeners:Ljava/lang/Object;

    .line 539
    iput-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    .line 540
    iput-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    .line 542
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_eventListeners:[Ljava/util/EventListener;

    .line 544
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eqz p1, :cond_4

    array-length v2, p1

    if-ge v0, v2, :cond_4

    .line 546
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_eventListeners:[Ljava/util/EventListener;

    aget-object v1, v2, v0

    .line 548
    .local v1, "listener":Ljava/util/EventListener;
    instance-of v2, v1, Ljavax/servlet/ServletContextListener;

    if-eqz v2, :cond_0

    .line 549
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    .line 551
    :cond_0
    instance-of v2, v1, Ljavax/servlet/ServletContextAttributeListener;

    if-eqz v2, :cond_1

    .line 552
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributeListeners:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributeListeners:Ljava/lang/Object;

    .line 554
    :cond_1
    instance-of v2, v1, Ljavax/servlet/ServletRequestListener;

    if-eqz v2, :cond_2

    .line 555
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    .line 557
    :cond_2
    instance-of v2, v1, Ljavax/servlet/ServletRequestAttributeListener;

    if-eqz v2, :cond_3

    .line 558
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    .line 544
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 560
    .end local v1    # "listener":Ljava/util/EventListener;
    :cond_4
    return-void
.end method

.method public setInitParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 487
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_initParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setLogger(Lorg/eclipse/jetty/util/log/Logger;)V
    .locals 0
    .param p1, "logger"    # Lorg/eclipse/jetty/util/log/Logger;

    .prologue
    .line 639
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    .line 640
    return-void
.end method

.method public setManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1172
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_managedAttributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1173
    .local v2, "old":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1174
    return-void
.end method

.method public setMaxFormContentSize(I)V
    .locals 0
    .param p1, "maxSize"    # I

    .prologue
    .line 1361
    iput p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_maxFormContentSize:I

    .line 1362
    return-void
.end method

.method public setMaxFormKeys(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 1377
    iput p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_maxFormKeys:I

    .line 1378
    return-void
.end method

.method public setMimeTypes(Lorg/eclipse/jetty/http/MimeTypes;)V
    .locals 0
    .param p1, "mimeTypes"    # Lorg/eclipse/jetty/http/MimeTypes;

    .prologue
    .line 1303
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    .line 1304
    return-void
.end method

.method public setResourceBase(Ljava/lang/String;)V
    .locals 4
    .param p1, "resourceBase"    # Ljava/lang/String;

    .prologue
    .line 1256
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setBaseResource(Lorg/eclipse/jetty/util/resource/Resource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1264
    return-void

    .line 1258
    :catch_0
    move-exception v0

    .line 1260
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1261
    sget-object v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 1262
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setServer(Lorg/eclipse/jetty/server/Server;)V
    .locals 13
    .param p1, "server"    # Lorg/eclipse/jetty/server/Server;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 231
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    if-eqz v0, :cond_2

    .line 233
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v12

    .line 234
    .local v12, "old_server":Lorg/eclipse/jetty/server/Server;
    if-eqz v12, :cond_0

    if-eq v12, p1, :cond_0

    .line 235
    invoke-virtual {v12}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    const-string v4, "error"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 236
    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 237
    if-eqz p1, :cond_1

    if-eq p1, v12, :cond_1

    .line 238
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v6

    iget-object v9, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    const-string v10, "error"

    move-object v7, p0

    move-object v8, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 239
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 243
    .end local v12    # "old_server":Lorg/eclipse/jetty/server/Server;
    :goto_0
    return-void

    .line 242
    :cond_2
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    goto :goto_0
.end method

.method public setShutdown(Z)V
    .locals 1
    .param p1, "shutdown"    # Z

    .prologue
    .line 598
    monitor-enter p0

    .line 600
    :try_start_0
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_shutdown:Z

    .line 601
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_shutdown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_availability:I

    .line 602
    monitor-exit p0

    .line 603
    return-void

    .line 601
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_available:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 602
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setVirtualHosts([Ljava/lang/String;)V
    .locals 3
    .param p1, "vhosts"    # [Ljava/lang/String;

    .prologue
    .line 257
    if-nez p1, :cond_1

    .line 259
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    .line 267
    :cond_0
    return-void

    .line 263
    :cond_1
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    .line 264
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 265
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    aget-object v2, p1, v0

    invoke-direct {p0, v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->normalizeHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setWelcomeFiles([Ljava/lang/String;)V
    .locals 0
    .param p1, "files"    # [Ljava/lang/String;

    .prologue
    .line 1311
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_welcomeFiles:[Ljava/lang/String;

    .line 1312
    return-void
.end method

.method protected startContext()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 705
    iget-object v11, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_initParams:Ljava/util/Map;

    const-string v12, "org.eclipse.jetty.server.context.ManagedAttributes"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 706
    .local v8, "managedAttributes":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 708
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_managedAttributes:Ljava/util/Map;

    .line 709
    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 710
    .local v2, "attributes":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v1, v0, v6

    .line 711
    .local v1, "attribute":Ljava/lang/String;
    iget-object v11, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_managedAttributes:Ljava/util/Map;

    const/4 v12, 0x0

    invoke-interface {v11, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 713
    .end local v1    # "attribute":Ljava/lang/String;
    :cond_0
    iget-object v11, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v11}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v3

    .line 714
    .local v3, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 716
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 717
    .local v9, "name":Ljava/lang/String;
    iget-object v11, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v11, v9}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 718
    .local v10, "value":Ljava/lang/Object;
    invoke-virtual {p0, v9, v10}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 722
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "attributes":[Ljava/lang/String;
    .end local v3    # "e":Ljava/util/Enumeration;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/Object;
    :cond_1
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doStart()V

    .line 724
    iget-object v11, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    if-eqz v11, :cond_2

    .line 725
    iget-object v11, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    invoke-virtual {v11}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->start()V

    .line 728
    :cond_2
    iget-object v11, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    if-eqz v11, :cond_3

    .line 730
    new-instance v4, Ljavax/servlet/ServletContextEvent;

    iget-object v11, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {v4, v11}, Ljavax/servlet/ServletContextEvent;-><init>(Ljavax/servlet/ServletContext;)V

    .line 731
    .local v4, "event":Ljavax/servlet/ServletContextEvent;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget-object v11, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    invoke-static {v11}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v11

    if-ge v5, v11, :cond_3

    .line 733
    iget-object v11, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    invoke-static {v11, v5}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavax/servlet/ServletContextListener;

    invoke-interface {v11, v4}, Ljavax/servlet/ServletContextListener;->contextInitialized(Ljavax/servlet/ServletContextEvent;)V

    .line 731
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 737
    .end local v4    # "event":Ljavax/servlet/ServletContextEvent;
    .end local v5    # "i":I
    :cond_3
    sget-object v11, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v12, "started {}"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p0, v13, v14

    invoke-interface {v11, v12, v13}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 738
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .prologue
    const/16 v12, 0x2c

    const/4 v11, 0x0

    .line 1403
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v8

    .line 1405
    .local v8, "vhosts":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1407
    .local v1, "b":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    .line 1408
    .local v5, "pkg":Ljava/lang/Package;
    if-eqz v5, :cond_0

    .line 1410
    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1411
    .local v4, "p":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 1413
    const-string v9, "\\."

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1414
    .local v7, "ss":[Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 1415
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x2e

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1414
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1418
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "p":Ljava/lang/String;
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "ss":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1419
    const/16 v9, 0x7b

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1421
    if-eqz v8, :cond_1

    array-length v9, v8

    if-lez v9, :cond_1

    .line 1422
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v8, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1423
    :cond_1
    const/16 v9, 0x7d

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1425
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method
