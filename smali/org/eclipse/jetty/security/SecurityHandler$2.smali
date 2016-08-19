.class final Lorg/eclipse/jetty/security/SecurityHandler$2;
.super Ljava/lang/Object;
.source "SecurityHandler.java"

# interfaces
.implements Ljava/security/Principal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/security/SecurityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 639
    const-string v0, "Nobody"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 645
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SecurityHandler$2;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
