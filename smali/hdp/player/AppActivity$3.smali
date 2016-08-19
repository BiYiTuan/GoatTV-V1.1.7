.class Lhdp/player/AppActivity$3;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/AppActivity;->InitApp(Lhdp/javabean/AppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/AppActivity;

.field private final synthetic val$apps:Ljava/util/ArrayList;

.field private final synthetic val$grid:I

.field private final synthetic val$gridView:Landroid/widget/GridView;


# direct methods
.method constructor <init>(Lhdp/player/AppActivity;ILjava/util/ArrayList;Landroid/widget/GridView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/AppActivity$3;->this$0:Lhdp/player/AppActivity;

    iput p2, p0, Lhdp/player/AppActivity$3;->val$grid:I

    iput-object p3, p0, Lhdp/player/AppActivity$3;->val$apps:Ljava/util/ArrayList;

    iput-object p4, p0, Lhdp/player/AppActivity$3;->val$gridView:Landroid/widget/GridView;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 9
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x1

    .line 194
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lhdp/player/AppActivity$3;->val$grid:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "key":Ljava/lang/String;
    iget-object v6, p0, Lhdp/player/AppActivity$3;->val$apps:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdp/javabean/AppInfo$NetApp;

    .line 196
    .local v0, "app":Lhdp/javabean/AppInfo$NetApp;
    iget-object v6, p0, Lhdp/player/AppActivity$3;->val$gridView:Landroid/widget/GridView;

    .line 197
    invoke-virtual {v6, p3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 196
    check-cast v3, Landroid/widget/LinearLayout;

    .line 198
    .local v3, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 199
    .local v5, "textview":Landroid/widget/TextView;
    new-instance v1, Lhdp/player/AppActivity$DowningItem;

    iget-object v6, p0, Lhdp/player/AppActivity$3;->this$0:Lhdp/player/AppActivity;

    invoke-direct {v1, v6, v2, v0, v5}, Lhdp/player/AppActivity$DowningItem;-><init>(Lhdp/player/AppActivity;Ljava/lang/String;Lhdp/javabean/AppInfo$NetApp;Landroid/widget/TextView;)V

    .line 201
    .local v1, "downitem":Lhdp/player/AppActivity$DowningItem;
    iget-object v6, p0, Lhdp/player/AppActivity$3;->this$0:Lhdp/player/AppActivity;

    # getter for: Lhdp/player/AppActivity;->map:Ljava/util/Map;
    invoke-static {v6}, Lhdp/player/AppActivity;->access$2(Lhdp/player/AppActivity;)Ljava/util/Map;

    move-result-object v6

    # getter for: Lhdp/player/AppActivity$DowningItem;->key:Ljava/lang/String;
    invoke-static {v1}, Lhdp/player/AppActivity$DowningItem;->access$0(Lhdp/player/AppActivity$DowningItem;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 202
    iget-object v6, p0, Lhdp/player/AppActivity$3;->this$0:Lhdp/player/AppActivity;

    # getter for: Lhdp/player/AppActivity;->map:Ljava/util/Map;
    invoke-static {v6}, Lhdp/player/AppActivity;->access$2(Lhdp/player/AppActivity;)Ljava/util/Map;

    move-result-object v6

    # getter for: Lhdp/player/AppActivity$DowningItem;->key:Ljava/lang/String;
    invoke-static {v1}, Lhdp/player/AppActivity$DowningItem;->access$0(Lhdp/player/AppActivity$DowningItem;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "begin"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 203
    iget-object v6, p0, Lhdp/player/AppActivity$3;->this$0:Lhdp/player/AppActivity;

    # getter for: Lhdp/player/AppActivity;->map:Ljava/util/Map;
    invoke-static {v6}, Lhdp/player/AppActivity;->access$2(Lhdp/player/AppActivity;)Ljava/util/Map;

    move-result-object v6

    const-string v7, "stop"

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 205
    .local v4, "msg":Landroid/os/Message;
    const/16 v6, 0x8

    iput v6, v4, Landroid/os/Message;->what:I

    .line 206
    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 207
    iget-object v6, p0, Lhdp/player/AppActivity$3;->this$0:Lhdp/player/AppActivity;

    # getter for: Lhdp/player/AppActivity;->handler:Landroid/os/Handler;
    invoke-static {v6}, Lhdp/player/AppActivity;->access$8(Lhdp/player/AppActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 210
    .end local v4    # "msg":Landroid/os/Message;
    :cond_0
    return v8
.end method
