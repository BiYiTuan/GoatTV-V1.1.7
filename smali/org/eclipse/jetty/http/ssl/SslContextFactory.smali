.class public Lorg/eclipse/jetty/http/ssl/SslContextFactory;
.super Lorg/eclipse/jetty/util/ssl/SslContextFactory;
.source "SslContextFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyStorePath"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "trustAll"    # Z

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;-><init>(Z)V

    .line 18
    return-void
.end method
