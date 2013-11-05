.class public abstract Lcom/android/emailcommon/service/IPolicyService$Stub;
.super Landroid/os/Binder;
.source "IPolicyService.java"

# interfaces
.implements Lcom/android/emailcommon/service/IPolicyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/service/IPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/service/IPolicyService$Stub$Proxy;
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
    const-string v0, "com.android.emailcommon.service.IPolicyService"

    #v0=(Reference);
    invoke-virtual {p0, p0, v0}, Lcom/android/emailcommon/service/IPolicyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IPolicyService;
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
    const-string v1, "com.android.emailcommon.service.IPolicyService"

    #v1=(Reference);
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    #v0=(Reference);
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/emailcommon/service/IPolicyService;

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/emailcommon/service/IPolicyService;

    goto :goto_0

    .line 30
    :cond_1
    #v1=(Conflicted);
    new-instance v0, Lcom/android/emailcommon/service/IPolicyService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/IPolicyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #v0=(Reference);
    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v6, 0x1

    .line 38
    #v6=(One);
    sparse-switch p1, :sswitch_data_0

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Boolean);v7=(Conflicted);
    return v6

    .line 42
    :sswitch_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Null);v6=(One);v7=(Uninit);
    const-string v5, "com.android.emailcommon.service.IPolicyService"

    #v5=(Reference);
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    #v5=(Null);
    const-string v7, "com.android.emailcommon.service.IPolicyService"

    #v7=(Reference);
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    #v7=(Integer);
    if-eqz v7, :cond_1

    .line 50
    sget-object v7, Lcom/android/emailcommon/provider/Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    #v7=(Reference);
    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/emailcommon/provider/Policy;

    .line 55
    .local v0, _arg0:Lcom/android/emailcommon/provider/Policy;
    :goto_1
    #v7=(Conflicted);
    invoke-virtual {p0, v0}, Lcom/android/emailcommon/service/IPolicyService$Stub;->isActive(Lcom/android/emailcommon/provider/Policy;)Z

    move-result v4

    .line 56
    .local v4, _result:Z
    #v4=(Boolean);
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v4, :cond_0

    move v5, v6

    :cond_0
    #v5=(Boolean);
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 53
    .end local v0           #_arg0:Lcom/android/emailcommon/provider/Policy;
    .end local v4           #_result:Z
    :cond_1
    #v0=(Uninit);v4=(Uninit);v5=(Null);v7=(Integer);
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/android/emailcommon/provider/Policy;
    #v0=(Null);
    goto :goto_1

    .line 62
    .end local v0           #_arg0:Lcom/android/emailcommon/provider/Policy;
    :sswitch_2
    #v0=(Uninit);v7=(Uninit);
    const-string v7, "com.android.emailcommon.service.IPolicyService"

    #v7=(Reference);
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 66
    .local v0, _arg0:J
    #v0=(LongLo);v1=(LongHi);
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    #v7=(Integer);
    if-eqz v7, :cond_2

    move v2, v6

    .line 67
    .local v2, _arg1:Z
    :goto_2
    #v2=(Boolean);
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/emailcommon/service/IPolicyService$Stub;->setAccountHoldFlag(JZ)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v2           #_arg1:Z
    :cond_2
    #v2=(Uninit);
    move v2, v5

    .line 66
    #v2=(Null);
    goto :goto_2

    .line 73
    .end local v0           #_arg0:J
    :sswitch_3
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v7=(Uninit);
    const-string v5, "com.android.emailcommon.service.IPolicyService"

    #v5=(Reference);
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 77
    .restart local v0       #_arg0:J
    #v0=(LongLo);v1=(LongHi);
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    #v5=(Integer);
    if-eqz v5, :cond_3

    .line 78
    sget-object v5, Lcom/android/emailcommon/provider/Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    #v5=(Reference);
    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/emailcommon/provider/Policy;

    .line 84
    .local v2, _arg1:Lcom/android/emailcommon/provider/Policy;
    :goto_3
    #v5=(Conflicted);
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, _arg2:Ljava/lang/String;
    #v3=(Reference);
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/emailcommon/service/IPolicyService$Stub;->setAccountPolicy(JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 81
    .end local v2           #_arg1:Lcom/android/emailcommon/provider/Policy;
    .end local v3           #_arg2:Ljava/lang/String;
    :cond_3
    #v2=(Uninit);v3=(Uninit);v5=(Integer);
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/android/emailcommon/provider/Policy;
    #v2=(Null);
    goto :goto_3

    .line 91
    .end local v0           #_arg0:J
    .end local v2           #_arg1:Lcom/android/emailcommon/provider/Policy;
    :sswitch_4
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v5=(Null);
    const-string v5, "com.android.emailcommon.service.IPolicyService"

    #v5=(Reference);
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/emailcommon/service/IPolicyService$Stub;->remoteWipe()V

    goto :goto_0

    .line 38
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);p3=(Unknown);p4=(Unknown);
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
