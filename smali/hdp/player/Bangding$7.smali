.class Lhdp/player/Bangding$7;
.super Ljava/lang/Object;
.source "Bangding.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/player/Bangding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/Bangding;


# direct methods
.method constructor <init>(Lhdp/player/Bangding;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/Bangding$7;->this$0:Lhdp/player/Bangding;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 288
    sget-object v0, Lhdp/http/MyApp;->dataHelper:Lhdp/util/LiveDataHelper;

    invoke-virtual {v0}, Lhdp/util/LiveDataHelper;->deleteLiveDB_Uid()V

    .line 289
    return-void
.end method
