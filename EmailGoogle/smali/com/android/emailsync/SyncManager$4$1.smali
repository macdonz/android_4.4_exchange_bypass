.class Lcom/android/emailsync/SyncManager$4$1;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailsync/SyncManager$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/emailsync/SyncManager$4;


# direct methods
.method constructor <init>(Lcom/android/emailsync/SyncManager$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1399
    iput-object p1, p0, Lcom/android/emailsync/SyncManager$4$1;->this$1:Lcom/android/emailsync/SyncManager$4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1403
    const-wide/16 v0, 0x1388

    :try_start_0
    #v0=(LongLo);v1=(LongHi);
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1406
    :goto_0
    #v0=(Conflicted);
    iget-object v0, p0, Lcom/android/emailsync/SyncManager$4$1;->this$1:Lcom/android/emailsync/SyncManager$4;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/emailsync/SyncManager$4;->this$0:Lcom/android/emailsync/SyncManager;

    iget-object v1, p0, Lcom/android/emailsync/SyncManager$4$1;->this$1:Lcom/android/emailsync/SyncManager$4;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/emailsync/SyncManager$4;->this$0:Lcom/android/emailsync/SyncManager;

    invoke-virtual {v1}, Lcom/android/emailsync/SyncManager;->getServiceIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/emailsync/SyncManager;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1407
    return-void

    .line 1404
    :catch_0
    #v0=(LongLo);v1=(LongHi);
    move-exception v0

    #v0=(Reference);
    goto :goto_0
.end method
