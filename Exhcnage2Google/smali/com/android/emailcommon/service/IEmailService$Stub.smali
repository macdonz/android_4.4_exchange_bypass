.class public abstract Lcom/android/emailcommon/service/IEmailService$Stub;
.super Landroid/os/Binder;
.source "IEmailService.java"

# interfaces
.implements Lcom/android/emailcommon/service/IEmailService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/service/IEmailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;
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
    const-string v0, "com.android.emailcommon.service.IEmailService"

    #v0=(Reference);
    invoke-virtual {p0, p0, v0}, Lcom/android/emailcommon/service/IEmailService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IEmailService;
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
    const-string v1, "com.android.emailcommon.service.IEmailService"

    #v1=(Reference);
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    #v0=(Reference);
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/emailcommon/service/IEmailService;

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/emailcommon/service/IEmailService;

    goto :goto_0

    .line 30
    :cond_1
    #v1=(Conflicted);
    new-instance v0, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 11
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
    const/4 v0, 0x0

    #v0=(Null);
    const/4 v9, 0x1

    .line 38
    #v9=(One);
    sparse-switch p1, :sswitch_data_0

    .line 266
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Boolean);v10=(Conflicted);
    return v9

    .line 42
    :sswitch_0
    #v0=(Null);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(One);v10=(Uninit);
    const-string v0, "com.android.emailcommon.service.IEmailService"

    #v0=(Reference);
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    #v0=(Null);
    const-string v10, "com.android.emailcommon.service.IEmailService"

    #v10=(Reference);
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    #v10=(Integer);
    if-eqz v10, :cond_0

    .line 50
    sget-object v10, Lcom/android/emailcommon/provider/HostAuth;->CREATOR:Landroid/os/Parcelable$Creator;

    #v10=(Reference);
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/emailcommon/provider/HostAuth;

    .line 55
    .local v1, _arg0:Lcom/android/emailcommon/provider/HostAuth;
    :goto_1
    #v10=(Conflicted);
    invoke-virtual {p0, v1}, Lcom/android/emailcommon/service/IEmailService$Stub;->validate(Lcom/android/emailcommon/provider/HostAuth;)Landroid/os/Bundle;

    move-result-object v8

    .line 56
    .local v8, _result:Landroid/os/Bundle;
    #v8=(Reference);
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v8, :cond_1

    .line 58
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    invoke-virtual {v8, p3, v9}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 53
    .end local v1           #_arg0:Lcom/android/emailcommon/provider/HostAuth;
    .end local v8           #_result:Landroid/os/Bundle;
    :cond_0
    #v1=(Uninit);v8=(Uninit);v10=(Integer);
    const/4 v1, 0x0

    .restart local v1       #_arg0:Lcom/android/emailcommon/provider/HostAuth;
    #v1=(Null);
    goto :goto_1

    .line 62
    .restart local v8       #_result:Landroid/os/Bundle;
    :cond_1
    #v1=(Reference);v8=(Reference);v10=(Conflicted);
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 68
    .end local v1           #_arg0:Lcom/android/emailcommon/provider/HostAuth;
    .end local v8           #_result:Landroid/os/Bundle;
    :sswitch_2
    #v1=(Uninit);v8=(Uninit);v10=(Uninit);
    const-string v10, "com.android.emailcommon.service.IEmailService"

    #v10=(Reference);
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 72
    .local v1, _arg0:J
    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    #v10=(Integer);
    if-eqz v10, :cond_2

    move v3, v9

    .line 74
    .local v3, _arg1:Z
    :goto_2
    #v3=(Boolean);
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 75
    .local v4, _arg2:I
    #v4=(Integer);
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailService$Stub;->startSync(JZI)V

    goto :goto_0

    .end local v3           #_arg1:Z
    .end local v4           #_arg2:I
    :cond_2
    #v3=(Uninit);v4=(Uninit);
    move v3, v0

    .line 72
    #v3=(Null);
    goto :goto_2

    .line 80
    .end local v1           #_arg0:J
    :sswitch_3
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v10=(Uninit);
    const-string v0, "com.android.emailcommon.service.IEmailService"

    #v0=(Reference);
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 83
    .restart local v1       #_arg0:J
    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/service/IEmailService$Stub;->stopSync(J)V

    goto :goto_0

    .line 88
    .end local v1           #_arg0:J
    :sswitch_4
    #v0=(Null);v1=(Uninit);v2=(Uninit);
    const-string v0, "com.android.emailcommon.service.IEmailService"

    #v0=(Reference);
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 91
    .restart local v1       #_arg0:J
    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/service/IEmailService$Stub;->loadMore(J)V

    goto :goto_0

    .line 96
    .end local v1           #_arg0:J
    :sswitch_5
    #v0=(Null);v1=(Uninit);v2=(Uninit);
    const-string v10, "com.android.emailcommon.service.IEmailService"

    #v10=(Reference);
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    .line 100
    .local v1, _arg0:Lcom/android/emailcommon/service/IEmailServiceCallback;
    #v1=(Reference);
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 102
    .local v6, _arg1:J
    #v6=(LongLo);v7=(LongHi);
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    #v10=(Integer);
    if-eqz v10, :cond_3

    move v4, v9

    .line 103
    .local v4, _arg2:Z
    :goto_3
    #v4=(Boolean);
    invoke-virtual {p0, v1, v6, v7, v4}, Lcom/android/emailcommon/service/IEmailService$Stub;->loadAttachment(Lcom/android/emailcommon/service/IEmailServiceCallback;JZ)V

    goto :goto_0

    .end local v4           #_arg2:Z
    :cond_3
    #v4=(Uninit);
    move v4, v0

    .line 102
    #v4=(Null);
    goto :goto_3

    .line 108
    .end local v1           #_arg0:Lcom/android/emailcommon/service/IEmailServiceCallback;
    .end local v6           #_arg1:J
    :sswitch_6
    #v1=(Uninit);v4=(Uninit);v6=(Uninit);v7=(Uninit);v10=(Uninit);
    const-string v0, "com.android.emailcommon.service.IEmailService"

    #v0=(Reference);
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 111
    .local v1, _arg0:J
    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/service/IEmailService$Stub;->updateFolderList(J)V

    goto/16 :goto_0

    .line 116
    .end local v1           #_arg0:J
    :sswitch_7
    #v0=(Null);v1=(Uninit);v2=(Uninit);
    const-string v10, "com.android.emailcommon.service.IEmailService"

    #v10=(Reference);
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 120
    .restart local v1       #_arg0:J
    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, _arg1:Ljava/lang/String;
    #v3=(Reference);
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/emailcommon/service/IEmailService$Stub;->createFolder(JLjava/lang/String;)Z

    move-result v8

    .line 122
    .local v8, _result:Z
    #v8=(Boolean);
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v8, :cond_4

    move v0, v9

    :cond_4
    #v0=(Boolean);
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 128
    .end local v1           #_arg0:J
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v8           #_result:Z
    :sswitch_8
    #v0=(Null);v1=(Uninit);v2=(Uninit);v3=(Uninit);v8=(Uninit);v10=(Uninit);
    const-string v10, "com.android.emailcommon.service.IEmailService"

    #v10=(Reference);
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 132
    .restart local v1       #_arg0:J
    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 133
    .restart local v3       #_arg1:Ljava/lang/String;
    #v3=(Reference);
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/emailcommon/service/IEmailService$Stub;->deleteFolder(JLjava/lang/String;)Z

    move-result v8

    .line 134
    .restart local v8       #_result:Z
    #v8=(Boolean);
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    if-eqz v8, :cond_5

    move v0, v9

    :cond_5
    #v0=(Boolean);
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 140
    .end local v1           #_arg0:J
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v8           #_result:Z
    :sswitch_9
    #v0=(Null);v1=(Uninit);v2=(Uninit);v3=(Uninit);v8=(Uninit);v10=(Uninit);
    const-string v10, "com.android.emailcommon.service.IEmailService"

    #v10=(Reference);
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 144
    .restart local v1       #_arg0:J
    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 146
    .restart local v3       #_arg1:Ljava/lang/String;
    #v3=(Reference);
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, _arg2:Ljava/lang/String;
    #v4=(Reference);
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailService$Stub;->renameFolder(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 148
    .restart local v8       #_result:Z
    #v8=(Boolean);
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    if-eqz v8, :cond_6

    move v0, v9

    :cond_6
    #v0=(Boolean);
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 154
    .end local v1           #_arg0:J
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v8           #_result:Z
    :sswitch_a
    #v0=(Null);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v8=(Uninit);v10=(Uninit);
    const-string v0, "com.android.emailcommon.service.IEmailService"

    #v0=(Reference);
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 157
    .local v1, _arg0:I
    #v1=(Integer);
    invoke-virtual {p0, v1}, Lcom/android/emailcommon/service/IEmailService$Stub;->setLogging(I)V

    goto/16 :goto_0

    .line 162
    .end local v1           #_arg0:I
    :sswitch_b
    #v0=(Null);v1=(Uninit);
    const-string v0, "com.android.emailcommon.service.IEmailService"

    #v0=(Reference);
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 165
    .local v1, _arg0:J
    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/service/IEmailService$Stub;->hostChanged(J)V

    goto/16 :goto_0

    .line 170
    .end local v1           #_arg0:J
    :sswitch_c
    #v0=(Null);v1=(Uninit);v2=(Uninit);
    const-string v10, "com.android.emailcommon.service.IEmailService"

    #v10=(Reference);
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, _arg0:Ljava/lang/String;
    #v1=(Reference);
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 175
    .restart local v3       #_arg1:Ljava/lang/String;
    #v3=(Reference);
    invoke-virtual {p0, v1, v3}, Lcom/android/emailcommon/service/IEmailService$Stub;->autoDiscover(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 176
    .local v8, _result:Landroid/os/Bundle;
    #v8=(Reference);
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v8, :cond_7

    .line 178
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    invoke-virtual {v8, p3, v9}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 182
    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 188
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v8           #_result:Landroid/os/Bundle;
    :sswitch_d
    #v1=(Uninit);v3=(Uninit);v8=(Uninit);v10=(Uninit);
    const-string v0, "com.android.emailcommon.service.IEmailService"

    #v0=(Reference);
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 192
    .local v1, _arg0:J
    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 193
    .local v3, _arg1:I
    #v3=(Integer);
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/emailcommon/service/IEmailService$Stub;->sendMeetingResponse(JI)V

    goto/16 :goto_0

    .line 198
    .end local v1           #_arg0:J
    .end local v3           #_arg1:I
    :sswitch_e
    #v0=(Null);v1=(Uninit);v2=(Uninit);v3=(Uninit);
    const-string v0, "com.android.emailcommon.service.IEmailService"

    #v0=(Reference);
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, _arg0:Ljava/lang/String;
    #v1=(Reference);
    invoke-virtual {p0, v1}, Lcom/android/emailcommon/service/IEmailService$Stub;->deleteAccountPIMData(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 207
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_f
    #v0=(Null);v1=(Uninit);
    const-string v0, "com.android.emailcommon.service.IEmailService"

    #v0=(Reference);
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/emailcommon/service/IEmailService$Stub;->getApiLevel()I

    move-result v8

    .line 209
    .local v8, _result:I
    #v8=(Integer);
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 215
    .end local v8           #_result:I
    :sswitch_10
    #v0=(Null);v8=(Uninit);
    const-string v0, "com.android.emailcommon.service.IEmailService"

    #v0=(Reference);
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 219
    .local v1, _arg0:J
    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    if-eqz v0, :cond_8

    .line 220
    sget-object v0, Lcom/android/emailcommon/service/SearchParams;->CREATOR:Landroid/os/Parcelable$Creator;

    #v0=(Reference);
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Lcom/android/emailcommon/service/SearchParams;

    .line 226
    .local v3, _arg1:Lcom/android/emailcommon/service/SearchParams;
    :goto_4
    #v0=(Conflicted);
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .local v4, _arg2:J
    #v4=(LongLo);v5=(LongHi);
    move-object v0, p0

    .line 227
    #v0=(Reference);
    invoke-virtual/range {v0 .. v5}, Lcom/android/emailcommon/service/IEmailService$Stub;->searchMessages(JLcom/android/emailcommon/service/SearchParams;J)I

    move-result v8

    .line 228
    .restart local v8       #_result:I
    #v8=(Integer);
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 223
    .end local v3           #_arg1:Lcom/android/emailcommon/service/SearchParams;
    .end local v4           #_arg2:J
    .end local v8           #_result:I
    :cond_8
    #v0=(Integer);v3=(Uninit);v4=(Uninit);v5=(Uninit);v8=(Uninit);
    const/4 v3, 0x0

    .restart local v3       #_arg1:Lcom/android/emailcommon/service/SearchParams;
    #v3=(Null);
    goto :goto_4

    .line 234
    .end local v1           #_arg0:J
    .end local v3           #_arg1:Lcom/android/emailcommon/service/SearchParams;
    :sswitch_11
    #v0=(Null);v1=(Uninit);v2=(Uninit);v3=(Uninit);
    const-string v0, "com.android.emailcommon.service.IEmailService"

    #v0=(Reference);
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 237
    .restart local v1       #_arg0:J
    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/service/IEmailService$Stub;->sendMail(J)V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 243
    .end local v1           #_arg0:J
    :sswitch_12
    #v0=(Null);v1=(Uninit);v2=(Uninit);
    const-string v0, "com.android.emailcommon.service.IEmailService"

    #v0=(Reference);
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    if-eqz v0, :cond_9

    .line 246
    sget-object v0, Lcom/android/emailcommon/provider/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #v0=(Reference);
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/emailcommon/provider/Account;

    .line 251
    .local v1, _arg0:Lcom/android/emailcommon/provider/Account;
    :goto_5
    #v0=(Conflicted);
    invoke-virtual {p0, v1}, Lcom/android/emailcommon/service/IEmailService$Stub;->getCapabilities(Lcom/android/emailcommon/provider/Account;)I

    move-result v8

    .line 252
    .restart local v8       #_result:I
    #v8=(Integer);
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 249
    .end local v1           #_arg0:Lcom/android/emailcommon/provider/Account;
    .end local v8           #_result:I
    :cond_9
    #v0=(Integer);v1=(Uninit);v8=(Uninit);
    const/4 v1, 0x0

    .restart local v1       #_arg0:Lcom/android/emailcommon/provider/Account;
    #v1=(Null);
    goto :goto_5

    .line 258
    .end local v1           #_arg0:Lcom/android/emailcommon/provider/Account;
    :sswitch_13
    #v0=(Null);v1=(Uninit);
    const-string v0, "com.android.emailcommon.service.IEmailService"

    #v0=(Reference);
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, _arg0:Ljava/lang/String;
    #v1=(Reference);
    invoke-virtual {p0, v1}, Lcom/android/emailcommon/service/IEmailService$Stub;->serviceUpdated(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);p3=(Unknown);p4=(Unknown);
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
