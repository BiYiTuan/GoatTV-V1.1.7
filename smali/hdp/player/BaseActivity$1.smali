.class Lhdp/player/BaseActivity$1;
.super Landroid/os/Handler;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/player/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/BaseActivity;


# direct methods
.method constructor <init>(Lhdp/player/BaseActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/BaseActivity$1;->this$0:Lhdp/player/BaseActivity;

    .line 103
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 108
    iget v1, p1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lhdp/player/BaseActivity$1;->this$0:Lhdp/player/BaseActivity;

    # getter for: Lhdp/player/BaseActivity;->MSG_NUM_END:I
    invoke-static {v2}, Lhdp/player/BaseActivity;->access$0(Lhdp/player/BaseActivity;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 109
    iget-object v1, p0, Lhdp/player/BaseActivity$1;->this$0:Lhdp/player/BaseActivity;

    iget-object v1, v1, Lhdp/player/BaseActivity;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    iget-object v1, p0, Lhdp/player/BaseActivity$1;->this$0:Lhdp/player/BaseActivity;

    iget-object v1, v1, Lhdp/player/BaseActivity;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 111
    .local v0, "num":I
    iget-object v1, p0, Lhdp/player/BaseActivity$1;->this$0:Lhdp/player/BaseActivity;

    # getter for: Lhdp/player/BaseActivity;->listener:Lhdp/player/BaseActivity$NumKeyClickListener;
    invoke-static {v1}, Lhdp/player/BaseActivity;->access$1(Lhdp/player/BaseActivity;)Lhdp/player/BaseActivity$NumKeyClickListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lhdp/player/BaseActivity$NumKeyClickListener;->multeKeyDown(I)V

    .line 113
    .end local v0    # "num":I
    :cond_0
    iget-object v1, p0, Lhdp/player/BaseActivity$1;->this$0:Lhdp/player/BaseActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, v1, Lhdp/player/BaseActivity;->sb:Ljava/lang/StringBuilder;

    .line 114
    iget-object v1, p0, Lhdp/player/BaseActivity$1;->this$0:Lhdp/player/BaseActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lhdp/player/BaseActivity;->access$2(Lhdp/player/BaseActivity;Z)V

    .line 116
    :cond_1
    return-void
.end method
