.class Lhdp/player/LiveChannelList$1;
.super Ljava/lang/Object;
.source "LiveChannelList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/player/LiveChannelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/LiveChannelList;


# direct methods
.method constructor <init>(Lhdp/player/LiveChannelList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/LiveChannelList$1;->this$0:Lhdp/player/LiveChannelList;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lhdp/player/LiveChannelList$1;->this$0:Lhdp/player/LiveChannelList;

    invoke-virtual {v0}, Lhdp/player/LiveChannelList;->dismiss()V

    .line 71
    return-void
.end method
