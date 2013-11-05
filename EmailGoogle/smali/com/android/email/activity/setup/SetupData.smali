.class public Lcom/android/email/activity/setup/SetupData;
.super Ljava/lang/Object;
.source "SetupData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/SetupData$SetupDataContainer;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/email/activity/setup/SetupData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/Account;

.field private mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

.field private mAllowAutodiscover:Z

.field private mCheckSettingsMode:I

.field private mFlowAccountType:Ljava/lang/String;

.field private mFlowMode:I

.field private mPassword:Ljava/lang/String;

.field private mPolicy:Lcom/android/emailcommon/provider/Policy;

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lcom/android/email/activity/setup/SetupData$1;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/email/activity/setup/SetupData$1;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/email/activity/setup/SetupData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    #v2=(One);
    const/4 v0, 0x0

    #v0=(Null);
    const/4 v1, 0x0

    .line 66
    #v1=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    #p0=(Reference);
    iput v0, p0, Lcom/android/email/activity/setup/SetupData;->mFlowMode:I

    .line 56
    iput v0, p0, Lcom/android/email/activity/setup/SetupData;->mCheckSettingsMode:I

    .line 57
    iput-boolean v2, p0, Lcom/android/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    .line 59
    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 67
    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 68
    iput-boolean v2, p0, Lcom/android/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    .line 69
    iput v0, p0, Lcom/android/email/activity/setup/SetupData;->mCheckSettingsMode:I

    .line 70
    new-instance v0, Lcom/android/emailcommon/provider/Account;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/emailcommon/provider/Account;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 71
    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mUsername:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mPassword:Ljava/lang/String;

    .line 73
    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 74
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "flowMode"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/email/activity/setup/SetupData;-><init>()V

    .line 78
    #p0=(Reference);
    iput p1, p0, Lcom/android/email/activity/setup/SetupData;->mFlowMode:I

    .line 79
    return-void
.end method

.method public constructor <init>(ILcom/android/emailcommon/provider/Account;)V
    .locals 0
    .parameter "flowMode"
    .parameter "account"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/SetupData;-><init>(I)V

    .line 88
    #p0=(Reference);
    iput-object p2, p0, Lcom/android/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 89
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "flowMode"
    .parameter "accountType"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/SetupData;-><init>(I)V

    .line 83
    #p0=(Reference);
    iput-object p2, p0, Lcom/android/email/activity/setup/SetupData;->mFlowAccountType:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v2, 0x1

    #v2=(One);
    const/4 v3, 0x0

    .line 197
    #v3=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    #p0=(Reference);
    iput v3, p0, Lcom/android/email/activity/setup/SetupData;->mFlowMode:I

    .line 56
    iput v3, p0, Lcom/android/email/activity/setup/SetupData;->mCheckSettingsMode:I

    .line 57
    iput-boolean v2, p0, Lcom/android/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    .line 59
    const/4 v1, 0x0

    #v1=(Null);
    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 198
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 199
    .local v0, loader:Ljava/lang/ClassLoader;
    #v0=(Reference);
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #v1=(Integer);
    iput v1, p0, Lcom/android/email/activity/setup/SetupData;->mFlowMode:I

    .line 200
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/emailcommon/provider/Account;

    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mUsername:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mPassword:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #v1=(Integer);
    iput v1, p0, Lcom/android/email/activity/setup/SetupData;->mCheckSettingsMode:I

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    #v1=(Boolean);
    iput-boolean v1, p0, Lcom/android/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    .line 205
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/emailcommon/provider/Policy;

    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 206
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountAuthenticatorResponse;

    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 207
    return-void

    :cond_0
    #v1=(Integer);
    move v1, v3

    .line 204
    #v1=(Null);
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public getAccount()Lcom/android/emailcommon/provider/Account;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v0=(Reference);
    return-object v0
.end method

.method public getAccountAuthenticatorResponse()Landroid/accounts/AccountAuthenticatorResponse;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    #v0=(Reference);
    return-object v0
.end method

.method public getFlowAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupData;->mFlowAccountType:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method public getFlowMode()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/android/email/activity/setup/SetupData;->mFlowMode:I

    #v0=(Integer);
    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupData;->mPassword:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method public getPolicy()Lcom/android/emailcommon/provider/Policy;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupData;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    #v0=(Reference);
    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupData;->mUsername:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method public isAllowAutodiscover()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    #v0=(Boolean);
    return v0
.end method

.method public setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 164
    return-void
.end method

.method public setAllowAutodiscover(Z)V
    .locals 0
    .parameter "mAllowAutodiscover"

    .prologue
    .line 146
    .line 147
    return-void
.end method

.method public setCheckSettingsMode(I)V
    .locals 0
    .parameter "checkSettingsMode"

    .prologue
    .line 128
    iput p1, p0, Lcom/android/email/activity/setup/SetupData;->mCheckSettingsMode:I

    .line 129
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/email/activity/setup/SetupData;->mPassword:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setPolicy(Lcom/android/emailcommon/provider/Policy;)V
    .locals 1
    .parameter "policy"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/email/activity/setup/SetupData;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 155
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v0=(Reference);
    iput-object p1, v0, Lcom/android/emailcommon/provider/Account;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 156
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .parameter "username"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/email/activity/setup/SetupData;->mUsername:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 187
    #v1=(Null);
    iget v0, p0, Lcom/android/email/activity/setup/SetupData;->mFlowMode:I

    #v0=(Integer);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v0=(Reference);
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 189
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupData;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupData;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget v0, p0, Lcom/android/email/activity/setup/SetupData;->mCheckSettingsMode:I

    #v0=(Integer);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-boolean v0, p0, Lcom/android/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupData;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    #v0=(Reference);
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 194
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 195
    return-void

    :cond_0
    #v0=(Boolean);
    move v0, v1

    .line 192
    #v0=(Null);
    goto :goto_0
.end method
