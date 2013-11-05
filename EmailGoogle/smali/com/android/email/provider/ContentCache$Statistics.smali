.class Lcom/android/email/provider/ContentCache$Statistics;
.super Ljava/lang/Object;
.source "ContentCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/ContentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Statistics"
.end annotation


# instance fields
.field private hitTimes:J

.field private hits:J

.field private final mCache:Lcom/android/email/provider/ContentCache;

.field private mCursorCount:I

.field private mHitCount:I

.field private mInvalidateCount:I

.field private mMissCount:I

.field private final mName:Ljava/lang/String;

.field private mProjectionMissCount:I

.field private mTokenCount:I

.field private miss:J

.field private missTimes:J


# direct methods
.method static synthetic access$708(Lcom/android/email/provider/ContentCache$Statistics;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 733
    iget v0, p0, Lcom/android/email/provider/ContentCache$Statistics;->mInvalidateCount:I

    #v0=(Integer);
    add-int/lit8 v1, v0, 0x1

    #v1=(Integer);
    iput v1, p0, Lcom/android/email/provider/ContentCache$Statistics;->mInvalidateCount:I

    return v0
.end method

.method private static append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "sb"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 787
    const-string v0, ", "

    #v0=(Reference);
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 791
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const-wide v7, 0x412e848000000000L

    .line 795
    #v7=(LongLo);v8=(LongHi);
    iget v2, p0, Lcom/android/email/provider/ContentCache$Statistics;->mHitCount:I

    #v2=(Integer);
    iget v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->mMissCount:I

    #v3=(Integer);
    add-int/2addr v2, v3

    if-nez v2, :cond_0

    const-string v2, "No cache"

    .line 807
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Reference);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-object v2

    .line 796
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Integer);v3=(Integer);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    iget v2, p0, Lcom/android/email/provider/ContentCache$Statistics;->mMissCount:I

    iget v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->mProjectionMissCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->mHitCount:I

    add-int v1, v2, v3

    .line 797
    .local v1, totalTries:I
    #v1=(Integer);
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 798
    .local v0, sb:Ljava/lang/StringBuilder;
    #v0=(Reference);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "Cache "

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    const-string v3, "Cursors"

    iget-object v2, p0, Lcom/android/email/provider/ContentCache$Statistics;->mCache:Lcom/android/email/provider/ContentCache;

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/email/provider/ContentCache$Statistics;->mCursorCount:I

    :goto_1
    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-static {v0, v3, v2}, Lcom/android/email/provider/ContentCache$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 800
    const-string v2, "Hits"

    iget v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->mHitCount:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    invoke-static {v0, v2, v3}, Lcom/android/email/provider/ContentCache$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 801
    const-string v2, "Misses"

    iget v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->mMissCount:I

    #v3=(Integer);
    iget v4, p0, Lcom/android/email/provider/ContentCache$Statistics;->mProjectionMissCount:I

    #v4=(Integer);
    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    invoke-static {v0, v2, v3}, Lcom/android/email/provider/ContentCache$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 802
    const-string v2, "Inval"

    iget v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->mInvalidateCount:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    invoke-static {v0, v2, v3}, Lcom/android/email/provider/ContentCache$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 803
    const-string v3, "Tokens"

    iget-object v2, p0, Lcom/android/email/provider/ContentCache$Statistics;->mCache:Lcom/android/email/provider/ContentCache;

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/email/provider/ContentCache$Statistics;->mTokenCount:I

    :goto_2
    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-static {v0, v3, v2}, Lcom/android/email/provider/ContentCache$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 804
    const-string v2, "Hit%"

    iget v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->mHitCount:I

    #v3=(Integer);
    mul-int/lit8 v3, v3, 0x64

    div-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    invoke-static {v0, v2, v3}, Lcom/android/email/provider/ContentCache$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 805
    const-string v2, "\nHit time"

    iget-wide v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->hitTimes:J

    #v3=(LongLo);v4=(LongHi);
    long-to-double v3, v3

    #v3=(DoubleLo);v4=(DoubleHi);
    div-double/2addr v3, v7

    iget-wide v5, p0, Lcom/android/email/provider/ContentCache$Statistics;->hits:J

    #v5=(LongLo);v6=(LongHi);
    long-to-double v5, v5

    #v5=(DoubleLo);v6=(DoubleHi);
    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    #v3=(Reference);
    invoke-static {v0, v2, v3}, Lcom/android/email/provider/ContentCache$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 806
    const-string v2, "Miss time"

    iget-wide v3, p0, Lcom/android/email/provider/ContentCache$Statistics;->missTimes:J

    #v3=(LongLo);v4=(LongHi);
    long-to-double v3, v3

    #v3=(DoubleLo);v4=(DoubleHi);
    div-double/2addr v3, v7

    iget-wide v5, p0, Lcom/android/email/provider/ContentCache$Statistics;->miss:J

    #v5=(LongLo);v6=(LongHi);
    long-to-double v5, v5

    #v5=(DoubleLo);v6=(DoubleHi);
    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    #v3=(Reference);
    invoke-static {v0, v2, v3}, Lcom/android/email/provider/ContentCache$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 807
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 799
    :cond_1
    #v4=(Uninit);v5=(Uninit);v6=(Uninit);
    iget-object v2, p0, Lcom/android/email/provider/ContentCache$Statistics;->mCache:Lcom/android/email/provider/ContentCache;

    invoke-virtual {v2}, Lcom/android/email/provider/ContentCache;->size()I

    move-result v2

    #v2=(Integer);
    goto :goto_1

    .line 803
    :cond_2
    #v2=(Reference);v4=(Integer);
    iget-object v2, p0, Lcom/android/email/provider/ContentCache$Statistics;->mCache:Lcom/android/email/provider/ContentCache;

    iget-object v2, v2, Lcom/android/email/provider/ContentCache;->mTokenList:Lcom/android/email/provider/ContentCache$TokenList;

    invoke-virtual {v2}, Lcom/android/email/provider/ContentCache$TokenList;->size()I

    move-result v2

    #v2=(Integer);
    goto :goto_2
.end method
