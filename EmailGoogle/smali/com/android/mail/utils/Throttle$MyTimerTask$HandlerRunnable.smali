.class Lcom/android/mail/utils/Throttle$MyTimerTask$HandlerRunnable;
.super Ljava/lang/Object;
.source "Throttle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/utils/Throttle$MyTimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandlerRunnable"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mail/utils/Throttle$MyTimerTask;


# direct methods
.method private constructor <init>(Lcom/android/mail/utils/Throttle$MyTimerTask;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/mail/utils/Throttle$MyTimerTask$HandlerRunnable;->this$1:Lcom/android/mail/utils/Throttle$MyTimerTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/utils/Throttle$MyTimerTask;Lcom/android/mail/utils/Throttle$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/mail/utils/Throttle$MyTimerTask$HandlerRunnable;-><init>(Lcom/android/mail/utils/Throttle$MyTimerTask;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/mail/utils/Throttle$MyTimerTask$HandlerRunnable;->this$1:Lcom/android/mail/utils/Throttle$MyTimerTask;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/utils/Throttle$MyTimerTask;->this$0:Lcom/android/mail/utils/Throttle;

    const/4 v1, 0x0

    #v1=(Null);
    invoke-static {v0, v1}, Lcom/android/mail/utils/Throttle;->access$302(Lcom/android/mail/utils/Throttle;Lcom/android/mail/utils/Throttle$MyTimerTask;)Lcom/android/mail/utils/Throttle$MyTimerTask;

    .line 165
    iget-object v0, p0, Lcom/android/mail/utils/Throttle$MyTimerTask$HandlerRunnable;->this$1:Lcom/android/mail/utils/Throttle$MyTimerTask;

    invoke-static {v0}, Lcom/android/mail/utils/Throttle$MyTimerTask;->access$400(Lcom/android/mail/utils/Throttle$MyTimerTask;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/mail/utils/Throttle$MyTimerTask$HandlerRunnable;->this$1:Lcom/android/mail/utils/Throttle$MyTimerTask;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/utils/Throttle$MyTimerTask;->this$0:Lcom/android/mail/utils/Throttle;

    invoke-static {v0}, Lcom/android/mail/utils/Throttle;->access$500(Lcom/android/mail/utils/Throttle;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 169
    :cond_0
    #v0=(Conflicted);
    return-void
.end method
