.class Lcom/android/email/provider/ContentCache$CounterMap;
.super Ljava/lang/Object;
.source "ContentCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/ContentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CounterMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 126
    .local p0, this:Lcom/android/email/provider/ContentCache$CounterMap;,"Lcom/android/email/provider/ContentCache$CounterMap<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 127
    #p0=(Reference);
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/email/provider/ContentCache$CounterMap;->mMap:Ljava/util/HashMap;

    .line 128
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .parameter "maxSize"

    .prologue
    .line 122
    .local p0, this:Lcom/android/email/provider/ContentCache$CounterMap;,"Lcom/android/email/provider/ContentCache$CounterMap<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 123
    #p0=(Reference);
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/email/provider/ContentCache$CounterMap;->mMap:Ljava/util/HashMap;

    .line 124
    return-void
.end method


# virtual methods
.method declared-synchronized contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, this:Lcom/android/email/provider/ContentCache$CounterMap;,"Lcom/android/email/provider/ContentCache$CounterMap<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/provider/ContentCache$CounterMap;->mMap:Ljava/util/HashMap;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    #v0=(Boolean);
    monitor-exit p0

    return v0

    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getCount(Ljava/lang/Object;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, this:Lcom/android/email/provider/ContentCache$CounterMap;,"Lcom/android/email/provider/ContentCache$CounterMap<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/provider/ContentCache$CounterMap;->mMap:Ljava/util/HashMap;

    #v1=(Reference);
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    .local v0, refCount:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    #v1=(Integer);
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    #v1=(Reference);
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    #v1=(Integer);
    goto :goto_0

    .line 160
    .end local v0           #refCount:Ljava/lang/Integer;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);
    move-exception v1

    #v1=(Reference);
    monitor-exit p0

    throw v1
.end method

.method declared-synchronized size()I
    .locals 1

    .prologue
    .line 165
    .local p0, this:Lcom/android/email/provider/ContentCache$CounterMap;,"Lcom/android/email/provider/ContentCache$CounterMap<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/provider/ContentCache$CounterMap;->mMap:Ljava/util/HashMap;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    #v0=(Integer);
    monitor-exit p0

    return v0

    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized subtract(Ljava/lang/Object;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, this:Lcom/android/email/provider/ContentCache$CounterMap;,"Lcom/android/email/provider/ContentCache$CounterMap<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/provider/ContentCache$CounterMap;->mMap:Ljava/util/HashMap;

    #v2=(Reference);
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/lang/Integer;

    .line 133
    .local v1, refCount:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    #v2=(Integer);
    if-nez v2, :cond_1

    .line 134
    :cond_0
    #v2=(Conflicted);
    new-instance v2, Ljava/lang/IllegalStateException;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    #v2=(Reference);
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .end local v1           #refCount:Ljava/lang/Integer;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-exception v2

    #v2=(Reference);
    monitor-exit p0

    throw v2

    .line 136
    .restart local v1       #refCount:Ljava/lang/Integer;
    :cond_1
    :try_start_1
    #v0=(Uninit);v1=(Reference);v2=(Integer);v3=(Uninit);
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    #v3=(One);
    if-le v2, v3, :cond_2

    .line 137
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 138
    .local v0, newCount:I
    #v0=(Integer);
    iget-object v2, p0, Lcom/android/email/provider/ContentCache$CounterMap;->mMap:Ljava/util/HashMap;

    #v2=(Reference);
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    :goto_0
    #v3=(Conflicted);
    monitor-exit p0

    return v0

    .line 140
    .end local v0           #newCount:I
    :cond_2
    #v0=(Uninit);v2=(Integer);v3=(One);
    const/4 v0, 0x0

    .line 141
    .restart local v0       #newCount:I
    :try_start_2
    #v0=(Null);
    iget-object v2, p0, Lcom/android/email/provider/ContentCache$CounterMap;->mMap:Ljava/util/HashMap;

    #v2=(Reference);
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
