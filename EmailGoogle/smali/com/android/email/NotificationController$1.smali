.class Lcom/android/email/NotificationController$1;
.super Ljava/lang/Object;
.source "NotificationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/NotificationController;->watchForMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/NotificationController;


# direct methods
.method constructor <init>(Lcom/android/email/NotificationController;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/email/NotificationController$1;->this$0:Lcom/android/email/NotificationController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 195
    iget-object v1, p0, Lcom/android/email/NotificationController$1;->this$0:Lcom/android/email/NotificationController;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/email/NotificationController;->access$000(Lcom/android/email/NotificationController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 198
    .local v0, resolver:Landroid/content/ContentResolver;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/email/NotificationController$1;->this$0:Lcom/android/email/NotificationController;

    const-wide/high16 v2, 0x1000

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v1, v2, v3}, Lcom/android/email/NotificationController;->access$100(Lcom/android/email/NotificationController;J)V

    .line 200
    iget-object v1, p0, Lcom/android/email/NotificationController$1;->this$0:Lcom/android/email/NotificationController;

    invoke-static {v1}, Lcom/android/email/NotificationController;->access$200(Lcom/android/email/NotificationController;)Landroid/database/ContentObserver;

    move-result-object v1

    if-nez v1, :cond_0

    .line 201
    invoke-static {}, Lcom/android/email/NotificationController;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Observing account changes for notifications"

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 202
    iget-object v1, p0, Lcom/android/email/NotificationController$1;->this$0:Lcom/android/email/NotificationController;

    new-instance v2, Lcom/android/email/NotificationController$AccountContentObserver;

    #v2=(UninitRef);
    invoke-static {}, Lcom/android/email/NotificationController;->access$400()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/NotificationController$1;->this$0:Lcom/android/email/NotificationController;

    #v4=(Reference);
    invoke-static {v4}, Lcom/android/email/NotificationController;->access$000(Lcom/android/email/NotificationController;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/email/NotificationController$AccountContentObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    #v2=(Reference);
    invoke-static {v1, v2}, Lcom/android/email/NotificationController;->access$202(Lcom/android/email/NotificationController;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;

    .line 203
    sget-object v1, Lcom/android/emailcommon/provider/Account;->NOTIFIER_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    #v2=(One);
    iget-object v3, p0, Lcom/android/email/NotificationController$1;->this$0:Lcom/android/email/NotificationController;

    invoke-static {v3}, Lcom/android/email/NotificationController;->access$200(Lcom/android/email/NotificationController;)Landroid/database/ContentObserver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 205
    :cond_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void
.end method
