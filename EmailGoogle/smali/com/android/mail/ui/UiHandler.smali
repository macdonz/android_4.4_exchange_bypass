.class public Lcom/android/mail/ui/UiHandler;
.super Ljava/lang/Object;
.source "UiHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mEnabled:Z

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/UiHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    #p0=(Reference);
    new-instance v0, Landroid/os/Handler;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/UiHandler;->mHandler:Landroid/os/Handler;

    .line 38
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/mail/ui/UiHandler;->mEnabled:Z

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/UiHandler;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mail/ui/UiHandler;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/mail/ui/UiHandler;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #v0=(Reference);
    return-object v0
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    const/4 v5, 0x0

    .line 79
    #v5=(Null);
    iput-boolean p1, p0, Lcom/android/mail/ui/UiHandler;->mEnabled:Z

    .line 80
    iget-boolean v1, p0, Lcom/android/mail/ui/UiHandler;->mEnabled:Z

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/android/mail/ui/UiHandler;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #v1=(Reference);
    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    .line 82
    .local v0, count:I
    #v0=(Integer);
    if-lez v0, :cond_0

    .line 83
    sget-object v1, Lcom/android/mail/ui/UiHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Disable UiHandler. Dropping %d Runnables."

    #v2=(Reference);
    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 85
    :cond_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    iget-object v1, p0, Lcom/android/mail/ui/UiHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 87
    .end local v0           #count:I
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void
.end method
