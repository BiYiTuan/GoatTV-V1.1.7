.class public Lorg/eclipse/jetty/server/handler/ProxyHandler;
.super Lorg/eclipse/jetty/server/handler/ConnectHandler;
.source "ProxyHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/Handler;)V
    .locals 0
    .param p1, "handler"    # Lorg/eclipse/jetty/server/Handler;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/handler/ConnectHandler;-><init>(Lorg/eclipse/jetty/server/Handler;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/Handler;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "handler"    # Lorg/eclipse/jetty/server/Handler;
    .param p2, "white"    # [Ljava/lang/String;
    .param p3, "black"    # [Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jetty/server/handler/ConnectHandler;-><init>(Lorg/eclipse/jetty/server/Handler;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "white"    # [Ljava/lang/String;
    .param p2, "black"    # [Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/server/handler/ConnectHandler;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    .line 32
    return-void
.end method
