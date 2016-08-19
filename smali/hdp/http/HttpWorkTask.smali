.class public Lhdp/http/HttpWorkTask;
.super Landroid/os/AsyncTask;
.source "HttpWorkTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhdp/http/HttpWorkTask$ParseCallBack;,
        Lhdp/http/HttpWorkTask$PostCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private parseCallBack:Lhdp/http/HttpWorkTask$ParseCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhdp/http/HttpWorkTask$ParseCallBack",
            "<TT;>;"
        }
    .end annotation
.end field

.field private postCallBack:Lhdp/http/HttpWorkTask$PostCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhdp/http/HttpWorkTask$PostCallBack",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhdp/http/HttpWorkTask$ParseCallBack;Lhdp/http/HttpWorkTask$PostCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhdp/http/HttpWorkTask$ParseCallBack",
            "<TT;>;",
            "Lhdp/http/HttpWorkTask$PostCallBack",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "this":Lhdp/http/HttpWorkTask;, "Lhdp/http/HttpWorkTask<TT;>;"
    .local p1, "parseCallBack":Lhdp/http/HttpWorkTask$ParseCallBack;, "Lhdp/http/HttpWorkTask$ParseCallBack<TT;>;"
    .local p2, "postCallBack":Lhdp/http/HttpWorkTask$PostCallBack;, "Lhdp/http/HttpWorkTask$PostCallBack<TT;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 13
    iput-object p1, p0, Lhdp/http/HttpWorkTask;->parseCallBack:Lhdp/http/HttpWorkTask$ParseCallBack;

    .line 14
    iput-object p2, p0, Lhdp/http/HttpWorkTask;->postCallBack:Lhdp/http/HttpWorkTask$PostCallBack;

    .line 15
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lhdp/http/HttpWorkTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lhdp/http/HttpWorkTask;, "Lhdp/http/HttpWorkTask<TT;>;"
    iget-object v0, p0, Lhdp/http/HttpWorkTask;->parseCallBack:Lhdp/http/HttpWorkTask$ParseCallBack;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lhdp/http/HttpWorkTask;->parseCallBack:Lhdp/http/HttpWorkTask$ParseCallBack;

    invoke-interface {v0}, Lhdp/http/HttpWorkTask$ParseCallBack;->onParse()Ljava/lang/Object;

    move-result-object v0

    .line 22
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lhdp/http/HttpWorkTask;, "Lhdp/http/HttpWorkTask<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lhdp/http/HttpWorkTask;->postCallBack:Lhdp/http/HttpWorkTask$PostCallBack;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lhdp/http/HttpWorkTask;->postCallBack:Lhdp/http/HttpWorkTask$PostCallBack;

    invoke-interface {v0, p1}, Lhdp/http/HttpWorkTask$PostCallBack;->onPost(Ljava/lang/Object;)V

    .line 30
    :cond_0
    return-void
.end method
