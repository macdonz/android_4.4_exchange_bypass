.class public Lcom/android/mail/MinTimeProgressView;
.super Landroid/widget/ProgressBar;
.source "MinTimeProgressView.java"


# static fields
.field private static sMinDelay:I

.field private static sMinShowTime:I


# instance fields
.field private final mDelayedHide:Ljava/lang/Runnable;

.field private final mDelayedShow:Ljava/lang/Runnable;

.field private mDismissed:Z

.field private final mHandler:Landroid/os/Handler;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/MinTimeProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    const v0, 0x7f0b0034

    #v0=(Integer);
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    #p0=(Reference);
    const-wide/16 v0, -0x1

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/android/mail/MinTimeProgressView;->mStartTime:J

    .line 39
    new-instance v0, Landroid/os/Handler;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/MinTimeProgressView;->mHandler:Landroid/os/Handler;

    .line 41
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/mail/MinTimeProgressView;->mDismissed:Z

    .line 55
    new-instance v0, Lcom/android/mail/MinTimeProgressView$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/mail/MinTimeProgressView$1;-><init>(Lcom/android/mail/MinTimeProgressView;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/MinTimeProgressView;->mDelayedHide:Ljava/lang/Runnable;

    .line 62
    new-instance v0, Lcom/android/mail/MinTimeProgressView$2;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/mail/MinTimeProgressView$2;-><init>(Lcom/android/mail/MinTimeProgressView;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/MinTimeProgressView;->mDelayedShow:Ljava/lang/Runnable;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0038

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    #v0=(Integer);
    sput v0, Lcom/android/mail/MinTimeProgressView;->sMinShowTime:I

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    #v0=(Reference);
    const v1, 0x7f0e0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    #v0=(Integer);
    sput v0, Lcom/android/mail/MinTimeProgressView;->sMinDelay:I

    .line 53
    return-void
.end method

.method static synthetic access$001(Lcom/android/mail/MinTimeProgressView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mail/MinTimeProgressView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/mail/MinTimeProgressView;->mDismissed:Z

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$202(Lcom/android/mail/MinTimeProgressView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/android/mail/MinTimeProgressView;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$301(Lcom/android/mail/MinTimeProgressView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$401(Lcom/android/mail/MinTimeProgressView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private hide()V
    .locals 6

    .prologue
    .line 73
    const/4 v2, 0x1

    #v2=(One);
    iput-boolean v2, p0, Lcom/android/mail/MinTimeProgressView;->mDismissed:Z

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    iget-wide v4, p0, Lcom/android/mail/MinTimeProgressView;->mStartTime:J

    #v4=(LongLo);v5=(LongHi);
    sub-long v0, v2, v4

    .line 75
    .local v0, diff:J
    #v0=(LongLo);v1=(LongHi);
    sget v2, Lcom/android/mail/MinTimeProgressView;->sMinShowTime:I

    #v2=(Integer);
    int-to-long v2, v2

    #v2=(LongLo);
    cmp-long v2, v0, v2

    #v2=(Byte);
    if-gez v2, :cond_0

    iget-wide v2, p0, Lcom/android/mail/MinTimeProgressView;->mStartTime:J

    #v2=(LongLo);
    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    #v2=(Byte);
    if-nez v2, :cond_1

    .line 79
    :cond_0
    const/16 v2, 0x8

    #v2=(PosByte);
    invoke-static {p0, v2}, Lcom/android/mail/MinTimeProgressView;->access$401(Lcom/android/mail/MinTimeProgressView;I)V

    .line 86
    :goto_0
    #v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 84
    :cond_1
    #v2=(Byte);v3=(LongHi);
    iget-object v2, p0, Lcom/android/mail/MinTimeProgressView;->mHandler:Landroid/os/Handler;

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/mail/MinTimeProgressView;->mDelayedHide:Ljava/lang/Runnable;

    #v3=(Reference);
    sget v4, Lcom/android/mail/MinTimeProgressView;->sMinShowTime:I

    #v4=(Integer);
    int-to-long v4, v4

    #v4=(LongLo);
    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private show()V
    .locals 4

    .prologue
    .line 90
    const-wide/16 v0, -0x1

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/android/mail/MinTimeProgressView;->mStartTime:J

    .line 91
    iget-object v0, p0, Lcom/android/mail/MinTimeProgressView;->mHandler:Landroid/os/Handler;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/MinTimeProgressView;->mDelayedShow:Ljava/lang/Runnable;

    #v1=(Reference);
    sget v2, Lcom/android/mail/MinTimeProgressView;->sMinDelay:I

    #v2=(Integer);
    int-to-long v2, v2

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    return-void
.end method


# virtual methods
.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 98
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/mail/MinTimeProgressView;->mDismissed:Z

    .line 99
    sparse-switch p1, :sswitch_data_0

    .line 107
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 109
    :goto_0
    return-void

    .line 101
    :sswitch_0
    invoke-direct {p0}, Lcom/android/mail/MinTimeProgressView;->show()V

    goto :goto_0

    .line 104
    :sswitch_1
    invoke-direct {p0}, Lcom/android/mail/MinTimeProgressView;->hide()V

    goto :goto_0

    .line 99
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method
