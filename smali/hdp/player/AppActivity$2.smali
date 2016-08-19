.class Lhdp/player/AppActivity$2;
.super Ljava/lang/Thread;
.source "AppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/AppActivity;->InitData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/AppActivity;


# direct methods
.method constructor <init>(Lhdp/player/AppActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/AppActivity$2;->this$0:Lhdp/player/AppActivity;

    .line 134
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 137
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 138
    .local v1, "gson":Lcom/google/gson/Gson;
    iget-object v4, p0, Lhdp/player/AppActivity$2;->this$0:Lhdp/player/AppActivity;

    .line 139
    iget-object v3, p0, Lhdp/player/AppActivity$2;->this$0:Lhdp/player/AppActivity;

    # getter for: Lhdp/player/AppActivity;->Jsonpath:Ljava/lang/String;
    invoke-static {v3}, Lhdp/player/AppActivity;->access$5(Lhdp/player/AppActivity;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lhdp/http/MyApp;->executeHttpGet(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    .line 140
    const-class v5, Lhdp/javabean/AppInfo;

    .line 139
    invoke-virtual {v1, v3, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhdp/javabean/AppInfo;

    .line 138
    invoke-static {v4, v3}, Lhdp/player/AppActivity;->access$6(Lhdp/player/AppActivity;Lhdp/javabean/AppInfo;)V

    .line 141
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 142
    .local v2, "message":Landroid/os/Message;
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->what:I

    .line 143
    iget-object v3, p0, Lhdp/player/AppActivity$2;->this$0:Lhdp/player/AppActivity;

    # getter for: Lhdp/player/AppActivity;->app_info:Lhdp/javabean/AppInfo;
    invoke-static {v3}, Lhdp/player/AppActivity;->access$7(Lhdp/player/AppActivity;)Lhdp/javabean/AppInfo;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 144
    iget-object v3, p0, Lhdp/player/AppActivity$2;->this$0:Lhdp/player/AppActivity;

    # getter for: Lhdp/player/AppActivity;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lhdp/player/AppActivity;->access$8(Lhdp/player/AppActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "message":Landroid/os/Message;
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "caca"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v3, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v3, p0, Lhdp/player/AppActivity$2;->this$0:Lhdp/player/AppActivity;

    # getter for: Lhdp/player/AppActivity;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lhdp/player/AppActivity;->access$8(Lhdp/player/AppActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
