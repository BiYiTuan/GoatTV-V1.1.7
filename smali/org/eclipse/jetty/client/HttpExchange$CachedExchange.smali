.class public Lorg/eclipse/jetty/client/HttpExchange$CachedExchange;
.super Lorg/eclipse/jetty/client/CachedExchange;
.source "HttpExchange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/client/HttpExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CachedExchange"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "cacheFields"    # Z

    .prologue
    .line 1212
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/client/CachedExchange;-><init>(Z)V

    .line 1213
    return-void
.end method
