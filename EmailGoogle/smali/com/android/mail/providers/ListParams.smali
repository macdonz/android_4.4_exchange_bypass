.class public Lcom/android/mail/providers/ListParams;
.super Ljava/lang/Object;
.source "ListParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/mail/providers/ListParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field public final mLimit:I

.field public final mUseNetwork:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/providers/ListParams;->LOG_TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Lcom/android/mail/providers/ListParams$1;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/providers/ListParams$1;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/providers/ListParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .parameter "limit"
    .parameter "useNetwork"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    #p0=(Reference);
    iput p1, p0, Lcom/android/mail/providers/ListParams;->mLimit:I

    .line 43
    iput-boolean p2, p0, Lcom/android/mail/providers/ListParams;->mUseNetwork:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    #p0=(Reference);
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/ListParams;->mLimit:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/providers/ListParams;->mUseNetwork:Z

    .line 85
    return-void

    .line 84
    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public declared-synchronized serialize()Ljava/lang/String;
    .locals 5

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    #v1=(UninitRef);
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .local v1, json:Lorg/json/JSONObject;
    :try_start_1
    #v1=(Reference);
    const-string v2, "limit"

    #v2=(Reference);
    iget v3, p0, Lcom/android/mail/providers/ListParams;->mLimit:I

    #v3=(Integer);
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    const-string v2, "use-network"

    iget-boolean v3, p0, Lcom/android/mail/providers/ListParams;->mUseNetwork:Z

    #v3=(Boolean);
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    :goto_0
    :try_start_2
    #v0=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 95
    :catch_0
    #v0=(Uninit);v2=(Conflicted);v4=(Uninit);
    move-exception v0

    .line 96
    .local v0, e:Lorg/json/JSONException;
    :try_start_3
    #v0=(Reference);
    sget-object v2, Lcom/android/mail/providers/ListParams;->LOG_TAG:Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "Could not serialize ListParams"

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v2, v0, v3, v4}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 91
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #json:Lorg/json/JSONObject;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v2

    #v2=(Reference);
    monitor-exit p0

    throw v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/mail/providers/ListParams;->mLimit:I

    #v0=(Integer);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-boolean v0, p0, Lcom/android/mail/providers/ListParams;->mUseNetwork:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method
