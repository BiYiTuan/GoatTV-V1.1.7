.class Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet$1;
.super Ljava/lang/Object;
.source "SelectorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->doSelect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

.field final synthetic val$idle_now:J


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;J)V
    .locals 0

    .prologue
    .line 704
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet$1;->this$1:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    iput-wide p2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet$1;->val$idle_now:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 707
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet$1;->this$1:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    # getter for: Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_endPoints:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v2}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->access$800(Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    .line 709
    .local v0, "endp":Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    iget-wide v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet$1;->val$idle_now:J

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->checkIdleTimestamp(J)V

    goto :goto_0

    .line 711
    .end local v0    # "endp":Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Idle-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
