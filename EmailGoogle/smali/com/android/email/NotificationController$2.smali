.class Lcom/android/email/NotificationController$2;
.super Ljava/lang/Object;
.source "NotificationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/NotificationController;->cancelSecurityNeededNotification()V
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
    .line 495
    iput-object p1, p0, Lcom/android/email/NotificationController$2;->this$0:Lcom/android/email/NotificationController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 498
    #v3=(Null);
    iget-object v0, p0, Lcom/android/email/NotificationController$2;->this$0:Lcom/android/email/NotificationController;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/email/NotificationController;->access$000(Lcom/android/email/NotificationController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    sget-object v2, Lcom/android/emailcommon/provider/Account;->ID_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    move-object v4, v3

    #v4=(Null);
    move-object v5, v3

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 501
    .local v6, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    #v1=(Conflicted);v2=(Conflicted);v6=(Reference);v7=(Conflicted);v8=(Conflicted);
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 502
    const/4 v0, 0x0

    #v0=(Null);
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 503
    .local v7, id:J
    #v7=(LongLo);v8=(LongHi);
    iget-object v0, p0, Lcom/android/email/NotificationController$2;->this$0:Lcom/android/email/NotificationController;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/email/NotificationController;->access$500(Lcom/android/email/NotificationController;)Landroid/app/NotificationManager;

    move-result-object v0

    const-wide/32 v1, 0x30000000

    #v1=(LongLo);v2=(LongHi);
    add-long/2addr v1, v7

    long-to-int v1, v1

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 508
    .end local v7           #id:J
    :catchall_0
    #v1=(Conflicted);v2=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    #v0=(Boolean);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 510
    return-void
.end method
