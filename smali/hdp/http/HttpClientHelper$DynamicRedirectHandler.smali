.class Lhdp/http/HttpClientHelper$DynamicRedirectHandler;
.super Lorg/apache/http/impl/client/DefaultRedirectHandler;
.source "HttpClientHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/http/HttpClientHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DynamicRedirectHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRedirectHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 1
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method
