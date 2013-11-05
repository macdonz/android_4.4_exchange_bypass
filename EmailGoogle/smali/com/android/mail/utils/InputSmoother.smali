.class public Lcom/android/mail/utils/InputSmoother;
.super Ljava/lang/Object;
.source "InputSmoother.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/utils/InputSmoother$1;,
        Lcom/android/mail/utils/InputSmoother$Sample;
    }
.end annotation


# instance fields
.field private final mDensity:F

.field private final mRecentSamples:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/android/mail/utils/InputSmoother$Sample;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    #p0=(Reference);
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/utils/InputSmoother;->mRecentSamples:Ljava/util/Deque;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/utils/InputSmoother;->mDensity:F

    .line 47
    return-void
.end method


# virtual methods
.method public getSmoothedVelocity()Ljava/lang/Float;
    .locals 13

    .prologue
    const/4 v8, 0x0

    .line 76
    #v8=(Null);
    iget-object v7, p0, Lcom/android/mail/utils/InputSmoother;->mRecentSamples:Ljava/util/Deque;

    #v7=(Reference);
    invoke-interface {v7}, Ljava/util/Deque;->size()I

    move-result v7

    #v7=(Integer);
    const/4 v9, 0x2

    #v9=(PosByte);
    if-ge v7, v9, :cond_0

    move-object v7, v8

    .line 97
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Reference);v8=(Float);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    return-object v7

    .line 82
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Integer);v8=(Null);v9=(PosByte);v10=(Uninit);v11=(Uninit);v12=(Uninit);
    const/4 v4, 0x0

    .line 83
    .local v4, totalDistancePx:I
    #v4=(Null);
    iget-object v7, p0, Lcom/android/mail/utils/InputSmoother;->mRecentSamples:Ljava/util/Deque;

    #v7=(Reference);
    invoke-interface {v7}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mail/utils/InputSmoother$Sample;

    iget v2, v7, Lcom/android/mail/utils/InputSmoother$Sample;->pos:I

    .line 84
    .local v2, prevPos:I
    #v2=(Integer);
    iget-object v7, p0, Lcom/android/mail/utils/InputSmoother;->mRecentSamples:Ljava/util/Deque;

    invoke-interface {v7}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mail/utils/InputSmoother$Sample;

    iget-wide v9, v7, Lcom/android/mail/utils/InputSmoother$Sample;->millis:J

    #v9=(LongLo);v10=(LongHi);
    iget-object v7, p0, Lcom/android/mail/utils/InputSmoother;->mRecentSamples:Ljava/util/Deque;

    invoke-interface {v7}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mail/utils/InputSmoother$Sample;

    iget-wide v11, v7, Lcom/android/mail/utils/InputSmoother$Sample;->millis:J

    #v11=(LongLo);v12=(LongHi);
    sub-long v5, v9, v11

    .line 86
    .local v5, totalTimeMs:J
    #v5=(LongLo);v6=(LongHi);
    const-wide/16 v9, 0x0

    cmp-long v7, v5, v9

    #v7=(Byte);
    if-gtz v7, :cond_1

    move-object v7, v8

    .line 88
    #v7=(Null);
    goto :goto_0

    .line 91
    :cond_1
    #v7=(Byte);
    iget-object v7, p0, Lcom/android/mail/utils/InputSmoother;->mRecentSamples:Ljava/util/Deque;

    #v7=(Reference);
    invoke-interface {v7}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    #v1=(Reference);v3=(Conflicted);v4=(Integer);v7=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Lcom/android/mail/utils/InputSmoother$Sample;

    .line 92
    .local v3, s:Lcom/android/mail/utils/InputSmoother$Sample;
    iget v7, v3, Lcom/android/mail/utils/InputSmoother$Sample;->pos:I

    #v7=(Integer);
    sub-int/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v4, v7

    .line 93
    iget v2, v3, Lcom/android/mail/utils/InputSmoother$Sample;->pos:I

    goto :goto_1

    .line 95
    .end local v3           #s:Lcom/android/mail/utils/InputSmoother$Sample;
    :cond_2
    #v3=(Conflicted);v7=(Boolean);
    int-to-float v7, v4

    #v7=(Float);
    iget v8, p0, Lcom/android/mail/utils/InputSmoother;->mDensity:F

    #v8=(Integer);
    div-float v0, v7, v8

    .line 97
    .local v0, distanceDp:F
    #v0=(Float);
    const/high16 v7, 0x447a

    #v7=(Integer);
    mul-float/2addr v7, v0

    #v7=(Float);
    long-to-float v8, v5

    #v8=(Float);
    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    #v7=(Reference);
    goto :goto_0
.end method

.method public onInput(I)V
    .locals 8
    .parameter "pos"

    .prologue
    .line 51
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 53
    .local v1, nowMs:J
    #v1=(LongLo);v2=(LongHi);
    iget-object v4, p0, Lcom/android/mail/utils/InputSmoother;->mRecentSamples:Ljava/util/Deque;

    #v4=(Reference);
    invoke-interface {v4}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/utils/InputSmoother$Sample;

    .line 54
    .local v0, last:Lcom/android/mail/utils/InputSmoother$Sample;
    if-eqz v0, :cond_0

    iget-wide v4, v0, Lcom/android/mail/utils/InputSmoother$Sample;->millis:J

    #v4=(LongLo);v5=(LongHi);
    sub-long v4, v1, v4

    const-wide/16 v6, 0xc8

    #v6=(LongLo);v7=(LongHi);
    cmp-long v4, v4, v6

    #v4=(Byte);
    if-lez v4, :cond_0

    .line 55
    iget-object v4, p0, Lcom/android/mail/utils/InputSmoother;->mRecentSamples:Ljava/util/Deque;

    #v4=(Reference);
    invoke-interface {v4}, Ljava/util/Deque;->clear()V

    .line 58
    :cond_0
    #v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    iget-object v4, p0, Lcom/android/mail/utils/InputSmoother;->mRecentSamples:Ljava/util/Deque;

    #v4=(Reference);
    invoke-interface {v4}, Ljava/util/Deque;->size()I

    move-result v4

    #v4=(Integer);
    const/4 v5, 0x5

    #v5=(PosByte);
    if-ne v4, v5, :cond_1

    .line 59
    iget-object v4, p0, Lcom/android/mail/utils/InputSmoother;->mRecentSamples:Ljava/util/Deque;

    #v4=(Reference);
    invoke-interface {v4}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Lcom/android/mail/utils/InputSmoother$Sample;

    .line 63
    .local v3, sample:Lcom/android/mail/utils/InputSmoother$Sample;
    :goto_0
    iput p1, v3, Lcom/android/mail/utils/InputSmoother$Sample;->pos:I

    .line 64
    iput-wide v1, v3, Lcom/android/mail/utils/InputSmoother$Sample;->millis:J

    .line 66
    iget-object v4, p0, Lcom/android/mail/utils/InputSmoother;->mRecentSamples:Ljava/util/Deque;

    invoke-interface {v4, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 67
    return-void

    .line 61
    .end local v3           #sample:Lcom/android/mail/utils/InputSmoother$Sample;
    :cond_1
    #v3=(Uninit);v4=(Integer);
    new-instance v3, Lcom/android/mail/utils/InputSmoother$Sample;

    #v3=(UninitRef);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-direct {v3, v4}, Lcom/android/mail/utils/InputSmoother$Sample;-><init>(Lcom/android/mail/utils/InputSmoother$1;)V

    .restart local v3       #sample:Lcom/android/mail/utils/InputSmoother$Sample;
    #v3=(Reference);
    goto :goto_0
.end method
