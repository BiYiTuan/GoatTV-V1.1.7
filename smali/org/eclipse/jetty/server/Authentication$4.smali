.class final Lorg/eclipse/jetty/server/Authentication$4;
.super Ljava/lang/Object;
.source "Authentication.java"

# interfaces
.implements Lorg/eclipse/jetty/server/Authentication$Failure;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/Authentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const-string v0, "FAILURE"

    return-object v0
.end method
