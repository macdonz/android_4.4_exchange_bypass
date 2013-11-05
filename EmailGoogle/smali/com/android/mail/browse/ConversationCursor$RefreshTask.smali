.class Lcom/android/mail/browse/ConversationCursor$RefreshTask;
.super Landroid/os/AsyncTask;
.source "ConversationCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/ConversationCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/browse/ConversationCursor;


# direct methods
.method private constructor <init>(Lcom/android/mail/browse/ConversationCursor;)V
    .locals 0
    .parameter

    .prologue
    .line 574
    iput-object p1, p0, Lcom/android/mail/browse/ConversationCursor$RefreshTask;->this$0:Lcom/android/mail/browse/ConversationCursor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 575
    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/browse/ConversationCursor;Lcom/android/mail/browse/ConversationCursor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 573
    invoke-direct {p0, p1}, Lcom/android/mail/browse/ConversationCursor$RefreshTask;-><init>(Lcom/android/mail/browse/ConversationCursor;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;
    .locals 3
    .parameter "params"

    .prologue
    .line 583
    iget-object v1, p0, Lcom/android/mail/browse/ConversationCursor$RefreshTask;->this$0:Lcom/android/mail/browse/ConversationCursor;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-static {v1, v2}, Lcom/android/mail/browse/ConversationCursor;->access$500(Lcom/android/mail/browse/ConversationCursor;Z)Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    move-result-object v0

    .line 585
    .local v0, result:Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;
    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getCount()I

    .line 586
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 573
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mail/browse/ConversationCursor$RefreshTask;->doInBackground([Ljava/lang/Void;)Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method protected onCancelled(Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 617
    if-eqz p1, :cond_0

    .line 618
    invoke-virtual {p1}, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->close()V

    .line 620
    :cond_0
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 573
    check-cast p1, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mail/browse/ConversationCursor$RefreshTask;->onCancelled(Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)V

    return-void
.end method

.method protected onPostExecute(Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)V
    .locals 8
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    #v1=(Null);
    const/4 v0, 0x1

    .line 591
    #v0=(One);
    iget-object v2, p0, Lcom/android/mail/browse/ConversationCursor$RefreshTask;->this$0:Lcom/android/mail/browse/ConversationCursor;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/mail/browse/ConversationCursor;->access$600(Lcom/android/mail/browse/ConversationCursor;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 592
    :try_start_0
    const-string v3, "ConvCursor"

    #v3=(Reference);
    const-string v4, "Received notify ui callback and sending a notification is enabled? %s"

    #v4=(Reference);
    const/4 v5, 0x1

    #v5=(One);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    iget-object v7, p0, Lcom/android/mail/browse/ConversationCursor$RefreshTask;->this$0:Lcom/android/mail/browse/ConversationCursor;

    #v7=(Reference);
    invoke-static {v7}, Lcom/android/mail/browse/ConversationCursor;->access$700(Lcom/android/mail/browse/ConversationCursor;)Z

    move-result v7

    #v7=(Boolean);
    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/mail/browse/ConversationCursor$RefreshTask;->this$0:Lcom/android/mail/browse/ConversationCursor;

    #v7=(Reference);
    invoke-static {v7}, Lcom/android/mail/browse/ConversationCursor;->access$800(Lcom/android/mail/browse/ConversationCursor;)Z

    move-result v7

    #v7=(Boolean);
    if-nez v7, :cond_0

    :goto_0
    #v0=(Boolean);
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    #v0=(Reference);
    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 597
    iget-object v0, p0, Lcom/android/mail/browse/ConversationCursor$RefreshTask;->this$0:Lcom/android/mail/browse/ConversationCursor;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationCursor;->isClosed()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 598
    invoke-virtual {p0, p1}, Lcom/android/mail/browse/ConversationCursor$RefreshTask;->onCancelled(Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)V

    .line 599
    monitor-exit v2

    .line 610
    :goto_1
    #v0=(Conflicted);v1=(Boolean);
    return-void

    :cond_0
    #v0=(One);v1=(Null);
    move v0, v1

    .line 592
    #v0=(Null);
    goto :goto_0

    .line 601
    :cond_1
    #v0=(Boolean);
    iget-object v0, p0, Lcom/android/mail/browse/ConversationCursor$RefreshTask;->this$0:Lcom/android/mail/browse/ConversationCursor;

    #v0=(Reference);
    invoke-static {v0, p1}, Lcom/android/mail/browse/ConversationCursor;->access$902(Lcom/android/mail/browse/ConversationCursor;Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    .line 602
    iget-object v0, p0, Lcom/android/mail/browse/ConversationCursor$RefreshTask;->this$0:Lcom/android/mail/browse/ConversationCursor;

    const/4 v1, 0x1

    #v1=(One);
    invoke-static {v0, v1}, Lcom/android/mail/browse/ConversationCursor;->access$1002(Lcom/android/mail/browse/ConversationCursor;Z)Z

    .line 606
    iget-object v0, p0, Lcom/android/mail/browse/ConversationCursor$RefreshTask;->this$0:Lcom/android/mail/browse/ConversationCursor;

    invoke-static {v0}, Lcom/android/mail/browse/ConversationCursor;->access$800(Lcom/android/mail/browse/ConversationCursor;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/browse/ConversationCursor$RefreshTask;->this$0:Lcom/android/mail/browse/ConversationCursor;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/browse/ConversationCursor;->access$700(Lcom/android/mail/browse/ConversationCursor;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_2

    .line 607
    iget-object v0, p0, Lcom/android/mail/browse/ConversationCursor$RefreshTask;->this$0:Lcom/android/mail/browse/ConversationCursor;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/browse/ConversationCursor;->access$1100(Lcom/android/mail/browse/ConversationCursor;)V

    .line 609
    :cond_2
    #v0=(Conflicted);
    monitor-exit v2

    goto :goto_1

    :catchall_0
    #v1=(Boolean);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 573
    check-cast p1, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mail/browse/ConversationCursor$RefreshTask;->onPostExecute(Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)V

    return-void
.end method
