.class public abstract Lcom/google/common/collect/ForwardingListMultimap;
.super Lcom/google/common/collect/ForwardingMultimap;
.source "ForwardingListMultimap.java"

# interfaces
.implements Lcom/google/common/collect/ListMultimap;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingMultimap",
        "<TK;TV;>;",
        "Lcom/google/common/collect/ListMultimap",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 39
    .local p0, this:Lcom/google/common/collect/ForwardingListMultimap;,"Lcom/google/common/collect/ForwardingListMultimap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMultimap;-><init>()V

    #p0=(Reference);
    return-void
.end method
