.class public Lcom/android/common/OperationScheduler$Options;
.super Ljava/lang/Object;
.source "OperationScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/OperationScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public backoffExponentialMillis:I

.field public backoffFixedMillis:J

.field public backoffIncrementalMillis:J

.field public maxMoratoriumMillis:J

.field public minTriggerMillis:J

.field public periodicIntervalMillis:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 37
    #v2=(LongLo);v3=(LongHi);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    #p0=(Reference);
    iput-wide v2, p0, Lcom/android/common/OperationScheduler$Options;->backoffFixedMillis:J

    .line 42
    const-wide/16 v0, 0x1388

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/android/common/OperationScheduler$Options;->backoffIncrementalMillis:J

    .line 45
    const/4 v0, 0x0

    #v0=(Null);
    iput v0, p0, Lcom/android/common/OperationScheduler$Options;->backoffExponentialMillis:I

    .line 48
    const-wide/32 v0, 0x5265c00

    #v0=(LongLo);
    iput-wide v0, p0, Lcom/android/common/OperationScheduler$Options;->maxMoratoriumMillis:J

    .line 51
    iput-wide v2, p0, Lcom/android/common/OperationScheduler$Options;->minTriggerMillis:J

    .line 54
    iput-wide v2, p0, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x3

    #v9=(PosByte);
    const/4 v8, 0x2

    #v8=(PosByte);
    const/4 v7, 0x1

    #v7=(One);
    const/4 v4, 0x0

    #v4=(Null);
    const-wide v5, 0x408f400000000000L

    .line 58
    #v5=(LongLo);v6=(LongHi);
    iget v0, p0, Lcom/android/common/OperationScheduler$Options;->backoffExponentialMillis:I

    #v0=(Integer);
    if-lez v0, :cond_0

    .line 59
    const-string v0, "OperationScheduler.Options[backoff=%.1f+%.1f+%.1f max=%.1f min=%.1f period=%.1f]"

    #v0=(Reference);
    const/4 v1, 0x6

    #v1=(PosByte);
    new-array v1, v1, [Ljava/lang/Object;

    #v1=(Reference);
    iget-wide v2, p0, Lcom/android/common/OperationScheduler$Options;->backoffFixedMillis:J

    #v2=(LongLo);v3=(LongHi);
    long-to-double v2, v2

    #v2=(DoubleLo);v3=(DoubleHi);
    div-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v1, v4

    iget-wide v2, p0, Lcom/android/common/OperationScheduler$Options;->backoffIncrementalMillis:J

    #v2=(LongLo);v3=(LongHi);
    long-to-double v2, v2

    #v2=(DoubleLo);v3=(DoubleHi);
    div-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v1, v7

    iget v2, p0, Lcom/android/common/OperationScheduler$Options;->backoffExponentialMillis:I

    #v2=(Integer);
    int-to-double v2, v2

    #v2=(DoubleLo);
    div-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v1, v8

    iget-wide v2, p0, Lcom/android/common/OperationScheduler$Options;->maxMoratoriumMillis:J

    #v2=(LongLo);v3=(LongHi);
    long-to-double v2, v2

    #v2=(DoubleLo);v3=(DoubleHi);
    div-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v1, v9

    const/4 v2, 0x4

    #v2=(PosByte);
    iget-wide v3, p0, Lcom/android/common/OperationScheduler$Options;->minTriggerMillis:J

    #v3=(LongLo);v4=(LongHi);
    long-to-double v3, v3

    #v3=(DoubleLo);v4=(DoubleHi);
    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    #v3=(LongLo);v4=(LongHi);
    long-to-double v3, v3

    #v3=(DoubleLo);v4=(DoubleHi);
    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    #v0=(Integer);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Null);
    const-string v0, "OperationScheduler.Options[backoff=%.1f+%.1f max=%.1f min=%.1f period=%.1f]"

    #v0=(Reference);
    const/4 v1, 0x5

    #v1=(PosByte);
    new-array v1, v1, [Ljava/lang/Object;

    #v1=(Reference);
    iget-wide v2, p0, Lcom/android/common/OperationScheduler$Options;->backoffFixedMillis:J

    #v2=(LongLo);v3=(LongHi);
    long-to-double v2, v2

    #v2=(DoubleLo);v3=(DoubleHi);
    div-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v1, v4

    iget-wide v2, p0, Lcom/android/common/OperationScheduler$Options;->backoffIncrementalMillis:J

    #v2=(LongLo);v3=(LongHi);
    long-to-double v2, v2

    #v2=(DoubleLo);v3=(DoubleHi);
    div-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v1, v7

    iget-wide v2, p0, Lcom/android/common/OperationScheduler$Options;->maxMoratoriumMillis:J

    #v2=(LongLo);v3=(LongHi);
    long-to-double v2, v2

    #v2=(DoubleLo);v3=(DoubleHi);
    div-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v1, v8

    iget-wide v2, p0, Lcom/android/common/OperationScheduler$Options;->minTriggerMillis:J

    #v2=(LongLo);v3=(LongHi);
    long-to-double v2, v2

    #v2=(DoubleLo);v3=(DoubleHi);
    div-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v1, v9

    const/4 v2, 0x4

    #v2=(PosByte);
    iget-wide v3, p0, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    #v3=(LongLo);v4=(LongHi);
    long-to-double v3, v3

    #v3=(DoubleLo);v4=(DoubleHi);
    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
