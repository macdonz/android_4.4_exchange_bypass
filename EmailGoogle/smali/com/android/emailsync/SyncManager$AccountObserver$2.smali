.class Lcom/android/emailsync/SyncManager$AccountObserver$2;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailsync/SyncManager$AccountObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/emailsync/SyncManager$AccountObserver;


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/emailsync/SyncManager$AccountObserver$2;->this$1:Lcom/android/emailsync/SyncManager$AccountObserver;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/emailsync/SyncManager$AccountObserver;->access$100(Lcom/android/emailsync/SyncManager$AccountObserver;)V

    .line 537
    return-void
.end method
