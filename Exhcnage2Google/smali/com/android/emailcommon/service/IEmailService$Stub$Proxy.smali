.class Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IEmailService.java"

# interfaces
.implements Lcom/android/emailcommon/service/IEmailService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/service/IEmailService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter "remote"

    .prologue
    .line 272
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 273
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 274
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #v0=(Reference);
    return-object v0
.end method

.method public autoDiscover(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .parameter "userName"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 462
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 463
    .local v0, _data:Landroid/os/Parcel;
    #v0=(Reference);
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 466
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    #v1=(Reference);
    const-string v3, "com.android.emailcommon.service.IEmailService"

    #v3=(Reference);
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 469
    iget-object v3, p0, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    #v4=(PosByte);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 470
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 471
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    #v3=(Integer);
    if-eqz v3, :cond_0

    .line 472
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #v3=(Reference);
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    .local v2, _result:Landroid/os/Bundle;
    :goto_0
    #v3=(Conflicted);
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 482
    return-object v2

    .line 475
    .end local v2           #_result:Landroid/os/Bundle;
    :cond_0
    #v2=(Uninit);v3=(Integer);
    const/4 v2, 0x0

    .restart local v2       #_result:Landroid/os/Bundle;
    #v2=(Null);
    goto :goto_0

    .line 479
    .end local v2           #_result:Landroid/os/Bundle;
    :catchall_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v3

    #v3=(Reference);
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public createFolder(JLjava/lang/String;)Z
    .locals 6
    .parameter "accountId"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 380
    #v2=(Null);
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 381
    .local v0, _data:Landroid/os/Parcel;
    #v0=(Reference);
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 384
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    #v1=(Reference);
    const-string v3, "com.android.emailcommon.service.IEmailService"

    #v3=(Reference);
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 386
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 387
    iget-object v3, p0, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    #v4=(PosByte);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 388
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 389
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    #v3=(Integer);
    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 392
    .local v2, _result:Z
    :cond_0
    #v2=(Boolean);
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 395
    return v2

    .line 392
    .end local v2           #_result:Z
    :catchall_0
    #v2=(Null);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v3

    #v3=(Reference);
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public deleteAccountPIMData(Ljava/lang/String;)V
    .locals 5
    .parameter "emailAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 502
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 503
    .local v0, _data:Landroid/os/Parcel;
    #v0=(Reference);
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 505
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    #v1=(Reference);
    const-string v2, "com.android.emailcommon.service.IEmailService"

    #v2=(Reference);
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 507
    iget-object v2, p0, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    #v3=(PosByte);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 508
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 514
    return-void

    .line 511
    :catchall_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v2

    #v2=(Reference);
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public deleteFolder(JLjava/lang/String;)Z
    .locals 6
    .parameter "accountId"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 399
    #v2=(Null);
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 400
    .local v0, _data:Landroid/os/Parcel;
    #v0=(Reference);
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 403
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    #v1=(Reference);
    const-string v3, "com.android.emailcommon.service.IEmailService"

    #v3=(Reference);
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 405
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 406
    iget-object v3, p0, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    #v4=(PosByte);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 407
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 408
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    #v3=(Integer);
    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 411
    .local v2, _result:Z
    :cond_0
    #v2=(Boolean);
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 414
    return v2

    .line 411
    .end local v2           #_result:Z
    :catchall_0
    #v2=(Null);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v3

    #v3=(Reference);
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getApiLevel()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 517
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 518
    .local v0, _data:Landroid/os/Parcel;
    #v0=(Reference);
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 521
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    #v1=(Reference);
    const-string v3, "com.android.emailcommon.service.IEmailService"

    #v3=(Reference);
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 522
    iget-object v3, p0, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    #v4=(PosByte);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 523
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 524
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 527
    .local v2, _result:I
    #v2=(Integer);
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 530
    return v2

    .line 527
    .end local v2           #_result:I
    :catchall_0
    #v2=(Uninit);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v3

    #v3=(Reference);
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getCapabilities(Lcom/android/emailcommon/provider/Account;)I
    .locals 6
    .parameter "acct"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 579
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 580
    .local v0, _data:Landroid/os/Parcel;
    #v0=(Reference);
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 583
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    #v1=(Reference);
    const-string v3, "com.android.emailcommon.service.IEmailService"

    #v3=(Reference);
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 584
    if-eqz p1, :cond_0

    .line 585
    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {p1, v0, v3}, Lcom/android/emailcommon/provider/Account;->writeToParcel(Landroid/os/Parcel;I)V

    .line 591
    :goto_0
    iget-object v3, p0, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #v3=(Reference);
    const/16 v4, 0x12

    #v4=(PosByte);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 592
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 593
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 596
    .local v2, _result:I
    #v2=(Integer);
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 599
    return v2

    .line 589
    .end local v2           #_result:I
    :cond_0
    #v2=(Uninit);v4=(Uninit);v5=(Uninit);
    const/4 v3, 0x0

    :try_start_1
    #v3=(Null);
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 596
    :catchall_0
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v3

    #v3=(Reference);
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public hostChanged(J)V
    .locals 5
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 450
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 452
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    #v0=(Reference);
    const-string v1, "com.android.emailcommon.service.IEmailService"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 454
    iget-object v1, p0, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    #v2=(PosByte);
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x1

    #v4=(One);
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 459
    return-void

    .line 457
    :catchall_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v1

    #v1=(Reference);
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public loadAttachment(Lcom/android/emailcommon/service/IEmailServiceCallback;JZ)V
    .locals 5
    .parameter "cb"
    .parameter "attachmentId"
    .parameter "background"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v1, 0x1

    .line 354
    #v1=(One);
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 356
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    #v0=(Reference);
    const-string v3, "com.android.emailcommon.service.IEmailService"

    #v3=(Reference);
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 357
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/emailcommon/service/IEmailServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    #v2=(Reference);
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 358
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 359
    if-eqz p4, :cond_1

    :goto_0
    #v1=(Boolean);
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    iget-object v1, p0, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #v1=(Reference);
    const/4 v2, 0x5

    #v2=(PosByte);
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x1

    #v4=(One);
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 365
    return-void

    .line 359
    :cond_1
    #v1=(One);v2=(Reference);v3=(Reference);v4=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0

    .line 363
    :catchall_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v1

    #v1=(Reference);
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public loadMore(J)V
    .locals 5
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 344
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    #v0=(Reference);
    const-string v1, "com.android.emailcommon.service.IEmailService"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 346
    iget-object v1, p0, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    #v2=(PosByte);
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x1

    #v4=(One);
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 351
    return-void

    .line 349
    :catchall_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v1

    #v1=(Reference);
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public renameFolder(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "accountId"
    .parameter "oldName"
    .parameter "newName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 418
    #v2=(Null);
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 419
    .local v0, _data:Landroid/os/Parcel;
    #v0=(Reference);
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 422
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    #v1=(Reference);
    const-string v3, "com.android.emailcommon.service.IEmailService"

    #v3=(Reference);
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 424
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 426
    iget-object v3, p0, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    #v4=(PosByte);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 427
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 428
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    #v3=(Integer);
    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 431
    .local v2, _result:Z
    :cond_0
    #v2=(Boolean);
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 434
    return v2

    .line 431
    .end local v2           #_result:Z
    :catchall_0
    #v2=(Null);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v3

    #v3=(Reference);
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public searchMessages(JLcom/android/emailcommon/service/SearchParams;J)I
    .locals 6
    .parameter "accountId"
    .parameter "params"
    .parameter "destMailboxId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 536
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 537
    .local v0, _data:Landroid/os/Parcel;
    #v0=(Reference);
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 540
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    #v1=(Reference);
    const-string v3, "com.android.emailcommon.service.IEmailService"

    #v3=(Reference);
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 541
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 542
    if-eqz p3, :cond_0

    .line 543
    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {p3, v0, v3}, Lcom/android/emailcommon/service/SearchParams;->writeToParcel(Landroid/os/Parcel;I)V

    .line 549
    :goto_0
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 550
    iget-object v3, p0, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #v3=(Reference);
    const/16 v4, 0x10

    #v4=(PosByte);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 551
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 552
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 555
    .local v2, _result:I
    #v2=(Integer);
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 558
    return v2

    .line 547
    .end local v2           #_result:I
    :cond_0
    #v2=(Uninit);v4=(Uninit);v5=(Uninit);
    const/4 v3, 0x0

    :try_start_1
    #v3=(Null);
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 555
    :catchall_0
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v3

    #v3=(Reference);
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public sendMail(J)V
    .locals 5
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 562
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 563
    .local v0, _data:Landroid/os/Parcel;
    #v0=(Reference);
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 565
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    #v1=(Reference);
    const-string v2, "com.android.emailcommon.service.IEmailService"

    #v2=(Reference);
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 567
    iget-object v2, p0, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    #v3=(PosByte);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 568
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 572
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 574
    return-void

    .line 571
    :catchall_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v2

    #v2=(Reference);
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 572
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public sendMeetingResponse(JI)V
    .locals 5
    .parameter "messageId"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 486
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 488
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    #v0=(Reference);
    const-string v1, "com.android.emailcommon.service.IEmailService"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 490
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    iget-object v1, p0, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    #v2=(PosByte);
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x1

    #v4=(One);
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 496
    return-void

    .line 494
    :catchall_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v1

    #v1=(Reference);
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public serviceUpdated(Ljava/lang/String;)V
    .locals 5
    .parameter "emailAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 603
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 604
    .local v0, _data:Landroid/os/Parcel;
    #v0=(Reference);
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 606
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    #v1=(Reference);
    const-string v2, "com.android.emailcommon.service.IEmailService"

    #v2=(Reference);
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 607
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 608
    iget-object v2, p0, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    #v3=(PosByte);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 609
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 615
    return-void

    .line 612
    :catchall_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v2

    #v2=(Reference);
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setLogging(I)V
    .locals 5
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 440
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    #v0=(Reference);
    const-string v1, "com.android.emailcommon.service.IEmailService"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    iget-object v1, p0, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    #v2=(PosByte);
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x1

    #v4=(One);
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 447
    return-void

    .line 445
    :catchall_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v1

    #v1=(Reference);
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public startSync(JZI)V
    .locals 5
    .parameter "mailboxId"
    .parameter "userRequest"
    .parameter "deltaMessageCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 314
    #v1=(One);
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 316
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    #v0=(Reference);
    const-string v2, "com.android.emailcommon.service.IEmailService"

    #v2=(Reference);
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 318
    if-eqz p3, :cond_0

    :goto_0
    #v1=(Boolean);
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget-object v1, p0, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #v1=(Reference);
    const/4 v2, 0x2

    #v2=(PosByte);
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x1

    #v4=(One);
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 325
    return-void

    .line 318
    :cond_0
    #v1=(One);v2=(Reference);v3=(Uninit);v4=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0

    .line 323
    :catchall_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v1

    #v1=(Reference);
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public stopSync(J)V
    .locals 5
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 328
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 330
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    #v0=(Reference);
    const-string v1, "com.android.emailcommon.service.IEmailService"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 332
    iget-object v1, p0, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    #v2=(PosByte);
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x1

    #v4=(One);
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 337
    return-void

    .line 335
    :catchall_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v1

    #v1=(Reference);
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public updateFolderList(J)V
    .locals 5
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 368
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 370
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    #v0=(Reference);
    const-string v1, "com.android.emailcommon.service.IEmailService"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 372
    iget-object v1, p0, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    #v2=(PosByte);
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x1

    #v4=(One);
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 377
    return-void

    .line 375
    :catchall_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v1

    #v1=(Reference);
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public validate(Lcom/android/emailcommon/provider/HostAuth;)Landroid/os/Bundle;
    .locals 6
    .parameter "hostauth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 286
    .local v0, _data:Landroid/os/Parcel;
    #v0=(Reference);
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 289
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    #v1=(Reference);
    const-string v3, "com.android.emailcommon.service.IEmailService"

    #v3=(Reference);
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 290
    if-eqz p1, :cond_0

    .line 291
    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {p1, v0, v3}, Lcom/android/emailcommon/provider/HostAuth;->writeToParcel(Landroid/os/Parcel;I)V

    .line 297
    :goto_0
    iget-object v3, p0, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #v3=(Reference);
    const/4 v4, 0x1

    #v4=(One);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 298
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 299
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    #v3=(Integer);
    if-eqz v3, :cond_1

    .line 300
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #v3=(Reference);
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    .local v2, _result:Landroid/os/Bundle;
    :goto_1
    #v3=(Conflicted);
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 310
    return-object v2

    .line 295
    .end local v2           #_result:Landroid/os/Bundle;
    :cond_0
    #v2=(Uninit);v3=(Reference);v4=(Uninit);v5=(Uninit);
    const/4 v3, 0x0

    :try_start_1
    #v3=(Null);
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 307
    :catchall_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v3

    #v3=(Reference);
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 303
    :cond_1
    #v2=(Uninit);v3=(Integer);v4=(One);v5=(Null);
    const/4 v2, 0x0

    .restart local v2       #_result:Landroid/os/Bundle;
    #v2=(Null);
    goto :goto_1
.end method
