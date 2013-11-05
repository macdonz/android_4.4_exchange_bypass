.class Lcom/android/mail/ui/UiHandler$1;
.super Ljava/lang/Object;
.source "UiHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/UiHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/UiHandler;

.field final synthetic val$r:Ljava/lang/Runnable;


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mail/ui/UiHandler$1;->this$0:Lcom/android/mail/ui/UiHandler;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/ui/UiHandler;->access$000(Lcom/android/mail/ui/UiHandler;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 51
    iget-object v0, p0, Lcom/android/mail/ui/UiHandler$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 52
    return-void
.end method
