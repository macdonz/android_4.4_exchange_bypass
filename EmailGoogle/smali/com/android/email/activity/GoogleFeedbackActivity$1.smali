.class final Lcom/android/email/activity/GoogleFeedbackActivity$1;
.super Ljava/lang/Object;
.source "GoogleFeedbackActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/GoogleFeedbackActivity;->launchGoogleFeedback(Landroid/content/Context;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$screenshot:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/email/activity/GoogleFeedbackActivity$1;->val$screenshot:Landroid/graphics/Bitmap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v6, 0x0

    .line 50
    :try_start_0
    #v6=(Null);
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 51
    .local v1, parcel:Landroid/os/Parcel;
    #v1=(Reference);
    iget-object v2, p0, Lcom/android/email/activity/GoogleFeedbackActivity$1;->val$screenshot:Landroid/graphics/Bitmap;

    #v2=(Reference);
    if-eqz v2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/android/email/activity/GoogleFeedbackActivity$1;->val$screenshot:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v2, v1, v3}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 55
    :cond_0
    #v3=(Conflicted);
    const/4 v2, 0x1

    #v2=(One);
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x0

    :try_start_1
    #v4=(Null);
    invoke-interface {p2, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    .end local v1           #parcel:Landroid/os/Parcel;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Reference);v4=(Reference);v5=(Conflicted);
    return-void

    .line 56
    .restart local v1       #parcel:Landroid/os/Parcel;
    :catch_0
    #v0=(Uninit);v1=(Reference);v2=(One);v3=(Null);v4=(Null);v5=(Uninit);
    move-exception v0

    .line 57
    .local v0, e:Landroid/os/TransactionTooLargeException;
    :try_start_2
    #v0=(Reference);
    iget-object v2, p0, Lcom/android/email/activity/GoogleFeedbackActivity$1;->val$screenshot:Landroid/graphics/Bitmap;

    #v2=(Reference);
    if-eqz v2, :cond_1

    .line 60
    const/4 v2, 0x1

    #v2=(One);
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    #v3=(Reference);
    const/4 v4, 0x0

    const/4 v5, 0x0

    #v5=(Null);
    invoke-interface {p2, v2, v3, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 68
    .end local v0           #e:Landroid/os/TransactionTooLargeException;
    .end local v1           #parcel:Landroid/os/Parcel;
    :catch_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v0

    .line 70
    .local v0, e:Landroid/os/RemoteException;
    #v0=(Reference);
    invoke-static {}, Lcom/android/email/activity/GoogleFeedbackActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    const-string v3, "Error connecting to bug report service"

    #v3=(Reference);
    new-array v4, v6, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v2, v0, v3, v4}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 63
    .local v0, e:Landroid/os/TransactionTooLargeException;
    .restart local v1       #parcel:Landroid/os/Parcel;
    :cond_1
    :try_start_3
    #v1=(Reference);v3=(Null);v4=(Null);v5=(Uninit);
    invoke-static {}, Lcom/android/email/activity/GoogleFeedbackActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Got TransactionTooLargeException with no attachment"

    #v3=(Reference);
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v2, v0, v3, v4}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 65
    throw v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 75
    return-void
.end method
