.class Lhdp/player/HuiboList$4;
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
    iput-object p1, p0, Lhdp/player/HuiboList$4;->this$0:Lhdp/player/HuiboList;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 227
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "{\"ruls\":"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lhdp/player/HuiboList$4;->this$0:Lhdp/player/HuiboList;

    # getter for: Lhdp/player/HuiboList;->burljiemu_url:Ljava/lang/String;
    invoke-static {v8}, Lhdp/player/HuiboList;->access$16(Lhdp/player/HuiboList;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lhdp/player/HuiboList$4;->this$0:Lhdp/player/HuiboList;

    # getter for: Lhdp/player/HuiboList;->type_info:Ljava/lang/String;
    invoke-static {v8}, Lhdp/player/HuiboList;->access$17(Lhdp/player/HuiboList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lhdp/http/MyApp;->executeHttpGet(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 229
    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 227
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, "json":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONTokener;

    invoke-direct {v4, v3}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 231
    .local v4, "jsonParser":Lorg/json/JSONTokener;
    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 232
    .local v5, "object":Lorg/json/JSONObject;
    iget-object v6, p0, Lhdp/player/HuiboList$4;->this$0:Lhdp/player/HuiboList;

    const-string v7, "ruls"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    iput-object v7, v6, Lhdp/player/HuiboList;->bofangurl:Lorg/json/JSONArray;

    .line 233
    iget-object v6, p0, Lhdp/player/HuiboList$4;->this$0:Lhdp/player/HuiboList;

    iget-object v7, p0, Lhdp/player/HuiboList$4;->this$0:Lhdp/player/HuiboList;

    iget-object v7, v7, Lhdp/player/HuiboList;->bofangurl:Lorg/json/JSONArray;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, v6, Lhdp/player/HuiboList;->temp:[Ljava/lang/String;

    .line 234
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lhdp/player/HuiboList$4;->this$0:Lhdp/player/HuiboList;

    iget-object v6, v6, Lhdp/player/HuiboList;->bofangurl:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v1, v6, :cond_0

    .line 237
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 238
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "array"

    iget-object v7, p0, Lhdp/player/HuiboList$4;->this$0:Lhdp/player/HuiboList;

    iget-object v7, v7, Lhdp/player/HuiboList;->temp:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string v6, "epg"

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lhdp/player/HuiboList$4;->this$0:Lhdp/player/HuiboList;

    iget-object v8, v8, Lhdp/player/HuiboList;->epg_date:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lhdp/player/HuiboList$4;->this$0:Lhdp/player/HuiboList;

    iget-object v8, v8, Lhdp/player/HuiboList;->jiemuname:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    iget-object v6, p0, Lhdp/player/HuiboList$4;->this$0:Lhdp/player/HuiboList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v2}, Lhdp/player/HuiboList;->setResult(ILandroid/content/Intent;)V

    .line 241
    iget-object v6, p0, Lhdp/player/HuiboList$4;->this$0:Lhdp/player/HuiboList;

    invoke-virtual {v6}, Lhdp/player/HuiboList;->finish()V

    .line 253
    .end local v1    # "i":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "json":Ljava/lang/String;
    .end local v4    # "jsonParser":Lorg/json/JSONTokener;
    .end local v5    # "object":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 235
    .restart local v1    # "i":I
    .restart local v3    # "json":Ljava/lang/String;
    .restart local v4    # "jsonParser":Lorg/json/JSONTokener;
    .restart local v5    # "object":Lorg/json/JSONObject;
    :cond_0
    iget-object v6, p0, Lhdp/player/HuiboList$4;->this$0:Lhdp/player/HuiboList;

    iget-object v7, v6, Lhdp/player/HuiboList;->temp:[Ljava/lang/String;

    iget-object v6, p0, Lhdp/player/HuiboList$4;->this$0:Lhdp/player/HuiboList;

    iget-object v6, v6, Lhdp/player/HuiboList;->bofangurl:Lorg/json/JSONArray;

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v7, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    .end local v1    # "i":I
    .end local v3    # "json":Ljava/lang/String;
    .end local v4    # "jsonParser":Lorg/json/JSONTokener;
    .end local v5    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Lorg/json/JSONException;
    const-string v6, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v6, p0, Lhdp/player/HuiboList$4;->this$0:Lhdp/player/HuiboList;

    iget v7, v6, Lhdp/player/HuiboList;->cacount:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v6, Lhdp/player/HuiboList;->cacount:I

    if-le v7, v10, :cond_1

    .line 246
    iget-object v6, p0, Lhdp/player/HuiboList$4;->this$0:Lhdp/player/HuiboList;

    iget-object v6, v6, Lhdp/player/HuiboList;->handler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 248
    :cond_1
    new-instance v6, Ljava/lang/Thread;

    iget-object v7, p0, Lhdp/player/HuiboList$4;->this$0:Lhdp/player/HuiboList;

    iget-object v7, v7, Lhdp/player/HuiboList;->runnable_bofang:Ljava/lang/Runnable;

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 250
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 251
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
