.class public Lcom/android/bitmap/ContiguousFIFOAggregator;
.super Ljava/lang/Object;
.source "ContiguousFIFOAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bitmap/ContiguousFIFOAggregator$Value;,
        Lcom/android/bitmap/ContiguousFIFOAggregator$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mExpected:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mTasks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/bitmap/ContiguousFIFOAggregator",
            "<TT;>.Value;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/bitmap/ContiguousFIFOAggregator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    .local p0, this:Lcom/android/bitmap/ContiguousFIFOAggregator;,"Lcom/android/bitmap/ContiguousFIFOAggregator<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    #p0=(Reference);
    new-instance v0, Ljava/util/ArrayDeque;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mExpected:Ljava/util/Queue;

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mTasks:Landroid/util/SparseArray;

    .line 80
    return-void
.end method

.method private contains(Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, this:Lcom/android/bitmap/ContiguousFIFOAggregator;,"Lcom/android/bitmap/ContiguousFIFOAggregator<TT;>;"
    .local p1, key:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mTasks:Landroid/util/SparseArray;

    #v0=(Reference);
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method private maybeExecuteNow()V
    .locals 5

    .prologue
    .line 187
    .local p0, this:Lcom/android/bitmap/ContiguousFIFOAggregator;,"Lcom/android/bitmap/ContiguousFIFOAggregator<TT;>;"
    const/4 v0, 0x0

    .line 188
    .local v0, count:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    iget-object v4, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mExpected:Ljava/util/Queue;

    #v4=(Reference);
    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_1

    .line 189
    const-string v4, "pool maybeExecuteNow loop"

    #v4=(Reference);
    invoke-static {v4}, Lcom/android/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 190
    iget-object v4, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mExpected:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    .line 191
    .local v1, first:Ljava/lang/Object;,"TT;"
    #v1=(Reference);
    if-lez v0, :cond_0

    .line 193
    invoke-direct {p0, v1}, Lcom/android/bitmap/ContiguousFIFOAggregator;->onFirstExpectedChanged(Ljava/lang/Object;)V

    .line 196
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 197
    .local v2, hash:I
    #v2=(Integer);
    iget-object v4, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Lcom/android/bitmap/ContiguousFIFOAggregator$Value;

    .line 198
    .local v3, value:Lcom/android/bitmap/ContiguousFIFOAggregator$Value;,"Lcom/android/bitmap/ContiguousFIFOAggregator<TT;>.Value;"
    iget-object v4, v3, Lcom/android/bitmap/ContiguousFIFOAggregator$Value;->task:Ljava/lang/Runnable;

    if-nez v4, :cond_2

    .line 199
    invoke-static {}, Lcom/android/mail/utils/Utils;->traceEndSection()V

    .line 210
    .end local v1           #first:Ljava/lang/Object;,"TT;"
    .end local v2           #hash:I
    .end local v3           #value:Lcom/android/bitmap/ContiguousFIFOAggregator$Value;,"Lcom/android/bitmap/ContiguousFIFOAggregator<TT;>.Value;"
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 203
    .restart local v1       #first:Ljava/lang/Object;,"TT;"
    .restart local v2       #hash:I
    .restart local v3       #value:Lcom/android/bitmap/ContiguousFIFOAggregator$Value;,"Lcom/android/bitmap/ContiguousFIFOAggregator<TT;>.Value;"
    :cond_2
    #v1=(Reference);v2=(Integer);v3=(Reference);v4=(Reference);
    iget-object v4, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mExpected:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 204
    iget-object v4, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 206
    iget-object v4, v3, Lcom/android/bitmap/ContiguousFIFOAggregator$Value;->task:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 207
    add-int/lit8 v0, v0, 0x1

    .line 208
    invoke-static {}, Lcom/android/mail/utils/Utils;->traceEndSection()V

    goto :goto_0
.end method

.method private onFirstExpectedChanged(Ljava/lang/Object;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, this:Lcom/android/bitmap/ContiguousFIFOAggregator;,"Lcom/android/bitmap/ContiguousFIFOAggregator<TT;>;"
    .local p1, key:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 218
    .local v1, hash:I
    #v1=(Integer);
    iget-object v3, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mTasks:Landroid/util/SparseArray;

    #v3=(Reference);
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/bitmap/ContiguousFIFOAggregator$Value;

    .line 219
    .local v2, value:Lcom/android/bitmap/ContiguousFIFOAggregator$Value;,"Lcom/android/bitmap/ContiguousFIFOAggregator<TT;>.Value;"
    if-nez v2, :cond_1

    .line 228
    :cond_0
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 222
    :cond_1
    #v0=(Uninit);
    iget-object v0, v2, Lcom/android/bitmap/ContiguousFIFOAggregator$Value;->callback:Lcom/android/bitmap/ContiguousFIFOAggregator$Callback;

    .line 223
    .local v0, callback:Lcom/android/bitmap/ContiguousFIFOAggregator$Callback;,"Lcom/android/bitmap/ContiguousFIFOAggregator$Callback<TT;>;"
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 227
    invoke-interface {v0, p1}, Lcom/android/bitmap/ContiguousFIFOAggregator$Callback;->onBecomeFirstExpected(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 3
    .parameter
    .parameter "task"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, this:Lcom/android/bitmap/ContiguousFIFOAggregator;,"Lcom/android/bitmap/ContiguousFIFOAggregator<TT;>;"
    .local p1, key:Ljava/lang/Object;,"TT;"
    const-string v2, "pool execute"

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 165
    .local v0, hash:I
    #v0=(Integer);
    iget-object v2, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/bitmap/ContiguousFIFOAggregator$Value;

    .line 166
    .local v1, value:Lcom/android/bitmap/ContiguousFIFOAggregator$Value;,"Lcom/android/bitmap/ContiguousFIFOAggregator<TT;>.Value;"
    if-eqz v1, :cond_0

    if-nez p2, :cond_2

    .line 167
    :cond_0
    if-eqz p2, :cond_1

    .line 168
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 170
    :cond_1
    invoke-static {}, Lcom/android/mail/utils/Utils;->traceEndSection()V

    .line 177
    :goto_0
    return-void

    .line 173
    :cond_2
    iput-object p2, v1, Lcom/android/bitmap/ContiguousFIFOAggregator$Value;->task:Ljava/lang/Runnable;

    .line 175
    invoke-direct {p0}, Lcom/android/bitmap/ContiguousFIFOAggregator;->maybeExecuteNow()V

    .line 176
    invoke-static {}, Lcom/android/mail/utils/Utils;->traceEndSection()V

    goto :goto_0
.end method

.method public expect(Ljava/lang/Object;Lcom/android/bitmap/ContiguousFIFOAggregator$Callback;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/bitmap/ContiguousFIFOAggregator$Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, this:Lcom/android/bitmap/ContiguousFIFOAggregator;,"Lcom/android/bitmap/ContiguousFIFOAggregator<TT;>;"
    .local p1, key:Ljava/lang/Object;,"TT;"
    .local p2, callback:Lcom/android/bitmap/ContiguousFIFOAggregator$Callback;,"Lcom/android/bitmap/ContiguousFIFOAggregator$Callback<TT;>;"
    if-nez p1, :cond_0

    .line 97
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #v2=(UninitRef);
    const-string v3, "Do not use null keys."

    #v3=(Reference);
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v2=(Reference);
    throw v2

    .line 100
    :cond_0
    #v2=(Uninit);v3=(Uninit);
    const-string v2, "pool expect"

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 102
    .local v0, hash:I
    #v0=(Integer);
    invoke-direct {p0, p1}, Lcom/android/bitmap/ContiguousFIFOAggregator;->contains(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mExpected:Ljava/util/Queue;

    #v2=(Reference);
    invoke-interface {v2, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 104
    iget-object v2, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 106
    :cond_1
    #v2=(Conflicted);
    iget-object v2, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mExpected:Ljava/util/Queue;

    #v2=(Reference);
    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    .line 107
    .local v1, isFirst:Z
    #v1=(Boolean);
    iget-object v2, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mExpected:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 108
    iget-object v2, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mTasks:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/bitmap/ContiguousFIFOAggregator$Value;

    #v3=(UninitRef);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-direct {v3, p0, p2, v4}, Lcom/android/bitmap/ContiguousFIFOAggregator$Value;-><init>(Lcom/android/bitmap/ContiguousFIFOAggregator;Lcom/android/bitmap/ContiguousFIFOAggregator$Callback;Ljava/lang/Runnable;)V

    #v3=(Reference);
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    if-eqz v1, :cond_2

    .line 112
    invoke-direct {p0, p1}, Lcom/android/bitmap/ContiguousFIFOAggregator;->onFirstExpectedChanged(Ljava/lang/Object;)V

    .line 114
    :cond_2
    invoke-static {}, Lcom/android/mail/utils/Utils;->traceEndSection()V

    .line 115
    return-void
.end method

.method public forget(Ljava/lang/Object;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, this:Lcom/android/bitmap/ContiguousFIFOAggregator;,"Lcom/android/bitmap/ContiguousFIFOAggregator<TT;>;"
    .local p1, key:Ljava/lang/Object;,"TT;"
    if-nez p1, :cond_0

    .line 127
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #v2=(UninitRef);
    const-string v3, "Do not use null keys."

    #v3=(Reference);
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v2=(Reference);
    throw v2

    .line 130
    :cond_0
    #v2=(Uninit);v3=(Uninit);
    invoke-direct {p0, p1}, Lcom/android/bitmap/ContiguousFIFOAggregator;->contains(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_1

    .line 148
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 134
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(Uninit);
    const-string v2, "pool forget"

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 135
    iget-object v2, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mExpected:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 136
    .local v0, removedFirst:Z
    #v0=(Boolean);
    iget-object v2, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mExpected:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 137
    iget-object v2, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    #v3=(Integer);
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 141
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/bitmap/ContiguousFIFOAggregator;->mExpected:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    .local v1, second:Ljava/lang/Object;,"TT;"
    #v1=(Reference);
    if-eqz v1, :cond_2

    .line 143
    invoke-direct {p0, v1}, Lcom/android/bitmap/ContiguousFIFOAggregator;->onFirstExpectedChanged(Ljava/lang/Object;)V

    .line 146
    .end local v1           #second:Ljava/lang/Object;,"TT;"
    :cond_2
    #v1=(Conflicted);
    invoke-direct {p0}, Lcom/android/bitmap/ContiguousFIFOAggregator;->maybeExecuteNow()V

    .line 147
    invoke-static {}, Lcom/android/mail/utils/Utils;->traceEndSection()V

    goto :goto_0
.end method
