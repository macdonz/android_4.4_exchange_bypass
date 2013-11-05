.class public abstract Lcom/google/common/util/concurrent/ForwardingBlockingQueue;
.super Lcom/google/common/collect/ForwardingQueue;
.source "ForwardingBlockingQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingQueue",
        "<TE;>;",
        "Ljava/util/concurrent/BlockingQueue",
        "<TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 40
    .local p0, this:Lcom/google/common/util/concurrent/ForwardingBlockingQueue;,"Lcom/google/common/util/concurrent/ForwardingBlockingQueue<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingQueue;-><init>()V

    #p0=(Reference);
    return-void
.end method
