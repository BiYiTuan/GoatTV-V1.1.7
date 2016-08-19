.class public Lhdp/javabean/BangDataInfo;
.super Ljava/lang/Object;
.source "BangDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhdp/javabean/BangDataInfo$ChannelInfo_B;,
        Lhdp/javabean/BangDataInfo$Typeinfo_B;
    }
.end annotation


# instance fields
.field private Uid:Ljava/lang/String;

.field public live:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhdp/javabean/BangDataInfo$ChannelInfo_B;",
            ">;"
        }
    .end annotation
.end field

.field public type:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhdp/javabean/BangDataInfo$Typeinfo_B;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lhdp/javabean/BangDataInfo;->Uid:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lhdp/javabean/BangDataInfo;->Uid:Ljava/lang/String;

    return-object v0
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lhdp/javabean/BangDataInfo;->Uid:Ljava/lang/String;

    .line 24
    return-void
.end method
