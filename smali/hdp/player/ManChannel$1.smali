.class Lhdp/player/ManChannel$1;
.super Landroid/os/Handler;
.source "ManChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/player/ManChannel;
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
    iput-object p1, p0, Lhdp/player/ManChannel$1;->this$0:Lhdp/player/ManChannel;

    .line 213
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 215
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 234
    :goto_0
    return-void

    .line 217
    :sswitch_0
    iget-object v1, p0, Lhdp/player/ManChannel$1;->this$0:Lhdp/player/ManChannel;

    # getter for: Lhdp/player/ManChannel;->adapter:Lhdp/adapter/ManListAdapter;
    invoke-static {v1}, Lhdp/player/ManChannel;->access$0(Lhdp/player/ManChannel;)Lhdp/adapter/ManListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lhdp/adapter/ManListAdapter;->notifyDataSetChanged()V

    .line 218
    iget-object v1, p0, Lhdp/player/ManChannel$1;->this$0:Lhdp/player/ManChannel;

    # invokes: Lhdp/player/ManChannel;->CountNum()V
    invoke-static {v1}, Lhdp/player/ManChannel;->access$1(Lhdp/player/ManChannel;)V

    goto :goto_0

    .line 222
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lhdp/javabean/BangDataInfo;

    .line 224
    .local v0, "dataInfo":Lhdp/javabean/BangDataInfo;
    iget-object v1, v0, Lhdp/javabean/BangDataInfo;->live:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    goto :goto_0

    .line 231
    .end local v0    # "dataInfo":Lhdp/javabean/BangDataInfo;
    :sswitch_2
    iget-object v1, p0, Lhdp/player/ManChannel$1;->this$0:Lhdp/player/ManChannel;

    const v2, 0x7f06001c

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 215
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
        0x65 -> :sswitch_2
    .end sparse-switch
.end method
