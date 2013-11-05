.class public Lcom/android/mail/browse/MessageWebView;
.super Landroid/webkit/WebView;
.source "MessageWebView.java"

# interfaces
.implements Lcom/android/mail/browse/MessageScrollView$Touchable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sMainThreadHandler:Landroid/os/Handler;


# instance fields
.field private final mClock:Lcom/android/mail/utils/Clock;

.field private mIgnoreNext:Z

.field private mLastSizeChangeTime:J

.field private mRealHeight:I

.field private mRealWidth:I

.field private final mThrottle:Lcom/android/mail/utils/Throttle;

.field private mTouched:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/browse/MessageWebView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 61
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/browse/MessageWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "c"
    .parameter "attrs"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    #p0=(Reference);
    sget-object v0, Lcom/android/mail/utils/Clock;->INSTANCE:Lcom/android/mail/utils/Clock;

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/MessageWebView;->mClock:Lcom/android/mail/utils/Clock;

    .line 47
    new-instance v0, Lcom/android/mail/utils/Throttle;

    #v0=(UninitRef);
    const-string v1, "MessageWebView"

    #v1=(Reference);
    new-instance v2, Lcom/android/mail/browse/MessageWebView$1;

    #v2=(UninitRef);
    invoke-direct {v2, p0}, Lcom/android/mail/browse/MessageWebView$1;-><init>(Lcom/android/mail/browse/MessageWebView;)V

    #v2=(Reference);
    invoke-static {}, Lcom/android/mail/browse/MessageWebView;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    #v3=(Reference);
    const/16 v4, 0xc8

    #v4=(PosShort);
    const/16 v5, 0x12c

    #v5=(PosShort);
    invoke-direct/range {v0 .. v5}, Lcom/android/mail/utils/Throttle;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;II)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/MessageWebView;->mThrottle:Lcom/android/mail/utils/Throttle;

    .line 58
    const-wide/16 v0, -0x1

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/android/mail/browse/MessageWebView;->mLastSizeChangeTime:J

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/mail/browse/MessageWebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/mail/browse/MessageWebView;->performSizeChangeDelayed()V

    return-void
.end method

.method public static getMainThreadHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 127
    sget-object v0, Lcom/android/mail/browse/MessageWebView;->sMainThreadHandler:Landroid/os/Handler;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 130
    new-instance v0, Landroid/os/Handler;

    #v0=(UninitRef);
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    #v1=(Reference);
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/browse/MessageWebView;->sMainThreadHandler:Landroid/os/Handler;

    .line 132
    :cond_0
    #v1=(Conflicted);
    sget-object v0, Lcom/android/mail/browse/MessageWebView;->sMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private performSizeChange(II)V
    .locals 2
    .parameter "ow"
    .parameter "oh"

    .prologue
    .line 114
    iget v0, p0, Lcom/android/mail/browse/MessageWebView;->mRealWidth:I

    #v0=(Integer);
    iget v1, p0, Lcom/android/mail/browse/MessageWebView;->mRealHeight:I

    #v1=(Integer);
    invoke-super {p0, v0, v1, p1, p2}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 115
    iget-object v0, p0, Lcom/android/mail/browse/MessageWebView;->mClock:Lcom/android/mail/utils/Clock;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/utils/Clock;->getTime()J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/android/mail/browse/MessageWebView;->mLastSizeChangeTime:J

    .line 116
    return-void
.end method

.method private performSizeChangeDelayed()V
    .locals 2

    .prologue
    .line 119
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/mail/browse/MessageWebView;->mIgnoreNext:Z

    .line 120
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageWebView;->getWidth()I

    move-result v0

    #v0=(Integer);
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageWebView;->getHeight()I

    move-result v1

    #v1=(Integer);
    invoke-direct {p0, v0, v1}, Lcom/android/mail/browse/MessageWebView;->performSizeChange(II)V

    .line 121
    return-void
.end method


# virtual methods
.method public clearTouched()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/mail/browse/MessageWebView;->mTouched:Z

    .line 76
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8
    .parameter "w"
    .parameter "h"
    .parameter "ow"
    .parameter "oh"

    .prologue
    const/4 v3, 0x0

    .line 89
    #v3=(Null);
    iput p1, p0, Lcom/android/mail/browse/MessageWebView;->mRealWidth:I

    .line 90
    iput p2, p0, Lcom/android/mail/browse/MessageWebView;->mRealHeight:I

    .line 91
    iget-object v4, p0, Lcom/android/mail/browse/MessageWebView;->mClock:Lcom/android/mail/utils/Clock;

    #v4=(Reference);
    invoke-virtual {v4}, Lcom/android/mail/utils/Clock;->getTime()J

    move-result-wide v0

    .line 92
    .local v0, now:J
    #v0=(LongLo);v1=(LongHi);
    iget-wide v4, p0, Lcom/android/mail/browse/MessageWebView;->mLastSizeChangeTime:J

    #v4=(LongLo);v5=(LongHi);
    sub-long v4, v0, v4

    const-wide/16 v6, 0xc8

    #v6=(LongLo);v7=(LongHi);
    cmp-long v4, v4, v6

    #v4=(Byte);
    if-gez v4, :cond_0

    const/4 v2, 0x1

    .line 96
    .local v2, recentlySized:Z
    :goto_0
    #v2=(Boolean);
    iget-boolean v4, p0, Lcom/android/mail/browse/MessageWebView;->mIgnoreNext:Z

    #v4=(Boolean);
    if-eqz v4, :cond_1

    .line 97
    iput-boolean v3, p0, Lcom/android/mail/browse/MessageWebView;->mIgnoreNext:Z

    .line 98
    if-eqz v2, :cond_1

    .line 99
    sget-object v4, Lcom/android/mail/browse/MessageWebView;->LOG_TAG:Ljava/lang/String;

    #v4=(Reference);
    const-string v5, "Suppressing size change in MessageWebView"

    #v5=(Reference);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v4, v5, v3}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 111
    :goto_1
    #v4=(Conflicted);v5=(Conflicted);
    return-void

    .end local v2           #recentlySized:Z
    :cond_0
    #v2=(Uninit);v3=(Null);v4=(Byte);v5=(LongHi);
    move v2, v3

    .line 92
    #v2=(Null);
    goto :goto_0

    .line 104
    .restart local v2       #recentlySized:Z
    :cond_1
    #v2=(Boolean);v4=(Boolean);
    if-eqz v2, :cond_2

    .line 105
    iget-object v3, p0, Lcom/android/mail/browse/MessageWebView;->mThrottle:Lcom/android/mail/utils/Throttle;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/mail/utils/Throttle;->onEvent()V

    goto :goto_1

    .line 109
    :cond_2
    #v3=(Null);
    invoke-direct {p0, p3, p4}, Lcom/android/mail/browse/MessageWebView;->performSizeChange(II)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 80
    #v6=(One);
    iput-boolean v6, p0, Lcom/android/mail/browse/MessageWebView;->mTouched:Z

    .line 81
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 82
    .local v0, handled:Z
    #v0=(Boolean);
    const-string v1, "MsgScroller"

    #v1=(Reference);
    const-string v2, "OUT WebView.onTouch, returning handled=%s ev=%s"

    #v2=(Reference);
    const/4 v3, 0x2

    #v3=(PosByte);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    aput-object p1, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 84
    return v0
.end method

.method public wasTouched()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/mail/browse/MessageWebView;->mTouched:Z

    #v0=(Boolean);
    return v0
.end method
