.class public Lcom/android/mail/MinTimeProgressDialog;
.super Landroid/app/ProgressDialog;
.source "MinTimeProgressDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# static fields
.field private static sMinDelay:I

.field private static sMinShowTime:I


# instance fields
.field private final mDelayedDismiss:Ljava/lang/Runnable;

.field private final mDelayedShow:Ljava/lang/Runnable;

.field private mDismissed:Z

.field private final mHandler:Landroid/os/Handler;

.field private mMinShowTime:I

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 62
    const v0, 0x7f0b0035

    #v0=(Integer);
    invoke-direct {p0, p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 37
    #p0=(Reference);
    const/4 v0, -0x1

    #v0=(Byte);
    iput v0, p0, Lcom/android/mail/MinTimeProgressDialog;->mMinShowTime:I

    .line 39
    const-wide/16 v0, -0x1

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/android/mail/MinTimeProgressDialog;->mStartTime:J

    .line 41
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/mail/MinTimeProgressDialog;->mDismissed:Z

    .line 43
    new-instance v0, Landroid/os/Handler;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/MinTimeProgressDialog;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Lcom/android/mail/MinTimeProgressDialog$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/mail/MinTimeProgressDialog$1;-><init>(Lcom/android/mail/MinTimeProgressDialog;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/MinTimeProgressDialog;->mDelayedDismiss:Ljava/lang/Runnable;

    .line 52
    new-instance v0, Lcom/android/mail/MinTimeProgressDialog$2;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/mail/MinTimeProgressDialog$2;-><init>(Lcom/android/mail/MinTimeProgressDialog;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/MinTimeProgressDialog;->mDelayedShow:Ljava/lang/Runnable;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e003a

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    #v0=(Integer);
    sput v0, Lcom/android/mail/MinTimeProgressDialog;->sMinShowTime:I

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    #v0=(Reference);
    const v1, 0x7f0e003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    #v0=(Integer);
    sput v0, Lcom/android/mail/MinTimeProgressDialog;->sMinDelay:I

    .line 67
    sget v0, Lcom/android/mail/MinTimeProgressDialog;->sMinShowTime:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    #v1=(Reference);
    const v2, 0x7f0e0004

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    #v1=(Integer);
    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/mail/MinTimeProgressDialog;->mMinShowTime:I

    .line 69
    return-void
.end method

.method static synthetic access$001(Lcom/android/mail/MinTimeProgressDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mail/MinTimeProgressDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/mail/MinTimeProgressDialog;->mDismissed:Z

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$201(Lcom/android/mail/MinTimeProgressDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 6

    .prologue
    .line 73
    const/4 v2, 0x1

    #v2=(One);
    iput-boolean v2, p0, Lcom/android/mail/MinTimeProgressDialog;->mDismissed:Z

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    iget-wide v4, p0, Lcom/android/mail/MinTimeProgressDialog;->mStartTime:J

    #v4=(LongLo);v5=(LongHi);
    sub-long v0, v2, v4

    .line 75
    .local v0, diff:J
    #v0=(LongLo);v1=(LongHi);
    iget v2, p0, Lcom/android/mail/MinTimeProgressDialog;->mMinShowTime:I

    #v2=(Integer);
    int-to-long v2, v2

    #v2=(LongLo);
    cmp-long v2, v0, v2

    #v2=(Byte);
    if-gez v2, :cond_0

    iget-wide v2, p0, Lcom/android/mail/MinTimeProgressDialog;->mStartTime:J

    #v2=(LongLo);
    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    #v2=(Byte);
    if-nez v2, :cond_1

    .line 80
    :cond_0
    invoke-super {p0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 84
    :goto_0
    #v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 82
    :cond_1
    #v2=(Byte);v3=(LongHi);
    iget-object v2, p0, Lcom/android/mail/MinTimeProgressDialog;->mHandler:Landroid/os/Handler;

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/mail/MinTimeProgressDialog;->mDelayedDismiss:Ljava/lang/Runnable;

    #v3=(Reference);
    iget v4, p0, Lcom/android/mail/MinTimeProgressDialog;->mMinShowTime:I

    #v4=(Integer);
    int-to-long v4, v4

    #v4=(LongLo);
    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/android/mail/MinTimeProgressDialog;->mStartTime:J

    .line 110
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 102
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/mail/MinTimeProgressDialog;->mDismissed:Z

    .line 103
    iget-object v0, p0, Lcom/android/mail/MinTimeProgressDialog;->mHandler:Landroid/os/Handler;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/MinTimeProgressDialog;->mDelayedShow:Ljava/lang/Runnable;

    #v1=(Reference);
    sget v2, Lcom/android/mail/MinTimeProgressDialog;->sMinDelay:I

    #v2=(Integer);
    int-to-long v2, v2

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 104
    return-void
.end method
