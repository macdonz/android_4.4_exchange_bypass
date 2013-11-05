.class Lcom/android/mail/utils/Throttle$MyTimerTask;
.super Ljava/util/TimerTask;
.source "Throttle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/utils/Throttle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTimerTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/utils/Throttle$MyTimerTask$HandlerRunnable;
    }
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/android/mail/utils/Throttle;


# direct methods
.method private constructor <init>(Lcom/android/mail/utils/Throttle;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/mail/utils/Throttle$MyTimerTask;->this$0:Lcom/android/mail/utils/Throttle;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 161
    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/utils/Throttle;Lcom/android/mail/utils/Throttle$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/android/mail/utils/Throttle$MyTimerTask;-><init>(Lcom/android/mail/utils/Throttle;)V

    #p0=(Reference);
    return-void
.end method

.method static synthetic access$400(Lcom/android/mail/utils/Throttle$MyTimerTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/android/mail/utils/Throttle$MyTimerTask;->mCanceled:Z

    #v0=(Boolean);
    return v0
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/mail/utils/Throttle$MyTimerTask;->mCanceled:Z

    .line 158
    invoke-super {p0}, Ljava/util/TimerTask;->cancel()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/mail/utils/Throttle$MyTimerTask;->this$0:Lcom/android/mail/utils/Throttle;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/utils/Throttle;->access$200(Lcom/android/mail/utils/Throttle;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/mail/utils/Throttle$MyTimerTask$HandlerRunnable;

    #v1=(UninitRef);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-direct {v1, p0, v2}, Lcom/android/mail/utils/Throttle$MyTimerTask$HandlerRunnable;-><init>(Lcom/android/mail/utils/Throttle$MyTimerTask;Lcom/android/mail/utils/Throttle$1;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    return-void
.end method
