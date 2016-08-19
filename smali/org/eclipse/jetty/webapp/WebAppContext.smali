.class public Lorg/eclipse/jetty/webapp/WebAppContext;
.super Lorg/eclipse/jetty/servlet/ServletContextHandler;
.source "WebAppContext.java"

# interfaces
.implements Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/webapp/WebAppContext$Context;
    }
.end annotation


# static fields
.field public static final BASETEMPDIR:Ljava/lang/String; = "org.eclipse.jetty.webapp.basetempdir"

.field public static final ERROR_PAGE:Ljava/lang/String; = "org.eclipse.jetty.server.error_page"

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final SERVER_CONFIG:Ljava/lang/String; = "org.eclipse.jetty.webapp.configuration"

.field public static final SERVER_SRV_CLASSES:Ljava/lang/String; = "org.eclipse.jetty.webapp.serverClasses"

.field public static final SERVER_SYS_CLASSES:Ljava/lang/String; = "org.eclipse.jetty.webapp.systemClasses"

.field public static final TEMPDIR:Ljava/lang/String; = "javax.servlet.context.tempdir"

.field public static final WEB_DEFAULTS_XML:Ljava/lang/String; = "org/eclipse/jetty/webapp/webdefault.xml"

.field private static __dftConfigurationClasses:[Ljava/lang/String;

.field public static final __dftServerClasses:[Ljava/lang/String;

.field public static final __dftSystemClasses:[Ljava/lang/String;


# instance fields
.field private _allowDuplicateFragmentNames:Z

.field private _configurationClasses:[Ljava/lang/String;

.field private _configurationClassesSet:Z

.field private _configurationDiscovered:Z

.field private _configurations:[Lorg/eclipse/jetty/webapp/Configuration;

.field private _configurationsSet:Z

.field private _contextWhiteList:[Ljava/lang/String;

.field private _copyDir:Z

.field private _copyWebInf:Z

.field private _defaultsDescriptor:Ljava/lang/String;

.field private _descriptor:Ljava/lang/String;

.field private _distributable:Z

.field private _extraClasspath:Ljava/lang/String;

.field private _extractWAR:Z

.field private _logUrlOnStart:Z

.field private _metadata:Lorg/eclipse/jetty/webapp/MetaData;

.field private final _overrideDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _ownClassLoader:Z

.field private _parentLoaderPriority:Z

.field private _permissions:Ljava/security/PermissionCollection;

.field private _resourceAliases:Ljava/util/Map;
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

.field private _serverClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

.field private _systemClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

.field private _throwUnavailableOnStartupException:Z

.field private _tmpDir:Ljava/io/File;

.field private _unavailableException:Ljava/lang/Throwable;

.field private _war:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    const-class v0, Lorg/eclipse/jetty/webapp/WebAppContext;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/webapp/WebAppContext;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 79
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "org.eclipse.jetty.webapp.WebInfConfiguration"

    aput-object v1, v0, v3

    const-string v1, "org.eclipse.jetty.webapp.WebXmlConfiguration"

    aput-object v1, v0, v4

    const-string v1, "org.eclipse.jetty.webapp.MetaInfConfiguration"

    aput-object v1, v0, v5

    const-string v1, "org.eclipse.jetty.webapp.FragmentConfiguration"

    aput-object v1, v0, v6

    const-string v1, "org.eclipse.jetty.webapp.JettyWebXmlConfiguration"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "org.eclipse.jetty.webapp.TagLibConfiguration"

    aput-object v2, v0, v1

    sput-object v0, Lorg/eclipse/jetty/webapp/WebAppContext;->__dftConfigurationClasses:[Ljava/lang/String;

    .line 92
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "java."

    aput-object v1, v0, v3

    const-string v1, "javax."

    aput-object v1, v0, v4

    const-string v1, "org.xml."

    aput-object v1, v0, v5

    const-string v1, "org.w3c."

    aput-object v1, v0, v6

    const-string v1, "org.apache.commons.logging."

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "org.eclipse.jetty.continuation."

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "org.eclipse.jetty.jndi."

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "org.eclipse.jetty.plus.jaas."

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "org.eclipse.jetty.websocket.WebSocket"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "org.eclipse.jetty.websocket.WebSocketFactory"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "org.eclipse.jetty.servlet.DefaultServlet"

    aput-object v2, v0, v1

    sput-object v0, Lorg/eclipse/jetty/webapp/WebAppContext;->__dftSystemClasses:[Ljava/lang/String;

    .line 111
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "-org.eclipse.jetty.continuation."

    aput-object v1, v0, v3

    const-string v1, "-org.eclipse.jetty.jndi."

    aput-object v1, v0, v4

    const-string v1, "-org.eclipse.jetty.plus.jaas."

    aput-object v1, v0, v5

    const-string v1, "-org.eclipse.jetty.websocket.WebSocket"

    aput-object v1, v0, v6

    const-string v1, "-org.eclipse.jetty.websocket.WebSocketFactory"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "-org.eclipse.jetty.servlet.DefaultServlet"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "-org.eclipse.jetty.servlet.listener."

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "org.eclipse.jetty."

    aput-object v2, v0, v1

    sput-object v0, Lorg/eclipse/jetty/webapp/WebAppContext;->__dftServerClasses:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 172
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;-><init>(I)V

    .line 123
    sget-object v0, Lorg/eclipse/jetty/webapp/WebAppContext;->__dftConfigurationClasses:[Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationClasses:[Ljava/lang/String;

    .line 124
    iput-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_systemClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    .line 125
    iput-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_serverClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    .line 128
    const-string v0, "org/eclipse/jetty/webapp/webdefault.xml"

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_defaultsDescriptor:Ljava/lang/String;

    .line 129
    iput-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_descriptor:Ljava/lang/String;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_overrideDescriptors:Ljava/util/List;

    .line 131
    iput-boolean v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_distributable:Z

    .line 132
    iput-boolean v3, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_extractWAR:Z

    .line 133
    iput-boolean v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_copyDir:Z

    .line 134
    iput-boolean v3, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_copyWebInf:Z

    .line 135
    iput-boolean v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_logUrlOnStart:Z

    .line 136
    const-string v0, "org.eclipse.jetty.server.webapp.parentLoaderPriority"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_parentLoaderPriority:Z

    .line 139
    iput-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_contextWhiteList:[Ljava/lang/String;

    .line 147
    iput-boolean v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_ownClassLoader:Z

    .line 148
    iput-boolean v3, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationDiscovered:Z

    .line 149
    iput-boolean v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationClassesSet:Z

    .line 150
    iput-boolean v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationsSet:Z

    .line 151
    iput-boolean v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_allowDuplicateFragmentNames:Z

    .line 152
    iput-boolean v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_throwUnavailableOnStartupException:Z

    .line 155
    new-instance v0, Lorg/eclipse/jetty/webapp/MetaData;

    invoke-direct {v0}, Lorg/eclipse/jetty/webapp/MetaData;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_metadata:Lorg/eclipse/jetty/webapp/MetaData;

    .line 173
    new-instance v0, Lorg/eclipse/jetty/webapp/WebAppContext$Context;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/webapp/WebAppContext$Context;-><init>(Lorg/eclipse/jetty/webapp/WebAppContext;)V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 174
    new-instance v0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;

    invoke-direct {v0}, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;-><init>()V

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/webapp/WebAppContext;->setErrorHandler(Lorg/eclipse/jetty/server/handler/ErrorHandler;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "webApp"    # Ljava/lang/String;
    .param p2, "contextPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 184
    const/4 v0, 0x3

    invoke-direct {p0, v2, p2, v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;-><init>(Lorg/eclipse/jetty/server/HandlerContainer;Ljava/lang/String;I)V

    .line 123
    sget-object v0, Lorg/eclipse/jetty/webapp/WebAppContext;->__dftConfigurationClasses:[Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationClasses:[Ljava/lang/String;

    .line 124
    iput-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_systemClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    .line 125
    iput-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_serverClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    .line 128
    const-string v0, "org/eclipse/jetty/webapp/webdefault.xml"

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_defaultsDescriptor:Ljava/lang/String;

    .line 129
    iput-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_descriptor:Ljava/lang/String;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_overrideDescriptors:Ljava/util/List;

    .line 131
    iput-boolean v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_distributable:Z

    .line 132
    iput-boolean v3, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_extractWAR:Z

    .line 133
    iput-boolean v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_copyDir:Z

    .line 134
    iput-boolean v3, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_copyWebInf:Z

    .line 135
    iput-boolean v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_logUrlOnStart:Z

    .line 136
    const-string v0, "org.eclipse.jetty.server.webapp.parentLoaderPriority"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_parentLoaderPriority:Z

    .line 139
    iput-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_contextWhiteList:[Ljava/lang/String;

    .line 147
    iput-boolean v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_ownClassLoader:Z

    .line 148
    iput-boolean v3, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationDiscovered:Z

    .line 149
    iput-boolean v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationClassesSet:Z

    .line 150
    iput-boolean v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationsSet:Z

    .line 151
    iput-boolean v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_allowDuplicateFragmentNames:Z

    .line 152
    iput-boolean v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_throwUnavailableOnStartupException:Z

    .line 155
    new-instance v0, Lorg/eclipse/jetty/webapp/MetaData;

    invoke-direct {v0}, Lorg/eclipse/jetty/webapp/MetaData;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_metadata:Lorg/eclipse/jetty/webapp/MetaData;

    .line 185
    new-instance v0, Lorg/eclipse/jetty/webapp/WebAppContext$Context;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/webapp/WebAppContext$Context;-><init>(Lorg/eclipse/jetty/webapp/WebAppContext;)V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 186
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/webapp/WebAppContext;->setContextPath(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->setWar(Ljava/lang/String;)V

    .line 188
    new-instance v0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;

    invoke-direct {v0}, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;-><init>()V

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/webapp/WebAppContext;->setErrorHandler(Lorg/eclipse/jetty/server/handler/ErrorHandler;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/HandlerContainer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "parent"    # Lorg/eclipse/jetty/server/HandlerContainer;
    .param p2, "webApp"    # Ljava/lang/String;
    .param p3, "contextPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 199
    const/4 v0, 0x3

    invoke-direct {p0, p1, p3, v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;-><init>(Lorg/eclipse/jetty/server/HandlerContainer;Ljava/lang/String;I)V

    .line 123
    sget-object v0, Lorg/eclipse/jetty/webapp/WebAppContext;->__dftConfigurationClasses:[Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationClasses:[Ljava/lang/String;

    .line 124
    iput-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_systemClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    .line 125
    iput-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_serverClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    .line 128
    const-string v0, "org/eclipse/jetty/webapp/webdefault.xml"

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_defaultsDescriptor:Ljava/lang/String;

    .line 129
    iput-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_descriptor:Ljava/lang/String;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_overrideDescriptors:Ljava/util/List;

    .line 131
    iput-boolean v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_distributable:Z

    .line 132
    iput-boolean v3, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_extractWAR:Z

    .line 133
    iput-boolean v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_copyDir:Z

    .line 134
    iput-boolean v3, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_copyWebInf:Z

    .line 135
    iput-boolean v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_logUrlOnStart:Z

    .line 136
    const-string v0, "org.eclipse.jetty.server.webapp.parentLoaderPriority"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_parentLoaderPriority:Z

    .line 139
    iput-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_contextWhiteList:[Ljava/lang/String;

    .line 147
    iput-boolean v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_ownClassLoader:Z

    .line 148
    iput-boolean v3, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationDiscovered:Z

    .line 149
    iput-boolean v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationClassesSet:Z

    .line 150
    iput-boolean v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationsSet:Z

    .line 151
    iput-boolean v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_allowDuplicateFragmentNames:Z

    .line 152
    iput-boolean v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_throwUnavailableOnStartupException:Z

    .line 155
    new-instance v0, Lorg/eclipse/jetty/webapp/MetaData;

    invoke-direct {v0}, Lorg/eclipse/jetty/webapp/MetaData;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_metadata:Lorg/eclipse/jetty/webapp/MetaData;

    .line 200
    new-instance v0, Lorg/eclipse/jetty/webapp/WebAppContext$Context;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/webapp/WebAppContext$Context;-><init>(Lorg/eclipse/jetty/webapp/WebAppContext;)V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 201
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/webapp/WebAppContext;->setWar(Ljava/lang/String;)V

    .line 202
    new-instance v0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;

    invoke-direct {v0}, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;-><init>()V

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/webapp/WebAppContext;->setErrorHandler(Lorg/eclipse/jetty/server/handler/ErrorHandler;)V

    .line 203
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/session/SessionHandler;Lorg/eclipse/jetty/security/SecurityHandler;Lorg/eclipse/jetty/servlet/ServletHandler;Lorg/eclipse/jetty/server/handler/ErrorHandler;)V
    .locals 8
    .param p1, "sessionHandler"    # Lorg/eclipse/jetty/server/session/SessionHandler;
    .param p2, "securityHandler"    # Lorg/eclipse/jetty/security/SecurityHandler;
    .param p3, "servletHandler"    # Lorg/eclipse/jetty/servlet/ServletHandler;
    .param p4, "errorHandler"    # Lorg/eclipse/jetty/server/handler/ErrorHandler;

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 216
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/servlet/ServletContextHandler;-><init>(Lorg/eclipse/jetty/server/HandlerContainer;Lorg/eclipse/jetty/server/session/SessionHandler;Lorg/eclipse/jetty/security/SecurityHandler;Lorg/eclipse/jetty/servlet/ServletHandler;Lorg/eclipse/jetty/server/handler/ErrorHandler;)V

    .line 123
    sget-object v0, Lorg/eclipse/jetty/webapp/WebAppContext;->__dftConfigurationClasses:[Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationClasses:[Ljava/lang/String;

    .line 124
    iput-object v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_systemClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    .line 125
    iput-object v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_serverClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    .line 128
    const-string v0, "org/eclipse/jetty/webapp/webdefault.xml"

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_defaultsDescriptor:Ljava/lang/String;

    .line 129
    iput-object v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_descriptor:Ljava/lang/String;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_overrideDescriptors:Ljava/util/List;

    .line 131
    iput-boolean v6, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_distributable:Z

    .line 132
    iput-boolean v7, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_extractWAR:Z

    .line 133
    iput-boolean v6, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_copyDir:Z

    .line 134
    iput-boolean v7, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_copyWebInf:Z

    .line 135
    iput-boolean v6, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_logUrlOnStart:Z

    .line 136
    const-string v0, "org.eclipse.jetty.server.webapp.parentLoaderPriority"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_parentLoaderPriority:Z

    .line 139
    iput-object v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_contextWhiteList:[Ljava/lang/String;

    .line 147
    iput-boolean v6, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_ownClassLoader:Z

    .line 148
    iput-boolean v7, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationDiscovered:Z

    .line 149
    iput-boolean v6, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationClassesSet:Z

    .line 150
    iput-boolean v6, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationsSet:Z

    .line 151
    iput-boolean v6, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_allowDuplicateFragmentNames:Z

    .line 152
    iput-boolean v6, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_throwUnavailableOnStartupException:Z

    .line 155
    new-instance v0, Lorg/eclipse/jetty/webapp/MetaData;

    invoke-direct {v0}, Lorg/eclipse/jetty/webapp/MetaData;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_metadata:Lorg/eclipse/jetty/webapp/MetaData;

    .line 217
    new-instance v0, Lorg/eclipse/jetty/webapp/WebAppContext$Context;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/webapp/WebAppContext$Context;-><init>(Lorg/eclipse/jetty/webapp/WebAppContext;)V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 218
    if-eqz p4, :cond_0

    .end local p4    # "errorHandler":Lorg/eclipse/jetty/server/handler/ErrorHandler;
    :goto_0
    invoke-virtual {p0, p4}, Lorg/eclipse/jetty/webapp/WebAppContext;->setErrorHandler(Lorg/eclipse/jetty/server/handler/ErrorHandler;)V

    .line 219
    return-void

    .line 218
    .restart local p4    # "errorHandler":Lorg/eclipse/jetty/server/handler/ErrorHandler;
    :cond_0
    new-instance p4, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;

    .end local p4    # "errorHandler":Lorg/eclipse/jetty/server/handler/ErrorHandler;
    invoke-direct {p4}, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;-><init>()V

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/webapp/WebAppContext;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/webapp/WebAppContext;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_contextWhiteList:[Ljava/lang/String;

    return-object v0
.end method

.method private dumpUrl()V
    .locals 7

    .prologue
    .line 533
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Server;->getConnectors()[Lorg/eclipse/jetty/server/Connector;

    move-result-object v1

    .line 534
    .local v1, "connectors":[Lorg/eclipse/jetty/server/Connector;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 536
    aget-object v4, v1, v3

    invoke-interface {v4}, Lorg/eclipse/jetty/server/Connector;->getName()Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, "connectorName":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 538
    .local v2, "displayName":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 539
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WebApp@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 541
    :cond_0
    sget-object v4, Lorg/eclipse/jetty/webapp/WebAppContext;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at http://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getContextPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 534
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 543
    .end local v0    # "connectorName":Ljava/lang/String;
    .end local v2    # "displayName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static getCurrentWebAppContext()Lorg/eclipse/jetty/webapp/WebAppContext;
    .locals 3

    .prologue
    .line 159
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v0

    .line 160
    .local v0, "context":Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v1

    .line 163
    .local v1, "handler":Lorg/eclipse/jetty/server/handler/ContextHandler;
    instance-of v2, v1, Lorg/eclipse/jetty/webapp/WebAppContext;

    if-eqz v2, :cond_0

    .line 164
    check-cast v1, Lorg/eclipse/jetty/webapp/WebAppContext;

    .line 166
    .end local v1    # "handler":Lorg/eclipse/jetty/server/handler/ContextHandler;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadServerClasses()V
    .locals 4

    .prologue
    .line 689
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_serverClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    if-eqz v2, :cond_1

    .line 704
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    .line 695
    .local v0, "server":Lorg/eclipse/jetty/server/Server;
    if-eqz v0, :cond_3

    .line 697
    const-string v2, "org.eclipse.jetty.webapp.serverClasses"

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/server/Server;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 698
    .local v1, "serverClasses":Ljava/lang/Object;
    if-nez v1, :cond_2

    instance-of v2, v1, [Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 699
    :cond_2
    new-instance v2, Lorg/eclipse/jetty/webapp/ClasspathPattern;

    check-cast v1, [Ljava/lang/String;

    .end local v1    # "serverClasses":Ljava/lang/Object;
    check-cast v1, [Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/eclipse/jetty/webapp/ClasspathPattern;-><init>([Ljava/lang/String;)V

    iput-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_serverClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    .line 702
    :cond_3
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_serverClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    if-nez v2, :cond_0

    .line 703
    new-instance v2, Lorg/eclipse/jetty/webapp/ClasspathPattern;

    sget-object v3, Lorg/eclipse/jetty/webapp/WebAppContext;->__dftServerClasses:[Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/eclipse/jetty/webapp/ClasspathPattern;-><init>([Ljava/lang/String;)V

    iput-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_serverClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    goto :goto_0
.end method


# virtual methods
.method public addEventListener(Ljava/util/EventListener;)V
    .locals 2
    .param p1, "listener"    # Ljava/util/EventListener;

    .prologue
    .line 964
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getEventListeners()[Ljava/util/EventListener;

    move-result-object v0

    const-class v1, Ljava/util/EventListener;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/EventListener;

    check-cast v0, [Ljava/util/EventListener;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/webapp/WebAppContext;->setEventListeners([Ljava/util/EventListener;)V

    .line 965
    return-void
.end method

.method public addOverrideDescriptor(Ljava/lang/String;)V
    .locals 1
    .param p1, "overrideDescriptor"    # Ljava/lang/String;

    .prologue
    .line 901
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_overrideDescriptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 902
    return-void
.end method

.method public addServerClass(Ljava/lang/String;)V
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;

    .prologue
    .line 620
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_serverClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    if-nez v0, :cond_0

    .line 621
    invoke-direct {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->loadServerClasses()V

    .line 623
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_serverClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/webapp/ClasspathPattern;->addPattern(Ljava/lang/String;)V

    .line 624
    return-void
.end method

.method public addSystemClass(Ljava/lang/String;)V
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;

    .prologue
    .line 642
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_systemClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    if-nez v0, :cond_0

    .line 643
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->loadSystemClasses()V

    .line 645
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_systemClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/webapp/ClasspathPattern;->addPattern(Ljava/lang/String;)V

    .line 646
    return-void
.end method

.method public configure()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 426
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 428
    sget-object v1, Lorg/eclipse/jetty/webapp/WebAppContext;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "configure {} with {}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    aget-object v5, v5, v0

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    iget-object v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lorg/eclipse/jetty/webapp/Configuration;->configure(Lorg/eclipse/jetty/webapp/WebAppContext;)V

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 431
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 5

    .prologue
    .line 506
    new-instance v3, Lorg/eclipse/jetty/util/MultiException;

    invoke-direct {v3}, Lorg/eclipse/jetty/util/MultiException;-><init>()V

    .line 507
    .local v3, "mx":Lorg/eclipse/jetty/util/MultiException;
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    if-eqz v4, :cond_0

    .line 509
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    array-length v1, v4

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_0

    .line 513
    :try_start_0
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    aget-object v4, v4, v1

    invoke-interface {v4, p0}, Lorg/eclipse/jetty/webapp/Configuration;->destroy(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .line 518
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 515
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :catch_0
    move-exception v0

    .line 517
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v3, v0}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    move v2, v1

    .line 518
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 521
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    .line 522
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->destroy()V

    .line 523
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/MultiException;->ifExceptionThrowRuntime()V

    .line 524
    return-void
.end method

.method protected doStart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 453
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_metadata:Lorg/eclipse/jetty/webapp/MetaData;

    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->isAllowDuplicateFragmentNames()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/webapp/MetaData;->setAllowDuplicateFragmentNames(Z)V

    .line 454
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->preConfigure()V

    .line 455
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->doStart()V

    .line 456
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->postConfigure()V

    .line 458
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->isLogUrlOnStart()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    invoke-direct {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->dumpUrl()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :cond_0
    return-void

    .line 461
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/eclipse/jetty/webapp/WebAppContext;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed startup of context "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 465
    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_unavailableException:Ljava/lang/Throwable;

    .line 466
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/webapp/WebAppContext;->setAvailable(Z)V

    .line 467
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->isThrowUnavailableOnStartupException()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    throw v0
.end method

.method protected doStop()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 479
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->doStop()V

    .line 483
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    array-length v0, v2

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_0

    .line 484
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lorg/eclipse/jetty/webapp/Configuration;->deconfigure(Lorg/eclipse/jetty/webapp/WebAppContext;)V

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 486
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_metadata:Lorg/eclipse/jetty/webapp/MetaData;

    if-eqz v2, :cond_1

    .line 487
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_metadata:Lorg/eclipse/jetty/webapp/MetaData;

    invoke-virtual {v2}, Lorg/eclipse/jetty/webapp/MetaData;->clear()V

    .line 488
    :cond_1
    new-instance v2, Lorg/eclipse/jetty/webapp/MetaData;

    invoke-direct {v2}, Lorg/eclipse/jetty/webapp/MetaData;-><init>()V

    iput-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_metadata:Lorg/eclipse/jetty/webapp/MetaData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    iget-boolean v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_ownClassLoader:Z

    if-eqz v2, :cond_2

    .line 494
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/webapp/WebAppContext;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 496
    :cond_2
    invoke-virtual {p0, v5}, Lorg/eclipse/jetty/webapp/WebAppContext;->setAvailable(Z)V

    .line 497
    iput-object v4, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_unavailableException:Ljava/lang/Throwable;

    .line 499
    return-void

    .line 493
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    iget-boolean v3, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_ownClassLoader:Z

    if-eqz v3, :cond_3

    .line 494
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/webapp/WebAppContext;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 496
    :cond_3
    invoke-virtual {p0, v5}, Lorg/eclipse/jetty/webapp/WebAppContext;->setAvailable(Z)V

    .line 497
    iput-object v4, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_unavailableException:Ljava/lang/Throwable;

    throw v2
.end method

.method public getConfigurationClasses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationClasses:[Ljava/lang/String;

    return-object v0
.end method

.method public getConfigurations()[Lorg/eclipse/jetty/webapp/Configuration;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    return-object v0
.end method

.method public getDefaultConfigurationClasses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 783
    sget-object v0, Lorg/eclipse/jetty/webapp/WebAppContext;->__dftConfigurationClasses:[Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultServerClasses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 789
    sget-object v0, Lorg/eclipse/jetty/webapp/WebAppContext;->__dftServerClasses:[Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultSystemClasses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 795
    sget-object v0, Lorg/eclipse/jetty/webapp/WebAppContext;->__dftSystemClasses:[Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultsDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_defaultsDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_descriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraClasspath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1129
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_extraClasspath:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaData()Lorg/eclipse/jetty/webapp/MetaData;
    .locals 1

    .prologue
    .line 1270
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_metadata:Lorg/eclipse/jetty/webapp/MetaData;

    return-object v0
.end method

.method public getOverrideDescriptor()Ljava/lang/String;
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_overrideDescriptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 582
    const/4 v0, 0x0

    .line 583
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_overrideDescriptors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getOverrideDescriptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 593
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_overrideDescriptors:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPermissions()Ljava/security/PermissionCollection;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_permissions:Ljava/security/PermissionCollection;

    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 7
    .param p1, "uriInContext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 311
    if-eqz p1, :cond_0

    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 312
    :cond_0
    new-instance v6, Ljava/net/MalformedURLException;

    invoke-direct {v6, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 314
    :cond_1
    const/4 v1, 0x0

    .line 315
    .local v1, "ioe":Ljava/io/IOException;
    const/4 v4, 0x0

    .line 316
    .local v4, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    const/4 v2, 0x0

    .local v2, "loop":I
    move v3, v2

    .line 317
    .end local v2    # "loop":I
    .local v3, "loop":I
    :goto_0
    if-eqz p1, :cond_4

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "loop":I
    .restart local v2    # "loop":I
    const/16 v6, 0x64

    if-ge v3, v6, :cond_5

    .line 321
    :try_start_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    .line 322
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v5, v4

    .line 338
    .end local v4    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    .local v5, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    :goto_1
    return-object v5

    .line 325
    .end local v5    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    .restart local v4    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_2
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getResourceAlias(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    move v3, v2

    .line 332
    .end local v2    # "loop":I
    .restart local v3    # "loop":I
    goto :goto_0

    .line 327
    .end local v3    # "loop":I
    .restart local v2    # "loop":I
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/io/IOException;
    sget-object v6, Lorg/eclipse/jetty/webapp/WebAppContext;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 330
    if-nez v1, :cond_3

    .line 331
    move-object v1, v0

    :cond_3
    move v3, v2

    .line 332
    .end local v2    # "loop":I
    .restart local v3    # "loop":I
    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    move v2, v3

    .line 335
    .end local v3    # "loop":I
    .restart local v2    # "loop":I
    :cond_5
    if-eqz v1, :cond_6

    instance-of v6, v1, Ljava/net/MalformedURLException;

    if-eqz v6, :cond_6

    .line 336
    check-cast v1, Ljava/net/MalformedURLException;

    .end local v1    # "ioe":Ljava/io/IOException;
    throw v1

    .restart local v1    # "ioe":Ljava/io/IOException;
    :cond_6
    move-object v5, v4

    .line 338
    .end local v4    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    .restart local v5    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    goto :goto_1
.end method

.method public getResourceAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 276
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_resourceAliases:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 277
    const/4 v0, 0x0

    .line 278
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_resourceAliases:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getResourceAliases()Ljava/util/Map;
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
    .line 262
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_resourceAliases:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 263
    const/4 v0, 0x0

    .line 264
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_resourceAliases:Ljava/util/Map;

    goto :goto_0
.end method

.method public getServerClasses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_serverClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    if-nez v0, :cond_0

    .line 613
    invoke-direct {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->loadServerClasses()V

    .line 615
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_serverClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    invoke-virtual {v0}, Lorg/eclipse/jetty/webapp/ClasspathPattern;->getPatterns()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemClasses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_systemClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    if-nez v0, :cond_0

    .line 634
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->loadSystemClasses()V

    .line 636
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_systemClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    invoke-virtual {v0}, Lorg/eclipse/jetty/webapp/ClasspathPattern;->getPatterns()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTempDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 1109
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    return-object v0
.end method

.method public getUnavailableException()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_unavailableException:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getWar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_war:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 713
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getResourceBase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_war:Ljava/lang/String;

    .line 714
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_war:Ljava/lang/String;

    return-object v0
.end method

.method public getWebInf()Lorg/eclipse/jetty/util/resource/Resource;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 720
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 728
    :cond_0
    :goto_0
    return-object v0

    .line 724
    :cond_1
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    const-string v3, "WEB-INF/"

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    .line 725
    .local v0, "web_inf":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move-object v0, v1

    .line 726
    goto :goto_0
.end method

.method public isAllowDuplicateFragmentNames()Z
    .locals 1

    .prologue
    .line 1182
    iget-boolean v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_allowDuplicateFragmentNames:Z

    return v0
.end method

.method public isConfigurationDiscovered()Z
    .locals 1

    .prologue
    .line 349
    iget-boolean v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationDiscovered:Z

    return v0
.end method

.method public isCopyWebDir()Z
    .locals 1

    .prologue
    .line 755
    iget-boolean v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_copyDir:Z

    return v0
.end method

.method public isCopyWebInf()Z
    .locals 1

    .prologue
    .line 764
    iget-boolean v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_copyWebInf:Z

    return v0
.end method

.method public isDistributable()Z
    .locals 1

    .prologue
    .line 737
    iget-boolean v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_distributable:Z

    return v0
.end method

.method public isExtractWAR()Z
    .locals 1

    .prologue
    .line 746
    iget-boolean v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_extractWAR:Z

    return v0
.end method

.method public isLogUrlOnStart()Z
    .locals 1

    .prologue
    .line 1146
    iget-boolean v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_logUrlOnStart:Z

    return v0
.end method

.method public isParentLoaderPriority()Z
    .locals 1

    .prologue
    .line 776
    iget-boolean v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_parentLoaderPriority:Z

    return v0
.end method

.method protected isProtectedTarget(Ljava/lang/String;)Z
    .locals 1
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 821
    :goto_0
    const-string v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->compactPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 824
    :cond_0
    const-string v0, "/web-inf"

    invoke-static {p1, v0}, Lorg/eclipse/jetty/util/StringUtil;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/meta-inf"

    invoke-static {p1, v0}, Lorg/eclipse/jetty/util/StringUtil;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isServerClass(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 651
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_serverClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    if-nez v0, :cond_0

    .line 652
    invoke-direct {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->loadServerClasses()V

    .line 654
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_serverClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/webapp/ClasspathPattern;->match(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSystemClass(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 660
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_systemClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    if-nez v0, :cond_0

    .line 661
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->loadSystemClasses()V

    .line 663
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_systemClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/webapp/ClasspathPattern;->match(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isThrowUnavailableOnStartupException()Z
    .locals 1

    .prologue
    .line 1201
    iget-boolean v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_throwUnavailableOnStartupException:Z

    return v0
.end method

.method protected loadConfigurations()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 803
    iget-object v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    if-eqz v1, :cond_1

    .line 815
    :cond_0
    return-void

    .line 807
    :cond_1
    iget-boolean v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationClassesSet:Z

    if-nez v1, :cond_2

    .line 808
    sget-object v1, Lorg/eclipse/jetty/webapp/WebAppContext;->__dftConfigurationClasses:[Ljava/lang/String;

    iput-object v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationClasses:[Ljava/lang/String;

    .line 810
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationClasses:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Lorg/eclipse/jetty/webapp/Configuration;

    iput-object v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    .line 811
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationClasses:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 813
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v3, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationClasses:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v1, v3}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/webapp/Configuration;

    aput-object v1, v2, v0

    .line 811
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected loadSystemClasses()V
    .locals 4

    .prologue
    .line 669
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_systemClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    if-eqz v2, :cond_1

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    .line 675
    .local v0, "server":Lorg/eclipse/jetty/server/Server;
    if-eqz v0, :cond_2

    .line 677
    const-string v2, "org.eclipse.jetty.webapp.systemClasses"

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/server/Server;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 678
    .local v1, "systemClasses":Ljava/lang/Object;
    if-eqz v1, :cond_2

    instance-of v2, v1, [Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 679
    new-instance v2, Lorg/eclipse/jetty/webapp/ClasspathPattern;

    check-cast v1, [Ljava/lang/String;

    .end local v1    # "systemClasses":Ljava/lang/Object;
    check-cast v1, [Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/eclipse/jetty/webapp/ClasspathPattern;-><init>([Ljava/lang/String;)V

    iput-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_systemClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    .line 682
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_systemClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    if-nez v2, :cond_0

    .line 683
    new-instance v2, Lorg/eclipse/jetty/webapp/ClasspathPattern;

    sget-object v3, Lorg/eclipse/jetty/webapp/WebAppContext;->__dftSystemClasses:[Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/eclipse/jetty/webapp/ClasspathPattern;-><init>([Ljava/lang/String;)V

    iput-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_systemClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    goto :goto_0
.end method

.method public postConfigure()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 437
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 439
    sget-object v1, Lorg/eclipse/jetty/webapp/WebAppContext;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "postConfigure {} with {}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    aget-object v5, v5, v0

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 440
    iget-object v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lorg/eclipse/jetty/webapp/Configuration;->postConfigure(Lorg/eclipse/jetty/webapp/WebAppContext;)V

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 442
    :cond_0
    return-void
.end method

.method public preConfigure()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 385
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->loadConfigurations()V

    .line 388
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->loadSystemClasses()V

    .line 391
    invoke-direct {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->loadServerClasses()V

    .line 394
    iput-boolean v7, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_ownClassLoader:Z

    .line 395
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-nez v3, :cond_0

    .line 397
    new-instance v0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/webapp/WebAppClassLoader;-><init>(Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;)V

    .line 398
    .local v0, "classLoader":Lorg/eclipse/jetty/webapp/WebAppClassLoader;
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/webapp/WebAppContext;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 399
    iput-boolean v8, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_ownClassLoader:Z

    .line 402
    .end local v0    # "classLoader":Lorg/eclipse/jetty/webapp/WebAppClassLoader;
    :cond_0
    sget-object v3, Lorg/eclipse/jetty/webapp/WebAppContext;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 404
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 405
    .local v2, "loader":Ljava/lang/ClassLoader;
    sget-object v3, Lorg/eclipse/jetty/webapp/WebAppContext;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "Thread Context classloader {}"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 407
    :goto_0
    if-eqz v2, :cond_1

    .line 409
    sget-object v3, Lorg/eclipse/jetty/webapp/WebAppContext;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "Parent class loader: {} "

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    goto :goto_0

    .line 415
    .end local v2    # "loader":Ljava/lang/ClassLoader;
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 417
    sget-object v3, Lorg/eclipse/jetty/webapp/WebAppContext;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "preConfigure {} with {}"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v7

    iget-object v6, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    aget-object v6, v6, v1

    aput-object v6, v5, v8

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    iget-object v3, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    aget-object v3, v3, v1

    invoke-interface {v3, p0}, Lorg/eclipse/jetty/webapp/Configuration;->preConfigure(Lorg/eclipse/jetty/webapp/WebAppContext;)V

    .line 415
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 420
    :cond_2
    return-void
.end method

.method public removeResourceAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 284
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_resourceAliases:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 285
    const/4 v0, 0x0

    .line 286
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_resourceAliases:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public setAllowDuplicateFragmentNames(Z)V
    .locals 0
    .param p1, "allowDuplicateFragmentNames"    # Z

    .prologue
    .line 1189
    iput-boolean p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_allowDuplicateFragmentNames:Z

    .line 1190
    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 296
    invoke-super {p0, p1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 303
    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/eclipse/jetty/webapp/WebAppClassLoader;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    check-cast p1, Lorg/eclipse/jetty/webapp/WebAppClassLoader;

    .end local p1    # "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->setName(Ljava/lang/String;)V

    .line 305
    :cond_0
    return-void
.end method

.method public setConfigurationClasses([Ljava/lang/String;)V
    .locals 2
    .param p1, "configurations"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 842
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 844
    :cond_0
    if-nez p1, :cond_1

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationClasses:[Ljava/lang/String;

    .line 845
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationClassesSet:Z

    .line 846
    iput-object v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    .line 847
    return-void

    .line 844
    :cond_1
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public setConfigurationDiscovered(Z)V
    .locals 0
    .param p1, "discovered"    # Z

    .prologue
    .line 364
    iput-boolean p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationDiscovered:Z

    .line 365
    return-void
.end method

.method public setConfigurations([Lorg/eclipse/jetty/webapp/Configuration;)V
    .locals 1
    .param p1, "configurations"    # [Lorg/eclipse/jetty/webapp/Configuration;

    .prologue
    .line 855
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 857
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    .line 858
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationsSet:Z

    .line 859
    return-void

    .line 857
    :cond_1
    invoke-virtual {p1}, [Lorg/eclipse/jetty/webapp/Configuration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/webapp/Configuration;

    check-cast v0, [Lorg/eclipse/jetty/webapp/Configuration;

    goto :goto_0
.end method

.method public setContextWhiteList([Ljava/lang/String;)V
    .locals 0
    .param p1, "contextWhiteList"    # [Ljava/lang/String;

    .prologue
    .line 1024
    iput-object p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_contextWhiteList:[Ljava/lang/String;

    .line 1025
    return-void
.end method

.method public setCopyWebDir(Z)V
    .locals 0
    .param p1, "copy"    # Z

    .prologue
    .line 983
    iput-boolean p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_copyDir:Z

    .line 984
    return-void
.end method

.method public setCopyWebInf(Z)V
    .locals 0
    .param p1, "copyWebInf"    # Z

    .prologue
    .line 992
    iput-boolean p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_copyWebInf:Z

    .line 993
    return-void
.end method

.method public setDefaultsDescriptor(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultsDescriptor"    # Ljava/lang/String;

    .prologue
    .line 868
    iput-object p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_defaultsDescriptor:Ljava/lang/String;

    .line 869
    return-void
.end method

.method public setDescriptor(Ljava/lang/String;)V
    .locals 0
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 919
    iput-object p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_descriptor:Ljava/lang/String;

    .line 920
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 2
    .param p1, "servletContextName"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-super {p0, p1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->setDisplayName(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 230
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 231
    check-cast v0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;

    .end local v0    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->setName(Ljava/lang/String;)V

    .line 232
    :cond_0
    return-void
.end method

.method public setDistributable(Z)V
    .locals 0
    .param p1, "distributable"    # Z

    .prologue
    .line 928
    iput-boolean p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_distributable:Z

    .line 929
    return-void
.end method

.method public setEventListeners([Ljava/util/EventListener;)V
    .locals 3
    .param p1, "eventListeners"    # [Ljava/util/EventListener;

    .prologue
    .line 935
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    if-eqz v2, :cond_0

    .line 936
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/session/SessionHandler;->clearEventListeners()V

    .line 938
    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->setEventListeners([Ljava/util/EventListener;)V

    .line 940
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eqz p1, :cond_3

    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 942
    aget-object v1, p1, v0

    .line 944
    .local v1, "listener":Ljava/util/EventListener;
    instance-of v2, v1, Ljavax/servlet/http/HttpSessionActivationListener;

    if-nez v2, :cond_1

    instance-of v2, v1, Ljavax/servlet/http/HttpSessionAttributeListener;

    if-nez v2, :cond_1

    instance-of v2, v1, Ljavax/servlet/http/HttpSessionBindingListener;

    if-nez v2, :cond_1

    instance-of v2, v1, Ljavax/servlet/http/HttpSessionListener;

    if-eqz v2, :cond_2

    .line 949
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    if-eqz v2, :cond_2

    .line 950
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/server/session/SessionHandler;->addEventListener(Ljava/util/EventListener;)V

    .line 940
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 954
    .end local v1    # "listener":Ljava/util/EventListener;
    :cond_3
    return-void
.end method

.method public setExtraClasspath(Ljava/lang/String;)V
    .locals 0
    .param p1, "extraClasspath"    # Ljava/lang/String;

    .prologue
    .line 1140
    iput-object p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_extraClasspath:Ljava/lang/String;

    .line 1141
    return-void
.end method

.method public setExtractWAR(Z)V
    .locals 0
    .param p1, "extractWAR"    # Z

    .prologue
    .line 974
    iput-boolean p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_extractWAR:Z

    .line 975
    return-void
.end method

.method public setLogUrlOnStart(Z)V
    .locals 0
    .param p1, "logOnStart"    # Z

    .prologue
    .line 1157
    iput-boolean p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_logUrlOnStart:Z

    .line 1158
    return-void
.end method

.method public setOverrideDescriptor(Ljava/lang/String;)V
    .locals 1
    .param p1, "overrideDescriptor"    # Ljava/lang/String;

    .prologue
    .line 879
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_overrideDescriptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 880
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_overrideDescriptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 881
    return-void
.end method

.method public setOverrideDescriptors(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 890
    .local p1, "overrideDescriptors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_overrideDescriptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 891
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_overrideDescriptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 892
    return-void
.end method

.method public setParentLoaderPriority(Z)V
    .locals 0
    .param p1, "java2compliant"    # Z

    .prologue
    .line 1001
    iput-boolean p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_parentLoaderPriority:Z

    .line 1002
    return-void
.end method

.method public setPermissions(Ljava/security/PermissionCollection;)V
    .locals 0
    .param p1, "permissions"    # Ljava/security/PermissionCollection;

    .prologue
    .line 1010
    iput-object p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_permissions:Ljava/security/PermissionCollection;

    .line 1011
    return-void
.end method

.method public setResourceAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 254
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_resourceAliases:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_resourceAliases:Ljava/util/Map;

    .line 256
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_resourceAliases:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    return-void
.end method

.method public setResourceAliases(Ljava/util/Map;)V
    .locals 0
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
    .line 270
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_resourceAliases:Ljava/util/Map;

    .line 271
    return-void
.end method

.method public setServer(Lorg/eclipse/jetty/server/Server;)V
    .locals 2
    .param p1, "server"    # Lorg/eclipse/jetty/server/Server;

    .prologue
    .line 1165
    invoke-super {p0, p1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 1170
    iget-boolean v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationsSet:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationClassesSet:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 1172
    const-string v1, "org.eclipse.jetty.webapp.configuration"

    invoke-virtual {p1, v1}, Lorg/eclipse/jetty/server/Server;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 1173
    .local v0, "serverConfigs":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1174
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/webapp/WebAppContext;->setConfigurationClasses([Ljava/lang/String;)V

    .line 1176
    .end local v0    # "serverConfigs":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setServerClasses([Ljava/lang/String;)V
    .locals 1
    .param p1, "serverClasses"    # [Ljava/lang/String;

    .prologue
    .line 1044
    new-instance v0, Lorg/eclipse/jetty/webapp/ClasspathPattern;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/webapp/ClasspathPattern;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_serverClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    .line 1045
    return-void
.end method

.method public setSystemClasses([Ljava/lang/String;)V
    .locals 1
    .param p1, "systemClasses"    # [Ljava/lang/String;

    .prologue
    .line 1064
    new-instance v0, Lorg/eclipse/jetty/webapp/ClasspathPattern;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/webapp/ClasspathPattern;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_systemClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    .line 1065
    return-void
.end method

.method public setTempDirectory(Ljava/io/File;)V
    .locals 5
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 1075
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1076
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Started"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1078
    :cond_0
    if-eqz p1, :cond_1

    .line 1080
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p1    # "dir":Ljava/io/File;
    .local v0, "dir":Ljava/io/File;
    move-object p1, v0

    .line 1084
    .end local v0    # "dir":Ljava/io/File;
    .restart local p1    # "dir":Ljava/io/File;
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1086
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 1087
    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V

    .line 1090
    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1091
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad temp directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1081
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lorg/eclipse/jetty/webapp/WebAppContext;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "EXCEPTION "

    invoke-interface {v2, v3, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1095
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    if-eqz p1, :cond_5

    .line 1096
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    .line 1102
    :cond_5
    :goto_1
    iput-object p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    .line 1103
    const-string v2, "javax.servlet.context.tempdir"

    iget-object v3, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jetty/webapp/WebAppContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1104
    return-void

    .line 1098
    :catch_1
    move-exception v1

    .line 1100
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/eclipse/jetty/webapp/WebAppContext;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setThrowUnavailableOnStartupException(Z)V
    .locals 0
    .param p1, "throwIfStartupException"    # Z

    .prologue
    .line 1195
    iput-boolean p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_throwUnavailableOnStartupException:Z

    .line 1196
    return-void
.end method

.method public setWar(Ljava/lang/String;)V
    .locals 0
    .param p1, "war"    # Ljava/lang/String;

    .prologue
    .line 1118
    iput-object p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_war:Ljava/lang/String;

    .line 1119
    return-void
.end method

.method protected startContext()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1209
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->configure()V

    .line 1212
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_metadata:Lorg/eclipse/jetty/webapp/MetaData;

    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/webapp/MetaData;->resolve(Lorg/eclipse/jetty/webapp/WebAppContext;)V

    .line 1214
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->startContext()V

    .line 1215
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_war:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_war:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
