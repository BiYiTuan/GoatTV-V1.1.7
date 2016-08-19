.class Lhdp/player/FileList$3;
.super Ljava/lang/Object;
.source "FileList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/FileList;->MyTv(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/FileList;

.field private final synthetic val$channels:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lhdp/player/FileList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/FileList$3;->this$0:Lhdp/player/FileList;

    iput-object p2, p0, Lhdp/player/FileList$3;->val$channels:Ljava/util/ArrayList;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 234
    iget-object v0, p0, Lhdp/player/FileList$3;->this$0:Lhdp/player/FileList;

    invoke-static {v0}, Lhdp/util/LiveDataHelper;->getInstance(Landroid/content/Context;)Lhdp/util/LiveDataHelper;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lhdp/player/FileList$3;->val$channels:Ljava/util/ArrayList;

    .line 234
    invoke-virtual {v0, v1}, Lhdp/util/LiveDataHelper;->insertChannels(Ljava/util/ArrayList;)V

    .line 236
    iget-object v0, p0, Lhdp/player/FileList$3;->this$0:Lhdp/player/FileList;

    iget-object v0, v0, Lhdp/player/FileList;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lhdp/player/FileList$3;->this$0:Lhdp/player/FileList;

    iget-object v1, v1, Lhdp/player/FileList;->handler:Landroid/os/Handler;

    .line 237
    iget-object v2, p0, Lhdp/player/FileList$3;->val$channels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 236
    invoke-virtual {v1, v3, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 238
    iget-object v0, p0, Lhdp/player/FileList$3;->this$0:Lhdp/player/FileList;

    # getter for: Lhdp/player/FileList;->psi:I
    invoke-static {v0}, Lhdp/player/FileList;->access$5(Lhdp/player/FileList;)I

    move-result v0

    const-string v1, ""

    invoke-static {v0, v1}, Lhdp/http/MyApp;->setPassWord(ILjava/lang/String;)V

    .line 239
    return-void
.end method
