.class public abstract Lorg/eclipse/jetty/webapp/DiscoveredAnnotation;
.super Ljava/lang/Object;
.source "DiscoveredAnnotation.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field protected _className:Ljava/lang/String;

.field protected _clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected _context:Lorg/eclipse/jetty/webapp/WebAppContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/eclipse/jetty/webapp/DiscoveredAnnotation;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/webapp/DiscoveredAnnotation;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/webapp/WebAppContext;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/eclipse/jetty/webapp/DiscoveredAnnotation;->_context:Lorg/eclipse/jetty/webapp/WebAppContext;

    .line 40
    iput-object p2, p0, Lorg/eclipse/jetty/webapp/DiscoveredAnnotation;->_className:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private loadClass()V
    .locals 3

    .prologue
    .line 56
    iget-object v1, p0, Lorg/eclipse/jetty/webapp/DiscoveredAnnotation;->_clazz:Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/webapp/DiscoveredAnnotation;->_className:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 64
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/DiscoveredAnnotation;->_className:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/webapp/DiscoveredAnnotation;->_clazz:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/eclipse/jetty/webapp/DiscoveredAnnotation;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract apply()V
.end method

.method public getTargetClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/DiscoveredAnnotation;->_clazz:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/DiscoveredAnnotation;->_clazz:Ljava/lang/Class;

    .line 51
    :goto_0
    return-object v0

    .line 49
    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jetty/webapp/DiscoveredAnnotation;->loadClass()V

    .line 51
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/DiscoveredAnnotation;->_clazz:Ljava/lang/Class;

    goto :goto_0
.end method
