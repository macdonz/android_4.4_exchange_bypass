.class Lcom/android/mail/MailLogService$CircularBuffer;
.super Ljava/lang/Object;
.source "MailLogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/MailLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CircularBuffer"
.end annotation


# instance fields
.field mCurrentSize:I

.field final mList:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    #p0=(Reference);
    new-instance v0, Ljava/util/LinkedList;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/MailLogService$CircularBuffer;->mList:Ljava/util/Queue;

    .line 69
    const/4 v0, 0x0

    #v0=(Null);
    iput v0, p0, Lcom/android/mail/MailLogService$CircularBuffer;->mCurrentSize:I

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/MailLogService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/mail/MailLogService$CircularBuffer;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method static synthetic access$100(Lcom/android/mail/MailLogService$CircularBuffer;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/mail/MailLogService$CircularBuffer;->put(Ljava/lang/String;)V

    return-void
.end method

.method private static dateToString(J)Ljava/lang/String;
    .locals 5
    .parameter "timestamp"

    .prologue
    .line 78
    new-instance v0, Ljava/util/Date;

    #v0=(UninitRef);
    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 79
    .local v0, d:Ljava/util/Date;
    #v0=(Reference);
    const-string v1, "%d-%d %d:%d:%d: "

    #v1=(Reference);
    const/4 v2, 0x5

    #v2=(PosByte);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v0}, Ljava/util/Date;->getDay()I

    move-result v4

    #v4=(Integer);
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v2, v3

    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v4

    #v4=(Integer);
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v2, v3

    const/4 v3, 0x2

    #v3=(PosByte);
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v4

    #v4=(Integer);
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v4

    #v4=(Integer);
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v4

    #v4=(Integer);
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private declared-synchronized put(Ljava/lang/String;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/mail/MailLogService$CircularBuffer;->mCurrentSize:I

    #v0=(Integer);
    const/16 v1, 0x32

    #v1=(PosByte);
    if-ne v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/mail/MailLogService$CircularBuffer;->mList:Ljava/util/Queue;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 97
    :goto_0
    #v0=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/MailLogService$CircularBuffer;->mList:Ljava/util/Queue;

    #v0=(Reference);
    new-instance v1, Landroid/util/Pair;

    #v1=(UninitRef);
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #v1=(Reference);
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 94
    :cond_0
    :try_start_1
    #v0=(Integer);v1=(PosByte);v2=(Uninit);v3=(Uninit);
    iget v0, p0, Lcom/android/mail/MailLogService$CircularBuffer;->mCurrentSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mail/MailLogService$CircularBuffer;->mCurrentSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v0, builder:Ljava/lang/StringBuilder;
    #v0=(Reference);
    iget-object v3, p0, Lcom/android/mail/MailLogService$CircularBuffer;->mList:Ljava/util/Queue;

    #v3=(Reference);
    invoke-interface {v3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    #v1=(Reference);v2=(Conflicted);v4=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/util/Pair;

    .line 105
    .local v2, s:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    #v3=(Reference);
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    #v3=(LongLo);v4=(LongHi);
    invoke-static {v3, v4}, Lcom/android/mail/MailLogService$CircularBuffer;->dateToString(J)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 110
    .end local v2           #s:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_0
    #v2=(Conflicted);v3=(Boolean);v4=(Conflicted);
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    return-object v3
.end method
