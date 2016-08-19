.class public Lhdp/javabean/LiveDataInfo;
.super Ljava/lang/Object;
.source "LiveDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhdp/javabean/LiveDataInfo$ChannelInfo;,
        Lhdp/javabean/LiveDataInfo$Typeinfo;
    }
.end annotation


# instance fields
.field public live:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhdp/javabean/LiveDataInfo$ChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field public tvnum:I

.field public type:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhdp/javabean/LiveDataInfo$Typeinfo;",
            ">;"
        }
    .end annotation
.end field

.field public uptime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
