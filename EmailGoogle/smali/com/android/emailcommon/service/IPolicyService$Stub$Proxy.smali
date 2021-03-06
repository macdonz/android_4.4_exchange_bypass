.class Lcom/android/emailcommon/service/IPolicyService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPolicyService.java"

# interfaces
.implements Lcom/android/emailcommon/service/IPolicyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/service/IPolicyService$Stub;
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
    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 103
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/emailcommon/service/IPolicyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 104
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/emailcommon/service/IPolicyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #v0=(Reference);
    return-object v0
.end method

.method public isActive(Lcom/android/emailcommon/provider/Policy;)Z
    .locals 7
    .parameter "policies"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    #v2=(One);
    const/4 v3, 0x0

    .line 115
    #v3=(Null);
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 116
    .local v0, _data:Landroid/os/Parcel;
    #v0=(Reference);
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 119
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    #v1=(Reference);
    const-string v4, "com.android.emailcommon.service.IPolicyService"

    #v4=(Reference);
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 120
    if-eqz p1, :cond_0

    .line 121
    const/4 v4, 0x1

    #v4=(One);
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {p1, v0, v4}, Lcom/android/emailcommon/provider/Policy;->writeToParcel(Landroid/os/Parcel;I)V

    .line 127
    :goto_0
    iget-object v4, p0, Lcom/android/emailcommon/service/IPolicyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #v4=(Reference);
    const/4 v5, 0x1

    #v5=(One);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 128
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 129
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    #v4=(Integer);
    if-eqz v4, :cond_1

    .line 132
    .local v2, _result:Z
    :goto_1
    #v2=(Boolean);
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 135
    return v2

    .line 125
    .end local v2           #_result:Z
    :cond_0
    #v2=(One);v4=(Reference);v5=(Uninit);v6=(Uninit);
    const/4 v4, 0x0

    :try_start_1
    #v4=(Null);
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 132
    :catchall_0
    #v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    move-exception v3

    #v3=(Reference);
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    #v3=(Null);v4=(Integer);v5=(One);v6=(Null);
    move v2, v3

    .line 129
    #v2=(Null);
    goto :goto_1
.end method

.method public remoteWipe()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 180
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    #v0=(Reference);
    const-string v1, "com.android.emailcommon.service.IPolicyService"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/android/emailcommon/service/IPolicyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    #v2=(PosByte);
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x1

    #v4=(One);
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 186
    return-void

    .line 184
    :catchall_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v1

    #v1=(Reference);
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public setAccountHoldFlag(JZ)V
    .locals 5
    .parameter "accountId"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 139
    #v2=(Null);
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 140
    .local v0, _data:Landroid/os/Parcel;
    #v0=(Reference);
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 142
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    #v1=(Reference);
    const-string v3, "com.android.emailcommon.service.IPolicyService"

    #v3=(Reference);
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 144
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :cond_0
    #v2=(Boolean);
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget-object v2, p0, Lcom/android/emailcommon/service/IPolicyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #v2=(Reference);
    const/4 v3, 0x2

    #v3=(PosByte);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 146
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 152
    return-void

    .line 149
    :catchall_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v2

    #v2=(Reference);
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setAccountPolicy(JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V
    .locals 5
    .parameter "accountId"
    .parameter "policy"
    .parameter "securityKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 156
    .local v0, _data:Landroid/os/Parcel;
    #v0=(Reference);
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 158
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    #v1=(Reference);
    const-string v2, "com.android.emailcommon.service.IPolicyService"

    #v2=(Reference);
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 160
    if-eqz p3, :cond_0

    .line 161
    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p3, v0, v2}, Lcom/android/emailcommon/provider/Policy;->writeToParcel(Landroid/os/Parcel;I)V

    .line 167
    :goto_0
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-object v2, p0, Lcom/android/emailcommon/service/IPolicyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #v2=(Reference);
    const/4 v3, 0x3

    #v3=(PosByte);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 169
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 175
    return-void

    .line 165
    :cond_0
    #v3=(Uninit);v4=(Uninit);
    const/4 v2, 0x0

    :try_start_1
    #v2=(Null);
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 172
    :catchall_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v2

    #v2=(Reference);
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
