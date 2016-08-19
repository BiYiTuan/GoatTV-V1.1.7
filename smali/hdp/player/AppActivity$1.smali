.class Lhdp/player/AppActivity$1;
.super Landroid/os/Handler;
.source "AppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/player/AppActivity;
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
    iput-object p1, p0, Lhdp/player/AppActivity$1;->this$0:Lhdp/player/AppActivity;

    .line 276
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x1

    .line 278
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 324
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 280
    :pswitch_1
    iget-object v4, p0, Lhdp/player/AppActivity$1;->this$0:Lhdp/player/AppActivity;

    # getter for: Lhdp/player/AppActivity;->app_textView:Landroid/widget/TextView;
    invoke-static {v4}, Lhdp/player/AppActivity;->access$0(Lhdp/player/AppActivity;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    iget-object v5, p0, Lhdp/player/AppActivity$1;->this$0:Lhdp/player/AppActivity;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lhdp/javabean/AppInfo;

    # invokes: Lhdp/player/AppActivity;->InitApp(Lhdp/javabean/AppInfo;)V
    invoke-static {v5, v4}, Lhdp/player/AppActivity;->access$1(Lhdp/player/AppActivity;Lhdp/javabean/AppInfo;)V

    goto :goto_0

    .line 284
    :pswitch_2
    iget-object v4, p0, Lhdp/player/AppActivity$1;->this$0:Lhdp/player/AppActivity;

    # getter for: Lhdp/player/AppActivity;->app_textView:Landroid/widget/TextView;
    invoke-static {v4}, Lhdp/player/AppActivity;->access$0(Lhdp/player/AppActivity;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f0600a6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 285
    iget-object v4, p0, Lhdp/player/AppActivity$1;->this$0:Lhdp/player/AppActivity;

    const v5, 0x7f06009e

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 286
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 289
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lhdp/player/AppActivity$DowningItem;

    .line 290
    .local v0, "item":Lhdp/player/AppActivity$DowningItem;
    iget-object v4, p0, Lhdp/player/AppActivity$1;->this$0:Lhdp/player/AppActivity;

    # getter for: Lhdp/player/AppActivity;->map:Ljava/util/Map;
    invoke-static {v4}, Lhdp/player/AppActivity;->access$2(Lhdp/player/AppActivity;)Ljava/util/Map;

    move-result-object v4

    # getter for: Lhdp/player/AppActivity$DowningItem;->key:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/AppActivity$DowningItem;->access$0(Lhdp/player/AppActivity$DowningItem;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "stop"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 291
    # getter for: Lhdp/player/AppActivity$DowningItem;->tv:Landroid/widget/TextView;
    invoke-static {v0}, Lhdp/player/AppActivity$DowningItem;->access$1(Lhdp/player/AppActivity$DowningItem;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lhdp/player/AppActivity$1;->this$0:Lhdp/player/AppActivity;

    invoke-virtual {v6}, Lhdp/player/AppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06009f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 291
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 296
    .end local v0    # "item":Lhdp/player/AppActivity$DowningItem;
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lhdp/player/AppActivity$DowningItem;

    .line 297
    .local v1, "item_com":Lhdp/player/AppActivity$DowningItem;
    iget-object v4, p0, Lhdp/player/AppActivity$1;->this$0:Lhdp/player/AppActivity;

    iget-object v5, p0, Lhdp/player/AppActivity$1;->this$0:Lhdp/player/AppActivity;

    # getter for: Lhdp/player/AppActivity;->savefolder:Ljava/lang/String;
    invoke-static {v5}, Lhdp/player/AppActivity;->access$3(Lhdp/player/AppActivity;)Ljava/lang/String;

    move-result-object v5

    # getter for: Lhdp/player/AppActivity$DowningItem;->app:Lhdp/javabean/AppInfo$NetApp;
    invoke-static {v1}, Lhdp/player/AppActivity$DowningItem;->access$2(Lhdp/player/AppActivity$DowningItem;)Lhdp/javabean/AppInfo$NetApp;

    move-result-object v6

    iget-object v6, v6, Lhdp/javabean/AppInfo$NetApp;->name:Ljava/lang/String;

    # invokes: Lhdp/player/AppActivity;->Install(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lhdp/player/AppActivity;->access$4(Lhdp/player/AppActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v4, p0, Lhdp/player/AppActivity$1;->this$0:Lhdp/player/AppActivity;

    # getter for: Lhdp/player/AppActivity;->map:Ljava/util/Map;
    invoke-static {v4}, Lhdp/player/AppActivity;->access$2(Lhdp/player/AppActivity;)Ljava/util/Map;

    move-result-object v4

    # getter for: Lhdp/player/AppActivity$DowningItem;->key:Ljava/lang/String;
    invoke-static {v1}, Lhdp/player/AppActivity$DowningItem;->access$0(Lhdp/player/AppActivity$DowningItem;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "DOWNLOAD_COMPLETED"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    # getter for: Lhdp/player/AppActivity$DowningItem;->tv:Landroid/widget/TextView;
    invoke-static {v1}, Lhdp/player/AppActivity$DowningItem;->access$1(Lhdp/player/AppActivity$DowningItem;)Landroid/widget/TextView;

    move-result-object v4

    # getter for: Lhdp/player/AppActivity$DowningItem;->app:Lhdp/javabean/AppInfo$NetApp;
    invoke-static {v1}, Lhdp/player/AppActivity$DowningItem;->access$2(Lhdp/player/AppActivity$DowningItem;)Lhdp/javabean/AppInfo$NetApp;

    move-result-object v5

    iget-object v5, v5, Lhdp/javabean/AppInfo$NetApp;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 302
    .end local v1    # "item_com":Lhdp/player/AppActivity$DowningItem;
    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lhdp/player/AppActivity$DowningItem;

    .line 303
    .local v2, "item_error":Lhdp/player/AppActivity$DowningItem;
    # getter for: Lhdp/player/AppActivity$DowningItem;->tv:Landroid/widget/TextView;
    invoke-static {v2}, Lhdp/player/AppActivity$DowningItem;->access$1(Lhdp/player/AppActivity$DowningItem;)Landroid/widget/TextView;

    move-result-object v4

    # getter for: Lhdp/player/AppActivity$DowningItem;->app:Lhdp/javabean/AppInfo$NetApp;
    invoke-static {v2}, Lhdp/player/AppActivity$DowningItem;->access$2(Lhdp/player/AppActivity$DowningItem;)Lhdp/javabean/AppInfo$NetApp;

    move-result-object v5

    iget-object v5, v5, Lhdp/javabean/AppInfo$NetApp;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v4, p0, Lhdp/player/AppActivity$1;->this$0:Lhdp/player/AppActivity;

    # invokes: Lhdp/player/AppActivity$DowningItem;->Clean(Landroid/content/Context;)V
    invoke-static {v2, v4}, Lhdp/player/AppActivity$DowningItem;->access$3(Lhdp/player/AppActivity$DowningItem;Landroid/content/Context;)V

    .line 305
    iget-object v4, p0, Lhdp/player/AppActivity$1;->this$0:Lhdp/player/AppActivity;

    # getter for: Lhdp/player/AppActivity;->map:Ljava/util/Map;
    invoke-static {v4}, Lhdp/player/AppActivity;->access$2(Lhdp/player/AppActivity;)Ljava/util/Map;

    move-result-object v4

    # getter for: Lhdp/player/AppActivity$DowningItem;->key:Ljava/lang/String;
    invoke-static {v2}, Lhdp/player/AppActivity$DowningItem;->access$0(Lhdp/player/AppActivity$DowningItem;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "DOWNLOAD_ERROR"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v4, p0, Lhdp/player/AppActivity$1;->this$0:Lhdp/player/AppActivity;

    .line 308
    new-instance v5, Ljava/lang/StringBuilder;

    # getter for: Lhdp/player/AppActivity$DowningItem;->app:Lhdp/javabean/AppInfo$NetApp;
    invoke-static {v2}, Lhdp/player/AppActivity$DowningItem;->access$2(Lhdp/player/AppActivity$DowningItem;)Lhdp/javabean/AppInfo$NetApp;

    move-result-object v6

    iget-object v6, v6, Lhdp/javabean/AppInfo$NetApp;->name:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    iget-object v6, p0, Lhdp/player/AppActivity$1;->this$0:Lhdp/player/AppActivity;

    invoke-virtual {v6}, Lhdp/player/AppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 310
    const v7, 0x7f0600a0

    .line 309
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 308
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 306
    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 310
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 314
    .end local v2    # "item_error":Lhdp/player/AppActivity$DowningItem;
    :pswitch_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lhdp/player/AppActivity$DowningItem;

    .line 315
    .local v3, "item_quit":Lhdp/player/AppActivity$DowningItem;
    # getter for: Lhdp/player/AppActivity$DowningItem;->tv:Landroid/widget/TextView;
    invoke-static {v3}, Lhdp/player/AppActivity$DowningItem;->access$1(Lhdp/player/AppActivity$DowningItem;)Landroid/widget/TextView;

    move-result-object v4

    # getter for: Lhdp/player/AppActivity$DowningItem;->app:Lhdp/javabean/AppInfo$NetApp;
    invoke-static {v3}, Lhdp/player/AppActivity$DowningItem;->access$2(Lhdp/player/AppActivity$DowningItem;)Lhdp/javabean/AppInfo$NetApp;

    move-result-object v5

    iget-object v5, v5, Lhdp/javabean/AppInfo$NetApp;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v4, p0, Lhdp/player/AppActivity$1;->this$0:Lhdp/player/AppActivity;

    # invokes: Lhdp/player/AppActivity$DowningItem;->Clean(Landroid/content/Context;)V
    invoke-static {v3, v4}, Lhdp/player/AppActivity$DowningItem;->access$3(Lhdp/player/AppActivity$DowningItem;Landroid/content/Context;)V

    .line 318
    iget-object v4, p0, Lhdp/player/AppActivity$1;->this$0:Lhdp/player/AppActivity;

    .line 319
    new-instance v5, Ljava/lang/StringBuilder;

    # getter for: Lhdp/player/AppActivity$DowningItem;->app:Lhdp/javabean/AppInfo$NetApp;
    invoke-static {v3}, Lhdp/player/AppActivity$DowningItem;->access$2(Lhdp/player/AppActivity$DowningItem;)Lhdp/javabean/AppInfo$NetApp;

    move-result-object v6

    iget-object v6, v6, Lhdp/javabean/AppInfo$NetApp;->name:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    iget-object v6, p0, Lhdp/player/AppActivity$1;->this$0:Lhdp/player/AppActivity;

    invoke-virtual {v6}, Lhdp/player/AppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 321
    const v7, 0x7f0600a1

    .line 320
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 319
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 317
    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 321
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 278
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
