.class Lorg/eclipse/jetty/server/handler/StatisticsHandler$1;
.super Ljava/lang/Object;
.source "StatisticsHandler.java"

# interfaces
.implements Lorg/eclipse/jetty/continuation/ContinuationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/handler/StatisticsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/handler/StatisticsHandler;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/handler/StatisticsHandler;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler$1;->this$0:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lorg/eclipse/jetty/continuation/Continuation;)V
    .locals 7
    .param p1, "continuation"    # Lorg/eclipse/jetty/continuation/Continuation;

    .prologue
    .line 56
    move-object v3, p1

    check-cast v3, Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/AsyncContinuation;->getBaseRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v2

    .line 57
    .local v2, "request":Lorg/eclipse/jetty/server/Request;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Request;->getTimeStamp()J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 59
    .local v0, "elapsed":J
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler$1;->this$0:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;
    invoke-static {v3}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->access$000(Lorg/eclipse/jetty/server/handler/StatisticsHandler;)Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->decrement()V

    .line 60
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler$1;->this$0:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;
    invoke-static {v3}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->access$100(Lorg/eclipse/jetty/server/handler/StatisticsHandler;)Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->set(J)V

    .line 62
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler$1;->this$0:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    # invokes: Lorg/eclipse/jetty/server/handler/StatisticsHandler;->updateResponse(Lorg/eclipse/jetty/server/Request;)V
    invoke-static {v3, v2}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->access$200(Lorg/eclipse/jetty/server/handler/StatisticsHandler;Lorg/eclipse/jetty/server/Request;)V

    .line 64
    invoke-interface {p1}, Lorg/eclipse/jetty/continuation/Continuation;->isResumed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler$1;->this$0:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_suspendStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;
    invoke-static {v3}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->access$300(Lorg/eclipse/jetty/server/handler/StatisticsHandler;)Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->decrement()V

    .line 66
    :cond_0
    return-void
.end method

.method public onTimeout(Lorg/eclipse/jetty/continuation/Continuation;)V
    .locals 1
    .param p1, "continuation"    # Lorg/eclipse/jetty/continuation/Continuation;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler$1;->this$0:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_expires:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->access$400(Lorg/eclipse/jetty/server/handler/StatisticsHandler;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 71
    return-void
.end method
