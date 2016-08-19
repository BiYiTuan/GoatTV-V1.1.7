.class Lhdp/player/HuiboList$3;
.super Ljava/lang/Object;
.source "HuiboList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/player/HuiboList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/HuiboList;


# direct methods
.method constructor <init>(Lhdp/player/HuiboList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/HuiboList$3;->this$0:Lhdp/player/HuiboList;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 202
    :try_start_0
    iget-object v2, p0, Lhdp/player/HuiboList$3;->this$0:Lhdp/player/HuiboList;

    iget-object v1, p0, Lhdp/player/HuiboList$3;->this$0:Lhdp/player/HuiboList;

    # getter for: Lhdp/player/HuiboList;->gson:Lcom/google/gson/Gson;
    invoke-static {v1}, Lhdp/player/HuiboList;->access$10(Lhdp/player/HuiboList;)Lcom/google/gson/Gson;

    move-result-object v1

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lhdp/player/HuiboList$3;->this$0:Lhdp/player/HuiboList;

    # getter for: Lhdp/player/HuiboList;->burljiemu:Ljava/lang/String;
    invoke-static {v4}, Lhdp/player/HuiboList;->access$13(Lhdp/player/HuiboList;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lhdp/player/HuiboList$3;->this$0:Lhdp/player/HuiboList;

    # getter for: Lhdp/player/HuiboList;->type_date:Ljava/lang/String;
    invoke-static {v4}, Lhdp/player/HuiboList;->access$14(Lhdp/player/HuiboList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lhdp/http/MyApp;->executeHttpGet(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    .line 204
    const-class v4, Lhdp/javabean/HuiboDataInfo;

    .line 202
    invoke-virtual {v1, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhdp/javabean/HuiboDataInfo;

    iput-object v1, v2, Lhdp/player/HuiboList;->jiemuInfo:Lhdp/javabean/HuiboDataInfo;

    .line 205
    iget-object v1, p0, Lhdp/player/HuiboList$3;->this$0:Lhdp/player/HuiboList;

    iget-object v2, p0, Lhdp/player/HuiboList$3;->this$0:Lhdp/player/HuiboList;

    iget-object v2, v2, Lhdp/player/HuiboList;->jiemuInfo:Lhdp/javabean/HuiboDataInfo;

    iget-object v2, v2, Lhdp/javabean/HuiboDataInfo;->list:Ljava/util/ArrayList;

    iput-object v2, v1, Lhdp/player/HuiboList;->jiemulist:Ljava/util/ArrayList;

    .line 206
    iget-object v1, p0, Lhdp/player/HuiboList$3;->this$0:Lhdp/player/HuiboList;

    iget-object v2, p0, Lhdp/player/HuiboList$3;->this$0:Lhdp/player/HuiboList;

    iget-object v2, v2, Lhdp/player/HuiboList;->jiemuInfo:Lhdp/javabean/HuiboDataInfo;

    iget-object v2, v2, Lhdp/javabean/HuiboDataInfo;->preurl:Ljava/lang/String;

    invoke-static {v1, v2}, Lhdp/player/HuiboList;->access$15(Lhdp/player/HuiboList;Ljava/lang/String;)V

    .line 207
    const-string v1, "="

    iget-object v2, p0, Lhdp/player/HuiboList$3;->this$0:Lhdp/player/HuiboList;

    # getter for: Lhdp/player/HuiboList;->burljiemu:Ljava/lang/String;
    invoke-static {v2}, Lhdp/player/HuiboList;->access$13(Lhdp/player/HuiboList;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string v1, "="

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lhdp/player/HuiboList$3;->this$0:Lhdp/player/HuiboList;

    iget-object v3, v3, Lhdp/player/HuiboList;->datelist:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v1, p0, Lhdp/player/HuiboList$3;->this$0:Lhdp/player/HuiboList;

    iget-object v1, v1, Lhdp/player/HuiboList;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lhdp/player/HuiboList$3;->this$0:Lhdp/player/HuiboList;

    iget v2, v1, Lhdp/player/HuiboList;->cacount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lhdp/player/HuiboList;->cacount:I

    if-le v2, v6, :cond_0

    .line 213
    iget-object v1, p0, Lhdp/player/HuiboList$3;->this$0:Lhdp/player/HuiboList;

    iget-object v1, v1, Lhdp/player/HuiboList;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 215
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lhdp/player/HuiboList$3;->this$0:Lhdp/player/HuiboList;

    iget-object v2, v2, Lhdp/player/HuiboList;->runnable_jiemu:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
