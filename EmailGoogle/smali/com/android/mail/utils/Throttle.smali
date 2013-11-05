.class public Lcom/android/mail/utils/Throttle;
.super Ljava/lang/Object;
.source "Throttle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/utils/Throttle$1;,
        Lcom/android/mail/utils/Throttle$MyTimerTask;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static TIMER:Ljava/util/Timer;


# instance fields
.field private final mCallback:Ljava/lang/Runnable;

.field private final mClock:Lcom/android/mail/utils/Clock;

.field private final mHandler:Landroid/os/Handler;

.field private mLastEventTime:J

.field private final mMaxTimeout:I

.field private final mMinTimeout:I

.field private final mName:Ljava/lang/String;

.field private mRunningTimerTask:Lcom/android/mail/utils/Throttle$MyTimerTask;

.field private mTimeout:I

.field private final mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/utils/Throttle;->LOG_TAG:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/Timer;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/utils/Throttle;->TIMER:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;II)V
    .locals 8
    .parameter "name"
    .parameter "callback"
    .parameter "handler"
    .parameter "minTimeout"
    .parameter "maxTimeout"

    .prologue
    .line 79
    sget-object v6, Lcom/android/mail/utils/Clock;->INSTANCE:Lcom/android/mail/utils/Clock;

    #v6=(Reference);
    sget-object v7, Lcom/android/mail/utils/Throttle;->TIMER:Ljava/util/Timer;

    #v7=(Reference);
    move-object v0, p0

    #v0=(UninitThis);
    move-object v1, p1

    #v1=(Reference);
    move-object v2, p2

    #v2=(Reference);
    move-object v3, p3

    #v3=(Reference);
    move v4, p4

    #v4=(Integer);
    move v5, p5

    #v5=(Integer);
    invoke-direct/range {v0 .. v7}, Lcom/android/mail/utils/Throttle;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;IILcom/android/mail/utils/Clock;Ljava/util/Timer;)V

    .line 80
    #v0=(Reference);p0=(Reference);
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;IILcom/android/mail/utils/Clock;Ljava/util/Timer;)V
    .locals 1
    .parameter "name"
    .parameter "callback"
    .parameter "handler"
    .parameter "minTimeout"
    .parameter "maxTimeout"
    .parameter "clock"
    .parameter "timer"

    .prologue
    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    #p0=(Reference);
    if-ge p5, p4, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #v0=(Reference);
    throw v0

    .line 88
    :cond_0
    #v0=(Uninit);
    iput-object p1, p0, Lcom/android/mail/utils/Throttle;->mName:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/android/mail/utils/Throttle;->mCallback:Ljava/lang/Runnable;

    .line 90
    iput-object p6, p0, Lcom/android/mail/utils/Throttle;->mClock:Lcom/android/mail/utils/Clock;

    .line 91
    iput-object p7, p0, Lcom/android/mail/utils/Throttle;->mTimer:Ljava/util/Timer;

    .line 92
    iput-object p3, p0, Lcom/android/mail/utils/Throttle;->mHandler:Landroid/os/Handler;

    .line 93
    iput p4, p0, Lcom/android/mail/utils/Throttle;->mMinTimeout:I

    .line 94
    iput p5, p0, Lcom/android/mail/utils/Throttle;->mMaxTimeout:I

    .line 95
    iget v0, p0, Lcom/android/mail/utils/Throttle;->mMinTimeout:I

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/utils/Throttle;->mTimeout:I

    .line 96
    return-void
.end method

.method static synthetic access$200(Lcom/android/mail/utils/Throttle;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/mail/utils/Throttle;->mHandler:Landroid/os/Handler;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mail/utils/Throttle;Lcom/android/mail/utils/Throttle$MyTimerTask;)Lcom/android/mail/utils/Throttle$MyTimerTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/mail/utils/Throttle;->mRunningTimerTask:Lcom/android/mail/utils/Throttle$MyTimerTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/mail/utils/Throttle;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/mail/utils/Throttle;->mCallback:Ljava/lang/Runnable;

    #v0=(Reference);
    return-object v0
.end method

.method private isCallbackScheduled()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/mail/utils/Throttle;->mRunningTimerTask:Lcom/android/mail/utils/Throttle$MyTimerTask;

    #v0=(Reference);
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


# virtual methods
.method getLastEventTimeForTest()J
    .locals 2

    .prologue
    .line 178
    iget-wide v0, p0, Lcom/android/mail/utils/Throttle;->mLastEventTime:J

    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method

.method getTimeoutForTest()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/android/mail/utils/Throttle;->mTimeout:I

    #v0=(Integer);
    return v0
.end method

.method public onEvent()V
    .locals 4

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/mail/utils/Throttle;->updateTimeout()V

    .line 135
    invoke-direct {p0}, Lcom/android/mail/utils/Throttle;->isCallbackScheduled()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 142
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 139
    :cond_0
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);v3=(Uninit);
    new-instance v0, Lcom/android/mail/utils/Throttle$MyTimerTask;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p0, v1}, Lcom/android/mail/utils/Throttle$MyTimerTask;-><init>(Lcom/android/mail/utils/Throttle;Lcom/android/mail/utils/Throttle$1;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/utils/Throttle;->mRunningTimerTask:Lcom/android/mail/utils/Throttle$MyTimerTask;

    .line 140
    iget-object v0, p0, Lcom/android/mail/utils/Throttle;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/mail/utils/Throttle;->mRunningTimerTask:Lcom/android/mail/utils/Throttle$MyTimerTask;

    #v1=(Reference);
    iget v2, p0, Lcom/android/mail/utils/Throttle;->mTimeout:I

    #v2=(Integer);
    int-to-long v2, v2

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method updateTimeout()V
    .locals 6

    .prologue
    .line 115
    iget-object v2, p0, Lcom/android/mail/utils/Throttle;->mClock:Lcom/android/mail/utils/Clock;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/mail/utils/Clock;->getTime()J

    move-result-wide v0

    .line 116
    .local v0, now:J
    #v0=(LongLo);v1=(LongHi);
    iget-wide v2, p0, Lcom/android/mail/utils/Throttle;->mLastEventTime:J

    #v2=(LongLo);v3=(LongHi);
    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    #v4=(LongLo);v5=(LongHi);
    cmp-long v2, v2, v4

    #v2=(Byte);
    if-gtz v2, :cond_1

    .line 117
    iget v2, p0, Lcom/android/mail/utils/Throttle;->mTimeout:I

    #v2=(Integer);
    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/mail/utils/Throttle;->mTimeout:I

    .line 118
    iget v2, p0, Lcom/android/mail/utils/Throttle;->mTimeout:I

    iget v3, p0, Lcom/android/mail/utils/Throttle;->mMaxTimeout:I

    #v3=(Integer);
    if-lt v2, v3, :cond_0

    .line 119
    iget v2, p0, Lcom/android/mail/utils/Throttle;->mMaxTimeout:I

    iput v2, p0, Lcom/android/mail/utils/Throttle;->mTimeout:I

    .line 127
    :cond_0
    :goto_0
    #v3=(Conflicted);
    iput-wide v0, p0, Lcom/android/mail/utils/Throttle;->mLastEventTime:J

    .line 128
    return-void

    .line 123
    :cond_1
    #v2=(Byte);v3=(LongHi);
    iget v2, p0, Lcom/android/mail/utils/Throttle;->mMinTimeout:I

    #v2=(Integer);
    iput v2, p0, Lcom/android/mail/utils/Throttle;->mTimeout:I

    goto :goto_0
.end method
