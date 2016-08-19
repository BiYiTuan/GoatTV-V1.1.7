.class Lhdp/player/ManChannel$5;
.super Ljava/lang/Object;
.source "ManChannel.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/ManChannel;->InitListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/ManChannel;


# direct methods
.method constructor <init>(Lhdp/player/ManChannel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/ManChannel$5;->this$0:Lhdp/player/ManChannel;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 174
    const/16 v1, 0x16

    if-ne p2, v1, :cond_1

    .line 175
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 176
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 177
    iget-object v1, p0, Lhdp/player/ManChannel$5;->this$0:Lhdp/player/ManChannel;

    # invokes: Lhdp/player/ManChannel;->LeftorRight(I)V
    invoke-static {v1, v0}, Lhdp/player/ManChannel;->access$2(Lhdp/player/ManChannel;I)V

    .line 187
    :cond_0
    :goto_0
    return v0

    .line 180
    :cond_1
    const/16 v1, 0x15

    if-ne p2, v1, :cond_2

    .line 181
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 182
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 183
    iget-object v1, p0, Lhdp/player/ManChannel$5;->this$0:Lhdp/player/ManChannel;

    const/4 v2, -0x1

    # invokes: Lhdp/player/ManChannel;->LeftorRight(I)V
    invoke-static {v1, v2}, Lhdp/player/ManChannel;->access$2(Lhdp/player/ManChannel;I)V

    goto :goto_0

    .line 187
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
