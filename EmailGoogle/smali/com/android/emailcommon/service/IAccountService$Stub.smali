.class public abstract Lcom/android/emailcommon/service/IAccountService$Stub;
.super Landroid/os/Binder;
.source "IAccountService.java"

# interfaces
.implements Lcom/android/emailcommon/service/IAccountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/service/IAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/service/IAccountService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    #p0=(Reference);
    const-string v0, "com.android.emailcommon.service.IAccountService"

    #v0=(Reference);
    invoke-virtual {p0, p0, v0}, Lcom/android/emailcommon/service/IAccountService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IAccountService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    #v0=(Reference);v1=(Conflicted);
    return-object v0

    .line 26
    :cond_0
    #v0=(Uninit);v1=(Uninit);
    const-string v1, "com.android.emailcommon.service.IAccountService"

    #v1=(Reference);
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    #v0=(Reference);
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/emailcommon/service/IAccountService;

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/emailcommon/service/IAccountService;

    goto :goto_0

    .line 30
    :cond_1
    #v1=(Conflicted);
    new-instance v0, Lcom/android/emailcommon/service/IAccountService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/IAccountService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #v0=(Reference);
    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 38
    #v4=(One);
    sparse-switch p1, :sswitch_data_0

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Boolean);v5=(Conflicted);
    return v4

    .line 42
    :sswitch_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(One);v5=(Uninit);
    const-string v5, "com.android.emailcommon.service.IAccountService"

    #v5=(Reference);
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    #v5=(Uninit);
    const-string v5, "com.android.emailcommon.service.IAccountService"

    #v5=(Reference);
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 51
    .local v0, _arg0:J
    #v0=(LongLo);v1=(LongHi);
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, _arg1:Ljava/lang/String;
    #v2=(Reference);
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/emailcommon/service/IAccountService$Stub;->notifyLoginFailed(JLjava/lang/String;)V

    goto :goto_0

    .line 57
    .end local v0           #_arg0:J
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v5=(Uninit);
    const-string v5, "com.android.emailcommon.service.IAccountService"

    #v5=(Reference);
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 60
    .restart local v0       #_arg0:J
    #v0=(LongLo);v1=(LongHi);
    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/IAccountService$Stub;->notifyLoginSucceeded(J)V

    goto :goto_0

    .line 65
    .end local v0           #_arg0:J
    :sswitch_3
    #v0=(Uninit);v1=(Uninit);v5=(Uninit);
    const-string v5, "com.android.emailcommon.service.IAccountService"

    #v5=(Reference);
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, _arg0:Ljava/lang/String;
    #v0=(Reference);
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 70
    .restart local v2       #_arg1:Ljava/lang/String;
    #v2=(Reference);
    invoke-virtual {p0, v0, v2}, Lcom/android/emailcommon/service/IAccountService$Stub;->reconcileAccounts(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 76
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_4
    #v0=(Uninit);v2=(Uninit);v5=(Uninit);
    const-string v5, "com.android.emailcommon.service.IAccountService"

    #v5=(Reference);
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 79
    .local v0, _arg0:J
    #v0=(LongLo);v1=(LongHi);
    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/IAccountService$Stub;->getAccountColor(J)I

    move-result v3

    .line 80
    .local v3, _result:I
    #v3=(Integer);
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 86
    .end local v0           #_arg0:J
    .end local v3           #_result:I
    :sswitch_5
    #v0=(Uninit);v1=(Uninit);v3=(Uninit);v5=(Uninit);
    const-string v5, "com.android.emailcommon.service.IAccountService"

    #v5=(Reference);
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, _arg0:Ljava/lang/String;
    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/emailcommon/service/IAccountService$Stub;->getConfigurationData(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 90
    .local v3, _result:Landroid/os/Bundle;
    #v3=(Reference);
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v3, :cond_0

    .line 92
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    invoke-virtual {v3, p3, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 96
    :cond_0
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 102
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Landroid/os/Bundle;
    :sswitch_6
    #v0=(Uninit);v3=(Uninit);v5=(Uninit);
    const-string v5, "com.android.emailcommon.service.IAccountService"

    #v5=(Reference);
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/emailcommon/service/IAccountService$Stub;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, _result:Ljava/lang/String;
    #v3=(Reference);
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);p3=(Unknown);p4=(Unknown);
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
