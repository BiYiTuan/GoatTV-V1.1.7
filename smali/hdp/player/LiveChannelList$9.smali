.class Lhdp/player/LiveChannelList$9;
.super Ljava/lang/Object;
.source "LiveChannelList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/LiveChannelList;->favCurrentChannel(Lhdp/javabean/LiveChannelInfo;)V
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
    iput-object p1, p0, Lhdp/player/LiveChannelList$9;->this$0:Lhdp/player/LiveChannelList;

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 594
    sget-object v0, Lhdp/http/MyApp;->dataHelper:Lhdp/util/LiveDataHelper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lhdp/util/LiveDataHelper;->updateChannelLast(Lhdp/javabean/LiveChannelInfo;Z)V

    .line 596
    return-void
.end method
