.class Lhdp/player/ManChannel$6;
.super Ljava/lang/Object;
.source "ManChannel.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/ManChannel;->InitListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/ManChannel;


# direct methods
.method constructor <init>(Lhdp/player/ManChannel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/ManChannel$6;->this$0:Lhdp/player/ManChannel;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lhdp/player/ManChannel$6;->this$0:Lhdp/player/ManChannel;

    # getter for: Lhdp/player/ManChannel;->retid:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/ManChannel;->access$4(Lhdp/player/ManChannel;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "last"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    sget-object v1, Lhdp/http/MyApp;->dataHelper:Lhdp/util/LiveDataHelper;

    iget-object v0, p0, Lhdp/player/ManChannel$6;->this$0:Lhdp/player/ManChannel;

    iget-object v0, v0, Lhdp/player/ManChannel;->liveInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdp/javabean/LiveChannelInfo;

    .line 198
    const/4 v2, 0x0

    .line 197
    invoke-virtual {v1, v0, v2}, Lhdp/util/LiveDataHelper;->updateChannelLast(Lhdp/javabean/LiveChannelInfo;Z)V

    .line 199
    iget-object v0, p0, Lhdp/player/ManChannel$6;->this$0:Lhdp/player/ManChannel;

    iget-object v0, v0, Lhdp/player/ManChannel;->liveInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 200
    iget-object v0, p0, Lhdp/player/ManChannel$6;->this$0:Lhdp/player/ManChannel;

    iget-object v0, v0, Lhdp/player/ManChannel;->liveInfos:Ljava/util/ArrayList;

    sget-object v1, Lhdp/http/MyApp;->dataHelper:Lhdp/util/LiveDataHelper;

    .line 201
    const-string v2, "last"

    invoke-virtual {v1, v2}, Lhdp/util/LiveDataHelper;->ManageByTid(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 200
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 202
    iget-object v0, p0, Lhdp/player/ManChannel$6;->this$0:Lhdp/player/ManChannel;

    # getter for: Lhdp/player/ManChannel;->adapter:Lhdp/adapter/ManListAdapter;
    invoke-static {v0}, Lhdp/player/ManChannel;->access$0(Lhdp/player/ManChannel;)Lhdp/adapter/ManListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lhdp/adapter/ManListAdapter;->notifyDataSetChanged()V

    .line 209
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lhdp/player/ManChannel$6;->this$0:Lhdp/player/ManChannel;

    # invokes: Lhdp/player/ManChannel;->HideSHowChannel(I)V
    invoke-static {v0, p3}, Lhdp/player/ManChannel;->access$5(Lhdp/player/ManChannel;I)V

    .line 205
    iget-object v0, p0, Lhdp/player/ManChannel$6;->this$0:Lhdp/player/ManChannel;

    # invokes: Lhdp/player/ManChannel;->CountNum()V
    invoke-static {v0}, Lhdp/player/ManChannel;->access$1(Lhdp/player/ManChannel;)V

    .line 206
    iget-object v0, p0, Lhdp/player/ManChannel$6;->this$0:Lhdp/player/ManChannel;

    # getter for: Lhdp/player/ManChannel;->adapter:Lhdp/adapter/ManListAdapter;
    invoke-static {v0}, Lhdp/player/ManChannel;->access$0(Lhdp/player/ManChannel;)Lhdp/adapter/ManListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lhdp/adapter/ManListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
