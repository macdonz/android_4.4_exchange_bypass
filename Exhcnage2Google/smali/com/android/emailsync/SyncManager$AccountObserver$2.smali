.class Lcom/android/emailsync/SyncManager$AccountObserver$2;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailsync/SyncManager$AccountObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/emailsync/SyncManager$AccountObserver;


# direct methods
.method constructor <init>(Lcom/android/emailsync/SyncManager$AccountObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 533
    iput-object p1, p0, Lcom/android/emailsync/SyncManager$AccountObserver$2;->this$1:Lcom/android/emailsync/SyncManager$AccountObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


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
