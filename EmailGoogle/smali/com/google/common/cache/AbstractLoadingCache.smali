.class public abstract Lcom/google/common/cache/AbstractLoadingCache;
.super Lcom/google/common/cache/AbstractCache;
.source "AbstractLoadingCache.java"

# interfaces
.implements Lcom/google/common/cache/LoadingCache;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/AbstractCache",
        "<TK;TV;>;",
        "Lcom/google/common/cache/LoadingCache",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 47
    .local p0, this:Lcom/google/common/cache/AbstractLoadingCache;,"Lcom/google/common/cache/AbstractLoadingCache<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/cache/AbstractCache;-><init>()V

    #p0=(Reference);
    return-void
.end method
