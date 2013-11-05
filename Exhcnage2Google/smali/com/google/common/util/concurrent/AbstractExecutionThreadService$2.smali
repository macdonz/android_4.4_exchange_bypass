.class Lcom/google/common/util/concurrent/AbstractExecutionThreadService$2;
.super Ljava/lang/Object;
.source "AbstractExecutionThreadService.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractExecutionThreadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "command"

    .prologue
    .line 126
    new-instance v0, Ljava/lang/Thread;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$2;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 127
    return-void
.end method
