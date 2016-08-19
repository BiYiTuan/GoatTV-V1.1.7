.class Lhdp/player/LiveChannelList$3;
.super Ljava/lang/Object;
.source "LiveChannelList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/LiveChannelList;->init()V
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
    iput-object p1, p0, Lhdp/player/LiveChannelList$3;->this$0:Lhdp/player/LiveChannelList;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 247
    iget-object v0, p0, Lhdp/player/LiveChannelList$3;->this$0:Lhdp/player/LiveChannelList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhdp/player/LiveChannelList;->changeList(I)V

    .line 248
    return-void
.end method
