.class Lhdp/player/LiveChannelList$MyLinearLayout;
.super Landroid/widget/LinearLayout;
.source "LiveChannelList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/player/LiveChannelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyLinearLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/LiveChannelList;


# direct methods
.method public constructor <init>(Lhdp/player/LiveChannelList;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 545
    iput-object p1, p0, Lhdp/player/LiveChannelList$MyLinearLayout;->this$0:Lhdp/player/LiveChannelList;

    .line 546
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 547
    return-void
.end method

.method public constructor <init>(Lhdp/player/LiveChannelList;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 541
    iput-object p1, p0, Lhdp/player/LiveChannelList$MyLinearLayout;->this$0:Lhdp/player/LiveChannelList;

    .line 542
    invoke-direct {p0, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 543
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 552
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 554
    .local v0, "keyCode":I
    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    .line 555
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 556
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 558
    iget-object v1, p0, Lhdp/player/LiveChannelList$MyLinearLayout;->this$0:Lhdp/player/LiveChannelList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lhdp/player/LiveChannelList;->changeList(I)V

    .line 567
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 560
    :cond_1
    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    .line 561
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 562
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 564
    iget-object v1, p0, Lhdp/player/LiveChannelList$MyLinearLayout;->this$0:Lhdp/player/LiveChannelList;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lhdp/player/LiveChannelList;->changeList(I)V

    goto :goto_0
.end method
